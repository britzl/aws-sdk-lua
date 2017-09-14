--- GENERATED CODE - DO NOT MODIFY
-- Amazon EC2 Container Service (ecs-2014-11-13)

local M = {}

M.metadata = {
	api_version = "2014-11-13",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ecs",
	service_abbreviation = "Amazon ECS",
	service_full_name = "Amazon EC2 Container Service",
	signature_version = "v4",
	target_prefix = "AmazonEC2ContainerServiceV20141113",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ecs-2014-11-13",
}

local keys = {}
local asserts = {}

keys.Service = { ["status"] = true, ["taskDefinition"] = true, ["pendingCount"] = true, ["loadBalancers"] = true, ["roleArn"] = true, ["placementConstraints"] = true, ["createdAt"] = true, ["desiredCount"] = true, ["serviceName"] = true, ["clusterArn"] = true, ["serviceArn"] = true, ["deploymentConfiguration"] = true, ["deployments"] = true, ["events"] = true, ["runningCount"] = true, ["placementStrategy"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	if struct["pendingCount"] then asserts.AssertInteger(struct["pendingCount"]) end
	if struct["loadBalancers"] then asserts.AssertLoadBalancers(struct["loadBalancers"]) end
	if struct["roleArn"] then asserts.AssertString(struct["roleArn"]) end
	if struct["placementConstraints"] then asserts.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["desiredCount"] then asserts.AssertInteger(struct["desiredCount"]) end
	if struct["serviceName"] then asserts.AssertString(struct["serviceName"]) end
	if struct["clusterArn"] then asserts.AssertString(struct["clusterArn"]) end
	if struct["serviceArn"] then asserts.AssertString(struct["serviceArn"]) end
	if struct["deploymentConfiguration"] then asserts.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["deployments"] then asserts.AssertDeployments(struct["deployments"]) end
	if struct["events"] then asserts.AssertServiceEvents(struct["events"]) end
	if struct["runningCount"] then asserts.AssertInteger(struct["runningCount"]) end
	if struct["placementStrategy"] then asserts.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>Details on a service within a cluster</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the service. The valid values are <code>ACTIVE</code>, <code>DRAINING</code>, or <code>INACTIVE</code>.</p>
-- * taskDefinition [String] <p>The task definition to use for tasks in the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- * pendingCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- * loadBalancers [LoadBalancers] <p>A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.</p>
-- * roleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.</p>
-- * placementConstraints [PlacementConstraints] <p>The placement constraints for the tasks in the service.</p>
-- * createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- * desiredCount [Integer] <p>The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- * serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- * clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the service.</p>
-- * serviceArn [String] <p>The Amazon Resource Name (ARN) that identifies the service. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the service, the AWS account ID of the service owner, the <code>service</code> namespace, and then the service name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:service/<i>my-service</i> </code>.</p>
-- * deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- * deployments [Deployments] <p>The current state of deployments for the service.</p>
-- * events [ServiceEvents] <p>The event stream for your service. A maximum of 100 of the latest events are displayed.</p>
-- * runningCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- * placementStrategy [PlacementStrategies] <p>The placement strategy that determines how tasks for the service are placed.</p>
-- @return Service structure as a key-value pair table
function M.Service(args)
	assert(args, "You must provide an argument table when creating Service")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["taskDefinition"] = args["taskDefinition"],
		["pendingCount"] = args["pendingCount"],
		["loadBalancers"] = args["loadBalancers"],
		["roleArn"] = args["roleArn"],
		["placementConstraints"] = args["placementConstraints"],
		["createdAt"] = args["createdAt"],
		["desiredCount"] = args["desiredCount"],
		["serviceName"] = args["serviceName"],
		["clusterArn"] = args["clusterArn"],
		["serviceArn"] = args["serviceArn"],
		["deploymentConfiguration"] = args["deploymentConfiguration"],
		["deployments"] = args["deployments"],
		["events"] = args["events"],
		["runningCount"] = args["runningCount"],
		["placementStrategy"] = args["placementStrategy"],
	}
	asserts.AssertService(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAttributesResponse = { ["attributes"] = true, nil }

function asserts.AssertDeleteAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesResponse to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAttributesResponse[k], "DeleteAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [Attributes] <p>A list of attribute objects that were successfully deleted from your resource.</p>
-- @return DeleteAttributesResponse structure as a key-value pair table
function M.DeleteAttributesResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
	}
	asserts.AssertDeleteAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClusterResponse = { ["cluster"] = true, nil }

function asserts.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["cluster"] then asserts.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterResponse[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [Cluster] <p>The full description of the deleted cluster.</p>
-- @return DeleteClusterResponse structure as a key-value pair table
function M.DeleteClusterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertDeleteClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MountPoint = { ["sourceVolume"] = true, ["readOnly"] = true, ["containerPath"] = true, nil }

function asserts.AssertMountPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountPoint to be of type 'table'")
	if struct["sourceVolume"] then asserts.AssertString(struct["sourceVolume"]) end
	if struct["readOnly"] then asserts.AssertBoxedBoolean(struct["readOnly"]) end
	if struct["containerPath"] then asserts.AssertString(struct["containerPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.MountPoint[k], "MountPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountPoint
-- <p>Details on a volume mount point that is used in a container definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceVolume [String] <p>The name of the volume to mount.</p>
-- * readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- * containerPath [String] <p>The path on the container to mount the host volume at.</p>
-- @return MountPoint structure as a key-value pair table
function M.MountPoint(args)
	assert(args, "You must provide an argument table when creating MountPoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourceVolume"] = args["sourceVolume"],
		["readOnly"] = args["readOnly"],
		["containerPath"] = args["containerPath"],
	}
	asserts.AssertMountPoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Volume = { ["host"] = true, ["name"] = true, nil }

function asserts.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["host"] then asserts.AssertHostVolumeProperties(struct["host"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Volume[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>A data volume used in a task definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * host [HostVolumeProperties] <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- * name [String] <p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This name is referenced in the <code>sourceVolume</code> parameter of container definition <code>mountPoints</code>.</p>
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
		["host"] = args["host"],
		["name"] = args["name"],
	}
	asserts.AssertVolume(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContainerAgentRequest = { ["cluster"] = true, ["containerInstance"] = true, nil }

function asserts.AssertUpdateContainerAgentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerAgentRequest to be of type 'table'")
	assert(struct["containerInstance"], "Expected key containerInstance to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["containerInstance"] then asserts.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContainerAgentRequest[k], "UpdateContainerAgentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerAgentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- * containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) entries for the container instance on which you would like to update the Amazon ECS container agent.</p>
-- Required key: containerInstance
-- @return UpdateContainerAgentRequest structure as a key-value pair table
function M.UpdateContainerAgentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateContainerAgentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertUpdateContainerAgentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceNotActiveException = { nil }

function asserts.AssertServiceNotActiveException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotActiveException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ServiceNotActiveException[k], "ServiceNotActiveException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotActiveException
-- <p>The specified service is not active. You cannot update a service that is not active. If you have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ServiceNotActiveException structure as a key-value pair table
function M.ServiceNotActiveException(args)
	assert(args, "You must provide an argument table when creating ServiceNotActiveException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertServiceNotActiveException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeLimitExceededException = { nil }

function asserts.AssertAttributeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttributeLimitExceededException[k], "AttributeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeLimitExceededException
-- <p>You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with <a>ListAttributes</a>. You can remove existing attributes on a resource with <a>DeleteAttributes</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AttributeLimitExceededException structure as a key-value pair table
function M.AttributeLimitExceededException(args)
	assert(args, "You must provide an argument table when creating AttributeLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAttributeLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Failure = { ["reason"] = true, ["arn"] = true, nil }

function asserts.AssertFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Failure to be of type 'table'")
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Failure[k], "Failure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Failure
-- <p>A failed resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [String] <p>The reason for the failure.</p>
-- * arn [String] <p>The Amazon Resource Name (ARN) of the failed resource.</p>
-- @return Failure structure as a key-value pair table
function M.Failure(args)
	assert(args, "You must provide an argument table when creating Failure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["arn"] = args["arn"],
	}
	asserts.AssertFailure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAttributesRequest = { ["cluster"] = true, ["attributes"] = true, nil }

function asserts.AssertPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesRequest to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAttributesRequest[k], "PutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- * attributes [Attributes] <p>The attributes to apply to your resource. You can specify up to 10 custom attributes per resource. You can specify up to 10 attributes in a single call.</p>
-- Required key: attributes
-- @return PutAttributesRequest structure as a key-value pair table
function M.PutAttributesRequest(args)
	assert(args, "You must provide an argument table when creating PutAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["attributes"] = args["attributes"],
	}
	asserts.AssertPutAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterContainerInstanceRequest = { ["instanceIdentityDocument"] = true, ["instanceIdentityDocumentSignature"] = true, ["containerInstanceArn"] = true, ["cluster"] = true, ["attributes"] = true, ["versionInfo"] = true, ["totalResources"] = true, nil }

function asserts.AssertRegisterContainerInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterContainerInstanceRequest to be of type 'table'")
	if struct["instanceIdentityDocument"] then asserts.AssertString(struct["instanceIdentityDocument"]) end
	if struct["instanceIdentityDocumentSignature"] then asserts.AssertString(struct["instanceIdentityDocumentSignature"]) end
	if struct["containerInstanceArn"] then asserts.AssertString(struct["containerInstanceArn"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["versionInfo"] then asserts.AssertVersionInfo(struct["versionInfo"]) end
	if struct["totalResources"] then asserts.AssertResources(struct["totalResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterContainerInstanceRequest[k], "RegisterContainerInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterContainerInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * instanceIdentityDocument [String] <p>The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/document/</code> </p>
-- * instanceIdentityDocumentSignature [String] <p>The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/signature/</code> </p>
-- * containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance (if it was previously registered).</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.</p>
-- * attributes [Attributes] <p>The container instance attributes that this container instance supports.</p>
-- * versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- * totalResources [Resources] <p>The resources available on the instance.</p>
-- @return RegisterContainerInstanceRequest structure as a key-value pair table
function M.RegisterContainerInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterContainerInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["instanceIdentityDocument"] = args["instanceIdentityDocument"],
		["instanceIdentityDocumentSignature"] = args["instanceIdentityDocumentSignature"],
		["containerInstanceArn"] = args["containerInstanceArn"],
		["cluster"] = args["cluster"],
		["attributes"] = args["attributes"],
		["versionInfo"] = args["versionInfo"],
		["totalResources"] = args["totalResources"],
	}
	asserts.AssertRegisterContainerInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceNotFoundException = { nil }

function asserts.AssertServiceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ServiceNotFoundException[k], "ServiceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotFoundException
-- <p>The specified service could not be found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster-specific and region-specific.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ServiceNotFoundException structure as a key-value pair table
function M.ServiceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ServiceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertServiceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterContainerInstanceResponse = { ["containerInstance"] = true, nil }

function asserts.AssertRegisterContainerInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterContainerInstanceResponse to be of type 'table'")
	if struct["containerInstance"] then asserts.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterContainerInstanceResponse[k], "RegisterContainerInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterContainerInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerInstance [ContainerInstance] <p>The container instance that was registered.</p>
-- @return RegisterContainerInstanceResponse structure as a key-value pair table
function M.RegisterContainerInstanceResponse(args)
	assert(args, "You must provide an argument table when creating RegisterContainerInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertRegisterContainerInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContainerAgentResponse = { ["containerInstance"] = true, nil }

function asserts.AssertUpdateContainerAgentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerAgentResponse to be of type 'table'")
	if struct["containerInstance"] then asserts.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContainerAgentResponse[k], "UpdateContainerAgentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerAgentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerInstance [ContainerInstance] <p>The container instance for which the container agent was updated.</p>
-- @return UpdateContainerAgentResponse structure as a key-value pair table
function M.UpdateContainerAgentResponse(args)
	assert(args, "You must provide an argument table when creating UpdateContainerAgentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertUpdateContainerAgentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClusterRequest = { ["cluster"] = true, nil }

function asserts.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["cluster"], "Expected key cluster to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterRequest[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
-- Required key: cluster
-- @return DeleteClusterRequest structure as a key-value pair table
function M.DeleteClusterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertDeleteClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Task = { ["taskArn"] = true, ["group"] = true, ["overrides"] = true, ["lastStatus"] = true, ["containerInstanceArn"] = true, ["createdAt"] = true, ["version"] = true, ["clusterArn"] = true, ["startedAt"] = true, ["desiredStatus"] = true, ["stoppedReason"] = true, ["taskDefinitionArn"] = true, ["startedBy"] = true, ["containers"] = true, ["stoppedAt"] = true, nil }

function asserts.AssertTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Task to be of type 'table'")
	if struct["taskArn"] then asserts.AssertString(struct["taskArn"]) end
	if struct["group"] then asserts.AssertString(struct["group"]) end
	if struct["overrides"] then asserts.AssertTaskOverride(struct["overrides"]) end
	if struct["lastStatus"] then asserts.AssertString(struct["lastStatus"]) end
	if struct["containerInstanceArn"] then asserts.AssertString(struct["containerInstanceArn"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["version"] then asserts.AssertLong(struct["version"]) end
	if struct["clusterArn"] then asserts.AssertString(struct["clusterArn"]) end
	if struct["startedAt"] then asserts.AssertTimestamp(struct["startedAt"]) end
	if struct["desiredStatus"] then asserts.AssertString(struct["desiredStatus"]) end
	if struct["stoppedReason"] then asserts.AssertString(struct["stoppedReason"]) end
	if struct["taskDefinitionArn"] then asserts.AssertString(struct["taskDefinitionArn"]) end
	if struct["startedBy"] then asserts.AssertString(struct["startedBy"]) end
	if struct["containers"] then asserts.AssertContainers(struct["containers"]) end
	if struct["stoppedAt"] then asserts.AssertTimestamp(struct["stoppedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Task[k], "Task contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Task
-- <p>Details on a task in a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- * group [String] <p>The name of the task group associated with the task.</p>
-- * overrides [TaskOverride] <p>One or more container overrides.</p>
-- * lastStatus [String] <p>The last known status of the task.</p>
-- * containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instances that host the task.</p>
-- * createdAt [Timestamp] <p>The Unix timestamp for when the task was created (the task entered the <code>PENDING</code> state).</p>
-- * version [Long] <p>The version counter for the task. Every time a task experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS task state with CloudWatch events, you can compare the version of a task reported by the Amazon ECS APIs with the version reported in CloudWatch events for the task (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- * clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- * startedAt [Timestamp] <p>The Unix timestamp for when the task was started (the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state).</p>
-- * desiredStatus [String] <p>The desired status of the task.</p>
-- * stoppedReason [String] <p>The reason the task was stopped.</p>
-- * taskDefinitionArn [String] <p>The Amazon Resource Name (ARN) of the task definition that creates the task.</p>
-- * startedBy [String] <p>The tag specified when a task is started. If the task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- * containers [Containers] <p>The containers associated with the task.</p>
-- * stoppedAt [Timestamp] <p>The Unix timestamp for when the task was stopped (the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>
-- @return Task structure as a key-value pair table
function M.Task(args)
	assert(args, "You must provide an argument table when creating Task")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskArn"] = args["taskArn"],
		["group"] = args["group"],
		["overrides"] = args["overrides"],
		["lastStatus"] = args["lastStatus"],
		["containerInstanceArn"] = args["containerInstanceArn"],
		["createdAt"] = args["createdAt"],
		["version"] = args["version"],
		["clusterArn"] = args["clusterArn"],
		["startedAt"] = args["startedAt"],
		["desiredStatus"] = args["desiredStatus"],
		["stoppedReason"] = args["stoppedReason"],
		["taskDefinitionArn"] = args["taskDefinitionArn"],
		["startedBy"] = args["startedBy"],
		["containers"] = args["containers"],
		["stoppedAt"] = args["stoppedAt"],
	}
	asserts.AssertTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTasksResponse = { ["failures"] = true, ["tasks"] = true, nil }

function asserts.AssertDescribeTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTasksResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	if struct["tasks"] then asserts.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTasksResponse[k], "DescribeTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTasksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- * tasks [Tasks] <p>The list of tasks.</p>
-- @return DescribeTasksResponse structure as a key-value pair table
function M.DescribeTasksResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTasksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["tasks"] = args["tasks"],
	}
	asserts.AssertDescribeTasksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterContainerInstanceResponse = { ["containerInstance"] = true, nil }

function asserts.AssertDeregisterContainerInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterContainerInstanceResponse to be of type 'table'")
	if struct["containerInstance"] then asserts.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterContainerInstanceResponse[k], "DeregisterContainerInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterContainerInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerInstance [ContainerInstance] <p>The container instance that was deregistered.</p>
-- @return DeregisterContainerInstanceResponse structure as a key-value pair table
function M.DeregisterContainerInstanceResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterContainerInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertDeregisterContainerInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceResponse = { ["service"] = true, nil }

function asserts.AssertDeleteServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceResponse to be of type 'table'")
	if struct["service"] then asserts.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceResponse[k], "DeleteServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * service [Service] <p>The full description of the deleted service.</p>
-- @return DeleteServiceResponse structure as a key-value pair table
function M.DeleteServiceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["service"] = args["service"],
	}
	asserts.AssertDeleteServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTaskDefinitionFamiliesRequest = { ["familyPrefix"] = true, ["status"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListTaskDefinitionFamiliesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionFamiliesRequest to be of type 'table'")
	if struct["familyPrefix"] then asserts.AssertString(struct["familyPrefix"]) end
	if struct["status"] then asserts.AssertTaskDefinitionFamilyStatus(struct["status"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTaskDefinitionFamiliesRequest[k], "ListTaskDefinitionFamiliesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionFamiliesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * familyPrefix [String] <p>The <code>familyPrefix</code> is a string that is used to filter the results of <code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>, only task definition family names that begin with the <code>familyPrefix</code> string are returned.</p>
-- * status [TaskDefinitionFamilyStatus] <p>The task definition family status with which to filter the <code>ListTaskDefinitionFamilies</code> results. By default, both <code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed. If this parameter is set to <code>ACTIVE</code>, only task definition families that have an <code>ACTIVE</code> task definition revision are returned. If this parameter is set to <code>INACTIVE</code>, only task definition families that do not have any <code>ACTIVE</code> task definition revisions are returned. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitionFamilies</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [BoxedInteger] <p>The maximum number of task definition family results returned by <code>ListTaskDefinitionFamilies</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitionFamilies</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitionFamilies</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return ListTaskDefinitionFamiliesRequest structure as a key-value pair table
function M.ListTaskDefinitionFamiliesRequest(args)
	assert(args, "You must provide an argument table when creating ListTaskDefinitionFamiliesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["familyPrefix"] = args["familyPrefix"],
		["status"] = args["status"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListTaskDefinitionFamiliesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListContainerInstancesResponse = { ["nextToken"] = true, ["containerInstanceArns"] = true, nil }

function asserts.AssertListContainerInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainerInstancesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["containerInstanceArns"] then asserts.AssertStringList(struct["containerInstanceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListContainerInstancesResponse[k], "ListContainerInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainerInstancesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListContainerInstances</code> request. When the results of a <code>ListContainerInstances</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * containerInstanceArns [StringList] <p>The list of container instances with full Amazon Resource Name (ARN) entries for each container instance associated with the specified cluster.</p>
-- @return ListContainerInstancesResponse structure as a key-value pair table
function M.ListContainerInstancesResponse(args)
	assert(args, "You must provide an argument table when creating ListContainerInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["containerInstanceArns"] = args["containerInstanceArns"],
	}
	asserts.AssertListContainerInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HostEntry = { ["hostname"] = true, ["ipAddress"] = true, nil }

function asserts.AssertHostEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostEntry to be of type 'table'")
	assert(struct["hostname"], "Expected key hostname to exist in table")
	assert(struct["ipAddress"], "Expected key ipAddress to exist in table")
	if struct["hostname"] then asserts.AssertString(struct["hostname"]) end
	if struct["ipAddress"] then asserts.AssertString(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostEntry[k], "HostEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostEntry
-- <p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * hostname [String] <p>The hostname to use in the <code>/etc/hosts</code> entry.</p>
-- * ipAddress [String] <p>The IP address to use in the <code>/etc/hosts</code> entry.</p>
-- Required key: hostname
-- Required key: ipAddress
-- @return HostEntry structure as a key-value pair table
function M.HostEntry(args)
	assert(args, "You must provide an argument table when creating HostEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["hostname"] = args["hostname"],
		["ipAddress"] = args["ipAddress"],
	}
	asserts.AssertHostEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceEvent = { ["message"] = true, ["id"] = true, ["createdAt"] = true, nil }

function asserts.AssertServiceEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceEvent to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceEvent[k], "ServiceEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceEvent
-- <p>Details on an event associated with a service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The event message.</p>
-- * id [String] <p>The ID string of the event.</p>
-- * createdAt [Timestamp] <p>The Unix timestamp for when the event was triggered.</p>
-- @return ServiceEvent structure as a key-value pair table
function M.ServiceEvent(args)
	assert(args, "You must provide an argument table when creating ServiceEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["id"] = args["id"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertServiceEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerOverride = { ["memoryReservation"] = true, ["name"] = true, ["environment"] = true, ["command"] = true, ["memory"] = true, ["cpu"] = true, nil }

function asserts.AssertContainerOverride(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerOverride to be of type 'table'")
	if struct["memoryReservation"] then asserts.AssertBoxedInteger(struct["memoryReservation"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["environment"] then asserts.AssertEnvironmentVariables(struct["environment"]) end
	if struct["command"] then asserts.AssertStringList(struct["command"]) end
	if struct["memory"] then asserts.AssertBoxedInteger(struct["memory"]) end
	if struct["cpu"] then asserts.AssertBoxedInteger(struct["cpu"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerOverride[k], "ContainerOverride contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerOverride
-- <p>The overrides that should be sent to a container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.</p>
-- * name [String] <p>The name of the container that receives the override. This parameter is required if any override is specified.</p>
-- * environment [EnvironmentVariables] <p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name.</p>
-- * command [StringList] <p>The command to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.</p>
-- * memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.</p>
-- * cpu [BoxedInteger] <p>The number of <code>cpu</code> units reserved for the container, instead of the default value from the task definition. You must also specify a container name.</p>
-- @return ContainerOverride structure as a key-value pair table
function M.ContainerOverride(args)
	assert(args, "You must provide an argument table when creating ContainerOverride")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["memoryReservation"] = args["memoryReservation"],
		["name"] = args["name"],
		["environment"] = args["environment"],
		["command"] = args["command"],
		["memory"] = args["memory"],
		["cpu"] = args["cpu"],
	}
	asserts.AssertContainerOverride(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerDefinition = { ["hostname"] = true, ["links"] = true, ["image"] = true, ["memoryReservation"] = true, ["workingDirectory"] = true, ["disableNetworking"] = true, ["environment"] = true, ["memory"] = true, ["extraHosts"] = true, ["privileged"] = true, ["volumesFrom"] = true, ["dnsSearchDomains"] = true, ["readonlyRootFilesystem"] = true, ["logConfiguration"] = true, ["dockerSecurityOptions"] = true, ["entryPoint"] = true, ["user"] = true, ["mountPoints"] = true, ["name"] = true, ["dockerLabels"] = true, ["dnsServers"] = true, ["portMappings"] = true, ["command"] = true, ["cpu"] = true, ["essential"] = true, ["ulimits"] = true, nil }

function asserts.AssertContainerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDefinition to be of type 'table'")
	if struct["hostname"] then asserts.AssertString(struct["hostname"]) end
	if struct["links"] then asserts.AssertStringList(struct["links"]) end
	if struct["image"] then asserts.AssertString(struct["image"]) end
	if struct["memoryReservation"] then asserts.AssertBoxedInteger(struct["memoryReservation"]) end
	if struct["workingDirectory"] then asserts.AssertString(struct["workingDirectory"]) end
	if struct["disableNetworking"] then asserts.AssertBoxedBoolean(struct["disableNetworking"]) end
	if struct["environment"] then asserts.AssertEnvironmentVariables(struct["environment"]) end
	if struct["memory"] then asserts.AssertBoxedInteger(struct["memory"]) end
	if struct["extraHosts"] then asserts.AssertHostEntryList(struct["extraHosts"]) end
	if struct["privileged"] then asserts.AssertBoxedBoolean(struct["privileged"]) end
	if struct["volumesFrom"] then asserts.AssertVolumeFromList(struct["volumesFrom"]) end
	if struct["dnsSearchDomains"] then asserts.AssertStringList(struct["dnsSearchDomains"]) end
	if struct["readonlyRootFilesystem"] then asserts.AssertBoxedBoolean(struct["readonlyRootFilesystem"]) end
	if struct["logConfiguration"] then asserts.AssertLogConfiguration(struct["logConfiguration"]) end
	if struct["dockerSecurityOptions"] then asserts.AssertStringList(struct["dockerSecurityOptions"]) end
	if struct["entryPoint"] then asserts.AssertStringList(struct["entryPoint"]) end
	if struct["user"] then asserts.AssertString(struct["user"]) end
	if struct["mountPoints"] then asserts.AssertMountPointList(struct["mountPoints"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["dockerLabels"] then asserts.AssertDockerLabelsMap(struct["dockerLabels"]) end
	if struct["dnsServers"] then asserts.AssertStringList(struct["dnsServers"]) end
	if struct["portMappings"] then asserts.AssertPortMappingList(struct["portMappings"]) end
	if struct["command"] then asserts.AssertStringList(struct["command"]) end
	if struct["cpu"] then asserts.AssertInteger(struct["cpu"]) end
	if struct["essential"] then asserts.AssertBoxedBoolean(struct["essential"]) end
	if struct["ulimits"] then asserts.AssertUlimitList(struct["ulimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerDefinition[k], "ContainerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDefinition
-- <p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * hostname [String] <p>The hostname to use for your container. This parameter maps to <code>Hostname</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--hostname</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * links [StringList] <p>The <code>link</code> parameter allows containers to communicate with each other without the need for port mappings, using the <code>name</code> parameter and optionally, an <code>alias</code> for the link. This construct is analogous to <code>name:alias</code> in Docker links. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed for each <code>name</code> and <code>alias</code>. For more information on linking Docker containers, see <a href="https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/">https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/</a>. This parameter maps to <code>Links</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--link</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.</p> </important>
-- * image [String] <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <ul> <li> <p>Images in Amazon ECR repositories use the full registry and repository URI (for example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;</code>). </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>
-- * memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit; however, your container can consume more memory when it needs to, up to either the hard limit specified with the <code>memory</code> parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to <code>MemoryReservation</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory-reservation</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a <code>memoryReservation</code> of 128 MiB, and a <code>memory</code> hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed.</p>
-- * workingDirectory [String] <p>The working directory in which to run commands inside the container. This parameter maps to <code>WorkingDir</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--workdir</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * disableNetworking [BoxedBoolean] <p>When this parameter is true, networking is disabled within the container. This parameter maps to <code>NetworkDisabled</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a>.</p>
-- * environment [EnvironmentVariables] <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>We do not recommend using plain text environment variables for sensitive information, such as credential data.</p> </important>
-- * memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. </p>
-- * extraHosts [HostEntryList] <p>A list of hostnames and IP address mappings to append to the <code>/etc/hosts</code> file on the container. This parameter maps to <code>ExtraHosts</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--add-host</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * privileged [BoxedBoolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * volumesFrom [VolumeFromList] <p>Data volumes to mount from another container. This parameter maps to <code>VolumesFrom</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volumes-from</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * dnsSearchDomains [StringList] <p>A list of DNS search domains that are presented to the container. This parameter maps to <code>DnsSearch</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns-search</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * readonlyRootFilesystem [BoxedBoolean] <p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--read-only</code> option to <code>docker run</code>.</p>
-- * logConfiguration [LogConfiguration] <p>The log configuration specification for the container. This parameter maps to <code>LogConfig</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure logging drivers</a> in the Docker documentation.</p> <note> <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type). Additional log drivers may be available in future releases of the Amazon ECS container agent.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p> <note> <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that instance can use these log configuration options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- * dockerSecurityOptions [StringList] <p>A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This parameter maps to <code>SecurityOpt</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--security-opt</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>The Amazon ECS container agent running on a container instance must register with the <code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code> environment variables before containers placed on that instance can use these security options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- * entryPoint [StringList] <important> <p>Early versions of the Amazon ECS container agent do not properly handle <code>entryPoint</code> parameters. If you have problems using <code>entryPoint</code>, update your container agent or enter your commands and arguments as <code>command</code> array items instead.</p> </important> <p>The entry point that is passed to the container. This parameter maps to <code>Entrypoint</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--entrypoint</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#entrypoint">https://docs.docker.com/engine/reference/builder/#entrypoint</a>.</p>
-- * user [String] <p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * mountPoints [MountPointList] <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * name [String] <p>The name of a container. If you are linking multiple containers together in a task definition, the <code>name</code> of one container can be entered in the <code>links</code> of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This parameter maps to <code>name</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--name</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. </p>
-- * dockerLabels [DockerLabelsMap] <p>A key/value map of labels to add to the container. This parameter maps to <code>Labels</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--label</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- * dnsServers [StringList] <p>A list of DNS servers that are presented to the container. This parameter maps to <code>Dns</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * portMappings [PortMappingList] <p>The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. This parameter maps to <code>PortBindings</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--publish</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. If the network mode of a task definition is set to <code>none</code>, then you cannot specify port mappings. If the network mode of a task definition is set to <code>host</code>, then host ports must either be undefined or they must match the container port in the port mapping.</p> <note> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <b>Network Bindings</b> section of a container description of a selected task in the Amazon ECS console, or the <code>networkBindings</code> section <a>DescribeTasks</a> responses.</p> </note>
-- * command [StringList] <p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#cmd">https://docs.docker.com/engine/reference/builder/#cmd</a>.</p>
-- * cpu [Integer] <p>The number of <code>cpu</code> units reserved for the container. A container instance has 1,024 <code>cpu</code> units for every CPU core. This parameter specifies the minimum amount of CPU to reserve for a container, and containers share unallocated CPU units with other containers on the instance with the same ratio as their allocated amount. This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>You can determine the number of CPU units that are available per EC2 instance type by multiplying the vCPUs listed for that instance type on the <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instances</a> detail page by 1,024.</p> </note> <p>For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units.</p> <p>The Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <a href="https://docs.docker.com/engine/reference/run/#cpu-share-constraint">CPU share constraint</a> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2; however, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:</p> <ul> <li> <p> <b>Agent versions less than or equal to 1.1.0:</b> Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to 2 CPU shares.</p> </li> <li> <p> <b>Agent versions greater than or equal to 1.2.0:</b> Null, zero, and CPU values of 1 are passed to Docker as 2.</p> </li> </ul>
-- * essential [BoxedBoolean] <p>If the <code>essential</code> parameter of a container is marked as <code>true</code>, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the <code>essential</code> parameter of a container is marked as <code>false</code>, then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential.</p> <p>All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html">Application Architecture</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * ulimits [UlimitList] <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Valid naming values are displayed in the <a>Ulimit</a> data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- @return ContainerDefinition structure as a key-value pair table
function M.ContainerDefinition(args)
	assert(args, "You must provide an argument table when creating ContainerDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["hostname"] = args["hostname"],
		["links"] = args["links"],
		["image"] = args["image"],
		["memoryReservation"] = args["memoryReservation"],
		["workingDirectory"] = args["workingDirectory"],
		["disableNetworking"] = args["disableNetworking"],
		["environment"] = args["environment"],
		["memory"] = args["memory"],
		["extraHosts"] = args["extraHosts"],
		["privileged"] = args["privileged"],
		["volumesFrom"] = args["volumesFrom"],
		["dnsSearchDomains"] = args["dnsSearchDomains"],
		["readonlyRootFilesystem"] = args["readonlyRootFilesystem"],
		["logConfiguration"] = args["logConfiguration"],
		["dockerSecurityOptions"] = args["dockerSecurityOptions"],
		["entryPoint"] = args["entryPoint"],
		["user"] = args["user"],
		["mountPoints"] = args["mountPoints"],
		["name"] = args["name"],
		["dockerLabels"] = args["dockerLabels"],
		["dnsServers"] = args["dnsServers"],
		["portMappings"] = args["portMappings"],
		["command"] = args["command"],
		["cpu"] = args["cpu"],
		["essential"] = args["essential"],
		["ulimits"] = args["ulimits"],
	}
	asserts.AssertContainerDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementConstraint = { ["expression"] = true, ["type"] = true, nil }

function asserts.AssertPlacementConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementConstraint to be of type 'table'")
	if struct["expression"] then asserts.AssertString(struct["expression"]) end
	if struct["type"] then asserts.AssertPlacementConstraintType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementConstraint[k], "PlacementConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementConstraint
-- <p>An object representing a constraint on task placement. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expression [String] <p>A cluster query language expression to apply to the constraint. Note you cannot specify an expression if the constraint type is <code>distinctInstance</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * type [PlacementConstraintType] <p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in a particular group is running on a different container instance. Use <code>memberOf</code> to restrict selection to a group of valid candidates. Note that <code>distinctInstance</code> is not supported in task definitions.</p>
-- @return PlacementConstraint structure as a key-value pair table
function M.PlacementConstraint(args)
	assert(args, "You must provide an argument table when creating PlacementConstraint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expression"] = args["expression"],
		["type"] = args["type"],
	}
	asserts.AssertPlacementConstraint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTaskDefinitionResponse = { ["taskDefinition"] = true, nil }

function asserts.AssertDescribeTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then asserts.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTaskDefinitionResponse[k], "DescribeTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTaskDefinitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskDefinition [TaskDefinition] <p>The full task definition description.</p>
-- @return DescribeTaskDefinitionResponse structure as a key-value pair table
function M.DescribeTaskDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTaskDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertDescribeTaskDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementStrategy = { ["field"] = true, ["type"] = true, nil }

function asserts.AssertPlacementStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementStrategy to be of type 'table'")
	if struct["field"] then asserts.AssertString(struct["field"]) end
	if struct["type"] then asserts.AssertPlacementStrategyType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementStrategy[k], "PlacementStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementStrategy
-- <p>The task placement strategy for a task or service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * field [String] <p>The field to apply the placement strategy against. For the <code>spread</code> placement strategy, valid values are <code>instanceId</code> (or <code>host</code>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>. For the <code>binpack</code> placement strategy, valid values are <code>cpu</code> and <code>memory</code>. For the <code>random</code> placement strategy, this field is not used.</p>
-- * type [PlacementStrategyType] <p>The type of placement strategy. The <code>random</code> placement strategy randomly places tasks on available candidates. The <code>spread</code> placement strategy spreads placement across available candidates evenly based on the <code>field</code> parameter. The <code>binpack</code> strategy places tasks on available candidates that have the least available amount of the resource that is specified with the <code>field</code> parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task).</p>
-- @return PlacementStrategy structure as a key-value pair table
function M.PlacementStrategy(args)
	assert(args, "You must provide an argument table when creating PlacementStrategy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["field"] = args["field"],
		["type"] = args["type"],
	}
	asserts.AssertPlacementStrategy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClustersRequest = { ["clusters"] = true, nil }

function asserts.AssertDescribeClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersRequest to be of type 'table'")
	if struct["clusters"] then asserts.AssertStringList(struct["clusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersRequest[k], "DescribeClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clusters [StringList] <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.</p>
-- @return DescribeClustersRequest structure as a key-value pair table
function M.DescribeClustersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeClustersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clusters"] = args["clusters"],
	}
	asserts.AssertDescribeClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ulimit = { ["softLimit"] = true, ["name"] = true, ["hardLimit"] = true, nil }

function asserts.AssertUlimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ulimit to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["softLimit"], "Expected key softLimit to exist in table")
	assert(struct["hardLimit"], "Expected key hardLimit to exist in table")
	if struct["softLimit"] then asserts.AssertInteger(struct["softLimit"]) end
	if struct["name"] then asserts.AssertUlimitName(struct["name"]) end
	if struct["hardLimit"] then asserts.AssertInteger(struct["hardLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ulimit[k], "Ulimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ulimit
-- <p>The <code>ulimit</code> settings to pass to the container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * softLimit [Integer] <p>The soft limit for the ulimit type.</p>
-- * name [UlimitName] <p>The <code>type</code> of the <code>ulimit</code>.</p>
-- * hardLimit [Integer] <p>The hard limit for the ulimit type.</p>
-- Required key: name
-- Required key: softLimit
-- Required key: hardLimit
-- @return Ulimit structure as a key-value pair table
function M.Ulimit(args)
	assert(args, "You must provide an argument table when creating Ulimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["softLimit"] = args["softLimit"],
		["name"] = args["name"],
		["hardLimit"] = args["hardLimit"],
	}
	asserts.AssertUlimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServerException = { ["message"] = true, nil }

function asserts.AssertServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerException[k], "ServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerException
-- <p>These errors are usually caused by a server issue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ServerException structure as a key-value pair table
function M.ServerException(args)
	assert(args, "You must provide an argument table when creating ServerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyValuePair = { ["name"] = true, ["value"] = true, nil }

function asserts.AssertKeyValuePair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyValuePair to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyValuePair[k], "KeyValuePair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyValuePair
-- <p>A key and value pair object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the key value pair. For environment variables, this is the name of the environment variable.</p>
-- * value [String] <p>The value of the key value pair. For environment variables, this is the value of the environment variable.</p>
-- @return KeyValuePair structure as a key-value pair table
function M.KeyValuePair(args)
	assert(args, "You must provide an argument table when creating KeyValuePair")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["value"] = args["value"],
	}
	asserts.AssertKeyValuePair(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTaskDefinitionRequest = { ["taskDefinition"] = true, nil }

function asserts.AssertDescribeTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTaskDefinitionRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTaskDefinitionRequest[k], "DescribeTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTaskDefinitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskDefinition [String] <p>The <code>family</code> for the latest <code>ACTIVE</code> revision, <code>family</code> and <code>revision</code> (<code>family:revision</code>) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.</p>
-- Required key: taskDefinition
-- @return DescribeTaskDefinitionRequest structure as a key-value pair table
function M.DescribeTaskDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTaskDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertDescribeTaskDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitTaskStateChangeRequest = { ["status"] = true, ["cluster"] = true, ["reason"] = true, ["task"] = true, nil }

function asserts.AssertSubmitTaskStateChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitTaskStateChangeRequest to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["task"] then asserts.AssertString(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitTaskStateChangeRequest[k], "SubmitTaskStateChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitTaskStateChangeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the state change request.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- * reason [String] <p>The reason for the state change request.</p>
-- * task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task in the state change request.</p>
-- @return SubmitTaskStateChangeRequest structure as a key-value pair table
function M.SubmitTaskStateChangeRequest(args)
	assert(args, "You must provide an argument table when creating SubmitTaskStateChangeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["cluster"] = args["cluster"],
		["reason"] = args["reason"],
		["task"] = args["task"],
	}
	asserts.AssertSubmitTaskStateChangeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTaskResponse = { ["task"] = true, nil }

function asserts.AssertStopTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTaskResponse to be of type 'table'")
	if struct["task"] then asserts.AssertTask(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTaskResponse[k], "StopTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTaskResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * task [Task] <p>The task that was stopped.</p>
-- @return StopTaskResponse structure as a key-value pair table
function M.StopTaskResponse(args)
	assert(args, "You must provide an argument table when creating StopTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["task"] = args["task"],
	}
	asserts.AssertStopTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContainerInstancesResponse = { ["failures"] = true, ["containerInstances"] = true, nil }

function asserts.AssertDescribeContainerInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerInstancesResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	if struct["containerInstances"] then asserts.AssertContainerInstances(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContainerInstancesResponse[k], "DescribeContainerInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerInstancesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- * containerInstances [ContainerInstances] <p>The list of container instances.</p>
-- @return DescribeContainerInstancesResponse structure as a key-value pair table
function M.DescribeContainerInstancesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeContainerInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["containerInstances"] = args["containerInstances"],
	}
	asserts.AssertDescribeContainerInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterResponse = { ["cluster"] = true, nil }

function asserts.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["cluster"] then asserts.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResponse[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [Cluster] <p>The full description of your new cluster.</p>
-- @return CreateClusterResponse structure as a key-value pair table
function M.CreateClusterResponse(args)
	assert(args, "You must provide an argument table when creating CreateClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertCreateClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetNotFoundException = { nil }

function asserts.AssertTargetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TargetNotFoundException[k], "TargetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetNotFoundException
-- <p>The specified target could not be found. You can view your available container instances with <a>ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and region-specific.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TargetNotFoundException structure as a key-value pair table
function M.TargetNotFoundException(args)
	assert(args, "You must provide an argument table when creating TargetNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTargetNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceResponse = { ["service"] = true, nil }

function asserts.AssertCreateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceResponse to be of type 'table'")
	if struct["service"] then asserts.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceResponse[k], "CreateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * service [Service] <p>The full description of your service following the create call.</p>
-- @return CreateServiceResponse structure as a key-value pair table
function M.CreateServiceResponse(args)
	assert(args, "You must provide an argument table when creating CreateServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["service"] = args["service"],
	}
	asserts.AssertCreateServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTaskDefinitionsRequest = { ["familyPrefix"] = true, ["status"] = true, ["nextToken"] = true, ["maxResults"] = true, ["sort"] = true, nil }

function asserts.AssertListTaskDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionsRequest to be of type 'table'")
	if struct["familyPrefix"] then asserts.AssertString(struct["familyPrefix"]) end
	if struct["status"] then asserts.AssertTaskDefinitionStatus(struct["status"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	if struct["sort"] then asserts.AssertSortOrder(struct["sort"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTaskDefinitionsRequest[k], "ListTaskDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * familyPrefix [String] <p>The full family name with which to filter the <code>ListTaskDefinitions</code> results. Specifying a <code>familyPrefix</code> limits the listed task definitions to task definition revisions that belong to that family.</p>
-- * status [TaskDefinitionStatus] <p>The task definition status with which to filter the <code>ListTaskDefinitions</code> results. By default, only <code>ACTIVE</code> task definitions are listed. By setting this parameter to <code>INACTIVE</code>, you can view task definitions that are <code>INACTIVE</code> as long as an active task or service still references them. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitions</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [BoxedInteger] <p>The maximum number of task definition results returned by <code>ListTaskDefinitions</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- * sort [SortOrder] <p>The order in which to sort the results. Valid values are <code>ASC</code> and <code>DESC</code>. By default (<code>ASC</code>), task definitions are listed lexicographically by family name and in ascending numerical order by revision so that the newest task definitions in a family are listed last. Setting this parameter to <code>DESC</code> reverses the sort order on family name and revision so that the newest task definitions in a family are listed first.</p>
-- @return ListTaskDefinitionsRequest structure as a key-value pair table
function M.ListTaskDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListTaskDefinitionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["familyPrefix"] = args["familyPrefix"],
		["status"] = args["status"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["sort"] = args["sort"],
	}
	asserts.AssertListTaskDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeploymentConfiguration = { ["maximumPercent"] = true, ["minimumHealthyPercent"] = true, nil }

function asserts.AssertDeploymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfiguration to be of type 'table'")
	if struct["maximumPercent"] then asserts.AssertBoxedInteger(struct["maximumPercent"]) end
	if struct["minimumHealthyPercent"] then asserts.AssertBoxedInteger(struct["minimumHealthyPercent"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeploymentConfiguration[k], "DeploymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfiguration
-- <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * maximumPercent [BoxedInteger] <p>The upper limit (as a percentage of the service's <code>desiredCount</code>) of the number of tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state in a service during a deployment. The maximum number of tasks during a deployment is the <code>desiredCount</code> multiplied by <code>maximumPercent</code>/100, rounded down to the nearest integer value.</p>
-- * minimumHealthyPercent [BoxedInteger] <p>The lower limit (as a percentage of the service's <code>desiredCount</code>) of the number of running tasks that must remain in the <code>RUNNING</code> state in a service during a deployment. The minimum healthy tasks during a deployment is the <code>desiredCount</code> multiplied by <code>minimumHealthyPercent</code>/100, rounded up to the nearest integer value.</p>
-- @return DeploymentConfiguration structure as a key-value pair table
function M.DeploymentConfiguration(args)
	assert(args, "You must provide an argument table when creating DeploymentConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["maximumPercent"] = args["maximumPercent"],
		["minimumHealthyPercent"] = args["minimumHealthyPercent"],
	}
	asserts.AssertDeploymentConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceRequest = { ["loadBalancers"] = true, ["placementConstraints"] = true, ["desiredCount"] = true, ["cluster"] = true, ["serviceName"] = true, ["role"] = true, ["clientToken"] = true, ["deploymentConfiguration"] = true, ["taskDefinition"] = true, ["placementStrategy"] = true, nil }

function asserts.AssertCreateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceRequest to be of type 'table'")
	assert(struct["serviceName"], "Expected key serviceName to exist in table")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	assert(struct["desiredCount"], "Expected key desiredCount to exist in table")
	if struct["loadBalancers"] then asserts.AssertLoadBalancers(struct["loadBalancers"]) end
	if struct["placementConstraints"] then asserts.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["desiredCount"] then asserts.AssertBoxedInteger(struct["desiredCount"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["serviceName"] then asserts.AssertString(struct["serviceName"]) end
	if struct["role"] then asserts.AssertString(struct["role"]) end
	if struct["clientToken"] then asserts.AssertString(struct["clientToken"]) end
	if struct["deploymentConfiguration"] then asserts.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	if struct["placementStrategy"] then asserts.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceRequest[k], "CreateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * loadBalancers [LoadBalancers] <p>A load balancer object representing the load balancer to use with your service. Currently, you are limited to one load balancer or target group per service. After you create a service, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable.</p> <p>For Elastic Load Balancing Classic load balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here.</p> <p>For Elastic Load Balancing Application load balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here.</p>
-- * placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time). </p>
-- * desiredCount [BoxedInteger] <p>The number of instantiations of the specified task definition to place and keep running on your cluster.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.</p>
-- * serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- * role [String] <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service. If you specify the <code>role</code> parameter, you must also specify a load balancer object with the <code>loadBalancers</code> parameter.</p> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly Names and Paths</a> in the <i>IAM User Guide</i>.</p>
-- * clientToken [String] <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.</p>
-- * deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- * taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- * placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service.</p>
-- Required key: serviceName
-- Required key: taskDefinition
-- Required key: desiredCount
-- @return CreateServiceRequest structure as a key-value pair table
function M.CreateServiceRequest(args)
	assert(args, "You must provide an argument table when creating CreateServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["loadBalancers"] = args["loadBalancers"],
		["placementConstraints"] = args["placementConstraints"],
		["desiredCount"] = args["desiredCount"],
		["cluster"] = args["cluster"],
		["serviceName"] = args["serviceName"],
		["role"] = args["role"],
		["clientToken"] = args["clientToken"],
		["deploymentConfiguration"] = args["deploymentConfiguration"],
		["taskDefinition"] = args["taskDefinition"],
		["placementStrategy"] = args["placementStrategy"],
	}
	asserts.AssertCreateServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTaskResponse = { ["failures"] = true, ["tasks"] = true, nil }

function asserts.AssertStartTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTaskResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	if struct["tasks"] then asserts.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTaskResponse[k], "StartTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTaskResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- * tasks [Tasks] <p>A full description of the tasks that were started. Each task that was successfully placed on your container instances are described here.</p>
-- @return StartTaskResponse structure as a key-value pair table
function M.StartTaskResponse(args)
	assert(args, "You must provide an argument table when creating StartTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["tasks"] = args["tasks"],
	}
	asserts.AssertStartTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersResponse = { ["nextToken"] = true, ["clusterArns"] = true, nil }

function asserts.AssertListClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["clusterArns"] then asserts.AssertStringList(struct["clusterArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersResponse[k], "ListClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * clusterArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each cluster associated with your account.</p>
-- @return ListClustersResponse structure as a key-value pair table
function M.ListClustersResponse(args)
	assert(args, "You must provide an argument table when creating ListClustersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["clusterArns"] = args["clusterArns"],
	}
	asserts.AssertListClustersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTasksResponse = { ["nextToken"] = true, ["taskArns"] = true, nil }

function asserts.AssertListTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTasksResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["taskArns"] then asserts.AssertStringList(struct["taskArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTasksResponse[k], "ListTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTasksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTasks</code> request. When the results of a <code>ListTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * taskArns [StringList] <p>The list of task Amazon Resource Name (ARN) entries for the <code>ListTasks</code> request.</p>
-- @return ListTasksResponse structure as a key-value pair table
function M.ListTasksResponse(args)
	assert(args, "You must provide an argument table when creating ListTasksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["taskArns"] = args["taskArns"],
	}
	asserts.AssertListTasksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceRequest = { ["cluster"] = true, ["deploymentConfiguration"] = true, ["taskDefinition"] = true, ["service"] = true, ["desiredCount"] = true, nil }

function asserts.AssertUpdateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceRequest to be of type 'table'")
	assert(struct["service"], "Expected key service to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["deploymentConfiguration"] then asserts.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	if struct["service"] then asserts.AssertString(struct["service"]) end
	if struct["desiredCount"] then asserts.AssertBoxedInteger(struct["desiredCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceRequest[k], "UpdateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- * deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- * taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.</p>
-- * service [String] <p>The name of the service to update.</p>
-- * desiredCount [BoxedInteger] <p>The number of instantiations of the task to place and keep running in your service.</p>
-- Required key: service
-- @return UpdateServiceRequest structure as a key-value pair table
function M.UpdateServiceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["deploymentConfiguration"] = args["deploymentConfiguration"],
		["taskDefinition"] = args["taskDefinition"],
		["service"] = args["service"],
		["desiredCount"] = args["desiredCount"],
	}
	asserts.AssertUpdateServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitContainerStateChangeRequest = { ["status"] = true, ["containerName"] = true, ["task"] = true, ["networkBindings"] = true, ["cluster"] = true, ["reason"] = true, ["exitCode"] = true, nil }

function asserts.AssertSubmitContainerStateChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitContainerStateChangeRequest to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["containerName"] then asserts.AssertString(struct["containerName"]) end
	if struct["task"] then asserts.AssertString(struct["task"]) end
	if struct["networkBindings"] then asserts.AssertNetworkBindings(struct["networkBindings"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["exitCode"] then asserts.AssertBoxedInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitContainerStateChangeRequest[k], "SubmitContainerStateChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitContainerStateChangeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the state change request.</p>
-- * containerName [String] <p>The name of the container.</p>
-- * task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
-- * networkBindings [NetworkBindings] <p>The network bindings of the container.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container.</p>
-- * reason [String] <p>The reason for the state change request.</p>
-- * exitCode [BoxedInteger] <p>The exit code returned for the state change request.</p>
-- @return SubmitContainerStateChangeRequest structure as a key-value pair table
function M.SubmitContainerStateChangeRequest(args)
	assert(args, "You must provide an argument table when creating SubmitContainerStateChangeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["containerName"] = args["containerName"],
		["task"] = args["task"],
		["networkBindings"] = args["networkBindings"],
		["cluster"] = args["cluster"],
		["reason"] = args["reason"],
		["exitCode"] = args["exitCode"],
	}
	asserts.AssertSubmitContainerStateChangeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterContainsContainerInstancesException = { nil }

function asserts.AssertClusterContainsContainerInstancesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterContainsContainerInstancesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterContainsContainerInstancesException[k], "ClusterContainsContainerInstancesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterContainsContainerInstancesException
-- <p>You cannot delete a cluster that has registered container instances. You must first deregister the container instances before you can delete the cluster. For more information, see <a>DeregisterContainerInstance</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ClusterContainsContainerInstancesException structure as a key-value pair table
function M.ClusterContainsContainerInstancesException(args)
	assert(args, "You must provide an argument table when creating ClusterContainsContainerInstancesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertClusterContainsContainerInstancesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterContainsServicesException = { nil }

function asserts.AssertClusterContainsServicesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterContainsServicesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterContainsServicesException[k], "ClusterContainsServicesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterContainsServicesException
-- <p>You cannot delete a cluster that contains services. You must first update the service to reduce its desired task count to 0 and then delete the service. For more information, see <a>UpdateService</a> and <a>DeleteService</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ClusterContainsServicesException structure as a key-value pair table
function M.ClusterContainsServicesException(args)
	assert(args, "You must provide an argument table when creating ClusterContainsServicesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertClusterContainsServicesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesRequest = { ["services"] = true, ["cluster"] = true, nil }

function asserts.AssertDescribeServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesRequest to be of type 'table'")
	assert(struct["services"], "Expected key services to exist in table")
	if struct["services"] then asserts.AssertStringList(struct["services"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesRequest[k], "DescribeServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * services [StringList] <p>A list of services to describe. You may specify up to 10 services to describe in a single operation.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- Required key: services
-- @return DescribeServicesRequest structure as a key-value pair table
function M.DescribeServicesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeServicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["services"] = args["services"],
		["cluster"] = args["cluster"],
	}
	asserts.AssertDescribeServicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAttributesRequest = { ["cluster"] = true, ["attributes"] = true, nil }

function asserts.AssertDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesRequest to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAttributesRequest[k], "DeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- * attributes [Attributes] <p>The attributes to delete from your resource. You can specify up to 10 attributes per request. For custom attributes, specify the attribute name and target ID, but do not specify the value. If you specify the target ID using the short form, you must also specify the target type.</p>
-- Required key: attributes
-- @return DeleteAttributesRequest structure as a key-value pair table
function M.DeleteAttributesRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["attributes"] = args["attributes"],
	}
	asserts.AssertDeleteAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoUpdateAvailableException = { nil }

function asserts.AssertNoUpdateAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoUpdateAvailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NoUpdateAvailableException[k], "NoUpdateAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoUpdateAvailableException
-- <p>There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NoUpdateAvailableException structure as a key-value pair table
function M.NoUpdateAvailableException(args)
	assert(args, "You must provide an argument table when creating NoUpdateAvailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertNoUpdateAvailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitTaskStateChangeResponse = { ["acknowledgment"] = true, nil }

function asserts.AssertSubmitTaskStateChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitTaskStateChangeResponse to be of type 'table'")
	if struct["acknowledgment"] then asserts.AssertString(struct["acknowledgment"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitTaskStateChangeResponse[k], "SubmitTaskStateChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitTaskStateChangeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * acknowledgment [String] <p>Acknowledgement of the state change.</p>
-- @return SubmitTaskStateChangeResponse structure as a key-value pair table
function M.SubmitTaskStateChangeResponse(args)
	assert(args, "You must provide an argument table when creating SubmitTaskStateChangeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["acknowledgment"] = args["acknowledgment"],
	}
	asserts.AssertSubmitTaskStateChangeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersRequest[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListClusters</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When this parameter is used, <code>ListClusters</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return ListClustersRequest structure as a key-value pair table
function M.ListClustersRequest(args)
	assert(args, "You must provide an argument table when creating ListClustersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClustersResponse = { ["clusters"] = true, ["failures"] = true, nil }

function asserts.AssertDescribeClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersResponse to be of type 'table'")
	if struct["clusters"] then asserts.AssertClusters(struct["clusters"]) end
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersResponse[k], "DescribeClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clusters [Clusters] <p>The list of clusters.</p>
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- @return DescribeClustersResponse structure as a key-value pair table
function M.DescribeClustersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeClustersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clusters"] = args["clusters"],
		["failures"] = args["failures"],
	}
	asserts.AssertDescribeClustersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTaskDefinitionsResponse = { ["nextToken"] = true, ["taskDefinitionArns"] = true, nil }

function asserts.AssertListTaskDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["taskDefinitionArns"] then asserts.AssertStringList(struct["taskDefinitionArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTaskDefinitionsResponse[k], "ListTaskDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitions</code> request. When the results of a <code>ListTaskDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * taskDefinitionArns [StringList] <p>The list of task definition Amazon Resource Name (ARN) entries for the <code>ListTaskDefinitions</code> request.</p>
-- @return ListTaskDefinitionsResponse structure as a key-value pair table
function M.ListTaskDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListTaskDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["taskDefinitionArns"] = args["taskDefinitionArns"],
	}
	asserts.AssertListTaskDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerInstance = { ["status"] = true, ["registeredAt"] = true, ["registeredResources"] = true, ["ec2InstanceId"] = true, ["agentConnected"] = true, ["containerInstanceArn"] = true, ["pendingTasksCount"] = true, ["remainingResources"] = true, ["version"] = true, ["agentUpdateStatus"] = true, ["attributes"] = true, ["versionInfo"] = true, ["runningTasksCount"] = true, nil }

function asserts.AssertContainerInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerInstance to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["registeredAt"] then asserts.AssertTimestamp(struct["registeredAt"]) end
	if struct["registeredResources"] then asserts.AssertResources(struct["registeredResources"]) end
	if struct["ec2InstanceId"] then asserts.AssertString(struct["ec2InstanceId"]) end
	if struct["agentConnected"] then asserts.AssertBoolean(struct["agentConnected"]) end
	if struct["containerInstanceArn"] then asserts.AssertString(struct["containerInstanceArn"]) end
	if struct["pendingTasksCount"] then asserts.AssertInteger(struct["pendingTasksCount"]) end
	if struct["remainingResources"] then asserts.AssertResources(struct["remainingResources"]) end
	if struct["version"] then asserts.AssertLong(struct["version"]) end
	if struct["agentUpdateStatus"] then asserts.AssertAgentUpdateStatus(struct["agentUpdateStatus"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["versionInfo"] then asserts.AssertVersionInfo(struct["versionInfo"]) end
	if struct["runningTasksCount"] then asserts.AssertInteger(struct["runningTasksCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerInstance[k], "ContainerInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerInstance
-- <p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the container instance. The valid values are <code>ACTIVE</code>, <code>INACTIVE</code>, or <code>DRAINING</code>. <code>ACTIVE</code> indicates that the container instance can accept tasks. <code>DRAINING</code> indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html">Container Instance Draining</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * registeredAt [Timestamp] <p>The Unix timestamp for when the container instance was registered.</p>
-- * registeredResources [Resources] <p>For most resource types, this parameter describes the registered resources on the container instance that are in use by current tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.</p>
-- * ec2InstanceId [String] <p>The EC2 instance ID of the container instance.</p>
-- * agentConnected [Boolean] <p>This parameter returns <code>true</code> if the agent is actually connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return <code>false</code>, and instances without a connected agent cannot accept placement requests.</p>
-- * containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- * pendingTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>PENDING</code> status.</p>
-- * remainingResources [Resources] <p>For most resource types, this parameter describes the remaining resources of the container instance that are available for new tasks. For port resource types, this parameter describes the ports that are reserved by the Amazon ECS container agent and any containers that have reserved port mappings; any port that is not specified here is available for new tasks.</p>
-- * version [Long] <p>The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch events for the container instance (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- * agentUpdateStatus [AgentUpdateStatus] <p>The status of the most recent agent update. If an update has never been requested, this value is <code>NULL</code>.</p>
-- * attributes [Attributes] <p>The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the <a>PutAttributes</a> operation.</p>
-- * versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- * runningTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>RUNNING</code> status.</p>
-- @return ContainerInstance structure as a key-value pair table
function M.ContainerInstance(args)
	assert(args, "You must provide an argument table when creating ContainerInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["registeredAt"] = args["registeredAt"],
		["registeredResources"] = args["registeredResources"],
		["ec2InstanceId"] = args["ec2InstanceId"],
		["agentConnected"] = args["agentConnected"],
		["containerInstanceArn"] = args["containerInstanceArn"],
		["pendingTasksCount"] = args["pendingTasksCount"],
		["remainingResources"] = args["remainingResources"],
		["version"] = args["version"],
		["agentUpdateStatus"] = args["agentUpdateStatus"],
		["attributes"] = args["attributes"],
		["versionInfo"] = args["versionInfo"],
		["runningTasksCount"] = args["runningTasksCount"],
	}
	asserts.AssertContainerInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DiscoverPollEndpointResponse = { ["endpoint"] = true, ["telemetryEndpoint"] = true, nil }

function asserts.AssertDiscoverPollEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverPollEndpointResponse to be of type 'table'")
	if struct["endpoint"] then asserts.AssertString(struct["endpoint"]) end
	if struct["telemetryEndpoint"] then asserts.AssertString(struct["telemetryEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiscoverPollEndpointResponse[k], "DiscoverPollEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverPollEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endpoint [String] <p>The endpoint for the Amazon ECS agent to poll.</p>
-- * telemetryEndpoint [String] <p>The telemetry endpoint for the Amazon ECS agent.</p>
-- @return DiscoverPollEndpointResponse structure as a key-value pair table
function M.DiscoverPollEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DiscoverPollEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endpoint"] = args["endpoint"],
		["telemetryEndpoint"] = args["telemetryEndpoint"],
	}
	asserts.AssertDiscoverPollEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterTaskDefinitionRequest = { ["taskDefinition"] = true, nil }

function asserts.AssertDeregisterTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskDefinitionRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTaskDefinitionRequest[k], "DeregisterTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskDefinitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a <code>revision</code>.</p>
-- Required key: taskDefinition
-- @return DeregisterTaskDefinitionRequest structure as a key-value pair table
function M.DeregisterTaskDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterTaskDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertDeregisterTaskDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitContainerStateChangeResponse = { ["acknowledgment"] = true, nil }

function asserts.AssertSubmitContainerStateChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitContainerStateChangeResponse to be of type 'table'")
	if struct["acknowledgment"] then asserts.AssertString(struct["acknowledgment"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitContainerStateChangeResponse[k], "SubmitContainerStateChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitContainerStateChangeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * acknowledgment [String] <p>Acknowledgement of the state change.</p>
-- @return SubmitContainerStateChangeResponse structure as a key-value pair table
function M.SubmitContainerStateChangeResponse(args)
	assert(args, "You must provide an argument table when creating SubmitContainerStateChangeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["acknowledgment"] = args["acknowledgment"],
	}
	asserts.AssertSubmitContainerStateChangeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceResponse = { ["service"] = true, nil }

function asserts.AssertUpdateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceResponse to be of type 'table'")
	if struct["service"] then asserts.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceResponse[k], "UpdateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * service [Service] <p>The full description of your service following the update call.</p>
-- @return UpdateServiceResponse structure as a key-value pair table
function M.UpdateServiceResponse(args)
	assert(args, "You must provide an argument table when creating UpdateServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["service"] = args["service"],
	}
	asserts.AssertUpdateServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInProgressException = { nil }

function asserts.AssertUpdateInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInProgressException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateInProgressException[k], "UpdateInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInProgressException
-- <p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateInProgressException structure as a key-value pair table
function M.UpdateInProgressException(args)
	assert(args, "You must provide an argument table when creating UpdateInProgressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateInProgressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAttributesResponse = { ["attributes"] = true, ["nextToken"] = true, nil }

function asserts.AssertListAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttributesResponse to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttributesResponse[k], "ListAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [Attributes] <p>A list of attribute objects that meet the criteria of the request.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListAttributes</code> request. When the results of a <code>ListAttributes</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @return ListAttributesResponse structure as a key-value pair table
function M.ListAttributesResponse(args)
	assert(args, "You must provide an argument table when creating ListAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTasksRequest = { ["family"] = true, ["maxResults"] = true, ["startedBy"] = true, ["cluster"] = true, ["serviceName"] = true, ["desiredStatus"] = true, ["nextToken"] = true, ["containerInstance"] = true, nil }

function asserts.AssertListTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTasksRequest to be of type 'table'")
	if struct["family"] then asserts.AssertString(struct["family"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	if struct["startedBy"] then asserts.AssertString(struct["startedBy"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["serviceName"] then asserts.AssertString(struct["serviceName"]) end
	if struct["desiredStatus"] then asserts.AssertDesiredStatus(struct["desiredStatus"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["containerInstance"] then asserts.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTasksRequest[k], "ListTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * family [String] <p>The name of the family with which to filter the <code>ListTasks</code> results. Specifying a <code>family</code> limits the results to tasks that belong to that family.</p>
-- * maxResults [BoxedInteger] <p>The maximum number of task results returned by <code>ListTasks</code> in paginated output. When this parameter is used, <code>ListTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTasks</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTasks</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- * startedBy [String] <p>The <code>startedBy</code> value with which to filter the task results. Specifying a <code>startedBy</code> value limits the results to tasks that were started with that value.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- * serviceName [String] <p>The name of the service with which to filter the <code>ListTasks</code> results. Specifying a <code>serviceName</code> limits the results to tasks that belong to that service.</p>
-- * desiredStatus [DesiredStatus] <p>The task desired status with which to filter the <code>ListTasks</code> results. Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to tasks that ECS has set the desired status to <code>STOPPED</code>, which can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is <code>RUNNING</code>, which shows tasks that ECS has set the desired status to <code>RUNNING</code>.</p> <note> <p>Although you can filter results based on a desired status of <code>PENDING</code>, this will not return any results because ECS never sets the desired status of a task to that value (only a task's <code>lastStatus</code> may have a value of <code>PENDING</code>).</p> </note>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance with which to filter the <code>ListTasks</code> results. Specifying a <code>containerInstance</code> limits the results to tasks that belong to that container instance.</p>
-- @return ListTasksRequest structure as a key-value pair table
function M.ListTasksRequest(args)
	assert(args, "You must provide an argument table when creating ListTasksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["family"] = args["family"],
		["maxResults"] = args["maxResults"],
		["startedBy"] = args["startedBy"],
		["cluster"] = args["cluster"],
		["serviceName"] = args["serviceName"],
		["desiredStatus"] = args["desiredStatus"],
		["nextToken"] = args["nextToken"],
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertListTasksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterNotFoundException = { nil }

function asserts.AssertClusterNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterNotFoundException[k], "ClusterNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundException
-- <p>The specified cluster could not be found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are region-specific.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ClusterNotFoundException structure as a key-value pair table
function M.ClusterNotFoundException(args)
	assert(args, "You must provide an argument table when creating ClusterNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertClusterNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TaskDefinitionPlacementConstraint = { ["expression"] = true, ["type"] = true, nil }

function asserts.AssertTaskDefinitionPlacementConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDefinitionPlacementConstraint to be of type 'table'")
	if struct["expression"] then asserts.AssertString(struct["expression"]) end
	if struct["type"] then asserts.AssertTaskDefinitionPlacementConstraintType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskDefinitionPlacementConstraint[k], "TaskDefinitionPlacementConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDefinitionPlacementConstraint
-- <p>An object representing a constraint on task placement in the task definition. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expression [String] <p>A cluster query language expression to apply to the constraint. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * type [TaskDefinitionPlacementConstraintType] <p>The type of constraint. The <code>DistinctInstance</code> constraint ensures that each task in a particular group is running on a different container instance. The <code>MemberOf</code> constraint restricts selection to be from a group of valid candidates.</p>
-- @return TaskDefinitionPlacementConstraint structure as a key-value pair table
function M.TaskDefinitionPlacementConstraint(args)
	assert(args, "You must provide an argument table when creating TaskDefinitionPlacementConstraint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expression"] = args["expression"],
		["type"] = args["type"],
	}
	asserts.AssertTaskDefinitionPlacementConstraint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterRequest = { ["clusterName"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	if struct["clusterName"] then asserts.AssertString(struct["clusterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clusterName [String] <p>The name of your cluster. If you do not specify a name for your cluster, you create a cluster named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- @return CreateClusterRequest structure as a key-value pair table
function M.CreateClusterRequest(args)
	assert(args, "You must provide an argument table when creating CreateClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clusterName"] = args["clusterName"],
	}
	asserts.AssertCreateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DiscoverPollEndpointRequest = { ["cluster"] = true, ["containerInstance"] = true, nil }

function asserts.AssertDiscoverPollEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverPollEndpointRequest to be of type 'table'")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["containerInstance"] then asserts.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DiscoverPollEndpointRequest[k], "DiscoverPollEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverPollEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs to.</p>
-- * containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- @return DiscoverPollEndpointRequest structure as a key-value pair table
function M.DiscoverPollEndpointRequest(args)
	assert(args, "You must provide an argument table when creating DiscoverPollEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertDiscoverPollEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServicesRequest = { ["cluster"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesRequest to be of type 'table'")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServicesRequest[k], "ListServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListServices</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListServices</code> in paginated output. When this parameter is used, <code>ListServices</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListServices</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 10. If this parameter is not used, then <code>ListServices</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>
-- @return ListServicesRequest structure as a key-value pair table
function M.ListServicesRequest(args)
	assert(args, "You must provide an argument table when creating ListServicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListServicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeContainerInstancesRequest = { ["cluster"] = true, ["containerInstances"] = true, nil }

function asserts.AssertDescribeContainerInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerInstancesRequest to be of type 'table'")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["containerInstances"] then asserts.AssertStringList(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeContainerInstancesRequest[k], "DescribeContainerInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerInstancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- * containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required key: containerInstances
-- @return DescribeContainerInstancesRequest structure as a key-value pair table
function M.DescribeContainerInstancesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeContainerInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["containerInstances"] = args["containerInstances"],
	}
	asserts.AssertDescribeContainerInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TaskDefinition = { ["status"] = true, ["networkMode"] = true, ["family"] = true, ["placementConstraints"] = true, ["requiresAttributes"] = true, ["volumes"] = true, ["taskRoleArn"] = true, ["taskDefinitionArn"] = true, ["containerDefinitions"] = true, ["revision"] = true, nil }

function asserts.AssertTaskDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDefinition to be of type 'table'")
	if struct["status"] then asserts.AssertTaskDefinitionStatus(struct["status"]) end
	if struct["networkMode"] then asserts.AssertNetworkMode(struct["networkMode"]) end
	if struct["family"] then asserts.AssertString(struct["family"]) end
	if struct["placementConstraints"] then asserts.AssertTaskDefinitionPlacementConstraints(struct["placementConstraints"]) end
	if struct["requiresAttributes"] then asserts.AssertRequiresAttributes(struct["requiresAttributes"]) end
	if struct["volumes"] then asserts.AssertVolumeList(struct["volumes"]) end
	if struct["taskRoleArn"] then asserts.AssertString(struct["taskRoleArn"]) end
	if struct["taskDefinitionArn"] then asserts.AssertString(struct["taskDefinitionArn"]) end
	if struct["containerDefinitions"] then asserts.AssertContainerDefinitions(struct["containerDefinitions"]) end
	if struct["revision"] then asserts.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskDefinition[k], "TaskDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDefinition
-- <p>Details of a task definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [TaskDefinitionStatus] <p>The status of the task definition.</p>
-- * networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>If the network mode is <code>none</code>, the containers do not have external connectivity. The default Docker network mode is <code>bridge</code>. The <code>host</code> network mode offers the highest networking performance for containers because it uses the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- * family [String] <p>The family of your task definition, used as the definition name.</p>
-- * placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for tasks. </p>
-- * requiresAttributes [RequiresAttributes] <p>The container instance attributes required by your task.</p>
-- * volumes [VolumeList] <p>The list of volumes in a task. For more information about volume definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- * taskDefinitionArn [String] <p>The full Amazon Resource Name (ARN) of the task definition.</p>
-- * containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * revision [Integer] <p>The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is <code>1</code>; each time you register a new revision of a task definition in the same family, the revision value always increases by one (even if you have deregistered previous revisions in this family).</p>
-- @return TaskDefinition structure as a key-value pair table
function M.TaskDefinition(args)
	assert(args, "You must provide an argument table when creating TaskDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["networkMode"] = args["networkMode"],
		["family"] = args["family"],
		["placementConstraints"] = args["placementConstraints"],
		["requiresAttributes"] = args["requiresAttributes"],
		["volumes"] = args["volumes"],
		["taskRoleArn"] = args["taskRoleArn"],
		["taskDefinitionArn"] = args["taskDefinitionArn"],
		["containerDefinitions"] = args["containerDefinitions"],
		["revision"] = args["revision"],
	}
	asserts.AssertTaskDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContainerInstancesStateResponse = { ["failures"] = true, ["containerInstances"] = true, nil }

function asserts.AssertUpdateContainerInstancesStateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerInstancesStateResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	if struct["containerInstances"] then asserts.AssertContainerInstances(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContainerInstancesStateResponse[k], "UpdateContainerInstancesStateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerInstancesStateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- * containerInstances [ContainerInstances] <p>The list of container instances.</p>
-- @return UpdateContainerInstancesStateResponse structure as a key-value pair table
function M.UpdateContainerInstancesStateResponse(args)
	assert(args, "You must provide an argument table when creating UpdateContainerInstancesStateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["containerInstances"] = args["containerInstances"],
	}
	asserts.AssertUpdateContainerInstancesStateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutAttributesResponse = { ["attributes"] = true, nil }

function asserts.AssertPutAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesResponse to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutAttributesResponse[k], "PutAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [Attributes] <p>The attributes applied to your resource.</p>
-- @return PutAttributesResponse structure as a key-value pair table
function M.PutAttributesResponse(args)
	assert(args, "You must provide an argument table when creating PutAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
	}
	asserts.AssertPutAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTaskDefinitionFamiliesResponse = { ["nextToken"] = true, ["families"] = true, nil }

function asserts.AssertListTaskDefinitionFamiliesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionFamiliesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["families"] then asserts.AssertStringList(struct["families"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTaskDefinitionFamiliesResponse[k], "ListTaskDefinitionFamiliesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionFamiliesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitionFamilies</code> request. When the results of a <code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * families [StringList] <p>The list of task definition family names that match the <code>ListTaskDefinitionFamilies</code> request.</p>
-- @return ListTaskDefinitionFamiliesResponse structure as a key-value pair table
function M.ListTaskDefinitionFamiliesResponse(args)
	assert(args, "You must provide an argument table when creating ListTaskDefinitionFamiliesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["families"] = args["families"],
	}
	asserts.AssertListTaskDefinitionFamiliesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAttributesRequest = { ["targetType"] = true, ["attributeValue"] = true, ["attributeName"] = true, ["maxResults"] = true, ["cluster"] = true, ["nextToken"] = true, nil }

function asserts.AssertListAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttributesRequest to be of type 'table'")
	assert(struct["targetType"], "Expected key targetType to exist in table")
	if struct["targetType"] then asserts.AssertTargetType(struct["targetType"]) end
	if struct["attributeValue"] then asserts.AssertString(struct["attributeValue"]) end
	if struct["attributeName"] then asserts.AssertString(struct["attributeName"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttributesRequest[k], "ListAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targetType [TargetType] <p>The type of the target with which to list attributes.</p>
-- * attributeValue [String] <p>The value of the attribute with which to filter results. You must also specify an attribute name to use this parameter.</p>
-- * attributeName [String] <p>The name of the attribute with which to filter the results. </p>
-- * maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListAttributes</code> in paginated output. When this parameter is used, <code>ListAttributes</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListAttributes</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListAttributes</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListAttributes</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- Required key: targetType
-- @return ListAttributesRequest structure as a key-value pair table
function M.ListAttributesRequest(args)
	assert(args, "You must provide an argument table when creating ListAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["targetType"] = args["targetType"],
		["attributeValue"] = args["attributeValue"],
		["attributeName"] = args["attributeName"],
		["maxResults"] = args["maxResults"],
		["cluster"] = args["cluster"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunTaskRequest = { ["count"] = true, ["group"] = true, ["overrides"] = true, ["placementConstraints"] = true, ["cluster"] = true, ["startedBy"] = true, ["taskDefinition"] = true, ["placementStrategy"] = true, nil }

function asserts.AssertRunTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunTaskRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["count"] then asserts.AssertBoxedInteger(struct["count"]) end
	if struct["group"] then asserts.AssertString(struct["group"]) end
	if struct["overrides"] then asserts.AssertTaskOverride(struct["overrides"]) end
	if struct["placementConstraints"] then asserts.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["startedBy"] then asserts.AssertString(struct["startedBy"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	if struct["placementStrategy"] then asserts.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunTaskRequest[k], "RunTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * count [BoxedInteger] <p>The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.</p>
-- * group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- * overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- * placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at run time).</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- * startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- * taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- * placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules per task.</p>
-- Required key: taskDefinition
-- @return RunTaskRequest structure as a key-value pair table
function M.RunTaskRequest(args)
	assert(args, "You must provide an argument table when creating RunTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["count"] = args["count"],
		["group"] = args["group"],
		["overrides"] = args["overrides"],
		["placementConstraints"] = args["placementConstraints"],
		["cluster"] = args["cluster"],
		["startedBy"] = args["startedBy"],
		["taskDefinition"] = args["taskDefinition"],
		["placementStrategy"] = args["placementStrategy"],
	}
	asserts.AssertRunTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HostVolumeProperties = { ["sourcePath"] = true, nil }

function asserts.AssertHostVolumeProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostVolumeProperties to be of type 'table'")
	if struct["sourcePath"] then asserts.AssertString(struct["sourcePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostVolumeProperties[k], "HostVolumeProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostVolumeProperties
-- <p>Details on a container instance host volume.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourcePath [String] <p>The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p>
-- @return HostVolumeProperties structure as a key-value pair table
function M.HostVolumeProperties(args)
	assert(args, "You must provide an argument table when creating HostVolumeProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourcePath"] = args["sourcePath"],
	}
	asserts.AssertHostVolumeProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Attribute = { ["targetType"] = true, ["targetId"] = true, ["name"] = true, ["value"] = true, nil }

function asserts.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["targetType"] then asserts.AssertTargetType(struct["targetType"]) end
	if struct["targetId"] then asserts.AssertString(struct["targetId"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Attribute[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targetType [TargetType] <p>The type of the target with which to attach the attribute. This parameter is required if you use the short form ID for a resource instead of the full Amazon Resource Name (ARN).</p>
-- * targetId [String] <p>The ID of the target. You can specify the short form ID for a resource or the full Amazon Resource Name (ARN).</p>
-- * name [String] <p>The name of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, and periods are allowed.</p>
-- * value [String] <p>The value of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, periods, at signs (@), forward slashes, colons, and spaces are allowed.</p>
-- Required key: name
-- @return Attribute structure as a key-value pair table
function M.Attribute(args)
	assert(args, "You must provide an argument table when creating Attribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["targetType"] = args["targetType"],
		["targetId"] = args["targetId"],
		["name"] = args["name"],
		["value"] = args["value"],
	}
	asserts.AssertAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTasksRequest = { ["cluster"] = true, ["tasks"] = true, nil }

function asserts.AssertDescribeTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTasksRequest to be of type 'table'")
	assert(struct["tasks"], "Expected key tasks to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["tasks"] then asserts.AssertStringList(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTasksRequest[k], "DescribeTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- * tasks [StringList] <p>A list of up to 100 task IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required key: tasks
-- @return DescribeTasksRequest structure as a key-value pair table
function M.DescribeTasksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTasksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["tasks"] = args["tasks"],
	}
	asserts.AssertDescribeTasksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["status"] = true, ["clusterName"] = true, ["registeredContainerInstancesCount"] = true, ["pendingTasksCount"] = true, ["runningTasksCount"] = true, ["activeServicesCount"] = true, ["clusterArn"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["clusterName"] then asserts.AssertString(struct["clusterName"]) end
	if struct["registeredContainerInstancesCount"] then asserts.AssertInteger(struct["registeredContainerInstancesCount"]) end
	if struct["pendingTasksCount"] then asserts.AssertInteger(struct["pendingTasksCount"]) end
	if struct["runningTasksCount"] then asserts.AssertInteger(struct["runningTasksCount"]) end
	if struct["activeServicesCount"] then asserts.AssertInteger(struct["activeServicesCount"]) end
	if struct["clusterArn"] then asserts.AssertString(struct["clusterArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the cluster. The valid values are <code>ACTIVE</code> or <code>INACTIVE</code>. <code>ACTIVE</code> indicates that you can register container instances with the cluster and the associated instances can accept tasks.</p>
-- * clusterName [String] <p>A user-generated string that you use to identify your cluster.</p>
-- * registeredContainerInstancesCount [Integer] <p>The number of container instances registered into the cluster.</p>
-- * pendingTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- * runningTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- * activeServicesCount [Integer] <p>The number of services that are running on the cluster in an <code>ACTIVE</code> state. You can view these services with <a>ListServices</a>.</p>
-- * clusterArn [String] <p>The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the cluster, the AWS account ID of the cluster owner, the <code>cluster</code> namespace, and then the cluster name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:cluster/<i>test</i> </code>..</p>
-- @return Cluster structure as a key-value pair table
function M.Cluster(args)
	assert(args, "You must provide an argument table when creating Cluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["clusterName"] = args["clusterName"],
		["registeredContainerInstancesCount"] = args["registeredContainerInstancesCount"],
		["pendingTasksCount"] = args["pendingTasksCount"],
		["runningTasksCount"] = args["runningTasksCount"],
		["activeServicesCount"] = args["activeServicesCount"],
		["clusterArn"] = args["clusterArn"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServicesResponse = { ["nextToken"] = true, ["serviceArns"] = true, nil }

function asserts.AssertListServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["serviceArns"] then asserts.AssertStringList(struct["serviceArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServicesResponse[k], "ListServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListServices</code> request. When the results of a <code>ListServices</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * serviceArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each service associated with the specified cluster.</p>
-- @return ListServicesResponse structure as a key-value pair table
function M.ListServicesResponse(args)
	assert(args, "You must provide an argument table when creating ListServicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["serviceArns"] = args["serviceArns"],
	}
	asserts.AssertListServicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClientException = { ["message"] = true, nil }

function asserts.AssertClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientException[k], "ClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientException
-- <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ClientException structure as a key-value pair table
function M.ClientException(args)
	assert(args, "You must provide an argument table when creating ClientException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertClientException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VersionInfo = { ["agentVersion"] = true, ["agentHash"] = true, ["dockerVersion"] = true, nil }

function asserts.AssertVersionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionInfo to be of type 'table'")
	if struct["agentVersion"] then asserts.AssertString(struct["agentVersion"]) end
	if struct["agentHash"] then asserts.AssertString(struct["agentHash"]) end
	if struct["dockerVersion"] then asserts.AssertString(struct["dockerVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionInfo[k], "VersionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionInfo
-- <p>The Docker and Amazon ECS container agent version information about a container instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentVersion [String] <p>The version number of the Amazon ECS container agent.</p>
-- * agentHash [String] <p>The Git commit hash for the Amazon ECS container agent build on the <a href="https://github.com/aws/amazon-ecs-agent/commits/master">amazon-ecs-agent </a> GitHub repository.</p>
-- * dockerVersion [String] <p>The Docker version running on the container instance.</p>
-- @return VersionInfo structure as a key-value pair table
function M.VersionInfo(args)
	assert(args, "You must provide an argument table when creating VersionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentVersion"] = args["agentVersion"],
		["agentHash"] = args["agentHash"],
		["dockerVersion"] = args["dockerVersion"],
	}
	asserts.AssertVersionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTaskRequest = { ["cluster"] = true, ["reason"] = true, ["task"] = true, nil }

function asserts.AssertStopTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTaskRequest to be of type 'table'")
	assert(struct["task"], "Expected key task to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["task"] then asserts.AssertString(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTaskRequest[k], "StopTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.</p>
-- * reason [String] <p>An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message will appear in subsequent <a>DescribeTasks</a> API operations on this task. Up to 255 characters are allowed in this message.</p>
-- * task [String] <p>The task ID or full Amazon Resource Name (ARN) entry of the task to stop.</p>
-- Required key: task
-- @return StopTaskRequest structure as a key-value pair table
function M.StopTaskRequest(args)
	assert(args, "You must provide an argument table when creating StopTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["reason"] = args["reason"],
		["task"] = args["task"],
	}
	asserts.AssertStopTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TaskOverride = { ["taskRoleArn"] = true, ["containerOverrides"] = true, nil }

function asserts.AssertTaskOverride(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskOverride to be of type 'table'")
	if struct["taskRoleArn"] then asserts.AssertString(struct["taskRoleArn"]) end
	if struct["containerOverrides"] then asserts.AssertContainerOverrides(struct["containerOverrides"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskOverride[k], "TaskOverride contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskOverride
-- <p>The overrides associated with a task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- * containerOverrides [ContainerOverrides] <p>One or more container overrides sent to a task.</p>
-- @return TaskOverride structure as a key-value pair table
function M.TaskOverride(args)
	assert(args, "You must provide an argument table when creating TaskOverride")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskRoleArn"] = args["taskRoleArn"],
		["containerOverrides"] = args["containerOverrides"],
	}
	asserts.AssertTaskOverride(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Container = { ["containerArn"] = true, ["taskArn"] = true, ["name"] = true, ["networkBindings"] = true, ["lastStatus"] = true, ["reason"] = true, ["exitCode"] = true, nil }

function asserts.AssertContainer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Container to be of type 'table'")
	if struct["containerArn"] then asserts.AssertString(struct["containerArn"]) end
	if struct["taskArn"] then asserts.AssertString(struct["taskArn"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["networkBindings"] then asserts.AssertNetworkBindings(struct["networkBindings"]) end
	if struct["lastStatus"] then asserts.AssertString(struct["lastStatus"]) end
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["exitCode"] then asserts.AssertBoxedInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Container[k], "Container contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Container
-- <p>A Docker container that is part of a task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerArn [String] <p>The Amazon Resource Name (ARN) of the container.</p>
-- * taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- * name [String] <p>The name of the container.</p>
-- * networkBindings [NetworkBindings] <p>The network bindings associated with the container.</p>
-- * lastStatus [String] <p>The last known status of the container.</p>
-- * reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- * exitCode [BoxedInteger] <p>The exit code returned from the container.</p>
-- @return Container structure as a key-value pair table
function M.Container(args)
	assert(args, "You must provide an argument table when creating Container")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerArn"] = args["containerArn"],
		["taskArn"] = args["taskArn"],
		["name"] = args["name"],
		["networkBindings"] = args["networkBindings"],
		["lastStatus"] = args["lastStatus"],
		["reason"] = args["reason"],
		["exitCode"] = args["exitCode"],
	}
	asserts.AssertContainer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunTaskResponse = { ["failures"] = true, ["tasks"] = true, nil }

function asserts.AssertRunTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunTaskResponse to be of type 'table'")
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	if struct["tasks"] then asserts.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunTaskResponse[k], "RunTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunTaskResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- * tasks [Tasks] <p>A full description of the tasks that were run. Each task that was successfully placed on your cluster are described here.</p>
-- @return RunTaskResponse structure as a key-value pair table
function M.RunTaskResponse(args)
	assert(args, "You must provide an argument table when creating RunTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failures"] = args["failures"],
		["tasks"] = args["tasks"],
	}
	asserts.AssertRunTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterTaskDefinitionResponse = { ["taskDefinition"] = true, nil }

function asserts.AssertDeregisterTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then asserts.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTaskDefinitionResponse[k], "DeregisterTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskDefinitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskDefinition [TaskDefinition] <p>The full description of the deregistered task.</p>
-- @return DeregisterTaskDefinitionResponse structure as a key-value pair table
function M.DeregisterTaskDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterTaskDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertDeregisterTaskDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeServicesResponse = { ["services"] = true, ["failures"] = true, nil }

function asserts.AssertDescribeServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesResponse to be of type 'table'")
	if struct["services"] then asserts.AssertServices(struct["services"]) end
	if struct["failures"] then asserts.AssertFailures(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeServicesResponse[k], "DescribeServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * services [Services] <p>The list of services described.</p>
-- * failures [Failures] <p>Any failures associated with the call.</p>
-- @return DescribeServicesResponse structure as a key-value pair table
function M.DescribeServicesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeServicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["services"] = args["services"],
		["failures"] = args["failures"],
	}
	asserts.AssertDescribeServicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterTaskDefinitionResponse = { ["taskDefinition"] = true, nil }

function asserts.AssertRegisterTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then asserts.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTaskDefinitionResponse[k], "RegisterTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskDefinitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskDefinition [TaskDefinition] <p>The full description of the registered task definition.</p>
-- @return RegisterTaskDefinitionResponse structure as a key-value pair table
function M.RegisterTaskDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating RegisterTaskDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertRegisterTaskDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTaskRequest = { ["group"] = true, ["containerInstances"] = true, ["overrides"] = true, ["cluster"] = true, ["startedBy"] = true, ["taskDefinition"] = true, nil }

function asserts.AssertStartTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTaskRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	if struct["group"] then asserts.AssertString(struct["group"]) end
	if struct["containerInstances"] then asserts.AssertStringList(struct["containerInstances"]) end
	if struct["overrides"] then asserts.AssertTaskOverride(struct["overrides"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["startedBy"] then asserts.AssertString(struct["startedBy"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTaskRequest[k], "StartTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- * containerInstances [StringList] <p>The container instance IDs or full Amazon Resource Name (ARN) entries for the container instances on which you would like to place your task. You can specify up to 10 container instances.</p>
-- * overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to start your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- * startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- * taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to start. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- Required key: taskDefinition
-- Required key: containerInstances
-- @return StartTaskRequest structure as a key-value pair table
function M.StartTaskRequest(args)
	assert(args, "You must provide an argument table when creating StartTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["group"] = args["group"],
		["containerInstances"] = args["containerInstances"],
		["overrides"] = args["overrides"],
		["cluster"] = args["cluster"],
		["startedBy"] = args["startedBy"],
		["taskDefinition"] = args["taskDefinition"],
	}
	asserts.AssertStartTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingVersionException = { nil }

function asserts.AssertMissingVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingVersionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MissingVersionException[k], "MissingVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingVersionException
-- <p>Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MissingVersionException structure as a key-value pair table
function M.MissingVersionException(args)
	assert(args, "You must provide an argument table when creating MissingVersionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertMissingVersionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterTaskDefinitionRequest = { ["networkMode"] = true, ["family"] = true, ["placementConstraints"] = true, ["volumes"] = true, ["taskRoleArn"] = true, ["containerDefinitions"] = true, nil }

function asserts.AssertRegisterTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskDefinitionRequest to be of type 'table'")
	assert(struct["family"], "Expected key family to exist in table")
	assert(struct["containerDefinitions"], "Expected key containerDefinitions to exist in table")
	if struct["networkMode"] then asserts.AssertNetworkMode(struct["networkMode"]) end
	if struct["family"] then asserts.AssertString(struct["family"]) end
	if struct["placementConstraints"] then asserts.AssertTaskDefinitionPlacementConstraints(struct["placementConstraints"]) end
	if struct["volumes"] then asserts.AssertVolumeList(struct["volumes"]) end
	if struct["taskRoleArn"] then asserts.AssertString(struct["taskRoleArn"]) end
	if struct["containerDefinitions"] then asserts.AssertContainerDefinitions(struct["containerDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTaskDefinitionRequest[k], "RegisterTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskDefinitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>The default Docker network mode is <code>bridge</code>. If the network mode is set to <code>none</code>, you cannot specify port mappings in your container definitions, and the task's containers do not have external connectivity. The <code>host</code> network mode offers the highest networking performance for containers because they use the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode; however, exposed container ports are mapped directly to the corresponding host port, so you cannot take advantage of dynamic host port mappings or run multiple instantiations of the same task on a single container instance if port mappings are used.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- * family [String] <p>You must specify a <code>family</code> for a task definition, which allows you to track multiple versions of the same task definition. The <code>family</code> is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- * placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time).</p>
-- * volumes [VolumeList] <p>A list of volume definitions in JSON format that containers in your task may use.</p>
-- * taskRoleArn [String] <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task.</p>
-- Required key: family
-- Required key: containerDefinitions
-- @return RegisterTaskDefinitionRequest structure as a key-value pair table
function M.RegisterTaskDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating RegisterTaskDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["networkMode"] = args["networkMode"],
		["family"] = args["family"],
		["placementConstraints"] = args["placementConstraints"],
		["volumes"] = args["volumes"],
		["taskRoleArn"] = args["taskRoleArn"],
		["containerDefinitions"] = args["containerDefinitions"],
	}
	asserts.AssertRegisterTaskDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContainerInstancesStateRequest = { ["status"] = true, ["cluster"] = true, ["containerInstances"] = true, nil }

function asserts.AssertUpdateContainerInstancesStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerInstancesStateRequest to be of type 'table'")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertContainerInstanceStatus(struct["status"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["containerInstances"] then asserts.AssertStringList(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContainerInstancesStateRequest[k], "UpdateContainerInstancesStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerInstancesStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ContainerInstanceStatus] <p>The container instance state with which to update the container instance.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.</p>
-- * containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required key: containerInstances
-- Required key: status
-- @return UpdateContainerInstancesStateRequest structure as a key-value pair table
function M.UpdateContainerInstancesStateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateContainerInstancesStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["cluster"] = args["cluster"],
		["containerInstances"] = args["containerInstances"],
	}
	asserts.AssertUpdateContainerInstancesStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Deployment = { ["status"] = true, ["pendingCount"] = true, ["createdAt"] = true, ["desiredCount"] = true, ["taskDefinition"] = true, ["updatedAt"] = true, ["id"] = true, ["runningCount"] = true, nil }

function asserts.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["pendingCount"] then asserts.AssertInteger(struct["pendingCount"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["desiredCount"] then asserts.AssertInteger(struct["desiredCount"]) end
	if struct["taskDefinition"] then asserts.AssertString(struct["taskDefinition"]) end
	if struct["updatedAt"] then asserts.AssertTimestamp(struct["updatedAt"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["runningCount"] then asserts.AssertInteger(struct["runningCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployment[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>The details of an Amazon ECS service deployment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the deployment. Valid values are <code>PRIMARY</code> (for the most recent deployment), <code>ACTIVE</code> (for previous deployments that still have tasks running, but are being replaced with the <code>PRIMARY</code> deployment), and <code>INACTIVE</code> (for deployments that have been completely replaced).</p>
-- * pendingCount [Integer] <p>The number of tasks in the deployment that are in the <code>PENDING</code> status.</p>
-- * createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- * desiredCount [Integer] <p>The most recent desired count of tasks that was specified for the service to deploy or maintain.</p>
-- * taskDefinition [String] <p>The most recent task definition that was specified for the service to use.</p>
-- * updatedAt [Timestamp] <p>The Unix timestamp for when the service was last updated.</p>
-- * id [String] <p>The ID of the deployment.</p>
-- * runningCount [Integer] <p>The number of tasks in the deployment that are in the <code>RUNNING</code> status.</p>
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
		["status"] = args["status"],
		["pendingCount"] = args["pendingCount"],
		["createdAt"] = args["createdAt"],
		["desiredCount"] = args["desiredCount"],
		["taskDefinition"] = args["taskDefinition"],
		["updatedAt"] = args["updatedAt"],
		["id"] = args["id"],
		["runningCount"] = args["runningCount"],
	}
	asserts.AssertDeployment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListContainerInstancesRequest = { ["filter"] = true, ["cluster"] = true, ["nextToken"] = true, ["status"] = true, ["maxResults"] = true, nil }

function asserts.AssertListContainerInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainerInstancesRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertString(struct["filter"]) end
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["status"] then asserts.AssertContainerInstanceStatus(struct["status"]) end
	if struct["maxResults"] then asserts.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListContainerInstancesRequest[k], "ListContainerInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainerInstancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [String] <p>You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListContainerInstances</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * status [ContainerInstanceStatus] <p>Filters the container instances by status. For example, if you specify the <code>DRAINING</code> status, the results include only container instances that have been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>. If you do not specify this parameter, the default is to include container instances set to <code>ACTIVE</code> and <code>DRAINING</code>.</p>
-- * maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListContainerInstances</code> in paginated output. When this parameter is used, <code>ListContainerInstances</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListContainerInstances</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListContainerInstances</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return ListContainerInstancesRequest structure as a key-value pair table
function M.ListContainerInstancesRequest(args)
	assert(args, "You must provide an argument table when creating ListContainerInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["cluster"] = args["cluster"],
		["nextToken"] = args["nextToken"],
		["status"] = args["status"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListContainerInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["name"] = true, ["longValue"] = true, ["doubleValue"] = true, ["stringSetValue"] = true, ["type"] = true, ["integerValue"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["longValue"] then asserts.AssertLong(struct["longValue"]) end
	if struct["doubleValue"] then asserts.AssertDouble(struct["doubleValue"]) end
	if struct["stringSetValue"] then asserts.AssertStringList(struct["stringSetValue"]) end
	if struct["type"] then asserts.AssertString(struct["type"]) end
	if struct["integerValue"] then asserts.AssertInteger(struct["integerValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Describes the resources available for a container instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the resource, such as <code>cpu</code>, <code>memory</code>, <code>ports</code>, or a user-defined resource.</p>
-- * longValue [Long] <p>When the <code>longValue</code> type is set, the value of the resource must be an extended precision floating-point type.</p>
-- * doubleValue [Double] <p>When the <code>doubleValue</code> type is set, the value of the resource must be a double precision floating-point type.</p>
-- * stringSetValue [StringList] <p>When the <code>stringSetValue</code> type is set, the value of the resource must be a string type.</p>
-- * type [String] <p>The type of the resource, such as <code>INTEGER</code>, <code>DOUBLE</code>, <code>LONG</code>, or <code>STRINGSET</code>.</p>
-- * integerValue [Integer] <p>When the <code>integerValue</code> type is set, the value of the resource must be an integer.</p>
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["longValue"] = args["longValue"],
		["doubleValue"] = args["doubleValue"],
		["stringSetValue"] = args["stringSetValue"],
		["type"] = args["type"],
		["integerValue"] = args["integerValue"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkBinding = { ["protocol"] = true, ["bindIP"] = true, ["containerPort"] = true, ["hostPort"] = true, nil }

function asserts.AssertNetworkBinding(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkBinding to be of type 'table'")
	if struct["protocol"] then asserts.AssertTransportProtocol(struct["protocol"]) end
	if struct["bindIP"] then asserts.AssertString(struct["bindIP"]) end
	if struct["containerPort"] then asserts.AssertBoxedInteger(struct["containerPort"]) end
	if struct["hostPort"] then asserts.AssertBoxedInteger(struct["hostPort"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkBinding[k], "NetworkBinding contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkBinding
-- <p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * protocol [TransportProtocol] <p>The protocol used for the network binding.</p>
-- * bindIP [String] <p>The IP address that the container is bound to on the container instance.</p>
-- * containerPort [BoxedInteger] <p>The port number on the container that is be used with the network binding.</p>
-- * hostPort [BoxedInteger] <p>The port number on the host that is used with the network binding.</p>
-- @return NetworkBinding structure as a key-value pair table
function M.NetworkBinding(args)
	assert(args, "You must provide an argument table when creating NetworkBinding")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["protocol"] = args["protocol"],
		["bindIP"] = args["bindIP"],
		["containerPort"] = args["containerPort"],
		["hostPort"] = args["hostPort"],
	}
	asserts.AssertNetworkBinding(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PortMapping = { ["protocol"] = true, ["containerPort"] = true, ["hostPort"] = true, nil }

function asserts.AssertPortMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortMapping to be of type 'table'")
	if struct["protocol"] then asserts.AssertTransportProtocol(struct["protocol"]) end
	if struct["containerPort"] then asserts.AssertBoxedInteger(struct["containerPort"]) end
	if struct["hostPort"] then asserts.AssertBoxedInteger(struct["hostPort"]) end
	for k,_ in pairs(struct) do
		assert(keys.PortMapping[k], "PortMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortMapping
-- <p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * protocol [TransportProtocol] <p>The protocol used for the port mapping. Valid values are <code>tcp</code> and <code>udp</code>. The default is <code>tcp</code>.</p>
-- * containerPort [BoxedInteger] <p>The port number on the container that is bound to the user-specified or automatically assigned host port. If you specify a container port and not a host port, your container automatically receives a host port in the ephemeral port range (for more information, see <code>hostPort</code>). Port mappings that are automatically assigned in this way do not count toward the 100 reserved ports limit of a container instance.</p>
-- * hostPort [BoxedInteger] <p>The port number on the container instance to reserve for your container. You can specify a non-reserved host port for your container port mapping, or you can omit the <code>hostPort</code> (or set it to <code>0</code>) while specifying a <code>containerPort</code> and your container automatically receives a port in the ephemeral port range for your container instance operating system and Docker version.</p> <p>The default ephemeral port range for Docker version 1.6.0 and later is listed on the instance under <code>/proc/sys/net/ipv4/ip_local_port_range</code>; if this kernel parameter is unavailable, the default ephemeral port range of 49153 to 65535 is used. You should not attempt to specify a host port in the ephemeral port range as these are reserved for automatic assignment. In general, ports below 32768 are outside of the ephemeral port range.</p> <note> <p>The default ephemeral port range of 49153 to 65535 will always be used for Docker versions prior to 1.6.0.</p> </note> <p>The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the Amazon ECS container agent ports 51678 and 51679. Any host port that was previously specified in a running task is also reserved while the task is running (after a task stops, the host port is released).The current reserved ports are displayed in the <code>remainingResources</code> of <a>DescribeContainerInstances</a> output, and a container instance may have up to 100 reserved ports at a time, including the default reserved ports (automatically assigned ports do not count toward the 100 reserved ports limit).</p>
-- @return PortMapping structure as a key-value pair table
function M.PortMapping(args)
	assert(args, "You must provide an argument table when creating PortMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["protocol"] = args["protocol"],
		["containerPort"] = args["containerPort"],
		["hostPort"] = args["hostPort"],
	}
	asserts.AssertPortMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogConfiguration = { ["logDriver"] = true, ["options"] = true, nil }

function asserts.AssertLogConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogConfiguration to be of type 'table'")
	assert(struct["logDriver"], "Expected key logDriver to exist in table")
	if struct["logDriver"] then asserts.AssertLogDriver(struct["logDriver"]) end
	if struct["options"] then asserts.AssertLogConfigurationOptionsMap(struct["options"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogConfiguration[k], "LogConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogConfiguration
-- <p>Log configuration options to send to a custom log driver for the container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logDriver [LogDriver] <p>The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default. </p> <note> <p>If you have a custom driver that is not listed above that you would like to work with the Amazon ECS container agent, you can fork the Amazon ECS container agent project that is <a href="https://github.com/aws/amazon-ecs-agent">available on GitHub</a> and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, Amazon Web Services does not currently provide support for running modified copies of this software.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- * options [LogConfigurationOptionsMap] <p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- Required key: logDriver
-- @return LogConfiguration structure as a key-value pair table
function M.LogConfiguration(args)
	assert(args, "You must provide an argument table when creating LogConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logDriver"] = args["logDriver"],
		["options"] = args["options"],
	}
	asserts.AssertLogConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VolumeFrom = { ["readOnly"] = true, ["sourceContainer"] = true, nil }

function asserts.AssertVolumeFrom(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeFrom to be of type 'table'")
	if struct["readOnly"] then asserts.AssertBoxedBoolean(struct["readOnly"]) end
	if struct["sourceContainer"] then asserts.AssertString(struct["sourceContainer"]) end
	for k,_ in pairs(struct) do
		assert(keys.VolumeFrom[k], "VolumeFrom contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeFrom
-- <p>Details on a data volume from another container in the same task definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- * sourceContainer [String] <p>The name of another container within the same task definition to mount volumes from.</p>
-- @return VolumeFrom structure as a key-value pair table
function M.VolumeFrom(args)
	assert(args, "You must provide an argument table when creating VolumeFrom")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["readOnly"] = args["readOnly"],
		["sourceContainer"] = args["sourceContainer"],
	}
	asserts.AssertVolumeFrom(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterContainerInstanceRequest = { ["cluster"] = true, ["force"] = true, ["containerInstance"] = true, nil }

function asserts.AssertDeregisterContainerInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterContainerInstanceRequest to be of type 'table'")
	assert(struct["containerInstance"], "Expected key containerInstance to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["force"] then asserts.AssertBoxedBoolean(struct["force"]) end
	if struct["containerInstance"] then asserts.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterContainerInstanceRequest[k], "DeregisterContainerInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterContainerInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to deregister. If you do not specify a cluster, the default cluster is assumed.</p>
-- * force [BoxedBoolean] <p>Forces the deregistration of the container instance. If you have tasks running on the container instance when you deregister it with the <code>force</code> option, these tasks remain running until you terminate the instance or the tasks stop through some other means, but they are orphaned (no longer monitored or accounted for by Amazon ECS). If an orphaned task on your container instance is part of an Amazon ECS service, then the service scheduler starts another copy of that task, on a different container instance if possible. </p> <p>Any containers in orphaned service tasks that are registered with a Classic load balancer or an Application load balancer target group are deregistered, and they will begin connection draining according to the settings on the load balancer or target group.</p>
-- * containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance to deregister. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- Required key: containerInstance
-- @return DeregisterContainerInstanceRequest structure as a key-value pair table
function M.DeregisterContainerInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterContainerInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["force"] = args["force"],
		["containerInstance"] = args["containerInstance"],
	}
	asserts.AssertDeregisterContainerInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LoadBalancer = { ["containerName"] = true, ["targetGroupArn"] = true, ["containerPort"] = true, ["loadBalancerName"] = true, nil }

function asserts.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["containerName"] then asserts.AssertString(struct["containerName"]) end
	if struct["targetGroupArn"] then asserts.AssertString(struct["targetGroupArn"]) end
	if struct["containerPort"] then asserts.AssertBoxedInteger(struct["containerPort"]) end
	if struct["loadBalancerName"] then asserts.AssertString(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoadBalancer[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- <p>Details on a load balancer that is used with a service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * containerName [String] <p>The name of the container (as it appears in a container definition) to associate with the load balancer.</p>
-- * targetGroupArn [String] <p>The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group associated with a service.</p>
-- * containerPort [BoxedInteger] <p>The port on the container to associate with the load balancer. This port must correspond to a <code>containerPort</code> in the service's task definition. Your container instances must allow ingress traffic on the <code>hostPort</code> of the port mapping.</p>
-- * loadBalancerName [String] <p>The name of a Classic load balancer.</p>
-- @return LoadBalancer structure as a key-value pair table
function M.LoadBalancer(args)
	assert(args, "You must provide an argument table when creating LoadBalancer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["containerName"] = args["containerName"],
		["targetGroupArn"] = args["targetGroupArn"],
		["containerPort"] = args["containerPort"],
		["loadBalancerName"] = args["loadBalancerName"],
	}
	asserts.AssertLoadBalancer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceRequest = { ["cluster"] = true, ["service"] = true, nil }

function asserts.AssertDeleteServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceRequest to be of type 'table'")
	assert(struct["service"], "Expected key service to exist in table")
	if struct["cluster"] then asserts.AssertString(struct["cluster"]) end
	if struct["service"] then asserts.AssertString(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceRequest[k], "DeleteServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.</p>
-- * service [String] <p>The name of the service to delete.</p>
-- Required key: service
-- @return DeleteServiceRequest structure as a key-value pair table
function M.DeleteServiceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
		["service"] = args["service"],
	}
	asserts.AssertDeleteServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertTaskDefinitionFamilyStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionFamilyStatus to be of type 'string'")
end

--  
function M.TaskDefinitionFamilyStatus(str)
	asserts.AssertTaskDefinitionFamilyStatus(str)
	return str
end

function asserts.AssertTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetType to be of type 'string'")
end

--  
function M.TargetType(str)
	asserts.AssertTargetType(str)
	return str
end

function asserts.AssertContainerInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerInstanceStatus to be of type 'string'")
end

--  
function M.ContainerInstanceStatus(str)
	asserts.AssertContainerInstanceStatus(str)
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

function asserts.AssertUlimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected UlimitName to be of type 'string'")
end

--  
function M.UlimitName(str)
	asserts.AssertUlimitName(str)
	return str
end

function asserts.AssertTaskDefinitionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionStatus to be of type 'string'")
end

--  
function M.TaskDefinitionStatus(str)
	asserts.AssertTaskDefinitionStatus(str)
	return str
end

function asserts.AssertAgentUpdateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentUpdateStatus to be of type 'string'")
end

--  
function M.AgentUpdateStatus(str)
	asserts.AssertAgentUpdateStatus(str)
	return str
end

function asserts.AssertPlacementStrategyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlacementStrategyType to be of type 'string'")
end

--  
function M.PlacementStrategyType(str)
	asserts.AssertPlacementStrategyType(str)
	return str
end

function asserts.AssertNetworkMode(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkMode to be of type 'string'")
end

--  
function M.NetworkMode(str)
	asserts.AssertNetworkMode(str)
	return str
end

function asserts.AssertTransportProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected TransportProtocol to be of type 'string'")
end

--  
function M.TransportProtocol(str)
	asserts.AssertTransportProtocol(str)
	return str
end

function asserts.AssertLogDriver(str)
	assert(str)
	assert(type(str) == "string", "Expected LogDriver to be of type 'string'")
end

--  
function M.LogDriver(str)
	asserts.AssertLogDriver(str)
	return str
end

function asserts.AssertDesiredStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DesiredStatus to be of type 'string'")
end

--  
function M.DesiredStatus(str)
	asserts.AssertDesiredStatus(str)
	return str
end

function asserts.AssertPlacementConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlacementConstraintType to be of type 'string'")
end

--  
function M.PlacementConstraintType(str)
	asserts.AssertPlacementConstraintType(str)
	return str
end

function asserts.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	asserts.AssertSortOrder(str)
	return str
end

function asserts.AssertTaskDefinitionPlacementConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionPlacementConstraintType to be of type 'string'")
end

--  
function M.TaskDefinitionPlacementConstraintType(str)
	asserts.AssertTaskDefinitionPlacementConstraintType(str)
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

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertBoxedInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BoxedInteger(integer)
	asserts.AssertBoxedInteger(integer)
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

function asserts.AssertBoxedBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BoxedBoolean to be of type 'boolean'")
end

function M.BoxedBoolean(boolean)
	asserts.AssertBoxedBoolean(boolean)
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

function asserts.AssertLogConfigurationOptionsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LogConfigurationOptionsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.LogConfigurationOptionsMap(map)
	asserts.AssertLogConfigurationOptionsMap(map)
	return map
end

function asserts.AssertDockerLabelsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DockerLabelsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.DockerLabelsMap(map)
	asserts.AssertDockerLabelsMap(map)
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

function asserts.AssertFailures(list)
	assert(list)
	assert(type(list) == "table", "Expected Failures to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailure(v)
	end
end

--  
-- List of Failure objects
function M.Failures(list)
	asserts.AssertFailures(list)
	return list
end

function asserts.AssertRequiresAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected RequiresAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.RequiresAttributes(list)
	asserts.AssertRequiresAttributes(list)
	return list
end

function asserts.AssertResources(list)
	assert(list)
	assert(type(list) == "table", "Expected Resources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.Resources(list)
	asserts.AssertResources(list)
	return list
end

function asserts.AssertLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancers(list)
	asserts.AssertLoadBalancers(list)
	return list
end

function asserts.AssertHostEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected HostEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHostEntry(v)
	end
end

--  
-- List of HostEntry objects
function M.HostEntryList(list)
	asserts.AssertHostEntryList(list)
	return list
end

function asserts.AssertMountPointList(list)
	assert(list)
	assert(type(list) == "table", "Expected MountPointList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMountPoint(v)
	end
end

--  
-- List of MountPoint objects
function M.MountPointList(list)
	asserts.AssertMountPointList(list)
	return list
end

function asserts.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	asserts.AssertAttributes(list)
	return list
end

function asserts.AssertUlimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected UlimitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUlimit(v)
	end
end

--  
-- List of Ulimit objects
function M.UlimitList(list)
	asserts.AssertUlimitList(list)
	return list
end

function asserts.AssertVolumeFromList(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeFromList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolumeFrom(v)
	end
end

--  
-- List of VolumeFrom objects
function M.VolumeFromList(list)
	asserts.AssertVolumeFromList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertContainerOverrides(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerOverrides to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContainerOverride(v)
	end
end

--  
-- List of ContainerOverride objects
function M.ContainerOverrides(list)
	asserts.AssertContainerOverrides(list)
	return list
end

function asserts.AssertPlacementConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacementConstraints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlacementConstraint(v)
	end
end

--  
-- List of PlacementConstraint objects
function M.PlacementConstraints(list)
	asserts.AssertPlacementConstraints(list)
	return list
end

function asserts.AssertTasks(list)
	assert(list)
	assert(type(list) == "table", "Expected Tasks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTask(v)
	end
end

--  
-- List of Task objects
function M.Tasks(list)
	asserts.AssertTasks(list)
	return list
end

function asserts.AssertVolumeList(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVolume(v)
	end
end

--  
-- List of Volume objects
function M.VolumeList(list)
	asserts.AssertVolumeList(list)
	return list
end

function asserts.AssertServiceEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceEvents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceEvent(v)
	end
end

--  
-- List of ServiceEvent objects
function M.ServiceEvents(list)
	asserts.AssertServiceEvents(list)
	return list
end

function asserts.AssertPortMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected PortMappingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPortMapping(v)
	end
end

--  
-- List of PortMapping objects
function M.PortMappingList(list)
	asserts.AssertPortMappingList(list)
	return list
end

function asserts.AssertServices(list)
	assert(list)
	assert(type(list) == "table", "Expected Services to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertService(v)
	end
end

--  
-- List of Service objects
function M.Services(list)
	asserts.AssertServices(list)
	return list
end

function asserts.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyValuePair(v)
	end
end

--  
-- List of KeyValuePair objects
function M.EnvironmentVariables(list)
	asserts.AssertEnvironmentVariables(list)
	return list
end

function asserts.AssertTaskDefinitionPlacementConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected TaskDefinitionPlacementConstraints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTaskDefinitionPlacementConstraint(v)
	end
end

--  
-- List of TaskDefinitionPlacementConstraint objects
function M.TaskDefinitionPlacementConstraints(list)
	asserts.AssertTaskDefinitionPlacementConstraints(list)
	return list
end

function asserts.AssertClusters(list)
	assert(list)
	assert(type(list) == "table", "Expected Clusters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCluster(v)
	end
end

--  
-- List of Cluster objects
function M.Clusters(list)
	asserts.AssertClusters(list)
	return list
end

function asserts.AssertContainers(list)
	assert(list)
	assert(type(list) == "table", "Expected Containers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContainer(v)
	end
end

--  
-- List of Container objects
function M.Containers(list)
	asserts.AssertContainers(list)
	return list
end

function asserts.AssertContainerInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerInstances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContainerInstance(v)
	end
end

--  
-- List of ContainerInstance objects
function M.ContainerInstances(list)
	asserts.AssertContainerInstances(list)
	return list
end

function asserts.AssertContainerDefinitions(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerDefinitions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContainerDefinition(v)
	end
end

--  
-- List of ContainerDefinition objects
function M.ContainerDefinitions(list)
	asserts.AssertContainerDefinitions(list)
	return list
end

function asserts.AssertNetworkBindings(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkBindings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNetworkBinding(v)
	end
end

--  
-- List of NetworkBinding objects
function M.NetworkBindings(list)
	asserts.AssertNetworkBindings(list)
	return list
end

function asserts.AssertPlacementStrategies(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacementStrategies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlacementStrategy(v)
	end
end

--  
-- List of PlacementStrategy objects
function M.PlacementStrategies(list)
	asserts.AssertPlacementStrategies(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "ecs.amazonaws.com"
		end
	end
	local ss = { "ecs" }
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
--- Call CreateService asynchronously, invoking a callback when done
-- @param CreateServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateServiceAsync(CreateServiceRequest, cb)
	assert(CreateServiceRequest, "You must provide a CreateServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.CreateService",
	}
	for header,value in pairs(CreateServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServiceRequest
-- @return response
-- @return error_message
function M.CreateServiceSync(CreateServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServiceAsync(CreateServiceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SubmitContainerStateChange asynchronously, invoking a callback when done
-- @param SubmitContainerStateChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubmitContainerStateChangeAsync(SubmitContainerStateChangeRequest, cb)
	assert(SubmitContainerStateChangeRequest, "You must provide a SubmitContainerStateChangeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.SubmitContainerStateChange",
	}
	for header,value in pairs(SubmitContainerStateChangeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SubmitContainerStateChangeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SubmitContainerStateChange synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubmitContainerStateChangeRequest
-- @return response
-- @return error_message
function M.SubmitContainerStateChangeSync(SubmitContainerStateChangeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubmitContainerStateChangeAsync(SubmitContainerStateChangeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttributes asynchronously, invoking a callback when done
-- @param ListAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttributesAsync(ListAttributesRequest, cb)
	assert(ListAttributesRequest, "You must provide a ListAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListAttributes",
	}
	for header,value in pairs(ListAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttributesRequest
-- @return response
-- @return error_message
function M.ListAttributesSync(ListAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttributesAsync(ListAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.CreateCluster",
	}
	for header,value in pairs(CreateClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterRequest
-- @return response
-- @return error_message
function M.CreateClusterSync(CreateClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(CreateClusterRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SubmitTaskStateChange asynchronously, invoking a callback when done
-- @param SubmitTaskStateChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubmitTaskStateChangeAsync(SubmitTaskStateChangeRequest, cb)
	assert(SubmitTaskStateChangeRequest, "You must provide a SubmitTaskStateChangeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.SubmitTaskStateChange",
	}
	for header,value in pairs(SubmitTaskStateChangeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SubmitTaskStateChangeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SubmitTaskStateChange synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubmitTaskStateChangeRequest
-- @return response
-- @return error_message
function M.SubmitTaskStateChangeSync(SubmitTaskStateChangeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubmitTaskStateChangeAsync(SubmitTaskStateChangeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTaskDefinitionFamilies asynchronously, invoking a callback when done
-- @param ListTaskDefinitionFamiliesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTaskDefinitionFamiliesAsync(ListTaskDefinitionFamiliesRequest, cb)
	assert(ListTaskDefinitionFamiliesRequest, "You must provide a ListTaskDefinitionFamiliesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTaskDefinitionFamilies",
	}
	for header,value in pairs(ListTaskDefinitionFamiliesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTaskDefinitionFamiliesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTaskDefinitionFamilies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTaskDefinitionFamiliesRequest
-- @return response
-- @return error_message
function M.ListTaskDefinitionFamiliesSync(ListTaskDefinitionFamiliesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTaskDefinitionFamiliesAsync(ListTaskDefinitionFamiliesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteService asynchronously, invoking a callback when done
-- @param DeleteServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServiceAsync(DeleteServiceRequest, cb)
	assert(DeleteServiceRequest, "You must provide a DeleteServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteService",
	}
	for header,value in pairs(DeleteServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServiceRequest
-- @return response
-- @return error_message
function M.DeleteServiceSync(DeleteServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServiceAsync(DeleteServiceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListContainerInstances asynchronously, invoking a callback when done
-- @param ListContainerInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListContainerInstancesAsync(ListContainerInstancesRequest, cb)
	assert(ListContainerInstancesRequest, "You must provide a ListContainerInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListContainerInstances",
	}
	for header,value in pairs(ListContainerInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListContainerInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListContainerInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListContainerInstancesRequest
-- @return response
-- @return error_message
function M.ListContainerInstancesSync(ListContainerInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListContainerInstancesAsync(ListContainerInstancesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeServices asynchronously, invoking a callback when done
-- @param DescribeServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeServices",
	}
	for header,value in pairs(DescribeServicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeServicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeServicesRequest
-- @return response
-- @return error_message
function M.DescribeServicesSync(DescribeServicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeServicesAsync(DescribeServicesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCluster asynchronously, invoking a callback when done
-- @param DeleteClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterAsync(DeleteClusterRequest, cb)
	assert(DeleteClusterRequest, "You must provide a DeleteClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteCluster",
	}
	for header,value in pairs(DeleteClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterRequest
-- @return response
-- @return error_message
function M.DeleteClusterSync(DeleteClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterAsync(DeleteClusterRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateService asynchronously, invoking a callback when done
-- @param UpdateServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServiceAsync(UpdateServiceRequest, cb)
	assert(UpdateServiceRequest, "You must provide a UpdateServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateService",
	}
	for header,value in pairs(UpdateServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServiceRequest
-- @return response
-- @return error_message
function M.UpdateServiceSync(UpdateServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServiceAsync(UpdateServiceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusters asynchronously, invoking a callback when done
-- @param ListClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListClustersAsync(ListClustersRequest, cb)
	assert(ListClustersRequest, "You must provide a ListClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListClusters",
	}
	for header,value in pairs(ListClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListClustersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClustersRequest
-- @return response
-- @return error_message
function M.ListClustersSync(ListClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClustersAsync(ListClustersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterTaskDefinition asynchronously, invoking a callback when done
-- @param DeregisterTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTaskDefinitionAsync(DeregisterTaskDefinitionRequest, cb)
	assert(DeregisterTaskDefinitionRequest, "You must provide a DeregisterTaskDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeregisterTaskDefinition",
	}
	for header,value in pairs(DeregisterTaskDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterTaskDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterTaskDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterTaskDefinitionRequest
-- @return response
-- @return error_message
function M.DeregisterTaskDefinitionSync(DeregisterTaskDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterTaskDefinitionAsync(DeregisterTaskDefinitionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterTaskDefinition asynchronously, invoking a callback when done
-- @param RegisterTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTaskDefinitionAsync(RegisterTaskDefinitionRequest, cb)
	assert(RegisterTaskDefinitionRequest, "You must provide a RegisterTaskDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RegisterTaskDefinition",
	}
	for header,value in pairs(RegisterTaskDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterTaskDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterTaskDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterTaskDefinitionRequest
-- @return response
-- @return error_message
function M.RegisterTaskDefinitionSync(RegisterTaskDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterTaskDefinitionAsync(RegisterTaskDefinitionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopTask asynchronously, invoking a callback when done
-- @param StopTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopTaskAsync(StopTaskRequest, cb)
	assert(StopTaskRequest, "You must provide a StopTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.StopTask",
	}
	for header,value in pairs(StopTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopTaskRequest
-- @return response
-- @return error_message
function M.StopTaskSync(StopTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopTaskAsync(StopTaskRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTaskDefinitions asynchronously, invoking a callback when done
-- @param ListTaskDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTaskDefinitionsAsync(ListTaskDefinitionsRequest, cb)
	assert(ListTaskDefinitionsRequest, "You must provide a ListTaskDefinitionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTaskDefinitions",
	}
	for header,value in pairs(ListTaskDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTaskDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTaskDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTaskDefinitionsRequest
-- @return response
-- @return error_message
function M.ListTaskDefinitionsSync(ListTaskDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTaskDefinitionsAsync(ListTaskDefinitionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusters asynchronously, invoking a callback when done
-- @param DescribeClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClustersAsync(DescribeClustersRequest, cb)
	assert(DescribeClustersRequest, "You must provide a DescribeClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeClusters",
	}
	for header,value in pairs(DescribeClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClustersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClustersRequest
-- @return response
-- @return error_message
function M.DescribeClustersSync(DescribeClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClustersAsync(DescribeClustersRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateContainerAgent asynchronously, invoking a callback when done
-- @param UpdateContainerAgentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateContainerAgentAsync(UpdateContainerAgentRequest, cb)
	assert(UpdateContainerAgentRequest, "You must provide a UpdateContainerAgentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateContainerAgent",
	}
	for header,value in pairs(UpdateContainerAgentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateContainerAgentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateContainerAgent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateContainerAgentRequest
-- @return response
-- @return error_message
function M.UpdateContainerAgentSync(UpdateContainerAgentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateContainerAgentAsync(UpdateContainerAgentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAttributes asynchronously, invoking a callback when done
-- @param DeleteAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAttributesAsync(DeleteAttributesRequest, cb)
	assert(DeleteAttributesRequest, "You must provide a DeleteAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteAttributes",
	}
	for header,value in pairs(DeleteAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAttributesRequest
-- @return response
-- @return error_message
function M.DeleteAttributesSync(DeleteAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAttributesAsync(DeleteAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServices asynchronously, invoking a callback when done
-- @param ListServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServicesAsync(ListServicesRequest, cb)
	assert(ListServicesRequest, "You must provide a ListServicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListServices",
	}
	for header,value in pairs(ListServicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServicesRequest
-- @return response
-- @return error_message
function M.ListServicesSync(ListServicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServicesAsync(ListServicesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutAttributes asynchronously, invoking a callback when done
-- @param PutAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutAttributesAsync(PutAttributesRequest, cb)
	assert(PutAttributesRequest, "You must provide a PutAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.PutAttributes",
	}
	for header,value in pairs(PutAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutAttributesRequest
-- @return response
-- @return error_message
function M.PutAttributesSync(PutAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutAttributesAsync(PutAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartTask asynchronously, invoking a callback when done
-- @param StartTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartTaskAsync(StartTaskRequest, cb)
	assert(StartTaskRequest, "You must provide a StartTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.StartTask",
	}
	for header,value in pairs(StartTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartTaskRequest
-- @return response
-- @return error_message
function M.StartTaskSync(StartTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartTaskAsync(StartTaskRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterContainerInstance asynchronously, invoking a callback when done
-- @param RegisterContainerInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterContainerInstanceAsync(RegisterContainerInstanceRequest, cb)
	assert(RegisterContainerInstanceRequest, "You must provide a RegisterContainerInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RegisterContainerInstance",
	}
	for header,value in pairs(RegisterContainerInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterContainerInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterContainerInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterContainerInstanceRequest
-- @return response
-- @return error_message
function M.RegisterContainerInstanceSync(RegisterContainerInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterContainerInstanceAsync(RegisterContainerInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTaskDefinition asynchronously, invoking a callback when done
-- @param DescribeTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTaskDefinitionAsync(DescribeTaskDefinitionRequest, cb)
	assert(DescribeTaskDefinitionRequest, "You must provide a DescribeTaskDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeTaskDefinition",
	}
	for header,value in pairs(DescribeTaskDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTaskDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTaskDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTaskDefinitionRequest
-- @return response
-- @return error_message
function M.DescribeTaskDefinitionSync(DescribeTaskDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTaskDefinitionAsync(DescribeTaskDefinitionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTasks asynchronously, invoking a callback when done
-- @param DescribeTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTasksAsync(DescribeTasksRequest, cb)
	assert(DescribeTasksRequest, "You must provide a DescribeTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeTasks",
	}
	for header,value in pairs(DescribeTasksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTasksRequest
-- @return response
-- @return error_message
function M.DescribeTasksSync(DescribeTasksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTasksAsync(DescribeTasksRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateContainerInstancesState asynchronously, invoking a callback when done
-- @param UpdateContainerInstancesStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateContainerInstancesStateAsync(UpdateContainerInstancesStateRequest, cb)
	assert(UpdateContainerInstancesStateRequest, "You must provide a UpdateContainerInstancesStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateContainerInstancesState",
	}
	for header,value in pairs(UpdateContainerInstancesStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateContainerInstancesStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateContainerInstancesState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateContainerInstancesStateRequest
-- @return response
-- @return error_message
function M.UpdateContainerInstancesStateSync(UpdateContainerInstancesStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateContainerInstancesStateAsync(UpdateContainerInstancesStateRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterContainerInstance asynchronously, invoking a callback when done
-- @param DeregisterContainerInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterContainerInstanceAsync(DeregisterContainerInstanceRequest, cb)
	assert(DeregisterContainerInstanceRequest, "You must provide a DeregisterContainerInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeregisterContainerInstance",
	}
	for header,value in pairs(DeregisterContainerInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterContainerInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterContainerInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterContainerInstanceRequest
-- @return response
-- @return error_message
function M.DeregisterContainerInstanceSync(DeregisterContainerInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterContainerInstanceAsync(DeregisterContainerInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTasks asynchronously, invoking a callback when done
-- @param ListTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTasksAsync(ListTasksRequest, cb)
	assert(ListTasksRequest, "You must provide a ListTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTasks",
	}
	for header,value in pairs(ListTasksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTasksRequest
-- @return response
-- @return error_message
function M.ListTasksSync(ListTasksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTasksAsync(ListTasksRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeContainerInstances asynchronously, invoking a callback when done
-- @param DescribeContainerInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeContainerInstancesAsync(DescribeContainerInstancesRequest, cb)
	assert(DescribeContainerInstancesRequest, "You must provide a DescribeContainerInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeContainerInstances",
	}
	for header,value in pairs(DescribeContainerInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeContainerInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeContainerInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeContainerInstancesRequest
-- @return response
-- @return error_message
function M.DescribeContainerInstancesSync(DescribeContainerInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeContainerInstancesAsync(DescribeContainerInstancesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RunTask asynchronously, invoking a callback when done
-- @param RunTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RunTaskAsync(RunTaskRequest, cb)
	assert(RunTaskRequest, "You must provide a RunTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RunTask",
	}
	for header,value in pairs(RunTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RunTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RunTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RunTaskRequest
-- @return response
-- @return error_message
function M.RunTaskSync(RunTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RunTaskAsync(RunTaskRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DiscoverPollEndpoint asynchronously, invoking a callback when done
-- @param DiscoverPollEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DiscoverPollEndpointAsync(DiscoverPollEndpointRequest, cb)
	assert(DiscoverPollEndpointRequest, "You must provide a DiscoverPollEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DiscoverPollEndpoint",
	}
	for header,value in pairs(DiscoverPollEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DiscoverPollEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DiscoverPollEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DiscoverPollEndpointRequest
-- @return response
-- @return error_message
function M.DiscoverPollEndpointSync(DiscoverPollEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DiscoverPollEndpointAsync(DiscoverPollEndpointRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
