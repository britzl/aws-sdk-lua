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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- Required key: InstanceId
-- @return DeregisterInstanceRequest structure as a key-value pair table
function M.DeregisterInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertDeregisterInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopInstanceRequest = { ["InstanceId"] = true, ["Force"] = true, nil }

function asserts.AssertStopInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["Force"] then asserts.AssertBoolean(struct["Force"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopInstanceRequest[k], "StopInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * Force [Boolean] <p>Specifies whether to force an instance to stop.</p>
-- Required key: InstanceId
-- @return StopInstanceRequest structure as a key-value pair table
function M.StopInstanceRequest(args)
	assert(args, "You must provide an argument table when creating StopInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["Force"] = args["Force"],
	}
	asserts.AssertStopInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * InstancesCount [InstancesCount] <p>An <code>InstancesCount</code> object with the number of instances in each status.</p>
-- * Name [String] <p>The stack name.</p>
-- * AppsCount [Integer] <p>The number of apps.</p>
-- * LayersCount [Integer] <p>The number of layers.</p>
-- * Arn [String] <p>The stack's ARN.</p>
-- @return StackSummary structure as a key-value pair table
function M.StackSummary(args)
	assert(args, "You must provide an argument table when creating StackSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["InstancesCount"] = args["InstancesCount"],
		["Name"] = args["Name"],
		["AppsCount"] = args["AppsCount"],
		["LayersCount"] = args["LayersCount"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertStackSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- * NextToken [NextToken] <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- * MaxResults [MaxResults] <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call. </p>
-- Required key: ResourceArn
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeploymentId [String] <p>The deployment ID, which can be used with other requests to identify the deployment.</p>
-- @return CreateDeploymentResult structure as a key-value pair table
function M.CreateDeploymentResult(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeploymentId"] = args["DeploymentId"],
	}
	asserts.AssertCreateDeploymentResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description of the apps in the specified stack.</p>
-- * AppIds [Strings] <p>An array of app IDs for the apps to be described. If you use this parameter, <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns a description of every app.</p>
-- @return DescribeAppsRequest structure as a key-value pair table
function M.DescribeAppsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAppsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["AppIds"] = args["AppIds"],
	}
	asserts.AssertDescribeAppsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArns [Strings] <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
-- @return DescribeUserProfilesRequest structure as a key-value pair table
function M.DescribeUserProfilesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArns"] = args["IamUserArns"],
	}
	asserts.AssertDescribeUserProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- Required key: RdsDbInstanceArn
-- @return DeregisterRdsDbInstanceRequest structure as a key-value pair table
function M.DeregisterRdsDbInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterRdsDbInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RdsDbInstanceArn"] = args["RdsDbInstanceArn"],
	}
	asserts.AssertDeregisterRdsDbInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- Required key: InstanceId
-- @return StartInstanceRequest structure as a key-value pair table
function M.StartInstanceRequest(args)
	assert(args, "You must provide an argument table when creating StartInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertStartInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return DescribeStackSummaryRequest structure as a key-value pair table
function M.DescribeStackSummaryRequest(args)
	assert(args, "You must provide an argument table when creating DescribeStackSummaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertDescribeStackSummaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Volumes [Volumes] <p>An array of volume IDs.</p>
-- @return DescribeVolumesResult structure as a key-value pair table
function M.DescribeVolumesResult(args)
	assert(args, "You must provide an argument table when creating DescribeVolumesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Volumes"] = args["Volumes"],
	}
	asserts.AssertDescribeVolumesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- * LayerId [String] <p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>
-- Required key: ElasticLoadBalancerName
-- Required key: LayerId
-- @return AttachElasticLoadBalancerRequest structure as a key-value pair table
function M.AttachElasticLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating AttachElasticLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticLoadBalancerName"] = args["ElasticLoadBalancerName"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertAttachElasticLoadBalancerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SshPublicKey [String] <p>The user's SSH public key.</p>
-- @return UpdateMyUserProfileRequest structure as a key-value pair table
function M.UpdateMyUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateMyUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SshPublicKey"] = args["SshPublicKey"],
	}
	asserts.AssertUpdateMyUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LayerId [String] <p>The layer ID.</p>
-- Required key: LayerId
-- @return DeleteLayerRequest structure as a key-value pair table
function M.DeleteLayerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLayerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertDeleteLayerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DelayUntilElbConnectionsDrained [Boolean] <p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain">Connection Draining</a> </p>
-- * ExecutionTimeout [Integer] <p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>
-- @return ShutdownEventConfiguration structure as a key-value pair table
function M.ShutdownEventConfiguration(args)
	assert(args, "You must provide an argument table when creating ShutdownEventConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DelayUntilElbConnectionsDrained"] = args["DelayUntilElbConnectionsDrained"],
		["ExecutionTimeout"] = args["ExecutionTimeout"],
	}
	asserts.AssertShutdownEventConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * EcsClusterArn [String] <p>The cluster's ARN.</p>
-- * RegisteredAt [DateTime] <p>The time and date that the cluster was registered with the stack.</p>
-- * EcsClusterName [String] <p>The cluster name.</p>
-- @return EcsCluster structure as a key-value pair table
function M.EcsCluster(args)
	assert(args, "You must provide an argument table when creating EcsCluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["EcsClusterArn"] = args["EcsClusterArn"],
		["RegisteredAt"] = args["RegisteredAt"],
		["EcsClusterName"] = args["EcsClusterName"],
	}
	asserts.AssertEcsCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Apps [Apps] <p>An array of <code>App</code> objects that describe the specified apps. </p>
-- @return DescribeAppsResult structure as a key-value pair table
function M.DescribeAppsResult(args)
	assert(args, "You must provide an argument table when creating DescribeAppsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Apps"] = args["Apps"],
	}
	asserts.AssertDescribeAppsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- * AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- * Description [String] <p>A description of the app.</p>
-- * EnableSsl [Boolean] <p>Whether SSL is enabled for the app.</p>
-- * SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- * AppId [String] <p>The app ID.</p>
-- * Domains [Strings] <p>The app's virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- * Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- * Name [String] <p>The app name.</p>
-- * Type [AppType] <p>The app type.</p>
-- * DataSources [DataSources] <p>The app's data sources.</p>
-- Required key: AppId
-- @return UpdateAppRequest structure as a key-value pair table
function M.UpdateAppRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAppRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Environment"] = args["Environment"],
		["AppSource"] = args["AppSource"],
		["Description"] = args["Description"],
		["EnableSsl"] = args["EnableSsl"],
		["SslConfiguration"] = args["SslConfiguration"],
		["AppId"] = args["AppId"],
		["Domains"] = args["Domains"],
		["Attributes"] = args["Attributes"],
		["Name"] = args["Name"],
		["Type"] = args["Type"],
		["DataSources"] = args["DataSources"],
	}
	asserts.AssertUpdateAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * ElasticIp [String] <p>The Elastic IP address.</p>
-- Required key: ElasticIp
-- Required key: StackId
-- @return RegisterElasticIpRequest structure as a key-value pair table
function M.RegisterElasticIpRequest(args)
	assert(args, "You must provide an argument table when creating RegisterElasticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertRegisterElasticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified instance.</p>
-- * DeploymentId [String] <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified deployment.</p>
-- * CommandIds [Strings] <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns a description of the specified commands. Otherwise, it returns a description of every command.</p>
-- @return DescribeCommandsRequest structure as a key-value pair table
function M.DescribeCommandsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCommandsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["DeploymentId"] = args["DeploymentId"],
		["CommandIds"] = args["CommandIds"],
	}
	asserts.AssertDescribeCommandsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
-- * LayerIds [Strings] <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
-- @return DescribeElasticLoadBalancersRequest structure as a key-value pair table
function M.DescribeElasticLoadBalancersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticLoadBalancersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["LayerIds"] = args["LayerIds"],
	}
	asserts.AssertDescribeElasticLoadBalancersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeId [String] <p>The volume ID.</p>
-- Required key: VolumeId
-- @return UnassignVolumeRequest structure as a key-value pair table
function M.UnassignVolumeRequest(args)
	assert(args, "You must provide an argument table when creating UnassignVolumeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeId"] = args["VolumeId"],
	}
	asserts.AssertUnassignVolumeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Permissions [Permissions] <p>An array of <code>Permission</code> objects that describe the stack permissions.</p> <ul> <li> <p>If the request object contains only a stack ID, the array contains a <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p> </li> <li> <p>If the request object contains only an IAM ARN, the array contains a <code>Permission</code> object with permissions for each of the user's stack IDs.</p> </li> <li> <p>If the request contains a stack ID and an IAM ARN, the array contains a single <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p> </li> </ul>
-- @return DescribePermissionsResult structure as a key-value pair table
function M.DescribePermissionsResult(args)
	assert(args, "You must provide an argument table when creating DescribePermissionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Permissions"] = args["Permissions"],
	}
	asserts.AssertDescribePermissionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to get the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>. </p>
-- * Tags [Tags] <p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>
-- @return ListTagsResult structure as a key-value pair table
function M.ListTagsResult(args)
	assert(args, "You must provide an argument table when creating ListTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Undeploy [Strings] <p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>
-- * Setup [Strings] <p>An array of custom recipe names to be run following a <code>setup</code> event.</p>
-- * Configure [Strings] <p>An array of custom recipe names to be run following a <code>configure</code> event.</p>
-- * Shutdown [Strings] <p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>
-- * Deploy [Strings] <p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>
-- @return Recipes structure as a key-value pair table
function M.Recipes(args)
	assert(args, "You must provide an argument table when creating Recipes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Undeploy"] = args["Undeploy"],
		["Setup"] = args["Setup"],
		["Configure"] = args["Configure"],
		["Shutdown"] = args["Shutdown"],
		["Deploy"] = args["Deploy"],
	}
	asserts.AssertRecipes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The layer stack ID.</p>
-- * DefaultRecipes [Recipes] 
-- * LayerId [String] <p>The layer ID.</p>
-- * AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * Shortname [String] <p>The layer short name.</p>
-- * CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- * LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
-- * Type [LayerType] <p>The layer type.</p>
-- * CustomInstanceProfileArn [String] <p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * UseEbsOptimizedInstances [Boolean] <p>Whether the layer uses Amazon EBS-optimized instances.</p>
-- * Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- * CreatedAt [DateTime] <p>Date when the layer was created.</p>
-- * Name [String] <p>The layer name.</p>
-- * CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>The Amazon CloudWatch Logs configuration settings for the layer.</p>
-- * CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- * VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- * Attributes [LayerAttributes] <p>The layer attributes.</p> <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and <code>GangliaPassword</code> attributes, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value</p> <p>For an ECS Cluster layer, AWS OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- * AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * DefaultSecurityGroupNames [Strings] <p>An array containing the layer's security group names.</p>
-- * CustomJson [String] <p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>
-- * EnableAutoHealing [Boolean] <p>Whether auto healing is disabled for the layer.</p>
-- * Arn [String] <p>The Amazon Resource Number (ARN) of a layer.</p>
-- @return Layer structure as a key-value pair table
function M.Layer(args)
	assert(args, "You must provide an argument table when creating Layer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["DefaultRecipes"] = args["DefaultRecipes"],
		["LayerId"] = args["LayerId"],
		["AutoAssignPublicIps"] = args["AutoAssignPublicIps"],
		["Shortname"] = args["Shortname"],
		["CustomSecurityGroupIds"] = args["CustomSecurityGroupIds"],
		["LifecycleEventConfiguration"] = args["LifecycleEventConfiguration"],
		["Type"] = args["Type"],
		["CustomInstanceProfileArn"] = args["CustomInstanceProfileArn"],
		["UseEbsOptimizedInstances"] = args["UseEbsOptimizedInstances"],
		["Packages"] = args["Packages"],
		["CreatedAt"] = args["CreatedAt"],
		["Name"] = args["Name"],
		["CloudWatchLogsConfiguration"] = args["CloudWatchLogsConfiguration"],
		["CustomRecipes"] = args["CustomRecipes"],
		["VolumeConfigurations"] = args["VolumeConfigurations"],
		["Attributes"] = args["Attributes"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
		["AutoAssignElasticIps"] = args["AutoAssignElasticIps"],
		["DefaultSecurityGroupNames"] = args["DefaultSecurityGroupNames"],
		["CustomJson"] = args["CustomJson"],
		["EnableAutoHealing"] = args["EnableAutoHealing"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertLayer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceRoleArn [String] <p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- * VpcId [String] <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p> </li> <li> <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.</p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information about default VPC and EC2-Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- * DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is <code>instance-store</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * Name [String] <p>The stack name.</p>
-- * HostnameTheme [String] <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- * UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- * CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information about custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- * Region [String] <p>The stack's AWS region, such as <code>ap-south-1</code>. For more information about Amazon regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p> <note> <p>In the AWS CLI, this API maps to the <code>--stack-region</code> parameter. If the <code>--stack-region</code> parameter and the AWS CLI common parameter <code>--region</code> are set to the same value, the stack uses a <i>regional</i> endpoint. If the <code>--stack-region</code> parameter is not set, but the AWS CLI <code>--region</code> parameter is, this also results in a stack with a <i>regional</i> endpoint. However, if the <code>--region</code> parameter is set to <code>us-east-1</code>, and the <code>--stack-region</code> parameter is set to one of the following, then the stack uses a legacy or <i>classic</i> region: <code>us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1, ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in <code>us-east-1</code>. Only the preceding regions are supported as classic regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to choose the regional endpoint that is closest to where you manage AWS, we recommend that you use regional endpoints for new stacks. The AWS CLI common <code>--region</code> parameter always specifies a regional API endpoint; it cannot be used to specify a classic AWS OpsWorks Stacks region.</p> </note>
-- * DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- * UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * CustomCookbooksSource [Source] 
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
-- * ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- * DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- * DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- * DefaultOs [String] <p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html"> Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the current Amazon Linux version. For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- Required key: Name
-- Required key: Region
-- Required key: ServiceRoleArn
-- Required key: DefaultInstanceProfileArn
-- @return CreateStackRequest structure as a key-value pair table
function M.CreateStackRequest(args)
	assert(args, "You must provide an argument table when creating CreateStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["DefaultSubnetId"] = args["DefaultSubnetId"],
		["VpcId"] = args["VpcId"],
		["DefaultRootDeviceType"] = args["DefaultRootDeviceType"],
		["Name"] = args["Name"],
		["HostnameTheme"] = args["HostnameTheme"],
		["UseCustomCookbooks"] = args["UseCustomCookbooks"],
		["CustomJson"] = args["CustomJson"],
		["Region"] = args["Region"],
		["DefaultAvailabilityZone"] = args["DefaultAvailabilityZone"],
		["UseOpsworksSecurityGroups"] = args["UseOpsworksSecurityGroups"],
		["CustomCookbooksSource"] = args["CustomCookbooksSource"],
		["ConfigurationManager"] = args["ConfigurationManager"],
		["ChefConfiguration"] = args["ChefConfiguration"],
		["AgentVersion"] = args["AgentVersion"],
		["DefaultSshKeyName"] = args["DefaultSshKeyName"],
		["DefaultInstanceProfileArn"] = args["DefaultInstanceProfileArn"],
		["Attributes"] = args["Attributes"],
		["DefaultOs"] = args["DefaultOs"],
	}
	asserts.AssertCreateStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrivateDns [String] <p>The instance's private DNS name.</p>
-- * SshHostRsaKeyFingerprint [String] <p>The SSH key's RSA fingerprint.</p>
-- * SubnetId [String] <p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>
-- * Hostname [String] <p>The instance host name.</p>
-- * LastServiceErrorId [String] <p>The ID of the last service error. For more information, call <a>DescribeServiceErrors</a>.</p>
-- * Platform [String] <p>The instance's platform.</p>
-- * EbsOptimized [Boolean] <p>Whether this is an Amazon EBS-optimized instance.</p>
-- * ReportedOs [ReportedOs] <p>For registered instances, the reported operating system.</p>
-- * AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type.</p>
-- * Status [String] <p>The instance status:</p> <ul> <li> <p> <code>booting</code> </p> </li> <li> <p> <code>connection_lost</code> </p> </li> <li> <p> <code>online</code> </p> </li> <li> <p> <code>pending</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>requested</code> </p> </li> <li> <p> <code>running_setup</code> </p> </li> <li> <p> <code>setup_failed</code> </p> </li> <li> <p> <code>shutting_down</code> </p> </li> <li> <p> <code>start_failed</code> </p> </li> <li> <p> <code>stop_failed</code> </p> </li> <li> <p> <code>stopped</code> </p> </li> <li> <p> <code>stopping</code> </p> </li> <li> <p> <code>terminated</code> </p> </li> <li> <p> <code>terminating</code> </p> </li> </ul>
-- * StackId [String] <p>The stack ID.</p>
-- * InstanceId [String] <p>The instance ID.</p>
-- * SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- * InfrastructureClass [String] <p>For registered instances, the infrastructure class: <code>ec2</code> or <code>on-premises</code>.</p>
-- * RootDeviceVolumeId [String] <p>The root device volume ID.</p>
-- * Tenancy [String] <p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>
-- * AgentVersion [String] <p>The agent version. This parameter is set to <code>INHERIT</code> if the instance inherits the default stack setting or to a a version number for a fixed agent version.</p>
-- * SshHostDsaKeyFingerprint [String] <p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>
-- * InstanceProfileArn [String] <p>The ARN of the instance's IAM profile. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * InstanceType [String] <p>The instance type, such as <code>t2.micro</code>.</p>
-- * CreatedAt [DateTime] <p>The time that the instance was created.</p>
-- * AmiId [String] <p>A custom AMI ID to be used to create the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Instances</a> </p>
-- * LayerIds [Strings] <p>An array containing the instance layer IDs.</p>
-- * Ec2InstanceId [String] <p>The ID of the associated Amazon EC2 instance.</p>
-- * PublicDns [String] <p>The instance public DNS name.</p>
-- * SecurityGroupIds [Strings] <p>An array containing the instance security group IDs.</p>
-- * EcsClusterArn [String] <p>For container instances, the Amazon ECS cluster's ARN.</p>
-- * BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device mappings.</p>
-- * Architecture [Architecture] <p>The instance architecture: "i386" or "x86_64".</p>
-- * ReportedAgentVersion [String] <p>The instance's reported AWS OpsWorks Stacks agent version.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- * Os [String] <p>The instance's operating system.</p>
-- * VirtualizationType [VirtualizationType] <p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>
-- * AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * EcsContainerInstanceArn [String] <p>For container instances, the instance's ARN.</p>
-- * ElasticIp [String] <p>The instance <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address </a>.</p>
-- * RootDeviceType [RootDeviceType] <p>The instance's root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * PrivateIp [String] <p>The instance's private IP address.</p>
-- * PublicIp [String] <p>The instance public IP address.</p>
-- * RegisteredBy [String] <p>For registered instances, who performed the registration.</p>
-- * Arn [String] <p>The instance's Amazon Resource Number (ARN).</p>
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PrivateDns"] = args["PrivateDns"],
		["SshHostRsaKeyFingerprint"] = args["SshHostRsaKeyFingerprint"],
		["SubnetId"] = args["SubnetId"],
		["Hostname"] = args["Hostname"],
		["LastServiceErrorId"] = args["LastServiceErrorId"],
		["Platform"] = args["Platform"],
		["EbsOptimized"] = args["EbsOptimized"],
		["ReportedOs"] = args["ReportedOs"],
		["AutoScalingType"] = args["AutoScalingType"],
		["Status"] = args["Status"],
		["StackId"] = args["StackId"],
		["InstanceId"] = args["InstanceId"],
		["SshKeyName"] = args["SshKeyName"],
		["InfrastructureClass"] = args["InfrastructureClass"],
		["RootDeviceVolumeId"] = args["RootDeviceVolumeId"],
		["Tenancy"] = args["Tenancy"],
		["AgentVersion"] = args["AgentVersion"],
		["SshHostDsaKeyFingerprint"] = args["SshHostDsaKeyFingerprint"],
		["InstanceProfileArn"] = args["InstanceProfileArn"],
		["InstanceType"] = args["InstanceType"],
		["CreatedAt"] = args["CreatedAt"],
		["AmiId"] = args["AmiId"],
		["LayerIds"] = args["LayerIds"],
		["Ec2InstanceId"] = args["Ec2InstanceId"],
		["PublicDns"] = args["PublicDns"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["EcsClusterArn"] = args["EcsClusterArn"],
		["BlockDeviceMappings"] = args["BlockDeviceMappings"],
		["Architecture"] = args["Architecture"],
		["ReportedAgentVersion"] = args["ReportedAgentVersion"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
		["Os"] = args["Os"],
		["VirtualizationType"] = args["VirtualizationType"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["EcsContainerInstanceArn"] = args["EcsContainerInstanceArn"],
		["ElasticIp"] = args["ElasticIp"],
		["RootDeviceType"] = args["RootDeviceType"],
		["PrivateIp"] = args["PrivateIp"],
		["PublicIp"] = args["PublicIp"],
		["RegisteredBy"] = args["RegisteredBy"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Monday [DailyAutoScalingSchedule] <p>The schedule for Monday.</p>
-- * Tuesday [DailyAutoScalingSchedule] <p>The schedule for Tuesday.</p>
-- * Friday [DailyAutoScalingSchedule] <p>The schedule for Friday.</p>
-- * Wednesday [DailyAutoScalingSchedule] <p>The schedule for Wednesday.</p>
-- * Thursday [DailyAutoScalingSchedule] <p>The schedule for Thursday.</p>
-- * Sunday [DailyAutoScalingSchedule] <p>The schedule for Sunday.</p>
-- * Saturday [DailyAutoScalingSchedule] <p>The schedule for Saturday.</p>
-- @return WeeklyAutoScalingSchedule structure as a key-value pair table
function M.WeeklyAutoScalingSchedule(args)
	assert(args, "You must provide an argument table when creating WeeklyAutoScalingSchedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Monday"] = args["Monday"],
		["Tuesday"] = args["Tuesday"],
		["Friday"] = args["Friday"],
		["Wednesday"] = args["Wednesday"],
		["Thursday"] = args["Thursday"],
		["Sunday"] = args["Sunday"],
		["Saturday"] = args["Saturday"],
	}
	asserts.AssertWeeklyAutoScalingSchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.</p>
-- * Key [String] <p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>
-- * Secure [Boolean] <p>(Optional) Whether the variable's value will be returned by the <a>DescribeApps</a> action. To conceal an environment variable's value, set <code>Secure</code> to <code>true</code>. <code>DescribeApps</code> then returns <code>*****FILTERED*****</code> instead of the actual value. The default value for <code>Secure</code> is <code>false</code>. </p>
-- Required key: Key
-- Required key: Value
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
		["Secure"] = args["Secure"],
	}
	asserts.AssertEnvironmentVariable(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The registered instance's AWS OpsWorks Stacks ID.</p>
-- @return RegisterInstanceResult structure as a key-value pair table
function M.RegisterInstanceResult(args)
	assert(args, "You must provide an argument table when creating RegisterInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertRegisterInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCount [Integer] <p>The number of instances to add or remove when the load exceeds a threshold.</p>
-- * LoadThreshold [Double] <p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <a href="http://en.wikipedia.org/wiki/Load_%28computing%29">Load (computing)</a>.</p>
-- * ThresholdsWaitTime [Minute] <p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>
-- * IgnoreMetricsTime [Minute] <p>The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>
-- * MemoryThreshold [Double] <p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>
-- * Alarms [Strings] <p>Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.</p> <note> <p>To use custom alarms, you must update your service role to allow <code>cloudwatch:DescribeAlarms</code>. You can either have AWS OpsWorks Stacks update the role for you when you first use this feature or you can edit the role manually. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html">Allowing AWS OpsWorks Stacks to Act on Your Behalf</a>.</p> </note>
-- * CpuThreshold [Double] <p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>
-- @return AutoScalingThresholds structure as a key-value pair table
function M.AutoScalingThresholds(args)
	assert(args, "You must provide an argument table when creating AutoScalingThresholds")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCount"] = args["InstanceCount"],
		["LoadThreshold"] = args["LoadThreshold"],
		["ThresholdsWaitTime"] = args["ThresholdsWaitTime"],
		["IgnoreMetricsTime"] = args["IgnoreMetricsTime"],
		["MemoryThreshold"] = args["MemoryThreshold"],
		["Alarms"] = args["Alarms"],
		["CpuThreshold"] = args["CpuThreshold"],
	}
	asserts.AssertAutoScalingThresholds(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- Required key: InstanceId
-- @return RebootInstanceRequest structure as a key-value pair table
function M.RebootInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RebootInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertRebootInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeleteOnTermination [Boolean] <p>Whether the volume is deleted on instance termination.</p>
-- * SnapshotId [String] <p>The snapshot ID.</p>
-- * Iops [Integer] <p>The number of I/O operations per second (IOPS) that the volume supports. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
-- * VolumeType [VolumeType] <p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for Provisioned IOPS (SSD) volumes, <code>st1</code> for Throughput Optimized hard disk drives (HDD), <code>sc1</code> for Cold HDD,and <code>standard</code> for Magnetic volumes.</p> <p>If you specify the <code>io1</code> volume type, you must also specify a value for the <code>Iops</code> attribute. The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. AWS uses the default volume size (in GiB) specified in the AMI attributes to set IOPS to 50 x (volume size).</p>
-- * VolumeSize [Integer] <p>The volume size, in GiB. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a>.</p>
-- @return EbsBlockDevice structure as a key-value pair table
function M.EbsBlockDevice(args)
	assert(args, "You must provide an argument table when creating EbsBlockDevice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeleteOnTermination"] = args["DeleteOnTermination"],
		["SnapshotId"] = args["SnapshotId"],
		["Iops"] = args["Iops"],
		["VolumeType"] = args["VolumeType"],
		["VolumeSize"] = args["VolumeSize"],
	}
	asserts.AssertEbsBlockDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.</p>
-- * Enable [Boolean] <p>Whether load-based auto scaling is enabled for the layer.</p>
-- * UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.</p>
-- * LayerId [String] <p>The layer ID.</p>
-- @return LoadBasedAutoScalingConfiguration structure as a key-value pair table
function M.LoadBasedAutoScalingConfiguration(args)
	assert(args, "You must provide an argument table when creating LoadBasedAutoScalingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DownScaling"] = args["DownScaling"],
		["Enable"] = args["Enable"],
		["UpScaling"] = args["UpScaling"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertLoadBasedAutoScalingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppId [String] <p>The app ID.</p>
-- @return CreateAppResult structure as a key-value pair table
function M.CreateAppResult(args)
	assert(args, "You must provide an argument table when creating CreateAppResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppId"] = args["AppId"],
	}
	asserts.AssertCreateAppResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
-- Required key: InstanceId
-- @return SetTimeBasedAutoScalingRequest structure as a key-value pair table
function M.SetTimeBasedAutoScalingRequest(args)
	assert(args, "You must provide an argument table when creating SetTimeBasedAutoScalingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["AutoScalingSchedule"] = args["AutoScalingSchedule"],
	}
	asserts.AssertSetTimeBasedAutoScalingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostnameTheme [String] <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- * UseCustomCookbooks [Boolean] <p>Whether to use custom cookbooks.</p>
-- * DefaultSshKeyName [String] <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- * CloneAppIds [Strings] <p>A list of source stack app IDs to be included in the cloned stack.</p>
-- * ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p> <note> <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p> </note>
-- * VpcId [String] <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2 Classic, the default value is no VPC.</p> </li> <li> <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. </p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a VPC</a>. For more information about default VPC and EC2 Classic, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>. </p>
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
-- * CustomCookbooksSource [Source] 
-- * AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- * DefaultAvailabilityZone [String] <p>The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>
-- * ClonePermissions [Boolean] <p>Whether to clone the source stack's permissions.</p>
-- * Name [String] <p>The cloned stack name.</p>
-- * Region [String] <p>The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * SourceStackId [String] <p>The source stack ID.</p>
-- * DefaultInstanceProfileArn [String] <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * Attributes [StackAttributes] <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
-- * DefaultOs [String] <p>The stack's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p> <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the parent stack's operating system. For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <note> <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- * DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- * DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information about custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a> </p>
-- Required key: SourceStackId
-- Required key: ServiceRoleArn
-- @return CloneStackRequest structure as a key-value pair table
function M.CloneStackRequest(args)
	assert(args, "You must provide an argument table when creating CloneStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HostnameTheme"] = args["HostnameTheme"],
		["UseCustomCookbooks"] = args["UseCustomCookbooks"],
		["DefaultSshKeyName"] = args["DefaultSshKeyName"],
		["CloneAppIds"] = args["CloneAppIds"],
		["ChefConfiguration"] = args["ChefConfiguration"],
		["UseOpsworksSecurityGroups"] = args["UseOpsworksSecurityGroups"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["VpcId"] = args["VpcId"],
		["ConfigurationManager"] = args["ConfigurationManager"],
		["CustomCookbooksSource"] = args["CustomCookbooksSource"],
		["AgentVersion"] = args["AgentVersion"],
		["DefaultAvailabilityZone"] = args["DefaultAvailabilityZone"],
		["ClonePermissions"] = args["ClonePermissions"],
		["Name"] = args["Name"],
		["Region"] = args["Region"],
		["SourceStackId"] = args["SourceStackId"],
		["DefaultInstanceProfileArn"] = args["DefaultInstanceProfileArn"],
		["Attributes"] = args["Attributes"],
		["DefaultOs"] = args["DefaultOs"],
		["DefaultSubnetId"] = args["DefaultSubnetId"],
		["DefaultRootDeviceType"] = args["DefaultRootDeviceType"],
		["CustomJson"] = args["CustomJson"],
	}
	asserts.AssertCloneStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * Comment [String] <p>A user-defined comment.</p>
-- * CustomJson [String] <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information about custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- * LayerIds [Strings] <p>The layer IDs for the deployment targets.</p>
-- * Command [DeploymentCommand] <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any associated arguments.</p>
-- * AppId [String] <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
-- * InstanceIds [Strings] <p>The instance IDs for the deployment targets.</p>
-- Required key: StackId
-- Required key: Command
-- @return CreateDeploymentRequest structure as a key-value pair table
function M.CreateDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Comment"] = args["Comment"],
		["CustomJson"] = args["CustomJson"],
		["LayerIds"] = args["LayerIds"],
		["Command"] = args["Command"],
		["AppId"] = args["AppId"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertCreateDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackIds [Strings] <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, <code>DescribeStacks</code> returns a description of every stack.</p>
-- @return DescribeStacksRequest structure as a key-value pair table
function M.DescribeStacksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeStacksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackIds"] = args["StackIds"],
	}
	asserts.AssertDescribeStacksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>This parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key ID.</p> </li> <li> <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code> to the user name.</p> </li> </ul>
-- * SshKey [String] <p>In requests, the repository's SSH key.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- * Url [String] <p>The source URL. The following is an example of an Amazon S3 source URL: <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>
-- * Password [String] <p>When included in a request, the parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access key.</p> </li> <li> <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the password.</p> </li> </ul> <p>For more information on how to safely handle IAM credentials, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html">http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- * Type [SourceType] <p>The repository type.</p>
-- * Revision [String] <p>The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.</p>
-- @return Source structure as a key-value pair table
function M.Source(args)
	assert(args, "You must provide an argument table when creating Source")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["SshKey"] = args["SshKey"],
		["Url"] = args["Url"],
		["Password"] = args["Password"],
		["Type"] = args["Type"],
		["Revision"] = args["Revision"],
	}
	asserts.AssertSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [Instances] <p>An array of <code>Instance</code> objects that describe the instances.</p>
-- @return DescribeInstancesResult structure as a key-value pair table
function M.DescribeInstancesResult(args)
	assert(args, "You must provide an argument table when creating DescribeInstancesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
	}
	asserts.AssertDescribeInstancesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticIps [ElasticIps] <p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>
-- @return DescribeElasticIpsResult structure as a key-value pair table
function M.DescribeElasticIpsResult(args)
	assert(args, "You must provide an argument table when creating DescribeElasticIpsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticIps"] = args["ElasticIps"],
	}
	asserts.AssertDescribeElasticIpsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The new name.</p>
-- * ElasticIp [String] <p>The IP address for which you want to update the name.</p>
-- Required key: ElasticIp
-- @return UpdateElasticIpRequest structure as a key-value pair table
function M.UpdateElasticIpRequest(args)
	assert(args, "You must provide an argument table when creating UpdateElasticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertUpdateElasticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>A stack ID.</p>
-- * IamUserArn [String] <p>The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * Level [String] <p>The user's permission level, which must be the following:</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a> </p>
-- * AllowSudo [Boolean] <p>Whether the user can use <b>sudo</b>.</p>
-- * AllowSsh [Boolean] <p>Whether the user can use SSH.</p>
-- @return Permission structure as a key-value pair table
function M.Permission(args)
	assert(args, "You must provide an argument table when creating Permission")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["IamUserArn"] = args["IamUserArn"],
		["Level"] = args["Level"],
		["AllowSudo"] = args["AllowSudo"],
		["AllowSsh"] = args["AllowSsh"],
	}
	asserts.AssertPermission(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * ElasticIp [String] <p>The Elastic IP address.</p>
-- Required key: ElasticIp
-- @return AssociateElasticIpRequest structure as a key-value pair table
function M.AssociateElasticIpRequest(args)
	assert(args, "You must provide an argument table when creating AssociateElasticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertAssociateElasticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- * LayerId [String] <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
-- Required key: ElasticLoadBalancerName
-- Required key: LayerId
-- @return DetachElasticLoadBalancerRequest structure as a key-value pair table
function M.DetachElasticLoadBalancerRequest(args)
	assert(args, "You must provide an argument table when creating DetachElasticLoadBalancerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticLoadBalancerName"] = args["ElasticLoadBalancerName"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertDetachElasticLoadBalancerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user's IAM ARN.</p>
-- @return CreateUserProfileResult structure as a key-value pair table
function M.CreateUserProfileResult(args)
	assert(args, "You must provide an argument table when creating CreateUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
	}
	asserts.AssertCreateUserProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user's IAM ARN.</p>
-- * SshPublicKey [String] <p>The user's SSH public key.</p>
-- * Name [String] <p>The user's name.</p>
-- * SshUsername [String] <p>The user's SSH user name.</p>
-- @return SelfUserProfile structure as a key-value pair table
function M.SelfUserProfile(args)
	assert(args, "You must provide an argument table when creating SelfUserProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
		["SshPublicKey"] = args["SshPublicKey"],
		["Name"] = args["Name"],
		["SshUsername"] = args["SshUsername"],
	}
	asserts.AssertSelfUserProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * ServiceRoleArn [String] <p>Do not use this parameter. You cannot update a stack's service role.</p>
-- * DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * Name [String] <p>The stack's new name.</p>
-- * HostnameTheme [String] <p>The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>
-- * UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- * CustomJson [String] <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information about custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- * DefaultAvailabilityZone [String] <p>The stack's default Availability Zone, which must be in the stack's region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see <a>CreateStack</a>. </p>
-- * UseOpsworksSecurityGroups [Boolean] <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to provide your own custom security groups instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * CustomCookbooksSource [Source] 
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
-- * ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * DefaultSubnetId [String] <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>
-- * DefaultSshKeyName [String] <p>A default Amazon EC2 key-pair name. The default value is <code>none</code>. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to Communicate with an Instance</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html"> create an instance</a>. </p>
-- * DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * Attributes [StackAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
-- * DefaultOs [String] <p>The stack's operating system, which must be set to one of the following:</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the stack's current operating system. For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
-- * AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>
-- Required key: StackId
-- @return UpdateStackRequest structure as a key-value pair table
function M.UpdateStackRequest(args)
	assert(args, "You must provide an argument table when creating UpdateStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["DefaultRootDeviceType"] = args["DefaultRootDeviceType"],
		["Name"] = args["Name"],
		["HostnameTheme"] = args["HostnameTheme"],
		["UseCustomCookbooks"] = args["UseCustomCookbooks"],
		["CustomJson"] = args["CustomJson"],
		["DefaultAvailabilityZone"] = args["DefaultAvailabilityZone"],
		["UseOpsworksSecurityGroups"] = args["UseOpsworksSecurityGroups"],
		["CustomCookbooksSource"] = args["CustomCookbooksSource"],
		["ConfigurationManager"] = args["ConfigurationManager"],
		["ChefConfiguration"] = args["ChefConfiguration"],
		["DefaultSubnetId"] = args["DefaultSubnetId"],
		["DefaultSshKeyName"] = args["DefaultSshKeyName"],
		["DefaultInstanceProfileArn"] = args["DefaultInstanceProfileArn"],
		["Attributes"] = args["Attributes"],
		["DefaultOs"] = args["DefaultOs"],
		["AgentVersion"] = args["AgentVersion"],
	}
	asserts.AssertUpdateStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The agent version.</p>
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
-- @return AgentVersion structure as a key-value pair table
function M.AgentVersion(args)
	assert(args, "You must provide an argument table when creating AgentVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["ConfigurationManager"] = args["ConfigurationManager"],
	}
	asserts.AssertAgentVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The cloned stack ID.</p>
-- @return CloneStackResult structure as a key-value pair table
function M.CloneStackResult(args)
	assert(args, "You must provide an argument table when creating CloneStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertCloneStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return StopStackRequest structure as a key-value pair table
function M.StopStackRequest(args)
	assert(args, "You must provide an argument table when creating StopStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertStopStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LayerId [String] <p>The layer ID.</p>
-- Required key: LayerId
-- @return GetHostnameSuggestionRequest structure as a key-value pair table
function M.GetHostnameSuggestionRequest(args)
	assert(args, "You must provide an argument table when creating GetHostnameSuggestionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertGetHostnameSuggestionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return DescribeStackProvisioningParametersRequest structure as a key-value pair table
function M.DescribeStackProvisioningParametersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeStackProvisioningParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertDescribeStackProvisioningParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user IAM ARN. This can also be a federated user's ARN.</p>
-- * SshPublicKey [String] <p>The user's new SSH public key.</p>
-- * AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- * SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required key: IamUserArn
-- @return UpdateUserProfileRequest structure as a key-value pair table
function M.UpdateUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
		["SshPublicKey"] = args["SshPublicKey"],
		["AllowSelfManagement"] = args["AllowSelfManagement"],
		["SshUsername"] = args["SshUsername"],
	}
	asserts.AssertUpdateUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * DbUser [String] <p>The database's master user name.</p>
-- * RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- * DbPassword [String] <p>The database password.</p>
-- Required key: StackId
-- Required key: RdsDbInstanceArn
-- Required key: DbUser
-- Required key: DbPassword
-- @return RegisterRdsDbInstanceRequest structure as a key-value pair table
function M.RegisterRdsDbInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterRdsDbInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["DbUser"] = args["DbUser"],
		["RdsDbInstanceArn"] = args["RdsDbInstanceArn"],
		["DbPassword"] = args["DbPassword"],
	}
	asserts.AssertRegisterRdsDbInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * LayerIds [Strings] <p>An array of layer IDs that specify the layers to be described. If you omit this parameter, <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
-- @return DescribeLayersRequest structure as a key-value pair table
function M.DescribeLayersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLayersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["LayerIds"] = args["LayerIds"],
	}
	asserts.AssertDescribeLayersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperatingSystemConfigurationManager = { ["Version"] = true, ["Name"] = true, nil }

function asserts.AssertOperatingSystemConfigurationManager(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperatingSystemConfigurationManager to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperatingSystemConfigurationManager[k], "OperatingSystemConfigurationManager contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperatingSystemConfigurationManager
-- <p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The versions of the configuration manager that are supported by an operating system.</p>
-- * Name [String] <p>The name of the configuration manager, which is Chef.</p>
-- @return OperatingSystemConfigurationManager structure as a key-value pair table
function M.OperatingSystemConfigurationManager(args)
	assert(args, "You must provide an argument table when creating OperatingSystemConfigurationManager")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Name"] = args["Name"],
	}
	asserts.AssertOperatingSystemConfigurationManager(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The command status:</p> <ul> <li> <p>failed</p> </li> <li> <p>successful</p> </li> <li> <p>skipped</p> </li> <li> <p>pending</p> </li> </ul>
-- * CompletedAt [DateTime] <p>Date when the command completed.</p>
-- * InstanceId [String] <p>The ID of the instance where the command was executed.</p>
-- * DeploymentId [String] <p>The command deployment ID.</p>
-- * AcknowledgedAt [DateTime] <p>Date and time when the command was acknowledged.</p>
-- * LogUrl [String] <p>The URL of the command log.</p>
-- * Type [String] <p>The command type:</p> <ul> <li> <p> <code>configure</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>execute_recipes</code> </p> </li> <li> <p> <code>install_dependencies</code> </p> </li> <li> <p> <code>restart</code> </p> </li> <li> <p> <code>rollback</code> </p> </li> <li> <p> <code>setup</code> </p> </li> <li> <p> <code>start</code> </p> </li> <li> <p> <code>stop</code> </p> </li> <li> <p> <code>undeploy</code> </p> </li> <li> <p> <code>update_custom_cookbooks</code> </p> </li> <li> <p> <code>update_dependencies</code> </p> </li> </ul>
-- * CommandId [String] <p>The command ID.</p>
-- * CreatedAt [DateTime] <p>Date and time when the command was run.</p>
-- * ExitCode [Integer] <p>The command exit code.</p>
-- @return Command structure as a key-value pair table
function M.Command(args)
	assert(args, "You must provide an argument table when creating Command")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["CompletedAt"] = args["CompletedAt"],
		["InstanceId"] = args["InstanceId"],
		["DeploymentId"] = args["DeploymentId"],
		["AcknowledgedAt"] = args["AcknowledgedAt"],
		["LogUrl"] = args["LogUrl"],
		["Type"] = args["Type"],
		["CommandId"] = args["CommandId"],
		["CreatedAt"] = args["CreatedAt"],
		["ExitCode"] = args["ExitCode"],
	}
	asserts.AssertCommand(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return DeleteStackRequest structure as a key-value pair table
function M.DeleteStackRequest(args)
	assert(args, "You must provide an argument table when creating DeleteStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertDeleteStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances.</p>
-- * RdsDbInstanceArns [Strings] <p>An array containing the ARNs of the instances to be described.</p>
-- Required key: StackId
-- @return DescribeRdsDbInstancesRequest structure as a key-value pair table
function M.DescribeRdsDbInstancesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRdsDbInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["RdsDbInstanceArns"] = args["RdsDbInstanceArns"],
	}
	asserts.AssertDescribeRdsDbInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID, which is an opaque string that you use to identify the stack when performing actions such as <code>DescribeStacks</code>.</p>
-- @return CreateStackResult structure as a key-value pair table
function M.CreateStackResult(args)
	assert(args, "You must provide an argument table when creating CreateStackResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertCreateStackResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 10KB)."</p> <note> <p>This parameter is supported only by Chef 11.10 stacks. If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>
-- * AppSource [Source] <p>A <code>Source</code> object that specifies the app repository.</p>
-- * DataSources [DataSources] <p>The app's data source.</p>
-- * EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- * SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- * Attributes [AppAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- * Domains [Strings] <p>The app virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- * Description [String] <p>A description of the app.</p>
-- * Shortname [String] <p>The app's short name.</p>
-- * Type [AppType] <p>The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
-- * Name [String] <p>The app name.</p>
-- Required key: StackId
-- Required key: Name
-- Required key: Type
-- @return CreateAppRequest structure as a key-value pair table
function M.CreateAppRequest(args)
	assert(args, "You must provide an argument table when creating CreateAppRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Environment"] = args["Environment"],
		["AppSource"] = args["AppSource"],
		["DataSources"] = args["DataSources"],
		["EnableSsl"] = args["EnableSsl"],
		["SslConfiguration"] = args["SslConfiguration"],
		["Attributes"] = args["Attributes"],
		["Domains"] = args["Domains"],
		["Description"] = args["Description"],
		["Shortname"] = args["Shortname"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The app stack ID.</p>
-- * Environment [EnvironmentVariables] <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>. </p> <note> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 10 KB (10240 Bytes). This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an "Environment: is too large (maximum is 10KB)" message.</p> </note>
-- * AppSource [Source] <p>A <code>Source</code> object that describes the app repository.</p>
-- * Description [String] <p>A description of the app.</p>
-- * EnableSsl [Boolean] <p>Whether to enable SSL for the app.</p>
-- * SslConfiguration [SslConfiguration] <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
-- * Name [String] <p>The app name.</p>
-- * AppId [String] <p>The app ID.</p>
-- * Domains [Strings] <p>The app vhost settings with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>
-- * Attributes [AppAttributes] <p>The stack attributes.</p>
-- * Shortname [String] <p>The app's short name.</p>
-- * Type [AppType] <p>The app type.</p>
-- * CreatedAt [String] <p>When the app was created.</p>
-- * DataSources [DataSources] <p>The app's data sources.</p>
-- @return App structure as a key-value pair table
function M.App(args)
	assert(args, "You must provide an argument table when creating App")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Environment"] = args["Environment"],
		["AppSource"] = args["AppSource"],
		["Description"] = args["Description"],
		["EnableSsl"] = args["EnableSsl"],
		["SslConfiguration"] = args["SslConfiguration"],
		["Name"] = args["Name"],
		["AppId"] = args["AppId"],
		["Domains"] = args["Domains"],
		["Attributes"] = args["Attributes"],
		["Shortname"] = args["Shortname"],
		["Type"] = args["Type"],
		["CreatedAt"] = args["CreatedAt"],
		["DataSources"] = args["DataSources"],
	}
	asserts.AssertApp(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The instance's database engine.</p>
-- * StackId [String] <p>The ID of the stack with which the instance is registered.</p>
-- * MissingOnRds [Boolean] <p>Set to <code>true</code> if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts to discover the instance only once. If this value is set to <code>true</code>, you must deregister the instance, and then register it again.</p>
-- * Region [String] <p>The instance's AWS region.</p>
-- * RdsDbInstanceArn [String] <p>The instance's ARN.</p>
-- * DbPassword [String] <p>AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>
-- * Address [String] <p>The instance's address.</p>
-- * DbUser [String] <p>The master user name.</p>
-- * DbInstanceIdentifier [String] <p>The DB instance identifier.</p>
-- @return RdsDbInstance structure as a key-value pair table
function M.RdsDbInstance(args)
	assert(args, "You must provide an argument table when creating RdsDbInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["StackId"] = args["StackId"],
		["MissingOnRds"] = args["MissingOnRds"],
		["Region"] = args["Region"],
		["RdsDbInstanceArn"] = args["RdsDbInstanceArn"],
		["DbPassword"] = args["DbPassword"],
		["Address"] = args["Address"],
		["DbUser"] = args["DbUser"],
		["DbInstanceIdentifier"] = args["DbInstanceIdentifier"],
	}
	asserts.AssertRdsDbInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [String] <p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>, <code>OpsworksMysqlInstance</code>, <code>RdsDbInstance</code>, or <code>None</code>.</p>
-- * DatabaseName [String] <p>The database name.</p>
-- * Arn [String] <p>The data source's ARN.</p>
-- @return DataSource structure as a key-value pair table
function M.DataSource(args)
	assert(args, "You must provide an argument table when creating DataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["DatabaseName"] = args["DatabaseName"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- * TagKeys [TagKeys] <p>A list of the keys of tags to be removed from a stack or layer.</p>
-- Required key: ResourceArn
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EcsClusterArn [String] <p>The cluster's ARN.</p>
-- @return RegisterEcsClusterResult structure as a key-value pair table
function M.RegisterEcsClusterResult(args)
	assert(args, "You must provide an argument table when creating RegisterEcsClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EcsClusterArn"] = args["EcsClusterArn"],
	}
	asserts.AssertRegisterEcsClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>A stack ID. <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
-- * EcsClusterArns [Strings] <p>A list of ARNs, one for each cluster to be described.</p>
-- * NextToken [String] <p>If the previous paginated request did not return all of the remaining results, the response object's<code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>DescribeEcsClusters</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- * MaxResults [Integer] <p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
-- @return DescribeEcsClustersRequest structure as a key-value pair table
function M.DescribeEcsClustersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEcsClustersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["EcsClusterArns"] = args["EcsClusterArns"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeEcsClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AgentVersions [AgentVersions] <p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.</p>
-- @return DescribeAgentVersionsResult structure as a key-value pair table
function M.DescribeAgentVersionsResult(args)
	assert(args, "You must provide an argument table when creating DescribeAgentVersionsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AgentVersions"] = args["AgentVersions"],
	}
	asserts.AssertDescribeAgentVersionsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DownScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.</p>
-- * Enable [Boolean] <p>Enables load-based auto scaling for the layer.</p>
-- * UpScaling [AutoScalingThresholds] <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.</p>
-- * LayerId [String] <p>The layer ID.</p>
-- Required key: LayerId
-- @return SetLoadBasedAutoScalingRequest structure as a key-value pair table
function M.SetLoadBasedAutoScalingRequest(args)
	assert(args, "You must provide an argument table when creating SetLoadBasedAutoScalingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DownScaling"] = args["DownScaling"],
		["Enable"] = args["Enable"],
		["UpScaling"] = args["UpScaling"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertSetLoadBasedAutoScalingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoadBasedAutoScalingConfigurations [LoadBasedAutoScalingConfigurations] <p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's configuration.</p>
-- @return DescribeLoadBasedAutoScalingResult structure as a key-value pair table
function M.DescribeLoadBasedAutoScalingResult(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBasedAutoScalingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoadBasedAutoScalingConfigurations"] = args["LoadBasedAutoScalingConfigurations"],
	}
	asserts.AssertDescribeLoadBasedAutoScalingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimeBasedAutoScalingConfigurations [TimeBasedAutoScalingConfigurations] <p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the configuration for the specified instances.</p>
-- @return DescribeTimeBasedAutoScalingResult structure as a key-value pair table
function M.DescribeTimeBasedAutoScalingResult(args)
	assert(args, "You must provide an argument table when creating DescribeTimeBasedAutoScalingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimeBasedAutoScalingConfigurations"] = args["TimeBasedAutoScalingConfigurations"],
	}
	asserts.AssertDescribeTimeBasedAutoScalingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- @return DescribePermissionsRequest structure as a key-value pair table
function M.DescribePermissionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribePermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["IamUserArn"] = args["IamUserArn"],
	}
	asserts.AssertDescribePermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- * Level [String] <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information about the permissions associated with these levels, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
-- * AllowSudo [Boolean] <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
-- * AllowSsh [Boolean] <p>The user is allowed to use SSH to communicate with the instance.</p>
-- Required key: StackId
-- Required key: IamUserArn
-- @return SetPermissionRequest structure as a key-value pair table
function M.SetPermissionRequest(args)
	assert(args, "You must provide an argument table when creating SetPermissionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["IamUserArn"] = args["IamUserArn"],
		["Level"] = args["Level"],
		["AllowSudo"] = args["AllowSudo"],
		["AllowSsh"] = args["AllowSsh"],
	}
	asserts.AssertSetPermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceIds [Strings] <p>An array of instance IDs.</p>
-- Required key: InstanceIds
-- @return DescribeTimeBasedAutoScalingRequest structure as a key-value pair table
function M.DescribeTimeBasedAutoScalingRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTimeBasedAutoScalingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertDescribeTimeBasedAutoScalingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID. If you include this parameter, the command returns a description of the commands associated with the specified stack.</p>
-- * DeploymentIds [Strings] <p>An array of deployment IDs to be described. If you include this parameter, the command returns a description of the specified deployments. Otherwise, it returns a description of every deployment.</p>
-- * AppId [String] <p>The app ID. If you include this parameter, the command returns a description of the commands associated with the specified app.</p>
-- @return DescribeDeploymentsRequest structure as a key-value pair table
function M.DescribeDeploymentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDeploymentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["DeploymentIds"] = args["DeploymentIds"],
		["AppId"] = args["AppId"],
	}
	asserts.AssertDescribeDeploymentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserProfiles [UserProfiles] <p>A <code>Users</code> object that describes the specified users.</p>
-- @return DescribeUserProfilesResult structure as a key-value pair table
function M.DescribeUserProfilesResult(args)
	assert(args, "You must provide an argument table when creating DescribeUserProfilesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserProfiles"] = args["UserProfiles"],
	}
	asserts.AssertDescribeUserProfilesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BerkshelfVersion [String] <p>The Berkshelf version.</p>
-- * ManageBerkshelf [Boolean] <p>Whether to enable Berkshelf.</p>
-- @return ChefConfiguration structure as a key-value pair table
function M.ChefConfiguration(args)
	assert(args, "You must provide an argument table when creating ChefConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BerkshelfVersion"] = args["BerkshelfVersion"],
		["ManageBerkshelf"] = args["ManageBerkshelf"],
	}
	asserts.AssertChefConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
-- @return DescribeAgentVersionsRequest structure as a key-value pair table
function M.DescribeAgentVersionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAgentVersionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ConfigurationManager"] = args["ConfigurationManager"],
	}
	asserts.AssertDescribeAgentVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Stacks [Stacks] <p>An array of <code>Stack</code> objects that describe the stacks.</p>
-- @return DescribeStacksResult structure as a key-value pair table
function M.DescribeStacksResult(args)
	assert(args, "You must provide an argument table when creating DescribeStacksResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Stacks"] = args["Stacks"],
	}
	asserts.AssertDescribeStacksResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RdsDbInstances [RdsDbInstances] <p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>
-- @return DescribeRdsDbInstancesResult structure as a key-value pair table
function M.DescribeRdsDbInstancesResult(args)
	assert(args, "You must provide an argument table when creating DescribeRdsDbInstancesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RdsDbInstances"] = args["RdsDbInstances"],
	}
	asserts.AssertDescribeRdsDbInstancesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Args [DeploymentCommandArgs] <p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p> <p> <code>{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1", "value2", ...], ...}</code> </p> <p>The <code>update_dependencies</code> command takes two arguments:</p> <ul> <li> <p> <code>upgrade_os_to</code> - Specifies the desired Amazon Linux version for instances whose OS you want to upgrade, such as <code>Amazon Linux 2016.09</code>. You must also set the <code>allow_reboot</code> argument to true.</p> </li> <li> <p> <code>allow_reboot</code> - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if necessary, after installing the updates. This argument can be set to either <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p> </li> </ul> <p>For example, to upgrade an instance to Amazon Linux 2016.09, set <code>Args</code> to the following.</p> <p> <code> { "upgrade_os_to":["Amazon Linux 2016.09"], "allow_reboot":["true"] } </code> </p>
-- * Name [DeploymentCommandName] <p>Specifies the operation. You can specify only one command.</p> <p>For stacks, the following commands are available:</p> <ul> <li> <p> <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to <code>{"recipes":["phpapp::appsetup"]}</code>.</p> </li> <li> <p> <code>install_dependencies</code>: Install the stack's dependencies.</p> </li> <li> <p> <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p> </li> <li> <p> <code>update_dependencies</code>: Update the stack's dependencies.</p> </li> </ul> <note> <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p> </note> <p>For apps, the following commands are available:</p> <ul> <li> <p> <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code> parameter named <code>migrate</code>. Set <code>Args</code> to {"migrate":["true"]} to migrate the database. The default setting is {"migrate":["false"]}.</p> </li> <li> <p> <code>rollback</code> Roll the app back to the previous version. When you update an app, AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this command to roll an app back as many as four versions.</p> </li> <li> <p> <code>start</code>: Start the app's web or application server.</p> </li> <li> <p> <code>stop</code>: Stop the app's web or application server.</p> </li> <li> <p> <code>restart</code>: Restart the app's web or application server.</p> </li> <li> <p> <code>undeploy</code>: Undeploy the app.</p> </li> </ul>
-- Required key: Name
-- @return DeploymentCommand structure as a key-value pair table
function M.DeploymentCommand(args)
	assert(args, "You must provide an argument table when creating DeploymentCommand")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Args"] = args["Args"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeploymentCommand(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>.</p>
-- * EcsClusters [EcsClusters] <p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>
-- @return DescribeEcsClustersResult structure as a key-value pair table
function M.DescribeEcsClustersResult(args)
	assert(args, "You must provide an argument table when creating DescribeEcsClustersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["EcsClusters"] = args["EcsClusters"],
	}
	asserts.AssertDescribeEcsClustersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The exception message.</p>
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
		["message"] = args["message"],
	}
	asserts.AssertValidationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DbUser [String] <p>The master user name.</p>
-- * RdsDbInstanceArn [String] <p>The Amazon RDS instance's ARN.</p>
-- * DbPassword [String] <p>The database password.</p>
-- Required key: RdsDbInstanceArn
-- @return UpdateRdsDbInstanceRequest structure as a key-value pair table
function M.UpdateRdsDbInstanceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRdsDbInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DbUser"] = args["DbUser"],
		["RdsDbInstanceArn"] = args["RdsDbInstanceArn"],
		["DbPassword"] = args["DbPassword"],
	}
	asserts.AssertUpdateRdsDbInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user's IAM ARN.</p>
-- * SshPublicKey [String] <p>The user's SSH public key.</p>
-- * AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User Permissions</a>.</p>
-- * Name [String] <p>The user's name.</p>
-- * SshUsername [String] <p>The user's SSH user name.</p>
-- @return UserProfile structure as a key-value pair table
function M.UserProfile(args)
	assert(args, "You must provide an argument table when creating UserProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
		["SshPublicKey"] = args["SshPublicKey"],
		["AllowSelfManagement"] = args["AllowSelfManagement"],
		["Name"] = args["Name"],
		["SshUsername"] = args["SshUsername"],
	}
	asserts.AssertUserProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * AmiId [String] <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p> </note>
-- * LayerIds [Strings] <p>An array that contains the instance's layer IDs.</p>
-- * VirtualizationType [String] <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
-- * EbsOptimized [Boolean] <p>Whether to create an Amazon EBS-optimized instance.</p>
-- * SshKeyName [String] <p>The instance's Amazon EC2 key-pair name.</p>
-- * Hostname [String] <p>The instance host name.</p>
-- * RootDeviceType [RootDeviceType] <p>The instance root device type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * BlockDeviceMappings [BlockDeviceMappings] <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block devices. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
-- * AvailabilityZone [String] <p>The instance Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * Architecture [Architecture] <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- * AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- * SubnetId [String] <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>
-- * Tenancy [String] <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code> to ensure that your instances have the latest security updates.</p> </note>
-- * Os [String] <p>The instance's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>.</p> </li> </ul> <p>For more information about the supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>For more information about how to use custom AMIs with AWS OpsWorks Stacks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
-- * InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- * AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
-- Required key: StackId
-- Required key: LayerIds
-- Required key: InstanceType
-- @return CreateInstanceRequest structure as a key-value pair table
function M.CreateInstanceRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["AmiId"] = args["AmiId"],
		["LayerIds"] = args["LayerIds"],
		["VirtualizationType"] = args["VirtualizationType"],
		["EbsOptimized"] = args["EbsOptimized"],
		["SshKeyName"] = args["SshKeyName"],
		["Hostname"] = args["Hostname"],
		["RootDeviceType"] = args["RootDeviceType"],
		["BlockDeviceMappings"] = args["BlockDeviceMappings"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Architecture"] = args["Architecture"],
		["AutoScalingType"] = args["AutoScalingType"],
		["SubnetId"] = args["SubnetId"],
		["Tenancy"] = args["Tenancy"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
		["Os"] = args["Os"],
		["InstanceType"] = args["InstanceType"],
		["AgentVersion"] = args["AgentVersion"],
	}
	asserts.AssertCreateInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the RAID arrays associated with the specified instance. </p>
-- * StackId [String] <p>The stack ID.</p>
-- * RaidArrayIds [Strings] <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the specified arrays. Otherwise, it returns a description of every array.</p>
-- @return DescribeRaidArraysRequest structure as a key-value pair table
function M.DescribeRaidArraysRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRaidArraysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["StackId"] = args["StackId"],
		["RaidArrayIds"] = args["RaidArrayIds"],
	}
	asserts.AssertDescribeRaidArraysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Ebs [EbsBlockDevice] <p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the instance is launched.</p>
-- * DeviceName [String] <p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root device, you can use the explicit device name or you can set this parameter to <code>ROOT_DEVICE</code> and AWS OpsWorks Stacks will provide the correct device name.</p>
-- * VirtualName [String] <p>The virtual device name. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a>.</p>
-- * NoDevice [String] <p>Suppresses the specified device included in the AMI's block device mapping.</p>
-- @return BlockDeviceMapping structure as a key-value pair table
function M.BlockDeviceMapping(args)
	assert(args, "You must provide an argument table when creating BlockDeviceMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Ebs"] = args["Ebs"],
		["DeviceName"] = args["DeviceName"],
		["VirtualName"] = args["VirtualName"],
		["NoDevice"] = args["NoDevice"],
	}
	asserts.AssertBlockDeviceMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
-- Required key: IamUserArn
-- @return DeleteUserProfileRequest structure as a key-value pair table
function M.DeleteUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
	}
	asserts.AssertDeleteUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified stack.</p>
-- * InstanceIds [Strings] <p>An array of instance IDs to be described. If you use this parameter, <code>DescribeInstances</code> returns a description of the specified instances. Otherwise, it returns a description of every instance.</p>
-- * LayerId [String] <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified layer.</p>
-- @return DescribeInstancesRequest structure as a key-value pair table
function M.DescribeInstancesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["InstanceIds"] = args["InstanceIds"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertDescribeInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Document [String] <p>A JSON document that contains the metadata.</p>
-- * Signature [String] <p>A signature that can be used to verify the document's accuracy and authenticity.</p>
-- @return InstanceIdentity structure as a key-value pair table
function M.InstanceIdentity(args)
	assert(args, "You must provide an argument table when creating InstanceIdentity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Document"] = args["Document"],
		["Signature"] = args["Signature"],
	}
	asserts.AssertInstanceIdentity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticIp [String] <p>The Elastic IP address.</p>
-- Required key: ElasticIp
-- @return DeregisterElasticIpRequest structure as a key-value pair table
function M.DeregisterElasticIpRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterElasticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertDeregisterElasticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * AvailabilityZone [String] <p>The array's Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * Name [String] <p>The array name.</p>
-- * NumberOfDisks [Integer] <p>The number of disks in the array.</p>
-- * InstanceId [String] <p>The instance ID.</p>
-- * RaidLevel [Integer] <p>The <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- * VolumeType [String] <p>The volume type, standard or PIOPS.</p>
-- * RaidArrayId [String] <p>The array ID.</p>
-- * Device [String] <p>The array's Linux device. For example /dev/mdadm0.</p>
-- * MountPoint [String] <p>The array's mount point.</p>
-- * Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- * CreatedAt [DateTime] <p>When the RAID array was created.</p>
-- * Size [Integer] <p>The array's size.</p>
-- @return RaidArray structure as a key-value pair table
function M.RaidArray(args)
	assert(args, "You must provide an argument table when creating RaidArray")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Name"] = args["Name"],
		["NumberOfDisks"] = args["NumberOfDisks"],
		["InstanceId"] = args["InstanceId"],
		["RaidLevel"] = args["RaidLevel"],
		["VolumeType"] = args["VolumeType"],
		["RaidArrayId"] = args["RaidArrayId"],
		["Device"] = args["Device"],
		["MountPoint"] = args["MountPoint"],
		["Iops"] = args["Iops"],
		["CreatedAt"] = args["CreatedAt"],
		["Size"] = args["Size"],
	}
	asserts.AssertRaidArray(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The ID of the instance that the address is attached to.</p>
-- * Ip [String] <p>The IP address.</p>
-- * Domain [String] <p>The domain.</p>
-- * Region [String] <p>The AWS region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * Name [String] <p>The name.</p>
-- @return ElasticIp structure as a key-value pair table
function M.ElasticIp(args)
	assert(args, "You must provide an argument table when creating ElasticIp")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["Ip"] = args["Ip"],
		["Domain"] = args["Domain"],
		["Region"] = args["Region"],
		["Name"] = args["Name"],
	}
	asserts.AssertElasticIp(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticLoadBalancers [ElasticLoadBalancers] <p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing instances.</p>
-- @return DescribeElasticLoadBalancersResult structure as a key-value pair table
function M.DescribeElasticLoadBalancersResult(args)
	assert(args, "You must provide an argument table when creating DescribeElasticLoadBalancersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticLoadBalancers"] = args["ElasticLoadBalancers"],
	}
	asserts.AssertDescribeElasticLoadBalancersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * DeleteVolumes [Boolean] <p>Whether to delete the instance's Amazon EBS volumes.</p>
-- * DeleteElasticIp [Boolean] <p>Whether to delete the instance Elastic IP address.</p>
-- Required key: InstanceId
-- @return DeleteInstanceRequest structure as a key-value pair table
function M.DeleteInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["DeleteVolumes"] = args["DeleteVolumes"],
		["DeleteElasticIp"] = args["DeleteElasticIp"],
	}
	asserts.AssertDeleteInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticIp [String] <p>The Elastic IP address.</p>
-- Required key: ElasticIp
-- @return DisassociateElasticIpRequest structure as a key-value pair table
function M.DisassociateElasticIpRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateElasticIpRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertDisassociateElasticIpRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The ID of the stack that the instance is associated with.</p>
-- * ElasticLoadBalancerName [String] <p>The Elastic Load Balancing instance's name.</p>
-- * VpcId [String] <p>The VPC ID.</p>
-- * Ec2InstanceIds [Strings] <p>A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.</p>
-- * Region [String] <p>The instance's AWS region.</p>
-- * DnsName [String] <p>The instance's public DNS name.</p>
-- * LayerId [String] <p>The ID of the layer that the instance is attached to.</p>
-- * AvailabilityZones [Strings] <p>A list of Availability Zones.</p>
-- * SubnetIds [Strings] <p>A list of subnet IDs, if the stack is running in a VPC.</p>
-- @return ElasticLoadBalancer structure as a key-value pair table
function M.ElasticLoadBalancer(args)
	assert(args, "You must provide an argument table when creating ElasticLoadBalancer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["ElasticLoadBalancerName"] = args["ElasticLoadBalancerName"],
		["VpcId"] = args["VpcId"],
		["Ec2InstanceIds"] = args["Ec2InstanceIds"],
		["Region"] = args["Region"],
		["DnsName"] = args["DnsName"],
		["LayerId"] = args["LayerId"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["SubnetIds"] = args["SubnetIds"],
	}
	asserts.AssertElasticLoadBalancer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The exception message.</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RaidArrays [RaidArrays] <p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>
-- @return DescribeRaidArraysResult structure as a key-value pair table
function M.DescribeRaidArraysResult(args)
	assert(args, "You must provide an argument table when creating DescribeRaidArraysResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RaidArrays"] = args["RaidArrays"],
	}
	asserts.AssertDescribeRaidArraysResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified stack.</p>
-- * InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified instance.</p>
-- * ServiceErrorIds [Strings] <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the specified errors. Otherwise, it returns a description of every error.</p>
-- @return DescribeServiceErrorsRequest structure as a key-value pair table
function M.DescribeServiceErrorsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServiceErrorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["InstanceId"] = args["InstanceId"],
		["ServiceErrorIds"] = args["ServiceErrorIds"],
	}
	asserts.AssertDescribeServiceErrorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * InstanceId [String] <p>The instance ID.</p>
-- * ServiceErrorId [String] <p>The error ID.</p>
-- * Message [String] <p>A message that describes the error.</p>
-- * Type [String] <p>The error type.</p>
-- * CreatedAt [DateTime] <p>When the error occurred.</p>
-- @return ServiceError structure as a key-value pair table
function M.ServiceError(args)
	assert(args, "You must provide an argument table when creating ServiceError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["InstanceId"] = args["InstanceId"],
		["ServiceErrorId"] = args["ServiceErrorId"],
		["Message"] = args["Message"],
		["Type"] = args["Type"],
		["CreatedAt"] = args["CreatedAt"],
	}
	asserts.AssertServiceError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified instance.</p>
-- * StackId [String] <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
-- * RaidArrayId [String] <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified RAID array.</p>
-- * VolumeIds [Strings] <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.</p>
-- @return DescribeVolumesRequest structure as a key-value pair table
function M.DescribeVolumesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeVolumesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["StackId"] = args["StackId"],
		["RaidArrayId"] = args["RaidArrayId"],
		["VolumeIds"] = args["VolumeIds"],
	}
	asserts.AssertDescribeVolumesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return StartStackRequest structure as a key-value pair table
function M.StartStackRequest(args)
	assert(args, "You must provide an argument table when creating StartStackRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertStartStackRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VolumeConfiguration = { ["NumberOfDisks"] = true, ["Encrypted"] = true, ["RaidLevel"] = true, ["VolumeType"] = true, ["Iops"] = true, ["MountPoint"] = true, ["Size"] = true, nil }

function asserts.AssertVolumeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeConfiguration to be of type 'table'")
	assert(struct["MountPoint"], "Expected key MountPoint to exist in table")
	assert(struct["NumberOfDisks"], "Expected key NumberOfDisks to exist in table")
	assert(struct["Size"], "Expected key Size to exist in table")
	if struct["NumberOfDisks"] then asserts.AssertInteger(struct["NumberOfDisks"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberOfDisks [Integer] <p>The number of disks in the volume.</p>
-- * Encrypted [Boolean] <p>Specifies whether an Amazon EBS volume is encrypted. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a>.</p>
-- * RaidLevel [Integer] <p>The volume <a href="http://en.wikipedia.org/wiki/Standard_RAID_levels">RAID level</a>.</p>
-- * VolumeType [String] <p>The volume type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html"> Amazon EBS Volume Types</a>.</p> <ul> <li> <p> <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> </ul>
-- * Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- * MountPoint [String] <p>The volume mount point. For example "/dev/sdh".</p>
-- * Size [Integer] <p>The volume size.</p>
-- Required key: MountPoint
-- Required key: NumberOfDisks
-- Required key: Size
-- @return VolumeConfiguration structure as a key-value pair table
function M.VolumeConfiguration(args)
	assert(args, "You must provide an argument table when creating VolumeConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberOfDisks"] = args["NumberOfDisks"],
		["Encrypted"] = args["Encrypted"],
		["RaidLevel"] = args["RaidLevel"],
		["VolumeType"] = args["VolumeType"],
		["Iops"] = args["Iops"],
		["MountPoint"] = args["MountPoint"],
		["Size"] = args["Size"],
	}
	asserts.AssertVolumeConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses associated with the specified instance.</p>
-- * StackId [String] <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses that are registered with the specified stack.</p>
-- * Ips [Strings] <p>An array of Elastic IP addresses to be described. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.</p>
-- @return DescribeElasticIpsRequest structure as a key-value pair table
function M.DescribeElasticIpsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeElasticIpsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["StackId"] = args["StackId"],
		["Ips"] = args["Ips"],
	}
	asserts.AssertDescribeElasticIpsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- @return CreateInstanceResult structure as a key-value pair table
function M.CreateInstanceResult(args)
	assert(args, "You must provide an argument table when creating CreateInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertCreateInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSummary [StackSummary] <p>A <code>StackSummary</code> object that contains the results.</p>
-- @return DescribeStackSummaryResult structure as a key-value pair table
function M.DescribeStackSummaryResult(args)
	assert(args, "You must provide an argument table when creating DescribeStackSummaryResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSummary"] = args["StackSummary"],
	}
	asserts.AssertDescribeStackSummaryResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MountPoint [String] <p>The new mount point.</p>
-- * VolumeId [String] <p>The volume ID.</p>
-- * Name [String] <p>The new name.</p>
-- Required key: VolumeId
-- @return UpdateVolumeRequest structure as a key-value pair table
function M.UpdateVolumeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateVolumeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MountPoint"] = args["MountPoint"],
		["VolumeId"] = args["VolumeId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateVolumeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.</p>
-- * Name [String] <p>The name. This parameter must be set to "Chef".</p>
-- @return StackConfigurationManager structure as a key-value pair table
function M.StackConfigurationManager(args)
	assert(args, "You must provide an argument table when creating StackConfigurationManager")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Name"] = args["Name"],
	}
	asserts.AssertStackConfigurationManager(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstancesCount = { ["StartFailed"] = true, ["Requested"] = true, ["Registering"] = true, ["Terminated"] = true, ["RunningSetup"] = true, ["Booting"] = true, ["Deregistering"] = true, ["Rebooting"] = true, ["Unassigning"] = true, ["ShuttingDown"] = true, ["SetupFailed"] = true, ["Terminating"] = true, ["ConnectionLost"] = true, ["StopFailed"] = true, ["Online"] = true, ["Stopping"] = true, ["Stopped"] = true, ["Assigning"] = true, ["Registered"] = true, ["Pending"] = true, nil }

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
	if struct["StopFailed"] then asserts.AssertInteger(struct["StopFailed"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartFailed [Integer] <p>The number of instances with <code>start_failed</code> status.</p>
-- * Requested [Integer] <p>The number of instances with <code>requested</code> status.</p>
-- * Registering [Integer] <p>The number of instances in the Registering state.</p>
-- * Terminated [Integer] <p>The number of instances with <code>terminated</code> status.</p>
-- * RunningSetup [Integer] <p>The number of instances with <code>running_setup</code> status.</p>
-- * Booting [Integer] <p>The number of instances with <code>booting</code> status.</p>
-- * Deregistering [Integer] <p>The number of instances in the Deregistering state.</p>
-- * Rebooting [Integer] <p>The number of instances with <code>rebooting</code> status.</p>
-- * Unassigning [Integer] <p>The number of instances in the Unassigning state.</p>
-- * ShuttingDown [Integer] <p>The number of instances with <code>shutting_down</code> status.</p>
-- * SetupFailed [Integer] <p>The number of instances with <code>setup_failed</code> status.</p>
-- * Terminating [Integer] <p>The number of instances with <code>terminating</code> status.</p>
-- * ConnectionLost [Integer] <p>The number of instances with <code>connection_lost</code> status.</p>
-- * StopFailed [Integer] <p>The number of instances with <code>stop_failed</code> status.</p>
-- * Online [Integer] <p>The number of instances with <code>online</code> status.</p>
-- * Stopping [Integer] <p>The number of instances with <code>stopping</code> status.</p>
-- * Stopped [Integer] <p>The number of instances with <code>stopped</code> status.</p>
-- * Assigning [Integer] <p>The number of instances in the Assigning state.</p>
-- * Registered [Integer] <p>The number of instances in the Registered state.</p>
-- * Pending [Integer] <p>The number of instances with <code>pending</code> status.</p>
-- @return InstancesCount structure as a key-value pair table
function M.InstancesCount(args)
	assert(args, "You must provide an argument table when creating InstancesCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartFailed"] = args["StartFailed"],
		["Requested"] = args["Requested"],
		["Registering"] = args["Registering"],
		["Terminated"] = args["Terminated"],
		["RunningSetup"] = args["RunningSetup"],
		["Booting"] = args["Booting"],
		["Deregistering"] = args["Deregistering"],
		["Rebooting"] = args["Rebooting"],
		["Unassigning"] = args["Unassigning"],
		["ShuttingDown"] = args["ShuttingDown"],
		["SetupFailed"] = args["SetupFailed"],
		["Terminating"] = args["Terminating"],
		["ConnectionLost"] = args["ConnectionLost"],
		["StopFailed"] = args["StopFailed"],
		["Online"] = args["Online"],
		["Stopping"] = args["Stopping"],
		["Stopped"] = args["Stopped"],
		["Assigning"] = args["Assigning"],
		["Registered"] = args["Registered"],
		["Pending"] = args["Pending"],
	}
	asserts.AssertInstancesCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Commands [Commands] <p>An array of <code>Command</code> objects that describe each of the specified commands.</p>
-- @return DescribeCommandsResult structure as a key-value pair table
function M.DescribeCommandsResult(args)
	assert(args, "You must provide an argument table when creating DescribeCommandsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Commands"] = args["Commands"],
	}
	asserts.AssertDescribeCommandsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [String] <p>The operating system version.</p>
-- * Name [String] <p>The operating system name.</p>
-- * Family [String] <p>The operating system family.</p>
-- @return ReportedOs structure as a key-value pair table
function M.ReportedOs(args)
	assert(args, "You must provide an argument table when creating ReportedOs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Name"] = args["Name"],
		["Family"] = args["Family"],
	}
	asserts.AssertReportedOs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [String] <p>The user name.</p>
-- * InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- * Password [String] <p>The password.</p>
-- * ValidForInMinutes [Integer] <p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>
-- @return TemporaryCredential structure as a key-value pair table
function M.TemporaryCredential(args)
	assert(args, "You must provide an argument table when creating TemporaryCredential")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["InstanceId"] = args["InstanceId"],
		["Password"] = args["Password"],
		["ValidForInMinutes"] = args["ValidForInMinutes"],
	}
	asserts.AssertTemporaryCredential(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LifecycleEventConfiguration [LifecycleEventConfiguration] <p/>
-- * CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
-- * AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * Name [String] <p>The layer name, which is used by the console.</p>
-- * CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- * CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. </p>
-- * VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- * AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- * CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- * LayerId [String] <p>The layer ID.</p>
-- * Attributes [LayerAttributes] <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
-- * Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a> </p>
-- * Packages [Strings] <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
-- * CustomSecurityGroupIds [Strings] <p>An array containing the layer's custom security group IDs.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- Required key: LayerId
-- @return UpdateLayerRequest structure as a key-value pair table
function M.UpdateLayerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLayerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LifecycleEventConfiguration"] = args["LifecycleEventConfiguration"],
		["CustomRecipes"] = args["CustomRecipes"],
		["AutoAssignElasticIps"] = args["AutoAssignElasticIps"],
		["Name"] = args["Name"],
		["CloudWatchLogsConfiguration"] = args["CloudWatchLogsConfiguration"],
		["CustomJson"] = args["CustomJson"],
		["VolumeConfigurations"] = args["VolumeConfigurations"],
		["AutoAssignPublicIps"] = args["AutoAssignPublicIps"],
		["EnableAutoHealing"] = args["EnableAutoHealing"],
		["CustomInstanceProfileArn"] = args["CustomInstanceProfileArn"],
		["UseEbsOptimizedInstances"] = args["UseEbsOptimizedInstances"],
		["LayerId"] = args["LayerId"],
		["Attributes"] = args["Attributes"],
		["Shortname"] = args["Shortname"],
		["Packages"] = args["Packages"],
		["CustomSecurityGroupIds"] = args["CustomSecurityGroupIds"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
	}
	asserts.AssertUpdateLayerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- Required key: InstanceId
-- @return UnassignInstanceRequest structure as a key-value pair table
function M.UnassignInstanceRequest(args)
	assert(args, "You must provide an argument table when creating UnassignInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertUnassignInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperatingSystem = { ["Name"] = true, ["Type"] = true, ["Supported"] = true, ["ReportedVersion"] = true, ["ReportedName"] = true, ["Id"] = true, ["ConfigurationManagers"] = true, nil }

function asserts.AssertOperatingSystem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperatingSystem to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Supported"] then asserts.AssertBoolean(struct["Supported"]) end
	if struct["ReportedVersion"] then asserts.AssertString(struct["ReportedVersion"]) end
	if struct["ReportedName"] then asserts.AssertString(struct["ReportedName"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["ConfigurationManagers"] then asserts.AssertOperatingSystemConfigurationManagers(struct["ConfigurationManagers"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperatingSystem[k], "OperatingSystem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperatingSystem
-- <p>Describes supported operating systems in AWS OpsWorks Stacks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the operating system, such as <code>Amazon Linux 2017.09</code>.</p>
-- * Type [String] <p>The type of a supported operating system, either <code>Linux</code> or <code>Windows</code>.</p>
-- * Supported [Boolean] <p>Indicates that an operating system is not supported for new instances.</p>
-- * ReportedVersion [String] <p>The version of the operating system, including the release and edition, if applicable.</p>
-- * ReportedName [String] <p>A short name for the operating system manufacturer.</p>
-- * Id [String] <p>The ID of a supported operating system, such as <code>Amazon Linux 2017.09</code>.</p>
-- * ConfigurationManagers [OperatingSystemConfigurationManagers] <p>Supported configuration manager name and versions for an AWS OpsWorks Stacks operating system.</p>
-- @return OperatingSystem structure as a key-value pair table
function M.OperatingSystem(args)
	assert(args, "You must provide an argument table when creating OperatingSystem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Type"] = args["Type"],
		["Supported"] = args["Supported"],
		["ReportedVersion"] = args["ReportedVersion"],
		["ReportedName"] = args["ReportedName"],
		["Id"] = args["Id"],
		["ConfigurationManagers"] = args["ConfigurationManagers"],
	}
	asserts.AssertOperatingSystem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LayerId [String] <p>The layer ID.</p>
-- @return CreateLayerResult structure as a key-value pair table
function M.CreateLayerResult(args)
	assert(args, "You must provide an argument table when creating CreateLayerResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertCreateLayerResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogStreams [CloudWatchLogsLogStreams] <p>A list of configuration options for CloudWatch Logs.</p>
-- * Enabled [Boolean] <p>Whether CloudWatch Logs is enabled for a layer.</p>
-- @return CloudWatchLogsConfiguration structure as a key-value pair table
function M.CloudWatchLogsConfiguration(args)
	assert(args, "You must provide an argument table when creating CloudWatchLogsConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LogStreams"] = args["LogStreams"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertCloudWatchLogsConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOperatingSystemsResponse = { ["OperatingSystems"] = true, nil }

function asserts.AssertDescribeOperatingSystemsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOperatingSystemsResponse to be of type 'table'")
	if struct["OperatingSystems"] then asserts.AssertOperatingSystems(struct["OperatingSystems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOperatingSystemsResponse[k], "DescribeOperatingSystemsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOperatingSystemsResponse
-- <p>The response to a <code>DescribeOperatingSystems</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperatingSystems [OperatingSystems] <p>Contains information in response to a <code>DescribeOperatingSystems</code> request.</p>
-- @return DescribeOperatingSystemsResponse structure as a key-value pair table
function M.DescribeOperatingSystemsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOperatingSystemsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperatingSystems"] = args["OperatingSystems"],
	}
	asserts.AssertDescribeOperatingSystemsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance's AWS OpsWorks Stacks ID.</p>
-- * ValidForInMinutes [ValidForInMinutes] <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>
-- Required key: InstanceId
-- @return GrantAccessRequest structure as a key-value pair table
function M.GrantAccessRequest(args)
	assert(args, "You must provide an argument table when creating GrantAccessRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ValidForInMinutes"] = args["ValidForInMinutes"],
	}
	asserts.AssertGrantAccessRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeId [String] <p>The volume ID.</p>
-- @return RegisterVolumeResult structure as a key-value pair table
function M.RegisterVolumeResult(args)
	assert(args, "You must provide an argument table when creating RegisterVolumeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeId"] = args["VolumeId"],
	}
	asserts.AssertRegisterVolumeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Volume = { ["Status"] = true, ["AvailabilityZone"] = true, ["Name"] = true, ["InstanceId"] = true, ["Encrypted"] = true, ["Region"] = true, ["VolumeType"] = true, ["VolumeId"] = true, ["Device"] = true, ["RaidArrayId"] = true, ["Ec2VolumeId"] = true, ["MountPoint"] = true, ["Iops"] = true, ["Size"] = true, nil }

function asserts.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["InstanceId"] then asserts.AssertString(struct["InstanceId"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The value returned by <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html">DescribeVolumes</a>.</p>
-- * AvailabilityZone [String] <p>The volume Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * Name [String] <p>The volume name.</p>
-- * InstanceId [String] <p>The instance ID.</p>
-- * Encrypted [Boolean] <p>Specifies whether an Amazon EBS volume is encrypted. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a>.</p>
-- * Region [String] <p>The AWS region. For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * VolumeType [String] <p>The volume type. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html"> Amazon EBS Volume Types</a>.</p> <ul> <li> <p> <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> </ul>
-- * VolumeId [String] <p>The volume ID.</p>
-- * Device [String] <p>The device name.</p>
-- * RaidArrayId [String] <p>The RAID array ID.</p>
-- * Ec2VolumeId [String] <p>The Amazon EC2 volume ID.</p>
-- * MountPoint [String] <p>The volume mount point. For example, "/mnt/disk1".</p>
-- * Iops [Integer] <p>For PIOPS volumes, the IOPS per disk.</p>
-- * Size [Integer] <p>The volume size.</p>
-- @return Volume structure as a key-value pair table
function M.Volume(args)
	assert(args, "You must provide an argument table when creating Volume")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["Name"] = args["Name"],
		["InstanceId"] = args["InstanceId"],
		["Encrypted"] = args["Encrypted"],
		["Region"] = args["Region"],
		["VolumeType"] = args["VolumeType"],
		["VolumeId"] = args["VolumeId"],
		["Device"] = args["Device"],
		["RaidArrayId"] = args["RaidArrayId"],
		["Ec2VolumeId"] = args["Ec2VolumeId"],
		["MountPoint"] = args["MountPoint"],
		["Iops"] = args["Iops"],
		["Size"] = args["Size"],
	}
	asserts.AssertVolume(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AppId [String] <p>The app ID.</p>
-- Required key: AppId
-- @return DeleteAppRequest structure as a key-value pair table
function M.DeleteAppRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAppRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AppId"] = args["AppId"],
	}
	asserts.AssertDeleteAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemporaryCredential [TemporaryCredential] <p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>
-- @return GrantAccessResult structure as a key-value pair table
function M.GrantAccessResult(args)
	assert(args, "You must provide an argument table when creating GrantAccessResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemporaryCredential"] = args["TemporaryCredential"],
	}
	asserts.AssertGrantAccessResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmiId [String] <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. </p>
-- * LayerIds [Strings] <p>The instance's layer IDs.</p>
-- * InstanceId [String] <p>The instance ID.</p>
-- * SshKeyName [String] <p>The instance's Amazon EC2 key name.</p>
-- * Hostname [String] <p>The instance host name.</p>
-- * EbsOptimized [Boolean] <p>This property cannot be updated.</p>
-- * Architecture [Architecture] <p>The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>.</p>
-- * AutoScalingType [AutoScalingType] <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>
-- * Os [String] <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> </ul> <p>For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information about supported operating systems, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>. For more information about how to use custom AMIs with OpsWorks, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p> <note> <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>
-- * InstanceType [String] <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
-- * AgentVersion [String] <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p> <p>AgentVersion cannot be set to Chef 12.2.</p>
-- Required key: InstanceId
-- @return UpdateInstanceRequest structure as a key-value pair table
function M.UpdateInstanceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AmiId"] = args["AmiId"],
		["LayerIds"] = args["LayerIds"],
		["InstanceId"] = args["InstanceId"],
		["SshKeyName"] = args["SshKeyName"],
		["Hostname"] = args["Hostname"],
		["EbsOptimized"] = args["EbsOptimized"],
		["Architecture"] = args["Architecture"],
		["AutoScalingType"] = args["AutoScalingType"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
		["Os"] = args["Os"],
		["InstanceType"] = args["InstanceType"],
		["AgentVersion"] = args["AgentVersion"],
	}
	asserts.AssertUpdateInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * Comment [String] <p>A user-defined comment.</p>
-- * CompletedAt [DateTime] <p>Date when the deployment completed.</p>
-- * CustomJson [String] <p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- * Status [String] <p>The deployment status:</p> <ul> <li> <p>running</p> </li> <li> <p>successful</p> </li> <li> <p>failed</p> </li> </ul>
-- * IamUserArn [String] <p>The user's IAM ARN.</p>
-- * DeploymentId [String] <p>The deployment ID.</p>
-- * Command [DeploymentCommand] 
-- * InstanceIds [Strings] <p>The IDs of the target instances.</p>
-- * AppId [String] <p>The app ID.</p>
-- * Duration [Integer] <p>The deployment duration.</p>
-- * CreatedAt [DateTime] <p>Date when the deployment was created.</p>
-- @return Deployment structure as a key-value pair table
function M.Deployment(args)
	assert(args, "You must provide an argument table when creating Deployment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Comment"] = args["Comment"],
		["CompletedAt"] = args["CompletedAt"],
		["CustomJson"] = args["CustomJson"],
		["Status"] = args["Status"],
		["IamUserArn"] = args["IamUserArn"],
		["DeploymentId"] = args["DeploymentId"],
		["Command"] = args["Command"],
		["InstanceIds"] = args["InstanceIds"],
		["AppId"] = args["AppId"],
		["Duration"] = args["Duration"],
		["CreatedAt"] = args["CreatedAt"],
	}
	asserts.AssertDeployment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Layers [Layers] <p>An array of <code>Layer</code> objects that describe the layers.</p>
-- @return DescribeLayersResult structure as a key-value pair table
function M.DescribeLayersResult(args)
	assert(args, "You must provide an argument table when creating DescribeLayersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Layers"] = args["Layers"],
	}
	asserts.AssertDescribeLayersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EcsClusterArn [String] <p>The cluster's Amazon Resource Number (ARN).</p>
-- Required key: EcsClusterArn
-- @return DeregisterEcsClusterRequest structure as a key-value pair table
function M.DeregisterEcsClusterRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterEcsClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EcsClusterArn"] = args["EcsClusterArn"],
	}
	asserts.AssertDeregisterEcsClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AgentInstallerUrl [String] <p>The AWS OpsWorks Stacks agent installer's URL.</p>
-- * Parameters [Parameters] <p>An embedded object that contains the provisioning parameters.</p>
-- @return DescribeStackProvisioningParametersResult structure as a key-value pair table
function M.DescribeStackProvisioningParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeStackProvisioningParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AgentInstallerUrl"] = args["AgentInstallerUrl"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDescribeStackProvisioningParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * HostnameTheme [String] <p>The stack host name theme, with spaces replaced by underscores.</p>
-- * UseCustomCookbooks [Boolean] <p>Whether the stack uses custom cookbooks.</p>
-- * DefaultSshKeyName [String] <p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.</p>
-- * ChefConfiguration [ChefConfiguration] <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
-- * UseOpsworksSecurityGroups [Boolean] <p>Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
-- * ServiceRoleArn [String] <p>The stack AWS Identity and Access Management (IAM) role.</p>
-- * VpcId [String] <p>The VPC ID; applicable only if the stack is running in a VPC.</p>
-- * ConfigurationManager [StackConfigurationManager] <p>The configuration manager.</p>
-- * CustomCookbooksSource [Source] 
-- * AgentVersion [String] <p>The agent version. This parameter is set to <code>LATEST</code> for auto-update. or a version number for a fixed agent version.</p>
-- * DefaultAvailabilityZone [String] <p>The stack's default Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * CreatedAt [DateTime] <p>The date when the stack was created.</p>
-- * Name [String] <p>The stack name.</p>
-- * Region [String] <p>The stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
-- * DefaultInstanceProfileArn [String] <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * Attributes [StackAttributes] <p>The stack's attributes.</p>
-- * DefaultOs [String] <p>The stack's default operating system.</p>
-- * DefaultSubnetId [String] <p>The default subnet ID; applicable only if the stack is running in a VPC.</p>
-- * DefaultRootDeviceType [RootDeviceType] <p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
-- * CustomJson [String] <p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code> </p> <p>For more information on custom JSON, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>
-- * Arn [String] <p>The stack's ARN.</p>
-- @return Stack structure as a key-value pair table
function M.Stack(args)
	assert(args, "You must provide an argument table when creating Stack")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["HostnameTheme"] = args["HostnameTheme"],
		["UseCustomCookbooks"] = args["UseCustomCookbooks"],
		["DefaultSshKeyName"] = args["DefaultSshKeyName"],
		["ChefConfiguration"] = args["ChefConfiguration"],
		["UseOpsworksSecurityGroups"] = args["UseOpsworksSecurityGroups"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["VpcId"] = args["VpcId"],
		["ConfigurationManager"] = args["ConfigurationManager"],
		["CustomCookbooksSource"] = args["CustomCookbooksSource"],
		["AgentVersion"] = args["AgentVersion"],
		["DefaultAvailabilityZone"] = args["DefaultAvailabilityZone"],
		["CreatedAt"] = args["CreatedAt"],
		["Name"] = args["Name"],
		["Region"] = args["Region"],
		["DefaultInstanceProfileArn"] = args["DefaultInstanceProfileArn"],
		["Attributes"] = args["Attributes"],
		["DefaultOs"] = args["DefaultOs"],
		["DefaultSubnetId"] = args["DefaultSubnetId"],
		["DefaultRootDeviceType"] = args["DefaultRootDeviceType"],
		["CustomJson"] = args["CustomJson"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertStack(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Ec2VolumeId [String] <p>The Amazon EBS volume ID.</p>
-- * StackId [String] <p>The stack ID.</p>
-- Required key: StackId
-- @return RegisterVolumeRequest structure as a key-value pair table
function M.RegisterVolumeRequest(args)
	assert(args, "You must provide an argument table when creating RegisterVolumeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Ec2VolumeId"] = args["Ec2VolumeId"],
		["StackId"] = args["StackId"],
	}
	asserts.AssertRegisterVolumeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ElasticIp [String] <p>The Elastic IP address.</p>
-- @return RegisterElasticIpResult structure as a key-value pair table
function M.RegisterElasticIpResult(args)
	assert(args, "You must provide an argument table when creating RegisterElasticIpResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertRegisterElasticIpResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LayerIds [Strings] <p>An array of layer IDs.</p>
-- Required key: LayerIds
-- @return DescribeLoadBasedAutoScalingRequest structure as a key-value pair table
function M.DescribeLoadBasedAutoScalingRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLoadBasedAutoScalingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LayerIds"] = args["LayerIds"],
	}
	asserts.AssertDescribeLoadBasedAutoScalingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Shutdown [ShutdownEventConfiguration] <p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event configuration.</p>
-- @return LifecycleEventConfiguration structure as a key-value pair table
function M.LifecycleEventConfiguration(args)
	assert(args, "You must provide an argument table when creating LifecycleEventConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Shutdown"] = args["Shutdown"],
	}
	asserts.AssertLifecycleEventConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InitialPosition [CloudWatchLogsInitialPosition] <p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.</p>
-- * Encoding [CloudWatchLogsEncoding] <p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>
-- * BatchSize [Integer] <p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p>
-- * BufferDuration [Integer] <p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>
-- * MultiLineStartPattern [String] <p>Specifies the pattern for identifying the start of a log message.</p>
-- * LogGroupName [String] <p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p>
-- * File [String] <p>Specifies log files that you want to push to CloudWatch Logs.</p> <p> <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types, such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group.</p> <p>Zipped files are not supported.</p>
-- * BatchCount [Integer] <p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>
-- * DatetimeFormat [String] <p>Specifies how the time stamp is extracted from logs. For more information, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html">CloudWatch Logs Agent Reference</a>.</p>
-- * TimeZone [CloudWatchLogsTimeZone] <p>Specifies the time zone of log event time stamps.</p>
-- * FileFingerprintLines [String] <p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.</p>
-- @return CloudWatchLogsLogStream structure as a key-value pair table
function M.CloudWatchLogsLogStream(args)
	assert(args, "You must provide an argument table when creating CloudWatchLogsLogStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InitialPosition"] = args["InitialPosition"],
		["Encoding"] = args["Encoding"],
		["BatchSize"] = args["BatchSize"],
		["BufferDuration"] = args["BufferDuration"],
		["MultiLineStartPattern"] = args["MultiLineStartPattern"],
		["LogGroupName"] = args["LogGroupName"],
		["File"] = args["File"],
		["BatchCount"] = args["BatchCount"],
		["DatetimeFormat"] = args["DatetimeFormat"],
		["TimeZone"] = args["TimeZone"],
		["FileFingerprintLines"] = args["FileFingerprintLines"],
	}
	asserts.AssertCloudWatchLogsLogStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * AutoScalingSchedule [WeeklyAutoScalingSchedule] <p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>
-- @return TimeBasedAutoScalingConfiguration structure as a key-value pair table
function M.TimeBasedAutoScalingConfiguration(args)
	assert(args, "You must provide an argument table when creating TimeBasedAutoScalingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["AutoScalingSchedule"] = args["AutoScalingSchedule"],
	}
	asserts.AssertTimeBasedAutoScalingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VolumeId [String] <p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
-- Required key: VolumeId
-- @return DeregisterVolumeRequest structure as a key-value pair table
function M.DeregisterVolumeRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterVolumeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VolumeId"] = args["VolumeId"],
	}
	asserts.AssertDeregisterVolumeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The ID of the stack that the instance is to be registered with.</p>
-- * RsaPublicKeyFingerprint [String] <p>The instances public RSA key fingerprint.</p>
-- * RsaPublicKey [String] <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
-- * Hostname [String] <p>The instance's hostname.</p>
-- * PrivateIp [String] <p>The instance's private IP address.</p>
-- * PublicIp [String] <p>The instance's public IP address.</p>
-- * InstanceIdentity [InstanceIdentity] <p>An InstanceIdentity object that contains the instance's identity.</p>
-- Required key: StackId
-- @return RegisterInstanceRequest structure as a key-value pair table
function M.RegisterInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["RsaPublicKeyFingerprint"] = args["RsaPublicKeyFingerprint"],
		["RsaPublicKey"] = args["RsaPublicKey"],
		["Hostname"] = args["Hostname"],
		["PrivateIp"] = args["PrivateIp"],
		["PublicIp"] = args["PublicIp"],
		["InstanceIdentity"] = args["InstanceIdentity"],
	}
	asserts.AssertRegisterInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Hostname [String] <p>The generated host name.</p>
-- * LayerId [String] <p>The layer ID.</p>
-- @return GetHostnameSuggestionResult structure as a key-value pair table
function M.GetHostnameSuggestionResult(args)
	assert(args, "You must provide an argument table when creating GetHostnameSuggestionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Hostname"] = args["Hostname"],
		["LayerId"] = args["LayerId"],
	}
	asserts.AssertGetHostnameSuggestionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * LayerIds [Strings] <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
-- Required key: InstanceId
-- Required key: LayerIds
-- @return AssignInstanceRequest structure as a key-value pair table
function M.AssignInstanceRequest(args)
	assert(args, "You must provide an argument table when creating AssignInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["LayerIds"] = args["LayerIds"],
	}
	asserts.AssertAssignInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceArn [ResourceArn] <p>The stack or layer's Amazon Resource Number (ARN).</p>
-- * Tags [Tags] <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p> <ul> <li> <p>The key cannot be empty.</p> </li> <li> <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>Leading and trailing white spaces are trimmed from both the key and value.</p> </li> <li> <p>A maximum of 40 tags is allowed for any resource.</p> </li> </ul>
-- Required key: ResourceArn
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceArn"] = args["ResourceArn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [String] <p>The instance ID.</p>
-- * VolumeId [String] <p>The volume ID.</p>
-- Required key: VolumeId
-- @return AssignVolumeRequest structure as a key-value pair table
function M.AssignVolumeRequest(args)
	assert(args, "You must provide an argument table when creating AssignVolumeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["VolumeId"] = args["VolumeId"],
	}
	asserts.AssertAssignVolumeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceErrors [ServiceErrors] <p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>
-- @return DescribeServiceErrorsResult structure as a key-value pair table
function M.DescribeServiceErrorsResult(args)
	assert(args, "You must provide an argument table when creating DescribeServiceErrorsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceErrors"] = args["ServiceErrors"],
	}
	asserts.AssertDescribeServiceErrorsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Deployments [Deployments] <p>An array of <code>Deployment</code> objects that describe the deployments.</p>
-- @return DescribeDeploymentsResult structure as a key-value pair table
function M.DescribeDeploymentsResult(args)
	assert(args, "You must provide an argument table when creating DescribeDeploymentsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Deployments"] = args["Deployments"],
	}
	asserts.AssertDescribeDeploymentsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamUserArn [String] <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
-- * SshPublicKey [String] <p>The user's public SSH key.</p>
-- * AllowSelfManagement [Boolean] <p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM User's Public SSH Key</a>.</p>
-- * SshUsername [String] <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
-- Required key: IamUserArn
-- @return CreateUserProfileRequest structure as a key-value pair table
function M.CreateUserProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IamUserArn"] = args["IamUserArn"],
		["SshPublicKey"] = args["SshPublicKey"],
		["AllowSelfManagement"] = args["AllowSelfManagement"],
		["SshUsername"] = args["SshUsername"],
	}
	asserts.AssertCreateUserProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The layer stack ID.</p>
-- * LifecycleEventConfiguration [LifecycleEventConfiguration] <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.</p>
-- * AutoAssignElasticIps [Boolean] <p>Whether to automatically assign an <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP address</a> to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * Name [String] <p>The layer name, which is used by the console.</p>
-- * CloudWatchLogsConfiguration [CloudWatchLogsConfiguration] <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
-- * CustomJson [String] <p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html"> Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI. </p>
-- * CustomRecipes [Recipes] <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
-- * CustomSecurityGroupIds [Strings] <p>An array containing the layer custom security group IDs.</p>
-- * AutoAssignPublicIps [Boolean] <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit a Layer</a>.</p>
-- * EnableAutoHealing [Boolean] <p>Whether to disable auto healing for the layer.</p>
-- * CustomInstanceProfileArn [String] <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
-- * UseEbsOptimizedInstances [Boolean] <p>Whether to use Amazon EBS-optimized instances.</p>
-- * VolumeConfigurations [VolumeConfigurations] <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
-- * Attributes [LayerAttributes] <p>One or more user-defined key-value pairs to be added to the stack attributes.</p> <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
-- * Shortname [String] <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
-- * Packages [Strings] <p>An array of <code>Package</code> objects that describes the layer packages.</p>
-- * Type [LayerType] <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>
-- * InstallUpdatesOnBoot [Boolean] <p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>To ensure that your instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p> </note>
-- Required key: StackId
-- Required key: Type
-- Required key: Name
-- Required key: Shortname
-- @return CreateLayerRequest structure as a key-value pair table
function M.CreateLayerRequest(args)
	assert(args, "You must provide an argument table when creating CreateLayerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["LifecycleEventConfiguration"] = args["LifecycleEventConfiguration"],
		["AutoAssignElasticIps"] = args["AutoAssignElasticIps"],
		["Name"] = args["Name"],
		["CloudWatchLogsConfiguration"] = args["CloudWatchLogsConfiguration"],
		["CustomJson"] = args["CustomJson"],
		["CustomRecipes"] = args["CustomRecipes"],
		["CustomSecurityGroupIds"] = args["CustomSecurityGroupIds"],
		["AutoAssignPublicIps"] = args["AutoAssignPublicIps"],
		["EnableAutoHealing"] = args["EnableAutoHealing"],
		["CustomInstanceProfileArn"] = args["CustomInstanceProfileArn"],
		["UseEbsOptimizedInstances"] = args["UseEbsOptimizedInstances"],
		["VolumeConfigurations"] = args["VolumeConfigurations"],
		["Attributes"] = args["Attributes"],
		["Shortname"] = args["Shortname"],
		["Packages"] = args["Packages"],
		["Type"] = args["Type"],
		["InstallUpdatesOnBoot"] = args["InstallUpdatesOnBoot"],
	}
	asserts.AssertCreateLayerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserProfile [SelfUserProfile] <p>A <code>UserProfile</code> object that describes the user's SSH information.</p>
-- @return DescribeMyUserProfileResult structure as a key-value pair table
function M.DescribeMyUserProfileResult(args)
	assert(args, "You must provide an argument table when creating DescribeMyUserProfileResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserProfile"] = args["UserProfile"],
	}
	asserts.AssertDescribeMyUserProfileResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PrivateKey [String] <p>The private key; the contents of the certificate's domain.kex file.</p>
-- * Chain [String] <p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>
-- * Certificate [String] <p>The contents of the certificate's domain.crt file.</p>
-- Required key: Certificate
-- Required key: PrivateKey
-- @return SslConfiguration structure as a key-value pair table
function M.SslConfiguration(args)
	assert(args, "You must provide an argument table when creating SslConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PrivateKey"] = args["PrivateKey"],
		["Chain"] = args["Chain"],
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertSslConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [String] <p>The stack ID.</p>
-- * EcsClusterArn [String] <p>The cluster's ARN.</p>
-- Required key: EcsClusterArn
-- Required key: StackId
-- @return RegisterEcsClusterRequest structure as a key-value pair table
function M.RegisterEcsClusterRequest(args)
	assert(args, "You must provide an argument table when creating RegisterEcsClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["EcsClusterArn"] = args["EcsClusterArn"],
	}
	asserts.AssertRegisterEcsClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertOperatingSystemConfigurationManagers(list)
	assert(list)
	assert(type(list) == "table", "Expected OperatingSystemConfigurationManagers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperatingSystemConfigurationManager(v)
	end
end

--  
-- List of OperatingSystemConfigurationManager objects
function M.OperatingSystemConfigurationManagers(list)
	asserts.AssertOperatingSystemConfigurationManagers(list)
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

function asserts.AssertOperatingSystems(list)
	assert(list)
	assert(type(list) == "table", "Expected OperatingSystems to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperatingSystem(v)
	end
end

--  
-- List of OperatingSystem objects
function M.OperatingSystems(list)
	asserts.AssertOperatingSystems(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeregisterVolume asynchronously, invoking a callback when done
-- @param DeregisterVolumeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterVolumeAsync(DeregisterVolumeRequest, cb)
	assert(DeregisterVolumeRequest, "You must provide a DeregisterVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterVolume",
	}
	for header,value in pairs(DeregisterVolumeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterVolumeSync(DeregisterVolumeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterVolumeAsync(DeregisterVolumeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterInstance asynchronously, invoking a callback when done
-- @param DeregisterInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterInstanceAsync(DeregisterInstanceRequest, cb)
	assert(DeregisterInstanceRequest, "You must provide a DeregisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterInstance",
	}
	for header,value in pairs(DeregisterInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterInstanceSync(DeregisterInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterInstanceAsync(DeregisterInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTimeBasedAutoScaling asynchronously, invoking a callback when done
-- @param DescribeTimeBasedAutoScalingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTimeBasedAutoScalingAsync(DescribeTimeBasedAutoScalingRequest, cb)
	assert(DescribeTimeBasedAutoScalingRequest, "You must provide a DescribeTimeBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeTimeBasedAutoScaling",
	}
	for header,value in pairs(DescribeTimeBasedAutoScalingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeTimeBasedAutoScalingSync(DescribeTimeBasedAutoScalingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTimeBasedAutoScalingAsync(DescribeTimeBasedAutoScalingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootInstance asynchronously, invoking a callback when done
-- @param RebootInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootInstanceAsync(RebootInstanceRequest, cb)
	assert(RebootInstanceRequest, "You must provide a RebootInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RebootInstance",
	}
	for header,value in pairs(RebootInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RebootInstanceSync(RebootInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootInstanceAsync(RebootInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartStack asynchronously, invoking a callback when done
-- @param StartStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartStackAsync(StartStackRequest, cb)
	assert(StartStackRequest, "You must provide a StartStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartStack",
	}
	for header,value in pairs(StartStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StartStackSync(StartStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartStackAsync(StartStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnassignInstance asynchronously, invoking a callback when done
-- @param UnassignInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnassignInstanceAsync(UnassignInstanceRequest, cb)
	assert(UnassignInstanceRequest, "You must provide a UnassignInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignInstance",
	}
	for header,value in pairs(UnassignInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UnassignInstanceSync(UnassignInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnassignInstanceAsync(UnassignInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateElasticIp asynchronously, invoking a callback when done
-- @param DisassociateElasticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateElasticIpAsync(DisassociateElasticIpRequest, cb)
	assert(DisassociateElasticIpRequest, "You must provide a DisassociateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DisassociateElasticIp",
	}
	for header,value in pairs(DisassociateElasticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DisassociateElasticIpSync(DisassociateElasticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateElasticIpAsync(DisassociateElasticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserProfile asynchronously, invoking a callback when done
-- @param CreateUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserProfileAsync(CreateUserProfileRequest, cb)
	assert(CreateUserProfileRequest, "You must provide a CreateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateUserProfile",
	}
	for header,value in pairs(CreateUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateUserProfileSync(CreateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserProfileAsync(CreateUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachElasticLoadBalancer asynchronously, invoking a callback when done
-- @param AttachElasticLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachElasticLoadBalancerAsync(AttachElasticLoadBalancerRequest, cb)
	assert(AttachElasticLoadBalancerRequest, "You must provide a AttachElasticLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AttachElasticLoadBalancer",
	}
	for header,value in pairs(AttachElasticLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AttachElasticLoadBalancerSync(AttachElasticLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachElasticLoadBalancerAsync(AttachElasticLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterEcsCluster asynchronously, invoking a callback when done
-- @param RegisterEcsClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterEcsClusterAsync(RegisterEcsClusterRequest, cb)
	assert(RegisterEcsClusterRequest, "You must provide a RegisterEcsClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterEcsCluster",
	}
	for header,value in pairs(RegisterEcsClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterEcsClusterSync(RegisterEcsClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterEcsClusterAsync(RegisterEcsClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLayers asynchronously, invoking a callback when done
-- @param DescribeLayersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLayersAsync(DescribeLayersRequest, cb)
	assert(DescribeLayersRequest, "You must provide a DescribeLayersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLayers",
	}
	for header,value in pairs(DescribeLayersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeLayersSync(DescribeLayersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLayersAsync(DescribeLayersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateElasticIp asynchronously, invoking a callback when done
-- @param UpdateElasticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateElasticIpAsync(UpdateElasticIpRequest, cb)
	assert(UpdateElasticIpRequest, "You must provide a UpdateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateElasticIp",
	}
	for header,value in pairs(UpdateElasticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateElasticIpSync(UpdateElasticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateElasticIpAsync(UpdateElasticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstance asynchronously, invoking a callback when done
-- @param DeleteInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInstanceAsync(DeleteInstanceRequest, cb)
	assert(DeleteInstanceRequest, "You must provide a DeleteInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteInstance",
	}
	for header,value in pairs(DeleteInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteInstanceSync(DeleteInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceAsync(DeleteInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachElasticLoadBalancer asynchronously, invoking a callback when done
-- @param DetachElasticLoadBalancerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachElasticLoadBalancerAsync(DetachElasticLoadBalancerRequest, cb)
	assert(DetachElasticLoadBalancerRequest, "You must provide a DetachElasticLoadBalancerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DetachElasticLoadBalancer",
	}
	for header,value in pairs(DetachElasticLoadBalancerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DetachElasticLoadBalancerSync(DetachElasticLoadBalancerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachElasticLoadBalancerAsync(DetachElasticLoadBalancerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateDeployment",
	}
	for header,value in pairs(CreateDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateDeploymentSync(CreateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(CreateDeploymentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnassignVolume asynchronously, invoking a callback when done
-- @param UnassignVolumeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnassignVolumeAsync(UnassignVolumeRequest, cb)
	assert(UnassignVolumeRequest, "You must provide a UnassignVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UnassignVolume",
	}
	for header,value in pairs(UnassignVolumeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UnassignVolumeSync(UnassignVolumeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnassignVolumeAsync(UnassignVolumeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserProfile asynchronously, invoking a callback when done
-- @param DeleteUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserProfileAsync(DeleteUserProfileRequest, cb)
	assert(DeleteUserProfileRequest, "You must provide a DeleteUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteUserProfile",
	}
	for header,value in pairs(DeleteUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteUserProfileSync(DeleteUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserProfileAsync(DeleteUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStackAsync(CreateStackRequest, cb)
	assert(CreateStackRequest, "You must provide a CreateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateStack",
	}
	for header,value in pairs(CreateStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateStackSync(CreateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(CreateStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRdsDbInstance asynchronously, invoking a callback when done
-- @param UpdateRdsDbInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRdsDbInstanceAsync(UpdateRdsDbInstanceRequest, cb)
	assert(UpdateRdsDbInstanceRequest, "You must provide a UpdateRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateRdsDbInstance",
	}
	for header,value in pairs(UpdateRdsDbInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateRdsDbInstanceSync(UpdateRdsDbInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRdsDbInstanceAsync(UpdateRdsDbInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHostnameSuggestion asynchronously, invoking a callback when done
-- @param GetHostnameSuggestionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetHostnameSuggestionAsync(GetHostnameSuggestionRequest, cb)
	assert(GetHostnameSuggestionRequest, "You must provide a GetHostnameSuggestionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GetHostnameSuggestion",
	}
	for header,value in pairs(GetHostnameSuggestionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetHostnameSuggestionSync(GetHostnameSuggestionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHostnameSuggestionAsync(GetHostnameSuggestionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstances asynchronously, invoking a callback when done
-- @param DescribeInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInstancesAsync(DescribeInstancesRequest, cb)
	assert(DescribeInstancesRequest, "You must provide a DescribeInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeInstances",
	}
	for header,value in pairs(DescribeInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeInstancesSync(DescribeInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancesAsync(DescribeInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCommands asynchronously, invoking a callback when done
-- @param DescribeCommandsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCommandsAsync(DescribeCommandsRequest, cb)
	assert(DescribeCommandsRequest, "You must provide a DescribeCommandsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeCommands",
	}
	for header,value in pairs(DescribeCommandsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeCommandsSync(DescribeCommandsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCommandsAsync(DescribeCommandsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMyUserProfile asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMyUserProfileAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeMyUserProfile",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMyUserProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMyUserProfileSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMyUserProfileAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterElasticIp asynchronously, invoking a callback when done
-- @param DeregisterElasticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterElasticIpAsync(DeregisterElasticIpRequest, cb)
	assert(DeregisterElasticIpRequest, "You must provide a DeregisterElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterElasticIp",
	}
	for header,value in pairs(DeregisterElasticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterElasticIpSync(DeregisterElasticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterElasticIpAsync(DeregisterElasticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAgentVersions asynchronously, invoking a callback when done
-- @param DescribeAgentVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAgentVersionsAsync(DescribeAgentVersionsRequest, cb)
	assert(DescribeAgentVersionsRequest, "You must provide a DescribeAgentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeAgentVersions",
	}
	for header,value in pairs(DescribeAgentVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAgentVersionsSync(DescribeAgentVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAgentVersionsAsync(DescribeAgentVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopStack asynchronously, invoking a callback when done
-- @param StopStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopStackAsync(StopStackRequest, cb)
	assert(StopStackRequest, "You must provide a StopStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopStack",
	}
	for header,value in pairs(StopStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StopStackSync(StopStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopStackAsync(StopStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeApps asynchronously, invoking a callback when done
-- @param DescribeAppsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAppsAsync(DescribeAppsRequest, cb)
	assert(DescribeAppsRequest, "You must provide a DescribeAppsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeApps",
	}
	for header,value in pairs(DescribeAppsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAppsSync(DescribeAppsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAppsAsync(DescribeAppsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticIps asynchronously, invoking a callback when done
-- @param DescribeElasticIpsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticIpsAsync(DescribeElasticIpsRequest, cb)
	assert(DescribeElasticIpsRequest, "You must provide a DescribeElasticIpsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticIps",
	}
	for header,value in pairs(DescribeElasticIpsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticIpsSync(DescribeElasticIpsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticIpsAsync(DescribeElasticIpsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVolume asynchronously, invoking a callback when done
-- @param UpdateVolumeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVolumeAsync(UpdateVolumeRequest, cb)
	assert(UpdateVolumeRequest, "You must provide a UpdateVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateVolume",
	}
	for header,value in pairs(UpdateVolumeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateVolumeSync(UpdateVolumeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVolumeAsync(UpdateVolumeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartInstance asynchronously, invoking a callback when done
-- @param StartInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartInstanceAsync(StartInstanceRequest, cb)
	assert(StartInstanceRequest, "You must provide a StartInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StartInstance",
	}
	for header,value in pairs(StartInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StartInstanceSync(StartInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartInstanceAsync(StartInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMyUserProfile asynchronously, invoking a callback when done
-- @param UpdateMyUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateMyUserProfileAsync(UpdateMyUserProfileRequest, cb)
	assert(UpdateMyUserProfileRequest, "You must provide a UpdateMyUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateMyUserProfile",
	}
	for header,value in pairs(UpdateMyUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateMyUserProfileSync(UpdateMyUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMyUserProfileAsync(UpdateMyUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApp asynchronously, invoking a callback when done
-- @param DeleteAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAppAsync(DeleteAppRequest, cb)
	assert(DeleteAppRequest, "You must provide a DeleteAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteApp",
	}
	for header,value in pairs(DeleteAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteAppSync(DeleteAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAppAsync(DeleteAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInstance asynchronously, invoking a callback when done
-- @param UpdateInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateInstanceAsync(UpdateInstanceRequest, cb)
	assert(UpdateInstanceRequest, "You must provide a UpdateInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateInstance",
	}
	for header,value in pairs(UpdateInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateInstanceSync(UpdateInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInstanceAsync(UpdateInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterElasticIp asynchronously, invoking a callback when done
-- @param RegisterElasticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterElasticIpAsync(RegisterElasticIpRequest, cb)
	assert(RegisterElasticIpRequest, "You must provide a RegisterElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterElasticIp",
	}
	for header,value in pairs(RegisterElasticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterElasticIpSync(RegisterElasticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterElasticIpAsync(RegisterElasticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterRdsDbInstance asynchronously, invoking a callback when done
-- @param DeregisterRdsDbInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterRdsDbInstanceAsync(DeregisterRdsDbInstanceRequest, cb)
	assert(DeregisterRdsDbInstanceRequest, "You must provide a DeregisterRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterRdsDbInstance",
	}
	for header,value in pairs(DeregisterRdsDbInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterRdsDbInstanceSync(DeregisterRdsDbInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterRdsDbInstanceAsync(DeregisterRdsDbInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRaidArrays asynchronously, invoking a callback when done
-- @param DescribeRaidArraysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRaidArraysAsync(DescribeRaidArraysRequest, cb)
	assert(DescribeRaidArraysRequest, "You must provide a DescribeRaidArraysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRaidArrays",
	}
	for header,value in pairs(DescribeRaidArraysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeRaidArraysSync(DescribeRaidArraysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRaidArraysAsync(DescribeRaidArraysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterVolume asynchronously, invoking a callback when done
-- @param RegisterVolumeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterVolumeAsync(RegisterVolumeRequest, cb)
	assert(RegisterVolumeRequest, "You must provide a RegisterVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterVolume",
	}
	for header,value in pairs(RegisterVolumeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterVolumeSync(RegisterVolumeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterVolumeAsync(RegisterVolumeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetPermission asynchronously, invoking a callback when done
-- @param SetPermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetPermissionAsync(SetPermissionRequest, cb)
	assert(SetPermissionRequest, "You must provide a SetPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetPermission",
	}
	for header,value in pairs(SetPermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.SetPermissionSync(SetPermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetPermissionAsync(SetPermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDeployments asynchronously, invoking a callback when done
-- @param DescribeDeploymentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDeploymentsAsync(DescribeDeploymentsRequest, cb)
	assert(DescribeDeploymentsRequest, "You must provide a DescribeDeploymentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeDeployments",
	}
	for header,value in pairs(DescribeDeploymentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeDeploymentsSync(DescribeDeploymentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDeploymentsAsync(DescribeDeploymentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CloneStack asynchronously, invoking a callback when done
-- @param CloneStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CloneStackAsync(CloneStackRequest, cb)
	assert(CloneStackRequest, "You must provide a CloneStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CloneStack",
	}
	for header,value in pairs(CloneStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CloneStackSync(CloneStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloneStackAsync(CloneStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServiceErrors asynchronously, invoking a callback when done
-- @param DescribeServiceErrorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeServiceErrorsAsync(DescribeServiceErrorsRequest, cb)
	assert(DescribeServiceErrorsRequest, "You must provide a DescribeServiceErrorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeServiceErrors",
	}
	for header,value in pairs(DescribeServiceErrorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeServiceErrorsSync(DescribeServiceErrorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServiceErrorsAsync(DescribeServiceErrorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateElasticIp asynchronously, invoking a callback when done
-- @param AssociateElasticIpRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateElasticIpAsync(AssociateElasticIpRequest, cb)
	assert(AssociateElasticIpRequest, "You must provide a AssociateElasticIpRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssociateElasticIp",
	}
	for header,value in pairs(AssociateElasticIpRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AssociateElasticIpSync(AssociateElasticIpRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateElasticIpAsync(AssociateElasticIpRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstance asynchronously, invoking a callback when done
-- @param CreateInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInstanceAsync(CreateInstanceRequest, cb)
	assert(CreateInstanceRequest, "You must provide a CreateInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateInstance",
	}
	for header,value in pairs(CreateInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateInstanceSync(CreateInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceAsync(CreateInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeElasticLoadBalancers asynchronously, invoking a callback when done
-- @param DescribeElasticLoadBalancersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeElasticLoadBalancersAsync(DescribeElasticLoadBalancersRequest, cb)
	assert(DescribeElasticLoadBalancersRequest, "You must provide a DescribeElasticLoadBalancersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeElasticLoadBalancers",
	}
	for header,value in pairs(DescribeElasticLoadBalancersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeElasticLoadBalancersSync(DescribeElasticLoadBalancersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeElasticLoadBalancersAsync(DescribeElasticLoadBalancersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOperatingSystems asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOperatingSystemsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeOperatingSystems",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOperatingSystems synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOperatingSystemsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOperatingSystemsAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterEcsCluster asynchronously, invoking a callback when done
-- @param DeregisterEcsClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterEcsClusterAsync(DeregisterEcsClusterRequest, cb)
	assert(DeregisterEcsClusterRequest, "You must provide a DeregisterEcsClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeregisterEcsCluster",
	}
	for header,value in pairs(DeregisterEcsClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeregisterEcsClusterSync(DeregisterEcsClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterEcsClusterAsync(DeregisterEcsClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEcsClusters asynchronously, invoking a callback when done
-- @param DescribeEcsClustersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEcsClustersAsync(DescribeEcsClustersRequest, cb)
	assert(DescribeEcsClustersRequest, "You must provide a DescribeEcsClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeEcsClusters",
	}
	for header,value in pairs(DescribeEcsClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeEcsClustersSync(DescribeEcsClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEcsClustersAsync(DescribeEcsClustersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterRdsDbInstance asynchronously, invoking a callback when done
-- @param RegisterRdsDbInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterRdsDbInstanceAsync(RegisterRdsDbInstanceRequest, cb)
	assert(RegisterRdsDbInstanceRequest, "You must provide a RegisterRdsDbInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterRdsDbInstance",
	}
	for header,value in pairs(RegisterRdsDbInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterRdsDbInstanceSync(RegisterRdsDbInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterRdsDbInstanceAsync(RegisterRdsDbInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTimeBasedAutoScaling asynchronously, invoking a callback when done
-- @param SetTimeBasedAutoScalingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetTimeBasedAutoScalingAsync(SetTimeBasedAutoScalingRequest, cb)
	assert(SetTimeBasedAutoScalingRequest, "You must provide a SetTimeBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetTimeBasedAutoScaling",
	}
	for header,value in pairs(SetTimeBasedAutoScalingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.SetTimeBasedAutoScalingSync(SetTimeBasedAutoScalingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTimeBasedAutoScalingAsync(SetTimeBasedAutoScalingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoadBasedAutoScaling asynchronously, invoking a callback when done
-- @param DescribeLoadBasedAutoScalingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoadBasedAutoScalingAsync(DescribeLoadBasedAutoScalingRequest, cb)
	assert(DescribeLoadBasedAutoScalingRequest, "You must provide a DescribeLoadBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeLoadBasedAutoScaling",
	}
	for header,value in pairs(DescribeLoadBasedAutoScalingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeLoadBasedAutoScalingSync(DescribeLoadBasedAutoScalingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoadBasedAutoScalingAsync(DescribeLoadBasedAutoScalingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssignInstance asynchronously, invoking a callback when done
-- @param AssignInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssignInstanceAsync(AssignInstanceRequest, cb)
	assert(AssignInstanceRequest, "You must provide a AssignInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignInstance",
	}
	for header,value in pairs(AssignInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AssignInstanceSync(AssignInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssignInstanceAsync(AssignInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetLoadBasedAutoScaling asynchronously, invoking a callback when done
-- @param SetLoadBasedAutoScalingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetLoadBasedAutoScalingAsync(SetLoadBasedAutoScalingRequest, cb)
	assert(SetLoadBasedAutoScalingRequest, "You must provide a SetLoadBasedAutoScalingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.SetLoadBasedAutoScaling",
	}
	for header,value in pairs(SetLoadBasedAutoScalingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.SetLoadBasedAutoScalingSync(SetLoadBasedAutoScalingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetLoadBasedAutoScalingAsync(SetLoadBasedAutoScalingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackSummary asynchronously, invoking a callback when done
-- @param DescribeStackSummaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackSummaryAsync(DescribeStackSummaryRequest, cb)
	assert(DescribeStackSummaryRequest, "You must provide a DescribeStackSummaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackSummary",
	}
	for header,value in pairs(DescribeStackSummaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStackSummarySync(DescribeStackSummaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackSummaryAsync(DescribeStackSummaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopInstance asynchronously, invoking a callback when done
-- @param StopInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopInstanceAsync(StopInstanceRequest, cb)
	assert(StopInstanceRequest, "You must provide a StopInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.StopInstance",
	}
	for header,value in pairs(StopInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StopInstanceSync(StopInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopInstanceAsync(StopInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStacksAsync(DescribeStacksRequest, cb)
	assert(DescribeStacksRequest, "You must provide a DescribeStacksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStacks",
	}
	for header,value in pairs(DescribeStacksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStacksSync(DescribeStacksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(DescribeStacksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLayer asynchronously, invoking a callback when done
-- @param CreateLayerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLayerAsync(CreateLayerRequest, cb)
	assert(CreateLayerRequest, "You must provide a CreateLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateLayer",
	}
	for header,value in pairs(CreateLayerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateLayerSync(CreateLayerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLayerAsync(CreateLayerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStackAsync(UpdateStackRequest, cb)
	assert(UpdateStackRequest, "You must provide a UpdateStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateStack",
	}
	for header,value in pairs(UpdateStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateStackSync(UpdateStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(UpdateStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GrantAccess asynchronously, invoking a callback when done
-- @param GrantAccessRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GrantAccessAsync(GrantAccessRequest, cb)
	assert(GrantAccessRequest, "You must provide a GrantAccessRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.GrantAccess",
	}
	for header,value in pairs(GrantAccessRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GrantAccessSync(GrantAccessRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GrantAccessAsync(GrantAccessRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApp asynchronously, invoking a callback when done
-- @param CreateAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAppAsync(CreateAppRequest, cb)
	assert(CreateAppRequest, "You must provide a CreateAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.CreateApp",
	}
	for header,value in pairs(CreateAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateAppSync(CreateAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAppAsync(CreateAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePermissions asynchronously, invoking a callback when done
-- @param DescribePermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePermissionsAsync(DescribePermissionsRequest, cb)
	assert(DescribePermissionsRequest, "You must provide a DescribePermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribePermissions",
	}
	for header,value in pairs(DescribePermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribePermissionsSync(DescribePermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePermissionsAsync(DescribePermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLayer asynchronously, invoking a callback when done
-- @param DeleteLayerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLayerAsync(DeleteLayerRequest, cb)
	assert(DeleteLayerRequest, "You must provide a DeleteLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteLayer",
	}
	for header,value in pairs(DeleteLayerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteLayerSync(DeleteLayerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLayerAsync(DeleteLayerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeVolumes asynchronously, invoking a callback when done
-- @param DescribeVolumesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVolumesAsync(DescribeVolumesRequest, cb)
	assert(DescribeVolumesRequest, "You must provide a DescribeVolumesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeVolumes",
	}
	for header,value in pairs(DescribeVolumesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeVolumesSync(DescribeVolumesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVolumesAsync(DescribeVolumesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackProvisioningParameters asynchronously, invoking a callback when done
-- @param DescribeStackProvisioningParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackProvisioningParametersAsync(DescribeStackProvisioningParametersRequest, cb)
	assert(DescribeStackProvisioningParametersRequest, "You must provide a DescribeStackProvisioningParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeStackProvisioningParameters",
	}
	for header,value in pairs(DescribeStackProvisioningParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStackProvisioningParametersSync(DescribeStackProvisioningParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackProvisioningParametersAsync(DescribeStackProvisioningParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterInstance asynchronously, invoking a callback when done
-- @param RegisterInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterInstanceAsync(RegisterInstanceRequest, cb)
	assert(RegisterInstanceRequest, "You must provide a RegisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.RegisterInstance",
	}
	for header,value in pairs(RegisterInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterInstanceSync(RegisterInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterInstanceAsync(RegisterInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStackAsync(DeleteStackRequest, cb)
	assert(DeleteStackRequest, "You must provide a DeleteStackRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DeleteStack",
	}
	for header,value in pairs(DeleteStackRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteStackSync(DeleteStackRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(DeleteStackRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssignVolume asynchronously, invoking a callback when done
-- @param AssignVolumeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssignVolumeAsync(AssignVolumeRequest, cb)
	assert(AssignVolumeRequest, "You must provide a AssignVolumeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.AssignVolume",
	}
	for header,value in pairs(AssignVolumeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AssignVolumeSync(AssignVolumeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssignVolumeAsync(AssignVolumeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApp asynchronously, invoking a callback when done
-- @param UpdateAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAppAsync(UpdateAppRequest, cb)
	assert(UpdateAppRequest, "You must provide a UpdateAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateApp",
	}
	for header,value in pairs(UpdateAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateAppSync(UpdateAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAppAsync(UpdateAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRdsDbInstances asynchronously, invoking a callback when done
-- @param DescribeRdsDbInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRdsDbInstancesAsync(DescribeRdsDbInstancesRequest, cb)
	assert(DescribeRdsDbInstancesRequest, "You must provide a DescribeRdsDbInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeRdsDbInstances",
	}
	for header,value in pairs(DescribeRdsDbInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeRdsDbInstancesSync(DescribeRdsDbInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRdsDbInstancesAsync(DescribeRdsDbInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserProfile asynchronously, invoking a callback when done
-- @param UpdateUserProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserProfileAsync(UpdateUserProfileRequest, cb)
	assert(UpdateUserProfileRequest, "You must provide a UpdateUserProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateUserProfile",
	}
	for header,value in pairs(UpdateUserProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateUserProfileSync(UpdateUserProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserProfileAsync(UpdateUserProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserProfiles asynchronously, invoking a callback when done
-- @param DescribeUserProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserProfilesAsync(DescribeUserProfilesRequest, cb)
	assert(DescribeUserProfilesRequest, "You must provide a DescribeUserProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.DescribeUserProfiles",
	}
	for header,value in pairs(DescribeUserProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeUserProfilesSync(DescribeUserProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserProfilesAsync(DescribeUserProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLayer asynchronously, invoking a callback when done
-- @param UpdateLayerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLayerAsync(UpdateLayerRequest, cb)
	assert(UpdateLayerRequest, "You must provide a UpdateLayerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "OpsWorks_20130218.UpdateLayer",
	}
	for header,value in pairs(UpdateLayerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateLayerSync(UpdateLayerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLayerAsync(UpdateLayerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
