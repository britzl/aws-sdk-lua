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

local Service_keys = { "status" = true, "taskDefinition" = true, "pendingCount" = true, "loadBalancers" = true, "roleArn" = true, "placementConstraints" = true, "createdAt" = true, "desiredCount" = true, "serviceName" = true, "clusterArn" = true, "serviceArn" = true, "deploymentConfiguration" = true, "deployments" = true, "events" = true, "runningCount" = true, "placementStrategy" = true, nil }

function M.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	if struct["pendingCount"] then M.AssertInteger(struct["pendingCount"]) end
	if struct["loadBalancers"] then M.AssertLoadBalancers(struct["loadBalancers"]) end
	if struct["roleArn"] then M.AssertString(struct["roleArn"]) end
	if struct["placementConstraints"] then M.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["desiredCount"] then M.AssertInteger(struct["desiredCount"]) end
	if struct["serviceName"] then M.AssertString(struct["serviceName"]) end
	if struct["clusterArn"] then M.AssertString(struct["clusterArn"]) end
	if struct["serviceArn"] then M.AssertString(struct["serviceArn"]) end
	if struct["deploymentConfiguration"] then M.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["deployments"] then M.AssertDeployments(struct["deployments"]) end
	if struct["events"] then M.AssertServiceEvents(struct["events"]) end
	if struct["runningCount"] then M.AssertInteger(struct["runningCount"]) end
	if struct["placementStrategy"] then M.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(Service_keys[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>Details on a service within a cluster</p>
-- @param status [String] <p>The status of the service. The valid values are <code>ACTIVE</code>, <code>DRAINING</code>, or <code>INACTIVE</code>.</p>
-- @param taskDefinition [String] <p>The task definition to use for tasks in the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- @param pendingCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- @param loadBalancers [LoadBalancers] <p>A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.</p>
-- @param roleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.</p>
-- @param placementConstraints [PlacementConstraints] <p>The placement constraints for the tasks in the service.</p>
-- @param createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- @param desiredCount [Integer] <p>The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- @param serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- @param clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the service.</p>
-- @param serviceArn [String] <p>The Amazon Resource Name (ARN) that identifies the service. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the service, the AWS account ID of the service owner, the <code>service</code> namespace, and then the service name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:service/<i>my-service</i> </code>.</p>
-- @param deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param deployments [Deployments] <p>The current state of deployments for the service.</p>
-- @param events [ServiceEvents] <p>The event stream for your service. A maximum of 100 of the latest events are displayed.</p>
-- @param runningCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- @param placementStrategy [PlacementStrategies] <p>The placement strategy that determines how tasks for the service are placed.</p>
function M.Service(status, taskDefinition, pendingCount, loadBalancers, roleArn, placementConstraints, createdAt, desiredCount, serviceName, clusterArn, serviceArn, deploymentConfiguration, deployments, events, runningCount, placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["status"] = status,
		["taskDefinition"] = taskDefinition,
		["pendingCount"] = pendingCount,
		["loadBalancers"] = loadBalancers,
		["roleArn"] = roleArn,
		["placementConstraints"] = placementConstraints,
		["createdAt"] = createdAt,
		["desiredCount"] = desiredCount,
		["serviceName"] = serviceName,
		["clusterArn"] = clusterArn,
		["serviceArn"] = serviceArn,
		["deploymentConfiguration"] = deploymentConfiguration,
		["deployments"] = deployments,
		["events"] = events,
		["runningCount"] = runningCount,
		["placementStrategy"] = placementStrategy,
	}
	M.AssertService(t)
	return t
end

local DeleteAttributesResponse_keys = { "attributes" = true, nil }

function M.AssertDeleteAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesResponse to be of type 'table'")
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAttributesResponse_keys[k], "DeleteAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesResponse
--  
-- @param attributes [Attributes] <p>A list of attribute objects that were successfully deleted from your resource.</p>
function M.DeleteAttributesResponse(attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesResponse")
	local t = { 
		["attributes"] = attributes,
	}
	M.AssertDeleteAttributesResponse(t)
	return t
end

local DeleteClusterResponse_keys = { "cluster" = true, nil }

function M.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["cluster"] then M.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterResponse_keys[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param cluster [Cluster] <p>The full description of the deleted cluster.</p>
function M.DeleteClusterResponse(cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResponse")
	local t = { 
		["cluster"] = cluster,
	}
	M.AssertDeleteClusterResponse(t)
	return t
end

local MountPoint_keys = { "sourceVolume" = true, "readOnly" = true, "containerPath" = true, nil }

function M.AssertMountPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MountPoint to be of type 'table'")
	if struct["sourceVolume"] then M.AssertString(struct["sourceVolume"]) end
	if struct["readOnly"] then M.AssertBoxedBoolean(struct["readOnly"]) end
	if struct["containerPath"] then M.AssertString(struct["containerPath"]) end
	for k,_ in pairs(struct) do
		assert(MountPoint_keys[k], "MountPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountPoint
-- <p>Details on a volume mount point that is used in a container definition.</p>
-- @param sourceVolume [String] <p>The name of the volume to mount.</p>
-- @param readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- @param containerPath [String] <p>The path on the container to mount the host volume at.</p>
function M.MountPoint(sourceVolume, readOnly, containerPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountPoint")
	local t = { 
		["sourceVolume"] = sourceVolume,
		["readOnly"] = readOnly,
		["containerPath"] = containerPath,
	}
	M.AssertMountPoint(t)
	return t
end

local Volume_keys = { "host" = true, "name" = true, nil }

function M.AssertVolume(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Volume to be of type 'table'")
	if struct["host"] then M.AssertHostVolumeProperties(struct["host"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(Volume_keys[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>A data volume used in a task definition.</p>
-- @param host [HostVolumeProperties] <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- @param name [String] <p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This name is referenced in the <code>sourceVolume</code> parameter of container definition <code>mountPoints</code>.</p>
function M.Volume(host, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Volume")
	local t = { 
		["host"] = host,
		["name"] = name,
	}
	M.AssertVolume(t)
	return t
end

local UpdateContainerAgentRequest_keys = { "cluster" = true, "containerInstance" = true, nil }

function M.AssertUpdateContainerAgentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerAgentRequest to be of type 'table'")
	assert(struct["containerInstance"], "Expected key containerInstance to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["containerInstance"] then M.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(UpdateContainerAgentRequest_keys[k], "UpdateContainerAgentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerAgentRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) entries for the container instance on which you would like to update the Amazon ECS container agent.</p>
-- Required parameter: containerInstance
function M.UpdateContainerAgentRequest(cluster, containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerAgentRequest")
	local t = { 
		["cluster"] = cluster,
		["containerInstance"] = containerInstance,
	}
	M.AssertUpdateContainerAgentRequest(t)
	return t
end

local ServiceNotActiveException_keys = { nil }

function M.AssertServiceNotActiveException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotActiveException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ServiceNotActiveException_keys[k], "ServiceNotActiveException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotActiveException
-- <p>The specified service is not active. You cannot update a service that is not active. If you have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>
function M.ServiceNotActiveException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotActiveException")
	local t = { 
	}
	M.AssertServiceNotActiveException(t)
	return t
end

local AttributeLimitExceededException_keys = { nil }

function M.AssertAttributeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AttributeLimitExceededException_keys[k], "AttributeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeLimitExceededException
-- <p>You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with <a>ListAttributes</a>. You can remove existing attributes on a resource with <a>DeleteAttributes</a>.</p>
function M.AttributeLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeLimitExceededException")
	local t = { 
	}
	M.AssertAttributeLimitExceededException(t)
	return t
end

local Failure_keys = { "reason" = true, "arn" = true, nil }

function M.AssertFailure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Failure to be of type 'table'")
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["arn"] then M.AssertString(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(Failure_keys[k], "Failure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Failure
-- <p>A failed resource.</p>
-- @param reason [String] <p>The reason for the failure.</p>
-- @param arn [String] <p>The Amazon Resource Name (ARN) of the failed resource.</p>
function M.Failure(reason, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Failure")
	local t = { 
		["reason"] = reason,
		["arn"] = arn,
	}
	M.AssertFailure(t)
	return t
end

local PutAttributesRequest_keys = { "cluster" = true, "attributes" = true, nil }

function M.AssertPutAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesRequest to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(PutAttributesRequest_keys[k], "PutAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param attributes [Attributes] <p>The attributes to apply to your resource. You can specify up to 10 custom attributes per resource. You can specify up to 10 attributes in a single call.</p>
-- Required parameter: attributes
function M.PutAttributesRequest(cluster, attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesRequest")
	local t = { 
		["cluster"] = cluster,
		["attributes"] = attributes,
	}
	M.AssertPutAttributesRequest(t)
	return t
end

local RegisterContainerInstanceRequest_keys = { "instanceIdentityDocument" = true, "instanceIdentityDocumentSignature" = true, "containerInstanceArn" = true, "cluster" = true, "attributes" = true, "versionInfo" = true, "totalResources" = true, nil }

function M.AssertRegisterContainerInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterContainerInstanceRequest to be of type 'table'")
	if struct["instanceIdentityDocument"] then M.AssertString(struct["instanceIdentityDocument"]) end
	if struct["instanceIdentityDocumentSignature"] then M.AssertString(struct["instanceIdentityDocumentSignature"]) end
	if struct["containerInstanceArn"] then M.AssertString(struct["containerInstanceArn"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["versionInfo"] then M.AssertVersionInfo(struct["versionInfo"]) end
	if struct["totalResources"] then M.AssertResources(struct["totalResources"]) end
	for k,_ in pairs(struct) do
		assert(RegisterContainerInstanceRequest_keys[k], "RegisterContainerInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterContainerInstanceRequest
--  
-- @param instanceIdentityDocument [String] <p>The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/document/</code> </p>
-- @param instanceIdentityDocumentSignature [String] <p>The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/signature/</code> </p>
-- @param containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance (if it was previously registered).</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param attributes [Attributes] <p>The container instance attributes that this container instance supports.</p>
-- @param versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- @param totalResources [Resources] <p>The resources available on the instance.</p>
function M.RegisterContainerInstanceRequest(instanceIdentityDocument, instanceIdentityDocumentSignature, containerInstanceArn, cluster, attributes, versionInfo, totalResources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterContainerInstanceRequest")
	local t = { 
		["instanceIdentityDocument"] = instanceIdentityDocument,
		["instanceIdentityDocumentSignature"] = instanceIdentityDocumentSignature,
		["containerInstanceArn"] = containerInstanceArn,
		["cluster"] = cluster,
		["attributes"] = attributes,
		["versionInfo"] = versionInfo,
		["totalResources"] = totalResources,
	}
	M.AssertRegisterContainerInstanceRequest(t)
	return t
end

local ServiceNotFoundException_keys = { nil }

function M.AssertServiceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ServiceNotFoundException_keys[k], "ServiceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotFoundException
-- <p>The specified service could not be found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster-specific and region-specific.</p>
function M.ServiceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotFoundException")
	local t = { 
	}
	M.AssertServiceNotFoundException(t)
	return t
end

local RegisterContainerInstanceResponse_keys = { "containerInstance" = true, nil }

function M.AssertRegisterContainerInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterContainerInstanceResponse to be of type 'table'")
	if struct["containerInstance"] then M.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(RegisterContainerInstanceResponse_keys[k], "RegisterContainerInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterContainerInstanceResponse
--  
-- @param containerInstance [ContainerInstance] <p>The container instance that was registered.</p>
function M.RegisterContainerInstanceResponse(containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterContainerInstanceResponse")
	local t = { 
		["containerInstance"] = containerInstance,
	}
	M.AssertRegisterContainerInstanceResponse(t)
	return t
end

local UpdateContainerAgentResponse_keys = { "containerInstance" = true, nil }

function M.AssertUpdateContainerAgentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerAgentResponse to be of type 'table'")
	if struct["containerInstance"] then M.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(UpdateContainerAgentResponse_keys[k], "UpdateContainerAgentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerAgentResponse
--  
-- @param containerInstance [ContainerInstance] <p>The container instance for which the container agent was updated.</p>
function M.UpdateContainerAgentResponse(containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerAgentResponse")
	local t = { 
		["containerInstance"] = containerInstance,
	}
	M.AssertUpdateContainerAgentResponse(t)
	return t
end

local DeleteClusterRequest_keys = { "cluster" = true, nil }

function M.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["cluster"], "Expected key cluster to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterRequest_keys[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
-- Required parameter: cluster
function M.DeleteClusterRequest(cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterRequest")
	local t = { 
		["cluster"] = cluster,
	}
	M.AssertDeleteClusterRequest(t)
	return t
end

local Task_keys = { "taskArn" = true, "group" = true, "overrides" = true, "lastStatus" = true, "containerInstanceArn" = true, "createdAt" = true, "version" = true, "clusterArn" = true, "startedAt" = true, "desiredStatus" = true, "stoppedReason" = true, "taskDefinitionArn" = true, "startedBy" = true, "containers" = true, "stoppedAt" = true, nil }

function M.AssertTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Task to be of type 'table'")
	if struct["taskArn"] then M.AssertString(struct["taskArn"]) end
	if struct["group"] then M.AssertString(struct["group"]) end
	if struct["overrides"] then M.AssertTaskOverride(struct["overrides"]) end
	if struct["lastStatus"] then M.AssertString(struct["lastStatus"]) end
	if struct["containerInstanceArn"] then M.AssertString(struct["containerInstanceArn"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["version"] then M.AssertLong(struct["version"]) end
	if struct["clusterArn"] then M.AssertString(struct["clusterArn"]) end
	if struct["startedAt"] then M.AssertTimestamp(struct["startedAt"]) end
	if struct["desiredStatus"] then M.AssertString(struct["desiredStatus"]) end
	if struct["stoppedReason"] then M.AssertString(struct["stoppedReason"]) end
	if struct["taskDefinitionArn"] then M.AssertString(struct["taskDefinitionArn"]) end
	if struct["startedBy"] then M.AssertString(struct["startedBy"]) end
	if struct["containers"] then M.AssertContainers(struct["containers"]) end
	if struct["stoppedAt"] then M.AssertTimestamp(struct["stoppedAt"]) end
	for k,_ in pairs(struct) do
		assert(Task_keys[k], "Task contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Task
-- <p>Details on a task in a cluster.</p>
-- @param taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- @param group [String] <p>The name of the task group associated with the task.</p>
-- @param overrides [TaskOverride] <p>One or more container overrides.</p>
-- @param lastStatus [String] <p>The last known status of the task.</p>
-- @param containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instances that host the task.</p>
-- @param createdAt [Timestamp] <p>The Unix timestamp for when the task was created (the task entered the <code>PENDING</code> state).</p>
-- @param version [Long] <p>The version counter for the task. Every time a task experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS task state with CloudWatch events, you can compare the version of a task reported by the Amazon ECS APIs with the version reported in CloudWatch events for the task (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- @param clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- @param startedAt [Timestamp] <p>The Unix timestamp for when the task was started (the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state).</p>
-- @param desiredStatus [String] <p>The desired status of the task.</p>
-- @param stoppedReason [String] <p>The reason the task was stopped.</p>
-- @param taskDefinitionArn [String] <p>The Amazon Resource Name (ARN) of the task definition that creates the task.</p>
-- @param startedBy [String] <p>The tag specified when a task is started. If the task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param containers [Containers] <p>The containers associated with the task.</p>
-- @param stoppedAt [Timestamp] <p>The Unix timestamp for when the task was stopped (the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>
function M.Task(taskArn, group, overrides, lastStatus, containerInstanceArn, createdAt, version, clusterArn, startedAt, desiredStatus, stoppedReason, taskDefinitionArn, startedBy, containers, stoppedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Task")
	local t = { 
		["taskArn"] = taskArn,
		["group"] = group,
		["overrides"] = overrides,
		["lastStatus"] = lastStatus,
		["containerInstanceArn"] = containerInstanceArn,
		["createdAt"] = createdAt,
		["version"] = version,
		["clusterArn"] = clusterArn,
		["startedAt"] = startedAt,
		["desiredStatus"] = desiredStatus,
		["stoppedReason"] = stoppedReason,
		["taskDefinitionArn"] = taskDefinitionArn,
		["startedBy"] = startedBy,
		["containers"] = containers,
		["stoppedAt"] = stoppedAt,
	}
	M.AssertTask(t)
	return t
end

local DescribeTasksResponse_keys = { "failures" = true, "tasks" = true, nil }

function M.AssertDescribeTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTasksResponse to be of type 'table'")
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	if struct["tasks"] then M.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTasksResponse_keys[k], "DescribeTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTasksResponse
--  
-- @param failures [Failures] <p>Any failures associated with the call.</p>
-- @param tasks [Tasks] <p>The list of tasks.</p>
function M.DescribeTasksResponse(failures, tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTasksResponse")
	local t = { 
		["failures"] = failures,
		["tasks"] = tasks,
	}
	M.AssertDescribeTasksResponse(t)
	return t
end

local DeregisterContainerInstanceResponse_keys = { "containerInstance" = true, nil }

function M.AssertDeregisterContainerInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterContainerInstanceResponse to be of type 'table'")
	if struct["containerInstance"] then M.AssertContainerInstance(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterContainerInstanceResponse_keys[k], "DeregisterContainerInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterContainerInstanceResponse
--  
-- @param containerInstance [ContainerInstance] <p>The container instance that was deregistered.</p>
function M.DeregisterContainerInstanceResponse(containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterContainerInstanceResponse")
	local t = { 
		["containerInstance"] = containerInstance,
	}
	M.AssertDeregisterContainerInstanceResponse(t)
	return t
end

local DeleteServiceResponse_keys = { "service" = true, nil }

function M.AssertDeleteServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceResponse to be of type 'table'")
	if struct["service"] then M.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(DeleteServiceResponse_keys[k], "DeleteServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceResponse
--  
-- @param service [Service] <p>The full description of the deleted service.</p>
function M.DeleteServiceResponse(service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceResponse")
	local t = { 
		["service"] = service,
	}
	M.AssertDeleteServiceResponse(t)
	return t
end

local ListTaskDefinitionFamiliesRequest_keys = { "familyPrefix" = true, "status" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListTaskDefinitionFamiliesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionFamiliesRequest to be of type 'table'")
	if struct["familyPrefix"] then M.AssertString(struct["familyPrefix"]) end
	if struct["status"] then M.AssertTaskDefinitionFamilyStatus(struct["status"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTaskDefinitionFamiliesRequest_keys[k], "ListTaskDefinitionFamiliesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionFamiliesRequest
--  
-- @param familyPrefix [String] <p>The <code>familyPrefix</code> is a string that is used to filter the results of <code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>, only task definition family names that begin with the <code>familyPrefix</code> string are returned.</p>
-- @param status [TaskDefinitionFamilyStatus] <p>The task definition family status with which to filter the <code>ListTaskDefinitionFamilies</code> results. By default, both <code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed. If this parameter is set to <code>ACTIVE</code>, only task definition families that have an <code>ACTIVE</code> task definition revision are returned. If this parameter is set to <code>INACTIVE</code>, only task definition families that do not have any <code>ACTIVE</code> task definition revisions are returned. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitionFamilies</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [BoxedInteger] <p>The maximum number of task definition family results returned by <code>ListTaskDefinitionFamilies</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitionFamilies</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitionFamilies</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListTaskDefinitionFamiliesRequest(familyPrefix, status, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionFamiliesRequest")
	local t = { 
		["familyPrefix"] = familyPrefix,
		["status"] = status,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListTaskDefinitionFamiliesRequest(t)
	return t
end

local ListContainerInstancesResponse_keys = { "nextToken" = true, "containerInstanceArns" = true, nil }

function M.AssertListContainerInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainerInstancesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["containerInstanceArns"] then M.AssertStringList(struct["containerInstanceArns"]) end
	for k,_ in pairs(struct) do
		assert(ListContainerInstancesResponse_keys[k], "ListContainerInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainerInstancesResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListContainerInstances</code> request. When the results of a <code>ListContainerInstances</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param containerInstanceArns [StringList] <p>The list of container instances with full Amazon Resource Name (ARN) entries for each container instance associated with the specified cluster.</p>
function M.ListContainerInstancesResponse(nextToken, containerInstanceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListContainerInstancesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["containerInstanceArns"] = containerInstanceArns,
	}
	M.AssertListContainerInstancesResponse(t)
	return t
end

local HostEntry_keys = { "hostname" = true, "ipAddress" = true, nil }

function M.AssertHostEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostEntry to be of type 'table'")
	assert(struct["hostname"], "Expected key hostname to exist in table")
	assert(struct["ipAddress"], "Expected key ipAddress to exist in table")
	if struct["hostname"] then M.AssertString(struct["hostname"]) end
	if struct["ipAddress"] then M.AssertString(struct["ipAddress"]) end
	for k,_ in pairs(struct) do
		assert(HostEntry_keys[k], "HostEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostEntry
-- <p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>
-- @param hostname [String] <p>The hostname to use in the <code>/etc/hosts</code> entry.</p>
-- @param ipAddress [String] <p>The IP address to use in the <code>/etc/hosts</code> entry.</p>
-- Required parameter: hostname
-- Required parameter: ipAddress
function M.HostEntry(hostname, ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostEntry")
	local t = { 
		["hostname"] = hostname,
		["ipAddress"] = ipAddress,
	}
	M.AssertHostEntry(t)
	return t
end

local ServiceEvent_keys = { "message" = true, "id" = true, "createdAt" = true, nil }

function M.AssertServiceEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceEvent to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(ServiceEvent_keys[k], "ServiceEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceEvent
-- <p>Details on an event associated with a service.</p>
-- @param message [String] <p>The event message.</p>
-- @param id [String] <p>The ID string of the event.</p>
-- @param createdAt [Timestamp] <p>The Unix timestamp for when the event was triggered.</p>
function M.ServiceEvent(message, id, createdAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceEvent")
	local t = { 
		["message"] = message,
		["id"] = id,
		["createdAt"] = createdAt,
	}
	M.AssertServiceEvent(t)
	return t
end

local ContainerOverride_keys = { "memoryReservation" = true, "name" = true, "environment" = true, "command" = true, "memory" = true, "cpu" = true, nil }

function M.AssertContainerOverride(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerOverride to be of type 'table'")
	if struct["memoryReservation"] then M.AssertBoxedInteger(struct["memoryReservation"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["environment"] then M.AssertEnvironmentVariables(struct["environment"]) end
	if struct["command"] then M.AssertStringList(struct["command"]) end
	if struct["memory"] then M.AssertBoxedInteger(struct["memory"]) end
	if struct["cpu"] then M.AssertBoxedInteger(struct["cpu"]) end
	for k,_ in pairs(struct) do
		assert(ContainerOverride_keys[k], "ContainerOverride contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerOverride
-- <p>The overrides that should be sent to a container.</p>
-- @param memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.</p>
-- @param name [String] <p>The name of the container that receives the override. This parameter is required if any override is specified.</p>
-- @param environment [EnvironmentVariables] <p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name.</p>
-- @param command [StringList] <p>The command to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.</p>
-- @param memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.</p>
-- @param cpu [BoxedInteger] <p>The number of <code>cpu</code> units reserved for the container, instead of the default value from the task definition. You must also specify a container name.</p>
function M.ContainerOverride(memoryReservation, name, environment, command, memory, cpu, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerOverride")
	local t = { 
		["memoryReservation"] = memoryReservation,
		["name"] = name,
		["environment"] = environment,
		["command"] = command,
		["memory"] = memory,
		["cpu"] = cpu,
	}
	M.AssertContainerOverride(t)
	return t
end

local ContainerDefinition_keys = { "hostname" = true, "links" = true, "image" = true, "memoryReservation" = true, "workingDirectory" = true, "disableNetworking" = true, "environment" = true, "memory" = true, "extraHosts" = true, "privileged" = true, "volumesFrom" = true, "dnsSearchDomains" = true, "readonlyRootFilesystem" = true, "logConfiguration" = true, "dockerSecurityOptions" = true, "entryPoint" = true, "user" = true, "mountPoints" = true, "name" = true, "dockerLabels" = true, "dnsServers" = true, "portMappings" = true, "command" = true, "cpu" = true, "essential" = true, "ulimits" = true, nil }

function M.AssertContainerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDefinition to be of type 'table'")
	if struct["hostname"] then M.AssertString(struct["hostname"]) end
	if struct["links"] then M.AssertStringList(struct["links"]) end
	if struct["image"] then M.AssertString(struct["image"]) end
	if struct["memoryReservation"] then M.AssertBoxedInteger(struct["memoryReservation"]) end
	if struct["workingDirectory"] then M.AssertString(struct["workingDirectory"]) end
	if struct["disableNetworking"] then M.AssertBoxedBoolean(struct["disableNetworking"]) end
	if struct["environment"] then M.AssertEnvironmentVariables(struct["environment"]) end
	if struct["memory"] then M.AssertBoxedInteger(struct["memory"]) end
	if struct["extraHosts"] then M.AssertHostEntryList(struct["extraHosts"]) end
	if struct["privileged"] then M.AssertBoxedBoolean(struct["privileged"]) end
	if struct["volumesFrom"] then M.AssertVolumeFromList(struct["volumesFrom"]) end
	if struct["dnsSearchDomains"] then M.AssertStringList(struct["dnsSearchDomains"]) end
	if struct["readonlyRootFilesystem"] then M.AssertBoxedBoolean(struct["readonlyRootFilesystem"]) end
	if struct["logConfiguration"] then M.AssertLogConfiguration(struct["logConfiguration"]) end
	if struct["dockerSecurityOptions"] then M.AssertStringList(struct["dockerSecurityOptions"]) end
	if struct["entryPoint"] then M.AssertStringList(struct["entryPoint"]) end
	if struct["user"] then M.AssertString(struct["user"]) end
	if struct["mountPoints"] then M.AssertMountPointList(struct["mountPoints"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["dockerLabels"] then M.AssertDockerLabelsMap(struct["dockerLabels"]) end
	if struct["dnsServers"] then M.AssertStringList(struct["dnsServers"]) end
	if struct["portMappings"] then M.AssertPortMappingList(struct["portMappings"]) end
	if struct["command"] then M.AssertStringList(struct["command"]) end
	if struct["cpu"] then M.AssertInteger(struct["cpu"]) end
	if struct["essential"] then M.AssertBoxedBoolean(struct["essential"]) end
	if struct["ulimits"] then M.AssertUlimitList(struct["ulimits"]) end
	for k,_ in pairs(struct) do
		assert(ContainerDefinition_keys[k], "ContainerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDefinition
-- <p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>
-- @param hostname [String] <p>The hostname to use for your container. This parameter maps to <code>Hostname</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--hostname</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param links [StringList] <p>The <code>link</code> parameter allows containers to communicate with each other without the need for port mappings, using the <code>name</code> parameter and optionally, an <code>alias</code> for the link. This construct is analogous to <code>name:alias</code> in Docker links. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed for each <code>name</code> and <code>alias</code>. For more information on linking Docker containers, see <a href="https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/">https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/</a>. This parameter maps to <code>Links</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--link</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.</p> </important>
-- @param image [String] <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <ul> <li> <p>Images in Amazon ECR repositories use the full registry and repository URI (for example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;</code>). </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>
-- @param memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit; however, your container can consume more memory when it needs to, up to either the hard limit specified with the <code>memory</code> parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to <code>MemoryReservation</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory-reservation</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a <code>memoryReservation</code> of 128 MiB, and a <code>memory</code> hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed.</p>
-- @param workingDirectory [String] <p>The working directory in which to run commands inside the container. This parameter maps to <code>WorkingDir</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--workdir</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param disableNetworking [BoxedBoolean] <p>When this parameter is true, networking is disabled within the container. This parameter maps to <code>NetworkDisabled</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a>.</p>
-- @param environment [EnvironmentVariables] <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>We do not recommend using plain text environment variables for sensitive information, such as credential data.</p> </important>
-- @param memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. </p>
-- @param extraHosts [HostEntryList] <p>A list of hostnames and IP address mappings to append to the <code>/etc/hosts</code> file on the container. This parameter maps to <code>ExtraHosts</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--add-host</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param privileged [BoxedBoolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param volumesFrom [VolumeFromList] <p>Data volumes to mount from another container. This parameter maps to <code>VolumesFrom</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volumes-from</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param dnsSearchDomains [StringList] <p>A list of DNS search domains that are presented to the container. This parameter maps to <code>DnsSearch</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns-search</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param readonlyRootFilesystem [BoxedBoolean] <p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--read-only</code> option to <code>docker run</code>.</p>
-- @param logConfiguration [LogConfiguration] <p>The log configuration specification for the container. This parameter maps to <code>LogConfig</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure logging drivers</a> in the Docker documentation.</p> <note> <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type). Additional log drivers may be available in future releases of the Amazon ECS container agent.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p> <note> <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that instance can use these log configuration options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- @param dockerSecurityOptions [StringList] <p>A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This parameter maps to <code>SecurityOpt</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--security-opt</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>The Amazon ECS container agent running on a container instance must register with the <code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code> environment variables before containers placed on that instance can use these security options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- @param entryPoint [StringList] <important> <p>Early versions of the Amazon ECS container agent do not properly handle <code>entryPoint</code> parameters. If you have problems using <code>entryPoint</code>, update your container agent or enter your commands and arguments as <code>command</code> array items instead.</p> </important> <p>The entry point that is passed to the container. This parameter maps to <code>Entrypoint</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--entrypoint</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#entrypoint">https://docs.docker.com/engine/reference/builder/#entrypoint</a>.</p>
-- @param user [String] <p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param mountPoints [MountPointList] <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param name [String] <p>The name of a container. If you are linking multiple containers together in a task definition, the <code>name</code> of one container can be entered in the <code>links</code> of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This parameter maps to <code>name</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--name</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. </p>
-- @param dockerLabels [DockerLabelsMap] <p>A key/value map of labels to add to the container. This parameter maps to <code>Labels</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--label</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- @param dnsServers [StringList] <p>A list of DNS servers that are presented to the container. This parameter maps to <code>Dns</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param portMappings [PortMappingList] <p>The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. This parameter maps to <code>PortBindings</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--publish</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. If the network mode of a task definition is set to <code>none</code>, then you cannot specify port mappings. If the network mode of a task definition is set to <code>host</code>, then host ports must either be undefined or they must match the container port in the port mapping.</p> <note> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <b>Network Bindings</b> section of a container description of a selected task in the Amazon ECS console, or the <code>networkBindings</code> section <a>DescribeTasks</a> responses.</p> </note>
-- @param command [StringList] <p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#cmd">https://docs.docker.com/engine/reference/builder/#cmd</a>.</p>
-- @param cpu [Integer] <p>The number of <code>cpu</code> units reserved for the container. A container instance has 1,024 <code>cpu</code> units for every CPU core. This parameter specifies the minimum amount of CPU to reserve for a container, and containers share unallocated CPU units with other containers on the instance with the same ratio as their allocated amount. This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>You can determine the number of CPU units that are available per EC2 instance type by multiplying the vCPUs listed for that instance type on the <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instances</a> detail page by 1,024.</p> </note> <p>For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units.</p> <p>The Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <a href="https://docs.docker.com/engine/reference/run/#cpu-share-constraint">CPU share constraint</a> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2; however, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:</p> <ul> <li> <p> <b>Agent versions less than or equal to 1.1.0:</b> Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to 2 CPU shares.</p> </li> <li> <p> <b>Agent versions greater than or equal to 1.2.0:</b> Null, zero, and CPU values of 1 are passed to Docker as 2.</p> </li> </ul>
-- @param essential [BoxedBoolean] <p>If the <code>essential</code> parameter of a container is marked as <code>true</code>, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the <code>essential</code> parameter of a container is marked as <code>false</code>, then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential.</p> <p>All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html">Application Architecture</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param ulimits [UlimitList] <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Valid naming values are displayed in the <a>Ulimit</a> data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
function M.ContainerDefinition(hostname, links, image, memoryReservation, workingDirectory, disableNetworking, environment, memory, extraHosts, privileged, volumesFrom, dnsSearchDomains, readonlyRootFilesystem, logConfiguration, dockerSecurityOptions, entryPoint, user, mountPoints, name, dockerLabels, dnsServers, portMappings, command, cpu, essential, ulimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerDefinition")
	local t = { 
		["hostname"] = hostname,
		["links"] = links,
		["image"] = image,
		["memoryReservation"] = memoryReservation,
		["workingDirectory"] = workingDirectory,
		["disableNetworking"] = disableNetworking,
		["environment"] = environment,
		["memory"] = memory,
		["extraHosts"] = extraHosts,
		["privileged"] = privileged,
		["volumesFrom"] = volumesFrom,
		["dnsSearchDomains"] = dnsSearchDomains,
		["readonlyRootFilesystem"] = readonlyRootFilesystem,
		["logConfiguration"] = logConfiguration,
		["dockerSecurityOptions"] = dockerSecurityOptions,
		["entryPoint"] = entryPoint,
		["user"] = user,
		["mountPoints"] = mountPoints,
		["name"] = name,
		["dockerLabels"] = dockerLabels,
		["dnsServers"] = dnsServers,
		["portMappings"] = portMappings,
		["command"] = command,
		["cpu"] = cpu,
		["essential"] = essential,
		["ulimits"] = ulimits,
	}
	M.AssertContainerDefinition(t)
	return t
end

local PlacementConstraint_keys = { "expression" = true, "type" = true, nil }

function M.AssertPlacementConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementConstraint to be of type 'table'")
	if struct["expression"] then M.AssertString(struct["expression"]) end
	if struct["type"] then M.AssertPlacementConstraintType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(PlacementConstraint_keys[k], "PlacementConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementConstraint
-- <p>An object representing a constraint on task placement. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param expression [String] <p>A cluster query language expression to apply to the constraint. Note you cannot specify an expression if the constraint type is <code>distinctInstance</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param type [PlacementConstraintType] <p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in a particular group is running on a different container instance. Use <code>memberOf</code> to restrict selection to a group of valid candidates. Note that <code>distinctInstance</code> is not supported in task definitions.</p>
function M.PlacementConstraint(expression, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacementConstraint")
	local t = { 
		["expression"] = expression,
		["type"] = type,
	}
	M.AssertPlacementConstraint(t)
	return t
end

local DescribeTaskDefinitionResponse_keys = { "taskDefinition" = true, nil }

function M.AssertDescribeTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then M.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTaskDefinitionResponse_keys[k], "DescribeTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTaskDefinitionResponse
--  
-- @param taskDefinition [TaskDefinition] <p>The full task definition description.</p>
function M.DescribeTaskDefinitionResponse(taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = taskDefinition,
	}
	M.AssertDescribeTaskDefinitionResponse(t)
	return t
end

local PlacementStrategy_keys = { "field" = true, "type" = true, nil }

function M.AssertPlacementStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementStrategy to be of type 'table'")
	if struct["field"] then M.AssertString(struct["field"]) end
	if struct["type"] then M.AssertPlacementStrategyType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(PlacementStrategy_keys[k], "PlacementStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementStrategy
-- <p>The task placement strategy for a task or service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param field [String] <p>The field to apply the placement strategy against. For the <code>spread</code> placement strategy, valid values are <code>instanceId</code> (or <code>host</code>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>. For the <code>binpack</code> placement strategy, valid values are <code>cpu</code> and <code>memory</code>. For the <code>random</code> placement strategy, this field is not used.</p>
-- @param type [PlacementStrategyType] <p>The type of placement strategy. The <code>random</code> placement strategy randomly places tasks on available candidates. The <code>spread</code> placement strategy spreads placement across available candidates evenly based on the <code>field</code> parameter. The <code>binpack</code> strategy places tasks on available candidates that have the least available amount of the resource that is specified with the <code>field</code> parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task).</p>
function M.PlacementStrategy(field, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacementStrategy")
	local t = { 
		["field"] = field,
		["type"] = type,
	}
	M.AssertPlacementStrategy(t)
	return t
end

local DescribeClustersRequest_keys = { "clusters" = true, nil }

function M.AssertDescribeClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersRequest to be of type 'table'")
	if struct["clusters"] then M.AssertStringList(struct["clusters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClustersRequest_keys[k], "DescribeClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersRequest
--  
-- @param clusters [StringList] <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.</p>
function M.DescribeClustersRequest(clusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersRequest")
	local t = { 
		["clusters"] = clusters,
	}
	M.AssertDescribeClustersRequest(t)
	return t
end

local Ulimit_keys = { "softLimit" = true, "name" = true, "hardLimit" = true, nil }

function M.AssertUlimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ulimit to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["softLimit"], "Expected key softLimit to exist in table")
	assert(struct["hardLimit"], "Expected key hardLimit to exist in table")
	if struct["softLimit"] then M.AssertInteger(struct["softLimit"]) end
	if struct["name"] then M.AssertUlimitName(struct["name"]) end
	if struct["hardLimit"] then M.AssertInteger(struct["hardLimit"]) end
	for k,_ in pairs(struct) do
		assert(Ulimit_keys[k], "Ulimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ulimit
-- <p>The <code>ulimit</code> settings to pass to the container.</p>
-- @param softLimit [Integer] <p>The soft limit for the ulimit type.</p>
-- @param name [UlimitName] <p>The <code>type</code> of the <code>ulimit</code>.</p>
-- @param hardLimit [Integer] <p>The hard limit for the ulimit type.</p>
-- Required parameter: name
-- Required parameter: softLimit
-- Required parameter: hardLimit
function M.Ulimit(softLimit, name, hardLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Ulimit")
	local t = { 
		["softLimit"] = softLimit,
		["name"] = name,
		["hardLimit"] = hardLimit,
	}
	M.AssertUlimit(t)
	return t
end

local ServerException_keys = { "message" = true, nil }

function M.AssertServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServerException_keys[k], "ServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerException
-- <p>These errors are usually caused by a server issue.</p>
-- @param message [String] <p>These errors are usually caused by a server issue.</p>
function M.ServerException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerException")
	local t = { 
		["message"] = message,
	}
	M.AssertServerException(t)
	return t
end

local KeyValuePair_keys = { "name" = true, "value" = true, nil }

function M.AssertKeyValuePair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyValuePair to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(KeyValuePair_keys[k], "KeyValuePair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyValuePair
-- <p>A key and value pair object.</p>
-- @param name [String] <p>The name of the key value pair. For environment variables, this is the name of the environment variable.</p>
-- @param value [String] <p>The value of the key value pair. For environment variables, this is the value of the environment variable.</p>
function M.KeyValuePair(name, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyValuePair")
	local t = { 
		["name"] = name,
		["value"] = value,
	}
	M.AssertKeyValuePair(t)
	return t
end

local DescribeTaskDefinitionRequest_keys = { "taskDefinition" = true, nil }

function M.AssertDescribeTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTaskDefinitionRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTaskDefinitionRequest_keys[k], "DescribeTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTaskDefinitionRequest
--  
-- @param taskDefinition [String] <p>The <code>family</code> for the latest <code>ACTIVE</code> revision, <code>family</code> and <code>revision</code> (<code>family:revision</code>) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.</p>
-- Required parameter: taskDefinition
function M.DescribeTaskDefinitionRequest(taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTaskDefinitionRequest")
	local t = { 
		["taskDefinition"] = taskDefinition,
	}
	M.AssertDescribeTaskDefinitionRequest(t)
	return t
end

local SubmitTaskStateChangeRequest_keys = { "status" = true, "cluster" = true, "reason" = true, "task" = true, nil }

function M.AssertSubmitTaskStateChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitTaskStateChangeRequest to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["task"] then M.AssertString(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(SubmitTaskStateChangeRequest_keys[k], "SubmitTaskStateChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitTaskStateChangeRequest
--  
-- @param status [String] <p>The status of the state change request.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- @param reason [String] <p>The reason for the state change request.</p>
-- @param task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task in the state change request.</p>
function M.SubmitTaskStateChangeRequest(status, cluster, reason, task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitTaskStateChangeRequest")
	local t = { 
		["status"] = status,
		["cluster"] = cluster,
		["reason"] = reason,
		["task"] = task,
	}
	M.AssertSubmitTaskStateChangeRequest(t)
	return t
end

local StopTaskResponse_keys = { "task" = true, nil }

function M.AssertStopTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTaskResponse to be of type 'table'")
	if struct["task"] then M.AssertTask(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(StopTaskResponse_keys[k], "StopTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTaskResponse
--  
-- @param task [Task] <p>The task that was stopped.</p>
function M.StopTaskResponse(task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopTaskResponse")
	local t = { 
		["task"] = task,
	}
	M.AssertStopTaskResponse(t)
	return t
end

local DescribeContainerInstancesResponse_keys = { "failures" = true, "containerInstances" = true, nil }

function M.AssertDescribeContainerInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerInstancesResponse to be of type 'table'")
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	if struct["containerInstances"] then M.AssertContainerInstances(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeContainerInstancesResponse_keys[k], "DescribeContainerInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerInstancesResponse
--  
-- @param failures [Failures] <p>Any failures associated with the call.</p>
-- @param containerInstances [ContainerInstances] <p>The list of container instances.</p>
function M.DescribeContainerInstancesResponse(failures, containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeContainerInstancesResponse")
	local t = { 
		["failures"] = failures,
		["containerInstances"] = containerInstances,
	}
	M.AssertDescribeContainerInstancesResponse(t)
	return t
end

local CreateClusterResponse_keys = { "cluster" = true, nil }

function M.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["cluster"] then M.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterResponse_keys[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param cluster [Cluster] <p>The full description of your new cluster.</p>
function M.CreateClusterResponse(cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResponse")
	local t = { 
		["cluster"] = cluster,
	}
	M.AssertCreateClusterResponse(t)
	return t
end

local TargetNotFoundException_keys = { nil }

function M.AssertTargetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TargetNotFoundException_keys[k], "TargetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetNotFoundException
-- <p>The specified target could not be found. You can view your available container instances with <a>ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and region-specific.</p>
function M.TargetNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetNotFoundException")
	local t = { 
	}
	M.AssertTargetNotFoundException(t)
	return t
end

local CreateServiceResponse_keys = { "service" = true, nil }

function M.AssertCreateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceResponse to be of type 'table'")
	if struct["service"] then M.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceResponse_keys[k], "CreateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceResponse
--  
-- @param service [Service] <p>The full description of your service following the create call.</p>
function M.CreateServiceResponse(service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceResponse")
	local t = { 
		["service"] = service,
	}
	M.AssertCreateServiceResponse(t)
	return t
end

local ListTaskDefinitionsRequest_keys = { "familyPrefix" = true, "status" = true, "nextToken" = true, "maxResults" = true, "sort" = true, nil }

function M.AssertListTaskDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionsRequest to be of type 'table'")
	if struct["familyPrefix"] then M.AssertString(struct["familyPrefix"]) end
	if struct["status"] then M.AssertTaskDefinitionStatus(struct["status"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	if struct["sort"] then M.AssertSortOrder(struct["sort"]) end
	for k,_ in pairs(struct) do
		assert(ListTaskDefinitionsRequest_keys[k], "ListTaskDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionsRequest
--  
-- @param familyPrefix [String] <p>The full family name with which to filter the <code>ListTaskDefinitions</code> results. Specifying a <code>familyPrefix</code> limits the listed task definitions to task definition revisions that belong to that family.</p>
-- @param status [TaskDefinitionStatus] <p>The task definition status with which to filter the <code>ListTaskDefinitions</code> results. By default, only <code>ACTIVE</code> task definitions are listed. By setting this parameter to <code>INACTIVE</code>, you can view task definitions that are <code>INACTIVE</code> as long as an active task or service still references them. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitions</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [BoxedInteger] <p>The maximum number of task definition results returned by <code>ListTaskDefinitions</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param sort [SortOrder] <p>The order in which to sort the results. Valid values are <code>ASC</code> and <code>DESC</code>. By default (<code>ASC</code>), task definitions are listed lexicographically by family name and in ascending numerical order by revision so that the newest task definitions in a family are listed last. Setting this parameter to <code>DESC</code> reverses the sort order on family name and revision so that the newest task definitions in a family are listed first.</p>
function M.ListTaskDefinitionsRequest(familyPrefix, status, nextToken, maxResults, sort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionsRequest")
	local t = { 
		["familyPrefix"] = familyPrefix,
		["status"] = status,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["sort"] = sort,
	}
	M.AssertListTaskDefinitionsRequest(t)
	return t
end

local DeploymentConfiguration_keys = { "maximumPercent" = true, "minimumHealthyPercent" = true, nil }

function M.AssertDeploymentConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeploymentConfiguration to be of type 'table'")
	if struct["maximumPercent"] then M.AssertBoxedInteger(struct["maximumPercent"]) end
	if struct["minimumHealthyPercent"] then M.AssertBoxedInteger(struct["minimumHealthyPercent"]) end
	for k,_ in pairs(struct) do
		assert(DeploymentConfiguration_keys[k], "DeploymentConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeploymentConfiguration
-- <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param maximumPercent [BoxedInteger] <p>The upper limit (as a percentage of the service's <code>desiredCount</code>) of the number of tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state in a service during a deployment. The maximum number of tasks during a deployment is the <code>desiredCount</code> multiplied by <code>maximumPercent</code>/100, rounded down to the nearest integer value.</p>
-- @param minimumHealthyPercent [BoxedInteger] <p>The lower limit (as a percentage of the service's <code>desiredCount</code>) of the number of running tasks that must remain in the <code>RUNNING</code> state in a service during a deployment. The minimum healthy tasks during a deployment is the <code>desiredCount</code> multiplied by <code>minimumHealthyPercent</code>/100, rounded up to the nearest integer value.</p>
function M.DeploymentConfiguration(maximumPercent, minimumHealthyPercent, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfiguration")
	local t = { 
		["maximumPercent"] = maximumPercent,
		["minimumHealthyPercent"] = minimumHealthyPercent,
	}
	M.AssertDeploymentConfiguration(t)
	return t
end

local CreateServiceRequest_keys = { "loadBalancers" = true, "placementConstraints" = true, "desiredCount" = true, "cluster" = true, "serviceName" = true, "role" = true, "clientToken" = true, "deploymentConfiguration" = true, "taskDefinition" = true, "placementStrategy" = true, nil }

function M.AssertCreateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceRequest to be of type 'table'")
	assert(struct["serviceName"], "Expected key serviceName to exist in table")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	assert(struct["desiredCount"], "Expected key desiredCount to exist in table")
	if struct["loadBalancers"] then M.AssertLoadBalancers(struct["loadBalancers"]) end
	if struct["placementConstraints"] then M.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["desiredCount"] then M.AssertBoxedInteger(struct["desiredCount"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["serviceName"] then M.AssertString(struct["serviceName"]) end
	if struct["role"] then M.AssertString(struct["role"]) end
	if struct["clientToken"] then M.AssertString(struct["clientToken"]) end
	if struct["deploymentConfiguration"] then M.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	if struct["placementStrategy"] then M.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceRequest_keys[k], "CreateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceRequest
--  
-- @param loadBalancers [LoadBalancers] <p>A load balancer object representing the load balancer to use with your service. Currently, you are limited to one load balancer or target group per service. After you create a service, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable.</p> <p>For Elastic Load Balancing Classic load balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here.</p> <p>For Elastic Load Balancing Application load balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here.</p>
-- @param placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time). </p>
-- @param desiredCount [BoxedInteger] <p>The number of instantiations of the specified task definition to place and keep running on your cluster.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- @param role [String] <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service. If you specify the <code>role</code> parameter, you must also specify a load balancer object with the <code>loadBalancers</code> parameter.</p> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly Names and Paths</a> in the <i>IAM User Guide</i>.</p>
-- @param clientToken [String] <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.</p>
-- @param deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- @param placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service.</p>
-- Required parameter: serviceName
-- Required parameter: taskDefinition
-- Required parameter: desiredCount
function M.CreateServiceRequest(loadBalancers, placementConstraints, desiredCount, cluster, serviceName, role, clientToken, deploymentConfiguration, taskDefinition, placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceRequest")
	local t = { 
		["loadBalancers"] = loadBalancers,
		["placementConstraints"] = placementConstraints,
		["desiredCount"] = desiredCount,
		["cluster"] = cluster,
		["serviceName"] = serviceName,
		["role"] = role,
		["clientToken"] = clientToken,
		["deploymentConfiguration"] = deploymentConfiguration,
		["taskDefinition"] = taskDefinition,
		["placementStrategy"] = placementStrategy,
	}
	M.AssertCreateServiceRequest(t)
	return t
end

local StartTaskResponse_keys = { "failures" = true, "tasks" = true, nil }

function M.AssertStartTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTaskResponse to be of type 'table'")
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	if struct["tasks"] then M.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(StartTaskResponse_keys[k], "StartTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTaskResponse
--  
-- @param failures [Failures] <p>Any failures associated with the call.</p>
-- @param tasks [Tasks] <p>A full description of the tasks that were started. Each task that was successfully placed on your container instances are described here.</p>
function M.StartTaskResponse(failures, tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTaskResponse")
	local t = { 
		["failures"] = failures,
		["tasks"] = tasks,
	}
	M.AssertStartTaskResponse(t)
	return t
end

local ListClustersResponse_keys = { "nextToken" = true, "clusterArns" = true, nil }

function M.AssertListClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["clusterArns"] then M.AssertStringList(struct["clusterArns"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersResponse_keys[k], "ListClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param clusterArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each cluster associated with your account.</p>
function M.ListClustersResponse(nextToken, clusterArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersResponse")
	local t = { 
		["nextToken"] = nextToken,
		["clusterArns"] = clusterArns,
	}
	M.AssertListClustersResponse(t)
	return t
end

local ListTasksResponse_keys = { "nextToken" = true, "taskArns" = true, nil }

function M.AssertListTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTasksResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["taskArns"] then M.AssertStringList(struct["taskArns"]) end
	for k,_ in pairs(struct) do
		assert(ListTasksResponse_keys[k], "ListTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTasksResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTasks</code> request. When the results of a <code>ListTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param taskArns [StringList] <p>The list of task Amazon Resource Name (ARN) entries for the <code>ListTasks</code> request.</p>
function M.ListTasksResponse(nextToken, taskArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTasksResponse")
	local t = { 
		["nextToken"] = nextToken,
		["taskArns"] = taskArns,
	}
	M.AssertListTasksResponse(t)
	return t
end

local UpdateServiceRequest_keys = { "cluster" = true, "deploymentConfiguration" = true, "taskDefinition" = true, "service" = true, "desiredCount" = true, nil }

function M.AssertUpdateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceRequest to be of type 'table'")
	assert(struct["service"], "Expected key service to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["deploymentConfiguration"] then M.AssertDeploymentConfiguration(struct["deploymentConfiguration"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	if struct["service"] then M.AssertString(struct["service"]) end
	if struct["desiredCount"] then M.AssertBoxedInteger(struct["desiredCount"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServiceRequest_keys[k], "UpdateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.</p>
-- @param service [String] <p>The name of the service to update.</p>
-- @param desiredCount [BoxedInteger] <p>The number of instantiations of the task to place and keep running in your service.</p>
-- Required parameter: service
function M.UpdateServiceRequest(cluster, deploymentConfiguration, taskDefinition, service, desiredCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceRequest")
	local t = { 
		["cluster"] = cluster,
		["deploymentConfiguration"] = deploymentConfiguration,
		["taskDefinition"] = taskDefinition,
		["service"] = service,
		["desiredCount"] = desiredCount,
	}
	M.AssertUpdateServiceRequest(t)
	return t
end

local SubmitContainerStateChangeRequest_keys = { "status" = true, "containerName" = true, "task" = true, "networkBindings" = true, "cluster" = true, "reason" = true, "exitCode" = true, nil }

function M.AssertSubmitContainerStateChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitContainerStateChangeRequest to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["containerName"] then M.AssertString(struct["containerName"]) end
	if struct["task"] then M.AssertString(struct["task"]) end
	if struct["networkBindings"] then M.AssertNetworkBindings(struct["networkBindings"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["exitCode"] then M.AssertBoxedInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(SubmitContainerStateChangeRequest_keys[k], "SubmitContainerStateChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitContainerStateChangeRequest
--  
-- @param status [String] <p>The status of the state change request.</p>
-- @param containerName [String] <p>The name of the container.</p>
-- @param task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
-- @param networkBindings [NetworkBindings] <p>The network bindings of the container.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container.</p>
-- @param reason [String] <p>The reason for the state change request.</p>
-- @param exitCode [BoxedInteger] <p>The exit code returned for the state change request.</p>
function M.SubmitContainerStateChangeRequest(status, containerName, task, networkBindings, cluster, reason, exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitContainerStateChangeRequest")
	local t = { 
		["status"] = status,
		["containerName"] = containerName,
		["task"] = task,
		["networkBindings"] = networkBindings,
		["cluster"] = cluster,
		["reason"] = reason,
		["exitCode"] = exitCode,
	}
	M.AssertSubmitContainerStateChangeRequest(t)
	return t
end

local ClusterContainsContainerInstancesException_keys = { nil }

function M.AssertClusterContainsContainerInstancesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterContainsContainerInstancesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterContainsContainerInstancesException_keys[k], "ClusterContainsContainerInstancesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterContainsContainerInstancesException
-- <p>You cannot delete a cluster that has registered container instances. You must first deregister the container instances before you can delete the cluster. For more information, see <a>DeregisterContainerInstance</a>.</p>
function M.ClusterContainsContainerInstancesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterContainsContainerInstancesException")
	local t = { 
	}
	M.AssertClusterContainsContainerInstancesException(t)
	return t
end

local ClusterContainsServicesException_keys = { nil }

function M.AssertClusterContainsServicesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterContainsServicesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterContainsServicesException_keys[k], "ClusterContainsServicesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterContainsServicesException
-- <p>You cannot delete a cluster that contains services. You must first update the service to reduce its desired task count to 0 and then delete the service. For more information, see <a>UpdateService</a> and <a>DeleteService</a>.</p>
function M.ClusterContainsServicesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterContainsServicesException")
	local t = { 
	}
	M.AssertClusterContainsServicesException(t)
	return t
end

local DescribeServicesRequest_keys = { "services" = true, "cluster" = true, nil }

function M.AssertDescribeServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesRequest to be of type 'table'")
	assert(struct["services"], "Expected key services to exist in table")
	if struct["services"] then M.AssertStringList(struct["services"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServicesRequest_keys[k], "DescribeServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesRequest
--  
-- @param services [StringList] <p>A list of services to describe. You may specify up to 10 services to describe in a single operation.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- Required parameter: services
function M.DescribeServicesRequest(services, cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesRequest")
	local t = { 
		["services"] = services,
		["cluster"] = cluster,
	}
	M.AssertDescribeServicesRequest(t)
	return t
end

local DeleteAttributesRequest_keys = { "cluster" = true, "attributes" = true, nil }

function M.AssertDeleteAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAttributesRequest to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAttributesRequest_keys[k], "DeleteAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAttributesRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param attributes [Attributes] <p>The attributes to delete from your resource. You can specify up to 10 attributes per request. For custom attributes, specify the attribute name and target ID, but do not specify the value. If you specify the target ID using the short form, you must also specify the target type.</p>
-- Required parameter: attributes
function M.DeleteAttributesRequest(cluster, attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesRequest")
	local t = { 
		["cluster"] = cluster,
		["attributes"] = attributes,
	}
	M.AssertDeleteAttributesRequest(t)
	return t
end

local NoUpdateAvailableException_keys = { nil }

function M.AssertNoUpdateAvailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoUpdateAvailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NoUpdateAvailableException_keys[k], "NoUpdateAvailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoUpdateAvailableException
-- <p>There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.</p>
function M.NoUpdateAvailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoUpdateAvailableException")
	local t = { 
	}
	M.AssertNoUpdateAvailableException(t)
	return t
end

local SubmitTaskStateChangeResponse_keys = { "acknowledgment" = true, nil }

function M.AssertSubmitTaskStateChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitTaskStateChangeResponse to be of type 'table'")
	if struct["acknowledgment"] then M.AssertString(struct["acknowledgment"]) end
	for k,_ in pairs(struct) do
		assert(SubmitTaskStateChangeResponse_keys[k], "SubmitTaskStateChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitTaskStateChangeResponse
--  
-- @param acknowledgment [String] <p>Acknowledgement of the state change.</p>
function M.SubmitTaskStateChangeResponse(acknowledgment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitTaskStateChangeResponse")
	local t = { 
		["acknowledgment"] = acknowledgment,
	}
	M.AssertSubmitTaskStateChangeResponse(t)
	return t
end

local ListClustersRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListClustersRequest_keys[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListClusters</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When this parameter is used, <code>ListClusters</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListClustersRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListClustersRequest(t)
	return t
end

local DescribeClustersResponse_keys = { "clusters" = true, "failures" = true, nil }

function M.AssertDescribeClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersResponse to be of type 'table'")
	if struct["clusters"] then M.AssertClusters(struct["clusters"]) end
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClustersResponse_keys[k], "DescribeClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersResponse
--  
-- @param clusters [Clusters] <p>The list of clusters.</p>
-- @param failures [Failures] <p>Any failures associated with the call.</p>
function M.DescribeClustersResponse(clusters, failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersResponse")
	local t = { 
		["clusters"] = clusters,
		["failures"] = failures,
	}
	M.AssertDescribeClustersResponse(t)
	return t
end

local ListTaskDefinitionsResponse_keys = { "nextToken" = true, "taskDefinitionArns" = true, nil }

function M.AssertListTaskDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["taskDefinitionArns"] then M.AssertStringList(struct["taskDefinitionArns"]) end
	for k,_ in pairs(struct) do
		assert(ListTaskDefinitionsResponse_keys[k], "ListTaskDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionsResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitions</code> request. When the results of a <code>ListTaskDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param taskDefinitionArns [StringList] <p>The list of task definition Amazon Resource Name (ARN) entries for the <code>ListTaskDefinitions</code> request.</p>
function M.ListTaskDefinitionsResponse(nextToken, taskDefinitionArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["taskDefinitionArns"] = taskDefinitionArns,
	}
	M.AssertListTaskDefinitionsResponse(t)
	return t
end

local ContainerInstance_keys = { "status" = true, "registeredAt" = true, "registeredResources" = true, "ec2InstanceId" = true, "agentConnected" = true, "containerInstanceArn" = true, "pendingTasksCount" = true, "remainingResources" = true, "version" = true, "agentUpdateStatus" = true, "attributes" = true, "versionInfo" = true, "runningTasksCount" = true, nil }

function M.AssertContainerInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerInstance to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["registeredAt"] then M.AssertTimestamp(struct["registeredAt"]) end
	if struct["registeredResources"] then M.AssertResources(struct["registeredResources"]) end
	if struct["ec2InstanceId"] then M.AssertString(struct["ec2InstanceId"]) end
	if struct["agentConnected"] then M.AssertBoolean(struct["agentConnected"]) end
	if struct["containerInstanceArn"] then M.AssertString(struct["containerInstanceArn"]) end
	if struct["pendingTasksCount"] then M.AssertInteger(struct["pendingTasksCount"]) end
	if struct["remainingResources"] then M.AssertResources(struct["remainingResources"]) end
	if struct["version"] then M.AssertLong(struct["version"]) end
	if struct["agentUpdateStatus"] then M.AssertAgentUpdateStatus(struct["agentUpdateStatus"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["versionInfo"] then M.AssertVersionInfo(struct["versionInfo"]) end
	if struct["runningTasksCount"] then M.AssertInteger(struct["runningTasksCount"]) end
	for k,_ in pairs(struct) do
		assert(ContainerInstance_keys[k], "ContainerInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerInstance
-- <p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>
-- @param status [String] <p>The status of the container instance. The valid values are <code>ACTIVE</code>, <code>INACTIVE</code>, or <code>DRAINING</code>. <code>ACTIVE</code> indicates that the container instance can accept tasks. <code>DRAINING</code> indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html">Container Instance Draining</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param registeredAt [Timestamp] <p>The Unix timestamp for when the container instance was registered.</p>
-- @param registeredResources [Resources] <p>For most resource types, this parameter describes the registered resources on the container instance that are in use by current tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.</p>
-- @param ec2InstanceId [String] <p>The EC2 instance ID of the container instance.</p>
-- @param agentConnected [Boolean] <p>This parameter returns <code>true</code> if the agent is actually connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return <code>false</code>, and instances without a connected agent cannot accept placement requests.</p>
-- @param containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- @param pendingTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>PENDING</code> status.</p>
-- @param remainingResources [Resources] <p>For most resource types, this parameter describes the remaining resources of the container instance that are available for new tasks. For port resource types, this parameter describes the ports that are reserved by the Amazon ECS container agent and any containers that have reserved port mappings; any port that is not specified here is available for new tasks.</p>
-- @param version [Long] <p>The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch events for the container instance (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- @param agentUpdateStatus [AgentUpdateStatus] <p>The status of the most recent agent update. If an update has never been requested, this value is <code>NULL</code>.</p>
-- @param attributes [Attributes] <p>The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the <a>PutAttributes</a> operation.</p>
-- @param versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- @param runningTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>RUNNING</code> status.</p>
function M.ContainerInstance(status, registeredAt, registeredResources, ec2InstanceId, agentConnected, containerInstanceArn, pendingTasksCount, remainingResources, version, agentUpdateStatus, attributes, versionInfo, runningTasksCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerInstance")
	local t = { 
		["status"] = status,
		["registeredAt"] = registeredAt,
		["registeredResources"] = registeredResources,
		["ec2InstanceId"] = ec2InstanceId,
		["agentConnected"] = agentConnected,
		["containerInstanceArn"] = containerInstanceArn,
		["pendingTasksCount"] = pendingTasksCount,
		["remainingResources"] = remainingResources,
		["version"] = version,
		["agentUpdateStatus"] = agentUpdateStatus,
		["attributes"] = attributes,
		["versionInfo"] = versionInfo,
		["runningTasksCount"] = runningTasksCount,
	}
	M.AssertContainerInstance(t)
	return t
end

local DiscoverPollEndpointResponse_keys = { "endpoint" = true, "telemetryEndpoint" = true, nil }

function M.AssertDiscoverPollEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverPollEndpointResponse to be of type 'table'")
	if struct["endpoint"] then M.AssertString(struct["endpoint"]) end
	if struct["telemetryEndpoint"] then M.AssertString(struct["telemetryEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(DiscoverPollEndpointResponse_keys[k], "DiscoverPollEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverPollEndpointResponse
--  
-- @param endpoint [String] <p>The endpoint for the Amazon ECS agent to poll.</p>
-- @param telemetryEndpoint [String] <p>The telemetry endpoint for the Amazon ECS agent.</p>
function M.DiscoverPollEndpointResponse(endpoint, telemetryEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverPollEndpointResponse")
	local t = { 
		["endpoint"] = endpoint,
		["telemetryEndpoint"] = telemetryEndpoint,
	}
	M.AssertDiscoverPollEndpointResponse(t)
	return t
end

local DeregisterTaskDefinitionRequest_keys = { "taskDefinition" = true, nil }

function M.AssertDeregisterTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskDefinitionRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTaskDefinitionRequest_keys[k], "DeregisterTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskDefinitionRequest
--  
-- @param taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a <code>revision</code>.</p>
-- Required parameter: taskDefinition
function M.DeregisterTaskDefinitionRequest(taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskDefinitionRequest")
	local t = { 
		["taskDefinition"] = taskDefinition,
	}
	M.AssertDeregisterTaskDefinitionRequest(t)
	return t
end

local SubmitContainerStateChangeResponse_keys = { "acknowledgment" = true, nil }

function M.AssertSubmitContainerStateChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitContainerStateChangeResponse to be of type 'table'")
	if struct["acknowledgment"] then M.AssertString(struct["acknowledgment"]) end
	for k,_ in pairs(struct) do
		assert(SubmitContainerStateChangeResponse_keys[k], "SubmitContainerStateChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitContainerStateChangeResponse
--  
-- @param acknowledgment [String] <p>Acknowledgement of the state change.</p>
function M.SubmitContainerStateChangeResponse(acknowledgment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitContainerStateChangeResponse")
	local t = { 
		["acknowledgment"] = acknowledgment,
	}
	M.AssertSubmitContainerStateChangeResponse(t)
	return t
end

local UpdateServiceResponse_keys = { "service" = true, nil }

function M.AssertUpdateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceResponse to be of type 'table'")
	if struct["service"] then M.AssertService(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServiceResponse_keys[k], "UpdateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceResponse
--  
-- @param service [Service] <p>The full description of your service following the update call.</p>
function M.UpdateServiceResponse(service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceResponse")
	local t = { 
		["service"] = service,
	}
	M.AssertUpdateServiceResponse(t)
	return t
end

local UpdateInProgressException_keys = { nil }

function M.AssertUpdateInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInProgressException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateInProgressException_keys[k], "UpdateInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInProgressException
-- <p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>
function M.UpdateInProgressException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateInProgressException")
	local t = { 
	}
	M.AssertUpdateInProgressException(t)
	return t
end

local ListAttributesResponse_keys = { "attributes" = true, "nextToken" = true, nil }

function M.AssertListAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttributesResponse to be of type 'table'")
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAttributesResponse_keys[k], "ListAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttributesResponse
--  
-- @param attributes [Attributes] <p>A list of attribute objects that meet the criteria of the request.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListAttributes</code> request. When the results of a <code>ListAttributes</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
function M.ListAttributesResponse(attributes, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttributesResponse")
	local t = { 
		["attributes"] = attributes,
		["nextToken"] = nextToken,
	}
	M.AssertListAttributesResponse(t)
	return t
end

local ListTasksRequest_keys = { "family" = true, "maxResults" = true, "startedBy" = true, "cluster" = true, "serviceName" = true, "desiredStatus" = true, "nextToken" = true, "containerInstance" = true, nil }

function M.AssertListTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTasksRequest to be of type 'table'")
	if struct["family"] then M.AssertString(struct["family"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	if struct["startedBy"] then M.AssertString(struct["startedBy"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["serviceName"] then M.AssertString(struct["serviceName"]) end
	if struct["desiredStatus"] then M.AssertDesiredStatus(struct["desiredStatus"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["containerInstance"] then M.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(ListTasksRequest_keys[k], "ListTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTasksRequest
--  
-- @param family [String] <p>The name of the family with which to filter the <code>ListTasks</code> results. Specifying a <code>family</code> limits the results to tasks that belong to that family.</p>
-- @param maxResults [BoxedInteger] <p>The maximum number of task results returned by <code>ListTasks</code> in paginated output. When this parameter is used, <code>ListTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTasks</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTasks</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param startedBy [String] <p>The <code>startedBy</code> value with which to filter the task results. Specifying a <code>startedBy</code> value limits the results to tasks that were started with that value.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param serviceName [String] <p>The name of the service with which to filter the <code>ListTasks</code> results. Specifying a <code>serviceName</code> limits the results to tasks that belong to that service.</p>
-- @param desiredStatus [DesiredStatus] <p>The task desired status with which to filter the <code>ListTasks</code> results. Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to tasks that ECS has set the desired status to <code>STOPPED</code>, which can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is <code>RUNNING</code>, which shows tasks that ECS has set the desired status to <code>RUNNING</code>.</p> <note> <p>Although you can filter results based on a desired status of <code>PENDING</code>, this will not return any results because ECS never sets the desired status of a task to that value (only a task's <code>lastStatus</code> may have a value of <code>PENDING</code>).</p> </note>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance with which to filter the <code>ListTasks</code> results. Specifying a <code>containerInstance</code> limits the results to tasks that belong to that container instance.</p>
function M.ListTasksRequest(family, maxResults, startedBy, cluster, serviceName, desiredStatus, nextToken, containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTasksRequest")
	local t = { 
		["family"] = family,
		["maxResults"] = maxResults,
		["startedBy"] = startedBy,
		["cluster"] = cluster,
		["serviceName"] = serviceName,
		["desiredStatus"] = desiredStatus,
		["nextToken"] = nextToken,
		["containerInstance"] = containerInstance,
	}
	M.AssertListTasksRequest(t)
	return t
end

local ClusterNotFoundException_keys = { nil }

function M.AssertClusterNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterNotFoundException_keys[k], "ClusterNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundException
-- <p>The specified cluster could not be found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are region-specific.</p>
function M.ClusterNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundException")
	local t = { 
	}
	M.AssertClusterNotFoundException(t)
	return t
end

local TaskDefinitionPlacementConstraint_keys = { "expression" = true, "type" = true, nil }

function M.AssertTaskDefinitionPlacementConstraint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDefinitionPlacementConstraint to be of type 'table'")
	if struct["expression"] then M.AssertString(struct["expression"]) end
	if struct["type"] then M.AssertTaskDefinitionPlacementConstraintType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(TaskDefinitionPlacementConstraint_keys[k], "TaskDefinitionPlacementConstraint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDefinitionPlacementConstraint
-- <p>An object representing a constraint on task placement in the task definition. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param expression [String] <p>A cluster query language expression to apply to the constraint. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param type [TaskDefinitionPlacementConstraintType] <p>The type of constraint. The <code>DistinctInstance</code> constraint ensures that each task in a particular group is running on a different container instance. The <code>MemberOf</code> constraint restricts selection to be from a group of valid candidates.</p>
function M.TaskDefinitionPlacementConstraint(expression, type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDefinitionPlacementConstraint")
	local t = { 
		["expression"] = expression,
		["type"] = type,
	}
	M.AssertTaskDefinitionPlacementConstraint(t)
	return t
end

local CreateClusterRequest_keys = { "clusterName" = true, nil }

function M.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	if struct["clusterName"] then M.AssertString(struct["clusterName"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterRequest_keys[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param clusterName [String] <p>The name of your cluster. If you do not specify a name for your cluster, you create a cluster named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
function M.CreateClusterRequest(clusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["clusterName"] = clusterName,
	}
	M.AssertCreateClusterRequest(t)
	return t
end

local DiscoverPollEndpointRequest_keys = { "cluster" = true, "containerInstance" = true, nil }

function M.AssertDiscoverPollEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DiscoverPollEndpointRequest to be of type 'table'")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["containerInstance"] then M.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(DiscoverPollEndpointRequest_keys[k], "DiscoverPollEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DiscoverPollEndpointRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs to.</p>
-- @param containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
function M.DiscoverPollEndpointRequest(cluster, containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverPollEndpointRequest")
	local t = { 
		["cluster"] = cluster,
		["containerInstance"] = containerInstance,
	}
	M.AssertDiscoverPollEndpointRequest(t)
	return t
end

local ListServicesRequest_keys = { "cluster" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesRequest to be of type 'table'")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListServicesRequest_keys[k], "ListServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListServices</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListServices</code> in paginated output. When this parameter is used, <code>ListServices</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListServices</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 10. If this parameter is not used, then <code>ListServices</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>
function M.ListServicesRequest(cluster, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServicesRequest")
	local t = { 
		["cluster"] = cluster,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListServicesRequest(t)
	return t
end

local DescribeContainerInstancesRequest_keys = { "cluster" = true, "containerInstances" = true, nil }

function M.AssertDescribeContainerInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeContainerInstancesRequest to be of type 'table'")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["containerInstances"] then M.AssertStringList(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(DescribeContainerInstancesRequest_keys[k], "DescribeContainerInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeContainerInstancesRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: containerInstances
function M.DescribeContainerInstancesRequest(cluster, containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeContainerInstancesRequest")
	local t = { 
		["cluster"] = cluster,
		["containerInstances"] = containerInstances,
	}
	M.AssertDescribeContainerInstancesRequest(t)
	return t
end

local TaskDefinition_keys = { "status" = true, "networkMode" = true, "family" = true, "placementConstraints" = true, "requiresAttributes" = true, "volumes" = true, "taskRoleArn" = true, "taskDefinitionArn" = true, "containerDefinitions" = true, "revision" = true, nil }

function M.AssertTaskDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDefinition to be of type 'table'")
	if struct["status"] then M.AssertTaskDefinitionStatus(struct["status"]) end
	if struct["networkMode"] then M.AssertNetworkMode(struct["networkMode"]) end
	if struct["family"] then M.AssertString(struct["family"]) end
	if struct["placementConstraints"] then M.AssertTaskDefinitionPlacementConstraints(struct["placementConstraints"]) end
	if struct["requiresAttributes"] then M.AssertRequiresAttributes(struct["requiresAttributes"]) end
	if struct["volumes"] then M.AssertVolumeList(struct["volumes"]) end
	if struct["taskRoleArn"] then M.AssertString(struct["taskRoleArn"]) end
	if struct["taskDefinitionArn"] then M.AssertString(struct["taskDefinitionArn"]) end
	if struct["containerDefinitions"] then M.AssertContainerDefinitions(struct["containerDefinitions"]) end
	if struct["revision"] then M.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(TaskDefinition_keys[k], "TaskDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDefinition
-- <p>Details of a task definition.</p>
-- @param status [TaskDefinitionStatus] <p>The status of the task definition.</p>
-- @param networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>If the network mode is <code>none</code>, the containers do not have external connectivity. The default Docker network mode is <code>bridge</code>. The <code>host</code> network mode offers the highest networking performance for containers because it uses the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- @param family [String] <p>The family of your task definition, used as the definition name.</p>
-- @param placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for tasks. </p>
-- @param requiresAttributes [RequiresAttributes] <p>The container instance attributes required by your task.</p>
-- @param volumes [VolumeList] <p>The list of volumes in a task. For more information about volume definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- @param taskDefinitionArn [String] <p>The full Amazon Resource Name (ARN) of the task definition.</p>
-- @param containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param revision [Integer] <p>The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is <code>1</code>; each time you register a new revision of a task definition in the same family, the revision value always increases by one (even if you have deregistered previous revisions in this family).</p>
function M.TaskDefinition(status, networkMode, family, placementConstraints, requiresAttributes, volumes, taskRoleArn, taskDefinitionArn, containerDefinitions, revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDefinition")
	local t = { 
		["status"] = status,
		["networkMode"] = networkMode,
		["family"] = family,
		["placementConstraints"] = placementConstraints,
		["requiresAttributes"] = requiresAttributes,
		["volumes"] = volumes,
		["taskRoleArn"] = taskRoleArn,
		["taskDefinitionArn"] = taskDefinitionArn,
		["containerDefinitions"] = containerDefinitions,
		["revision"] = revision,
	}
	M.AssertTaskDefinition(t)
	return t
end

local UpdateContainerInstancesStateResponse_keys = { "failures" = true, "containerInstances" = true, nil }

function M.AssertUpdateContainerInstancesStateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerInstancesStateResponse to be of type 'table'")
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	if struct["containerInstances"] then M.AssertContainerInstances(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(UpdateContainerInstancesStateResponse_keys[k], "UpdateContainerInstancesStateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerInstancesStateResponse
--  
-- @param failures [Failures] <p>Any failures associated with the call.</p>
-- @param containerInstances [ContainerInstances] <p>The list of container instances.</p>
function M.UpdateContainerInstancesStateResponse(failures, containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerInstancesStateResponse")
	local t = { 
		["failures"] = failures,
		["containerInstances"] = containerInstances,
	}
	M.AssertUpdateContainerInstancesStateResponse(t)
	return t
end

local PutAttributesResponse_keys = { "attributes" = true, nil }

function M.AssertPutAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutAttributesResponse to be of type 'table'")
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(PutAttributesResponse_keys[k], "PutAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutAttributesResponse
--  
-- @param attributes [Attributes] <p>The attributes applied to your resource.</p>
function M.PutAttributesResponse(attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesResponse")
	local t = { 
		["attributes"] = attributes,
	}
	M.AssertPutAttributesResponse(t)
	return t
end

local ListTaskDefinitionFamiliesResponse_keys = { "nextToken" = true, "families" = true, nil }

function M.AssertListTaskDefinitionFamiliesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTaskDefinitionFamiliesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["families"] then M.AssertStringList(struct["families"]) end
	for k,_ in pairs(struct) do
		assert(ListTaskDefinitionFamiliesResponse_keys[k], "ListTaskDefinitionFamiliesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTaskDefinitionFamiliesResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitionFamilies</code> request. When the results of a <code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param families [StringList] <p>The list of task definition family names that match the <code>ListTaskDefinitionFamilies</code> request.</p>
function M.ListTaskDefinitionFamiliesResponse(nextToken, families, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionFamiliesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["families"] = families,
	}
	M.AssertListTaskDefinitionFamiliesResponse(t)
	return t
end

local ListAttributesRequest_keys = { "targetType" = true, "attributeValue" = true, "attributeName" = true, "maxResults" = true, "cluster" = true, "nextToken" = true, nil }

function M.AssertListAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttributesRequest to be of type 'table'")
	assert(struct["targetType"], "Expected key targetType to exist in table")
	if struct["targetType"] then M.AssertTargetType(struct["targetType"]) end
	if struct["attributeValue"] then M.AssertString(struct["attributeValue"]) end
	if struct["attributeName"] then M.AssertString(struct["attributeName"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAttributesRequest_keys[k], "ListAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttributesRequest
--  
-- @param targetType [TargetType] <p>The type of the target with which to list attributes.</p>
-- @param attributeValue [String] <p>The value of the attribute with which to filter results. You must also specify an attribute name to use this parameter.</p>
-- @param attributeName [String] <p>The name of the attribute with which to filter the results. </p>
-- @param maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListAttributes</code> in paginated output. When this parameter is used, <code>ListAttributes</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListAttributes</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListAttributes</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListAttributes</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- Required parameter: targetType
function M.ListAttributesRequest(targetType, attributeValue, attributeName, maxResults, cluster, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttributesRequest")
	local t = { 
		["targetType"] = targetType,
		["attributeValue"] = attributeValue,
		["attributeName"] = attributeName,
		["maxResults"] = maxResults,
		["cluster"] = cluster,
		["nextToken"] = nextToken,
	}
	M.AssertListAttributesRequest(t)
	return t
end

local RunTaskRequest_keys = { "count" = true, "group" = true, "overrides" = true, "placementConstraints" = true, "cluster" = true, "startedBy" = true, "taskDefinition" = true, "placementStrategy" = true, nil }

function M.AssertRunTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunTaskRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	if struct["count"] then M.AssertBoxedInteger(struct["count"]) end
	if struct["group"] then M.AssertString(struct["group"]) end
	if struct["overrides"] then M.AssertTaskOverride(struct["overrides"]) end
	if struct["placementConstraints"] then M.AssertPlacementConstraints(struct["placementConstraints"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["startedBy"] then M.AssertString(struct["startedBy"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	if struct["placementStrategy"] then M.AssertPlacementStrategies(struct["placementStrategy"]) end
	for k,_ in pairs(struct) do
		assert(RunTaskRequest_keys[k], "RunTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunTaskRequest
--  
-- @param count [BoxedInteger] <p>The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.</p>
-- @param group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- @param overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- @param placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at run time).</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- @param placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules per task.</p>
-- Required parameter: taskDefinition
function M.RunTaskRequest(count, group, overrides, placementConstraints, cluster, startedBy, taskDefinition, placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunTaskRequest")
	local t = { 
		["count"] = count,
		["group"] = group,
		["overrides"] = overrides,
		["placementConstraints"] = placementConstraints,
		["cluster"] = cluster,
		["startedBy"] = startedBy,
		["taskDefinition"] = taskDefinition,
		["placementStrategy"] = placementStrategy,
	}
	M.AssertRunTaskRequest(t)
	return t
end

local HostVolumeProperties_keys = { "sourcePath" = true, nil }

function M.AssertHostVolumeProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostVolumeProperties to be of type 'table'")
	if struct["sourcePath"] then M.AssertString(struct["sourcePath"]) end
	for k,_ in pairs(struct) do
		assert(HostVolumeProperties_keys[k], "HostVolumeProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostVolumeProperties
-- <p>Details on a container instance host volume.</p>
-- @param sourcePath [String] <p>The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p>
function M.HostVolumeProperties(sourcePath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostVolumeProperties")
	local t = { 
		["sourcePath"] = sourcePath,
	}
	M.AssertHostVolumeProperties(t)
	return t
end

local Attribute_keys = { "targetType" = true, "targetId" = true, "name" = true, "value" = true, nil }

function M.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["targetType"] then M.AssertTargetType(struct["targetType"]) end
	if struct["targetId"] then M.AssertString(struct["targetId"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["value"] then M.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(Attribute_keys[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param targetType [TargetType] <p>The type of the target with which to attach the attribute. This parameter is required if you use the short form ID for a resource instead of the full Amazon Resource Name (ARN).</p>
-- @param targetId [String] <p>The ID of the target. You can specify the short form ID for a resource or the full Amazon Resource Name (ARN).</p>
-- @param name [String] <p>The name of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, and periods are allowed.</p>
-- @param value [String] <p>The value of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, periods, at signs (@), forward slashes, colons, and spaces are allowed.</p>
-- Required parameter: name
function M.Attribute(targetType, targetId, name, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["targetType"] = targetType,
		["targetId"] = targetId,
		["name"] = name,
		["value"] = value,
	}
	M.AssertAttribute(t)
	return t
end

local DescribeTasksRequest_keys = { "cluster" = true, "tasks" = true, nil }

function M.AssertDescribeTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTasksRequest to be of type 'table'")
	assert(struct["tasks"], "Expected key tasks to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["tasks"] then M.AssertStringList(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTasksRequest_keys[k], "DescribeTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTasksRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param tasks [StringList] <p>A list of up to 100 task IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: tasks
function M.DescribeTasksRequest(cluster, tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTasksRequest")
	local t = { 
		["cluster"] = cluster,
		["tasks"] = tasks,
	}
	M.AssertDescribeTasksRequest(t)
	return t
end

local Cluster_keys = { "status" = true, "clusterName" = true, "registeredContainerInstancesCount" = true, "pendingTasksCount" = true, "runningTasksCount" = true, "activeServicesCount" = true, "clusterArn" = true, nil }

function M.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["clusterName"] then M.AssertString(struct["clusterName"]) end
	if struct["registeredContainerInstancesCount"] then M.AssertInteger(struct["registeredContainerInstancesCount"]) end
	if struct["pendingTasksCount"] then M.AssertInteger(struct["pendingTasksCount"]) end
	if struct["runningTasksCount"] then M.AssertInteger(struct["runningTasksCount"]) end
	if struct["activeServicesCount"] then M.AssertInteger(struct["activeServicesCount"]) end
	if struct["clusterArn"] then M.AssertString(struct["clusterArn"]) end
	for k,_ in pairs(struct) do
		assert(Cluster_keys[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>
-- @param status [String] <p>The status of the cluster. The valid values are <code>ACTIVE</code> or <code>INACTIVE</code>. <code>ACTIVE</code> indicates that you can register container instances with the cluster and the associated instances can accept tasks.</p>
-- @param clusterName [String] <p>A user-generated string that you use to identify your cluster.</p>
-- @param registeredContainerInstancesCount [Integer] <p>The number of container instances registered into the cluster.</p>
-- @param pendingTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- @param runningTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- @param activeServicesCount [Integer] <p>The number of services that are running on the cluster in an <code>ACTIVE</code> state. You can view these services with <a>ListServices</a>.</p>
-- @param clusterArn [String] <p>The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the cluster, the AWS account ID of the cluster owner, the <code>cluster</code> namespace, and then the cluster name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:cluster/<i>test</i> </code>..</p>
function M.Cluster(status, clusterName, registeredContainerInstancesCount, pendingTasksCount, runningTasksCount, activeServicesCount, clusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["status"] = status,
		["clusterName"] = clusterName,
		["registeredContainerInstancesCount"] = registeredContainerInstancesCount,
		["pendingTasksCount"] = pendingTasksCount,
		["runningTasksCount"] = runningTasksCount,
		["activeServicesCount"] = activeServicesCount,
		["clusterArn"] = clusterArn,
	}
	M.AssertCluster(t)
	return t
end

local ListServicesResponse_keys = { "nextToken" = true, "serviceArns" = true, nil }

function M.AssertListServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["serviceArns"] then M.AssertStringList(struct["serviceArns"]) end
	for k,_ in pairs(struct) do
		assert(ListServicesResponse_keys[k], "ListServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesResponse
--  
-- @param nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListServices</code> request. When the results of a <code>ListServices</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param serviceArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each service associated with the specified cluster.</p>
function M.ListServicesResponse(nextToken, serviceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServicesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["serviceArns"] = serviceArns,
	}
	M.AssertListServicesResponse(t)
	return t
end

local ClientException_keys = { "message" = true, nil }

function M.AssertClientException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ClientException_keys[k], "ClientException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientException
-- <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid.</p>
-- @param message [String] <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid.</p>
function M.ClientException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientException")
	local t = { 
		["message"] = message,
	}
	M.AssertClientException(t)
	return t
end

local VersionInfo_keys = { "agentVersion" = true, "agentHash" = true, "dockerVersion" = true, nil }

function M.AssertVersionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionInfo to be of type 'table'")
	if struct["agentVersion"] then M.AssertString(struct["agentVersion"]) end
	if struct["agentHash"] then M.AssertString(struct["agentHash"]) end
	if struct["dockerVersion"] then M.AssertString(struct["dockerVersion"]) end
	for k,_ in pairs(struct) do
		assert(VersionInfo_keys[k], "VersionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionInfo
-- <p>The Docker and Amazon ECS container agent version information about a container instance.</p>
-- @param agentVersion [String] <p>The version number of the Amazon ECS container agent.</p>
-- @param agentHash [String] <p>The Git commit hash for the Amazon ECS container agent build on the <a href="https://github.com/aws/amazon-ecs-agent/commits/master">amazon-ecs-agent </a> GitHub repository.</p>
-- @param dockerVersion [String] <p>The Docker version running on the container instance.</p>
function M.VersionInfo(agentVersion, agentHash, dockerVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionInfo")
	local t = { 
		["agentVersion"] = agentVersion,
		["agentHash"] = agentHash,
		["dockerVersion"] = dockerVersion,
	}
	M.AssertVersionInfo(t)
	return t
end

local StopTaskRequest_keys = { "cluster" = true, "reason" = true, "task" = true, nil }

function M.AssertStopTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTaskRequest to be of type 'table'")
	assert(struct["task"], "Expected key task to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["task"] then M.AssertString(struct["task"]) end
	for k,_ in pairs(struct) do
		assert(StopTaskRequest_keys[k], "StopTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTaskRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param reason [String] <p>An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message will appear in subsequent <a>DescribeTasks</a> API operations on this task. Up to 255 characters are allowed in this message.</p>
-- @param task [String] <p>The task ID or full Amazon Resource Name (ARN) entry of the task to stop.</p>
-- Required parameter: task
function M.StopTaskRequest(cluster, reason, task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopTaskRequest")
	local t = { 
		["cluster"] = cluster,
		["reason"] = reason,
		["task"] = task,
	}
	M.AssertStopTaskRequest(t)
	return t
end

local TaskOverride_keys = { "taskRoleArn" = true, "containerOverrides" = true, nil }

function M.AssertTaskOverride(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskOverride to be of type 'table'")
	if struct["taskRoleArn"] then M.AssertString(struct["taskRoleArn"]) end
	if struct["containerOverrides"] then M.AssertContainerOverrides(struct["containerOverrides"]) end
	for k,_ in pairs(struct) do
		assert(TaskOverride_keys[k], "TaskOverride contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskOverride
-- <p>The overrides associated with a task.</p>
-- @param taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- @param containerOverrides [ContainerOverrides] <p>One or more container overrides sent to a task.</p>
function M.TaskOverride(taskRoleArn, containerOverrides, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskOverride")
	local t = { 
		["taskRoleArn"] = taskRoleArn,
		["containerOverrides"] = containerOverrides,
	}
	M.AssertTaskOverride(t)
	return t
end

local Container_keys = { "containerArn" = true, "taskArn" = true, "name" = true, "networkBindings" = true, "lastStatus" = true, "reason" = true, "exitCode" = true, nil }

function M.AssertContainer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Container to be of type 'table'")
	if struct["containerArn"] then M.AssertString(struct["containerArn"]) end
	if struct["taskArn"] then M.AssertString(struct["taskArn"]) end
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["networkBindings"] then M.AssertNetworkBindings(struct["networkBindings"]) end
	if struct["lastStatus"] then M.AssertString(struct["lastStatus"]) end
	if struct["reason"] then M.AssertString(struct["reason"]) end
	if struct["exitCode"] then M.AssertBoxedInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(Container_keys[k], "Container contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Container
-- <p>A Docker container that is part of a task.</p>
-- @param containerArn [String] <p>The Amazon Resource Name (ARN) of the container.</p>
-- @param taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- @param name [String] <p>The name of the container.</p>
-- @param networkBindings [NetworkBindings] <p>The network bindings associated with the container.</p>
-- @param lastStatus [String] <p>The last known status of the container.</p>
-- @param reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- @param exitCode [BoxedInteger] <p>The exit code returned from the container.</p>
function M.Container(containerArn, taskArn, name, networkBindings, lastStatus, reason, exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Container")
	local t = { 
		["containerArn"] = containerArn,
		["taskArn"] = taskArn,
		["name"] = name,
		["networkBindings"] = networkBindings,
		["lastStatus"] = lastStatus,
		["reason"] = reason,
		["exitCode"] = exitCode,
	}
	M.AssertContainer(t)
	return t
end

local RunTaskResponse_keys = { "failures" = true, "tasks" = true, nil }

function M.AssertRunTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunTaskResponse to be of type 'table'")
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	if struct["tasks"] then M.AssertTasks(struct["tasks"]) end
	for k,_ in pairs(struct) do
		assert(RunTaskResponse_keys[k], "RunTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunTaskResponse
--  
-- @param failures [Failures] <p>Any failures associated with the call.</p>
-- @param tasks [Tasks] <p>A full description of the tasks that were run. Each task that was successfully placed on your cluster are described here.</p>
function M.RunTaskResponse(failures, tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunTaskResponse")
	local t = { 
		["failures"] = failures,
		["tasks"] = tasks,
	}
	M.AssertRunTaskResponse(t)
	return t
end

local DeregisterTaskDefinitionResponse_keys = { "taskDefinition" = true, nil }

function M.AssertDeregisterTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then M.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTaskDefinitionResponse_keys[k], "DeregisterTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskDefinitionResponse
--  
-- @param taskDefinition [TaskDefinition] <p>The full description of the deregistered task.</p>
function M.DeregisterTaskDefinitionResponse(taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = taskDefinition,
	}
	M.AssertDeregisterTaskDefinitionResponse(t)
	return t
end

local DescribeServicesResponse_keys = { "services" = true, "failures" = true, nil }

function M.AssertDescribeServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeServicesResponse to be of type 'table'")
	if struct["services"] then M.AssertServices(struct["services"]) end
	if struct["failures"] then M.AssertFailures(struct["failures"]) end
	for k,_ in pairs(struct) do
		assert(DescribeServicesResponse_keys[k], "DescribeServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeServicesResponse
--  
-- @param services [Services] <p>The list of services described.</p>
-- @param failures [Failures] <p>Any failures associated with the call.</p>
function M.DescribeServicesResponse(services, failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesResponse")
	local t = { 
		["services"] = services,
		["failures"] = failures,
	}
	M.AssertDescribeServicesResponse(t)
	return t
end

local RegisterTaskDefinitionResponse_keys = { "taskDefinition" = true, nil }

function M.AssertRegisterTaskDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskDefinitionResponse to be of type 'table'")
	if struct["taskDefinition"] then M.AssertTaskDefinition(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTaskDefinitionResponse_keys[k], "RegisterTaskDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskDefinitionResponse
--  
-- @param taskDefinition [TaskDefinition] <p>The full description of the registered task definition.</p>
function M.RegisterTaskDefinitionResponse(taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = taskDefinition,
	}
	M.AssertRegisterTaskDefinitionResponse(t)
	return t
end

local StartTaskRequest_keys = { "group" = true, "containerInstances" = true, "overrides" = true, "cluster" = true, "startedBy" = true, "taskDefinition" = true, nil }

function M.AssertStartTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTaskRequest to be of type 'table'")
	assert(struct["taskDefinition"], "Expected key taskDefinition to exist in table")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	if struct["group"] then M.AssertString(struct["group"]) end
	if struct["containerInstances"] then M.AssertStringList(struct["containerInstances"]) end
	if struct["overrides"] then M.AssertTaskOverride(struct["overrides"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["startedBy"] then M.AssertString(struct["startedBy"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	for k,_ in pairs(struct) do
		assert(StartTaskRequest_keys[k], "StartTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTaskRequest
--  
-- @param group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- @param containerInstances [StringList] <p>The container instance IDs or full Amazon Resource Name (ARN) entries for the container instances on which you would like to place your task. You can specify up to 10 container instances.</p>
-- @param overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to start your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to start. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- Required parameter: taskDefinition
-- Required parameter: containerInstances
function M.StartTaskRequest(group, containerInstances, overrides, cluster, startedBy, taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTaskRequest")
	local t = { 
		["group"] = group,
		["containerInstances"] = containerInstances,
		["overrides"] = overrides,
		["cluster"] = cluster,
		["startedBy"] = startedBy,
		["taskDefinition"] = taskDefinition,
	}
	M.AssertStartTaskRequest(t)
	return t
end

local MissingVersionException_keys = { nil }

function M.AssertMissingVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingVersionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MissingVersionException_keys[k], "MissingVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingVersionException
-- <p>Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.</p>
function M.MissingVersionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingVersionException")
	local t = { 
	}
	M.AssertMissingVersionException(t)
	return t
end

local RegisterTaskDefinitionRequest_keys = { "networkMode" = true, "family" = true, "placementConstraints" = true, "volumes" = true, "taskRoleArn" = true, "containerDefinitions" = true, nil }

function M.AssertRegisterTaskDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskDefinitionRequest to be of type 'table'")
	assert(struct["family"], "Expected key family to exist in table")
	assert(struct["containerDefinitions"], "Expected key containerDefinitions to exist in table")
	if struct["networkMode"] then M.AssertNetworkMode(struct["networkMode"]) end
	if struct["family"] then M.AssertString(struct["family"]) end
	if struct["placementConstraints"] then M.AssertTaskDefinitionPlacementConstraints(struct["placementConstraints"]) end
	if struct["volumes"] then M.AssertVolumeList(struct["volumes"]) end
	if struct["taskRoleArn"] then M.AssertString(struct["taskRoleArn"]) end
	if struct["containerDefinitions"] then M.AssertContainerDefinitions(struct["containerDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTaskDefinitionRequest_keys[k], "RegisterTaskDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskDefinitionRequest
--  
-- @param networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>The default Docker network mode is <code>bridge</code>. If the network mode is set to <code>none</code>, you cannot specify port mappings in your container definitions, and the task's containers do not have external connectivity. The <code>host</code> network mode offers the highest networking performance for containers because they use the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode; however, exposed container ports are mapped directly to the corresponding host port, so you cannot take advantage of dynamic host port mappings or run multiple instantiations of the same task on a single container instance if port mappings are used.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- @param family [String] <p>You must specify a <code>family</code> for a task definition, which allows you to track multiple versions of the same task definition. The <code>family</code> is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- @param placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time).</p>
-- @param volumes [VolumeList] <p>A list of volume definitions in JSON format that containers in your task may use.</p>
-- @param taskRoleArn [String] <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task.</p>
-- Required parameter: family
-- Required parameter: containerDefinitions
function M.RegisterTaskDefinitionRequest(networkMode, family, placementConstraints, volumes, taskRoleArn, containerDefinitions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskDefinitionRequest")
	local t = { 
		["networkMode"] = networkMode,
		["family"] = family,
		["placementConstraints"] = placementConstraints,
		["volumes"] = volumes,
		["taskRoleArn"] = taskRoleArn,
		["containerDefinitions"] = containerDefinitions,
	}
	M.AssertRegisterTaskDefinitionRequest(t)
	return t
end

local UpdateContainerInstancesStateRequest_keys = { "status" = true, "cluster" = true, "containerInstances" = true, nil }

function M.AssertUpdateContainerInstancesStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContainerInstancesStateRequest to be of type 'table'")
	assert(struct["containerInstances"], "Expected key containerInstances to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertContainerInstanceStatus(struct["status"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["containerInstances"] then M.AssertStringList(struct["containerInstances"]) end
	for k,_ in pairs(struct) do
		assert(UpdateContainerInstancesStateRequest_keys[k], "UpdateContainerInstancesStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContainerInstancesStateRequest
--  
-- @param status [ContainerInstanceStatus] <p>The container instance state with which to update the container instance.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: containerInstances
-- Required parameter: status
function M.UpdateContainerInstancesStateRequest(status, cluster, containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerInstancesStateRequest")
	local t = { 
		["status"] = status,
		["cluster"] = cluster,
		["containerInstances"] = containerInstances,
	}
	M.AssertUpdateContainerInstancesStateRequest(t)
	return t
end

local InvalidParameterException_keys = { nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
function M.InvalidParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
	}
	M.AssertInvalidParameterException(t)
	return t
end

local Deployment_keys = { "status" = true, "pendingCount" = true, "createdAt" = true, "desiredCount" = true, "taskDefinition" = true, "updatedAt" = true, "id" = true, "runningCount" = true, nil }

function M.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["status"] then M.AssertString(struct["status"]) end
	if struct["pendingCount"] then M.AssertInteger(struct["pendingCount"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["desiredCount"] then M.AssertInteger(struct["desiredCount"]) end
	if struct["taskDefinition"] then M.AssertString(struct["taskDefinition"]) end
	if struct["updatedAt"] then M.AssertTimestamp(struct["updatedAt"]) end
	if struct["id"] then M.AssertString(struct["id"]) end
	if struct["runningCount"] then M.AssertInteger(struct["runningCount"]) end
	for k,_ in pairs(struct) do
		assert(Deployment_keys[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- <p>The details of an Amazon ECS service deployment.</p>
-- @param status [String] <p>The status of the deployment. Valid values are <code>PRIMARY</code> (for the most recent deployment), <code>ACTIVE</code> (for previous deployments that still have tasks running, but are being replaced with the <code>PRIMARY</code> deployment), and <code>INACTIVE</code> (for deployments that have been completely replaced).</p>
-- @param pendingCount [Integer] <p>The number of tasks in the deployment that are in the <code>PENDING</code> status.</p>
-- @param createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- @param desiredCount [Integer] <p>The most recent desired count of tasks that was specified for the service to deploy or maintain.</p>
-- @param taskDefinition [String] <p>The most recent task definition that was specified for the service to use.</p>
-- @param updatedAt [Timestamp] <p>The Unix timestamp for when the service was last updated.</p>
-- @param id [String] <p>The ID of the deployment.</p>
-- @param runningCount [Integer] <p>The number of tasks in the deployment that are in the <code>RUNNING</code> status.</p>
function M.Deployment(status, pendingCount, createdAt, desiredCount, taskDefinition, updatedAt, id, runningCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["status"] = status,
		["pendingCount"] = pendingCount,
		["createdAt"] = createdAt,
		["desiredCount"] = desiredCount,
		["taskDefinition"] = taskDefinition,
		["updatedAt"] = updatedAt,
		["id"] = id,
		["runningCount"] = runningCount,
	}
	M.AssertDeployment(t)
	return t
end

local ListContainerInstancesRequest_keys = { "filter" = true, "cluster" = true, "nextToken" = true, "status" = true, "maxResults" = true, nil }

function M.AssertListContainerInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListContainerInstancesRequest to be of type 'table'")
	if struct["filter"] then M.AssertString(struct["filter"]) end
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["nextToken"] then M.AssertString(struct["nextToken"]) end
	if struct["status"] then M.AssertContainerInstanceStatus(struct["status"]) end
	if struct["maxResults"] then M.AssertBoxedInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListContainerInstancesRequest_keys[k], "ListContainerInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListContainerInstancesRequest
--  
-- @param filter [String] <p>You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListContainerInstances</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param status [ContainerInstanceStatus] <p>Filters the container instances by status. For example, if you specify the <code>DRAINING</code> status, the results include only container instances that have been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>. If you do not specify this parameter, the default is to include container instances set to <code>ACTIVE</code> and <code>DRAINING</code>.</p>
-- @param maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListContainerInstances</code> in paginated output. When this parameter is used, <code>ListContainerInstances</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListContainerInstances</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListContainerInstances</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListContainerInstancesRequest(filter, cluster, nextToken, status, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListContainerInstancesRequest")
	local t = { 
		["filter"] = filter,
		["cluster"] = cluster,
		["nextToken"] = nextToken,
		["status"] = status,
		["maxResults"] = maxResults,
	}
	M.AssertListContainerInstancesRequest(t)
	return t
end

local Resource_keys = { "name" = true, "longValue" = true, "doubleValue" = true, "stringSetValue" = true, "type" = true, "integerValue" = true, nil }

function M.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	if struct["longValue"] then M.AssertLong(struct["longValue"]) end
	if struct["doubleValue"] then M.AssertDouble(struct["doubleValue"]) end
	if struct["stringSetValue"] then M.AssertStringList(struct["stringSetValue"]) end
	if struct["type"] then M.AssertString(struct["type"]) end
	if struct["integerValue"] then M.AssertInteger(struct["integerValue"]) end
	for k,_ in pairs(struct) do
		assert(Resource_keys[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Describes the resources available for a container instance.</p>
-- @param name [String] <p>The name of the resource, such as <code>cpu</code>, <code>memory</code>, <code>ports</code>, or a user-defined resource.</p>
-- @param longValue [Long] <p>When the <code>longValue</code> type is set, the value of the resource must be an extended precision floating-point type.</p>
-- @param doubleValue [Double] <p>When the <code>doubleValue</code> type is set, the value of the resource must be a double precision floating-point type.</p>
-- @param stringSetValue [StringList] <p>When the <code>stringSetValue</code> type is set, the value of the resource must be a string type.</p>
-- @param type [String] <p>The type of the resource, such as <code>INTEGER</code>, <code>DOUBLE</code>, <code>LONG</code>, or <code>STRINGSET</code>.</p>
-- @param integerValue [Integer] <p>When the <code>integerValue</code> type is set, the value of the resource must be an integer.</p>
function M.Resource(name, longValue, doubleValue, stringSetValue, type, integerValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["name"] = name,
		["longValue"] = longValue,
		["doubleValue"] = doubleValue,
		["stringSetValue"] = stringSetValue,
		["type"] = type,
		["integerValue"] = integerValue,
	}
	M.AssertResource(t)
	return t
end

local NetworkBinding_keys = { "protocol" = true, "bindIP" = true, "containerPort" = true, "hostPort" = true, nil }

function M.AssertNetworkBinding(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkBinding to be of type 'table'")
	if struct["protocol"] then M.AssertTransportProtocol(struct["protocol"]) end
	if struct["bindIP"] then M.AssertString(struct["bindIP"]) end
	if struct["containerPort"] then M.AssertBoxedInteger(struct["containerPort"]) end
	if struct["hostPort"] then M.AssertBoxedInteger(struct["hostPort"]) end
	for k,_ in pairs(struct) do
		assert(NetworkBinding_keys[k], "NetworkBinding contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkBinding
-- <p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-- @param protocol [TransportProtocol] <p>The protocol used for the network binding.</p>
-- @param bindIP [String] <p>The IP address that the container is bound to on the container instance.</p>
-- @param containerPort [BoxedInteger] <p>The port number on the container that is be used with the network binding.</p>
-- @param hostPort [BoxedInteger] <p>The port number on the host that is used with the network binding.</p>
function M.NetworkBinding(protocol, bindIP, containerPort, hostPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkBinding")
	local t = { 
		["protocol"] = protocol,
		["bindIP"] = bindIP,
		["containerPort"] = containerPort,
		["hostPort"] = hostPort,
	}
	M.AssertNetworkBinding(t)
	return t
end

local PortMapping_keys = { "protocol" = true, "containerPort" = true, "hostPort" = true, nil }

function M.AssertPortMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PortMapping to be of type 'table'")
	if struct["protocol"] then M.AssertTransportProtocol(struct["protocol"]) end
	if struct["containerPort"] then M.AssertBoxedInteger(struct["containerPort"]) end
	if struct["hostPort"] then M.AssertBoxedInteger(struct["hostPort"]) end
	for k,_ in pairs(struct) do
		assert(PortMapping_keys[k], "PortMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PortMapping
-- <p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-- @param protocol [TransportProtocol] <p>The protocol used for the port mapping. Valid values are <code>tcp</code> and <code>udp</code>. The default is <code>tcp</code>.</p>
-- @param containerPort [BoxedInteger] <p>The port number on the container that is bound to the user-specified or automatically assigned host port. If you specify a container port and not a host port, your container automatically receives a host port in the ephemeral port range (for more information, see <code>hostPort</code>). Port mappings that are automatically assigned in this way do not count toward the 100 reserved ports limit of a container instance.</p>
-- @param hostPort [BoxedInteger] <p>The port number on the container instance to reserve for your container. You can specify a non-reserved host port for your container port mapping, or you can omit the <code>hostPort</code> (or set it to <code>0</code>) while specifying a <code>containerPort</code> and your container automatically receives a port in the ephemeral port range for your container instance operating system and Docker version.</p> <p>The default ephemeral port range for Docker version 1.6.0 and later is listed on the instance under <code>/proc/sys/net/ipv4/ip_local_port_range</code>; if this kernel parameter is unavailable, the default ephemeral port range of 49153 to 65535 is used. You should not attempt to specify a host port in the ephemeral port range as these are reserved for automatic assignment. In general, ports below 32768 are outside of the ephemeral port range.</p> <note> <p>The default ephemeral port range of 49153 to 65535 will always be used for Docker versions prior to 1.6.0.</p> </note> <p>The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the Amazon ECS container agent ports 51678 and 51679. Any host port that was previously specified in a running task is also reserved while the task is running (after a task stops, the host port is released).The current reserved ports are displayed in the <code>remainingResources</code> of <a>DescribeContainerInstances</a> output, and a container instance may have up to 100 reserved ports at a time, including the default reserved ports (automatically assigned ports do not count toward the 100 reserved ports limit).</p>
function M.PortMapping(protocol, containerPort, hostPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortMapping")
	local t = { 
		["protocol"] = protocol,
		["containerPort"] = containerPort,
		["hostPort"] = hostPort,
	}
	M.AssertPortMapping(t)
	return t
end

local LogConfiguration_keys = { "logDriver" = true, "options" = true, nil }

function M.AssertLogConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogConfiguration to be of type 'table'")
	assert(struct["logDriver"], "Expected key logDriver to exist in table")
	if struct["logDriver"] then M.AssertLogDriver(struct["logDriver"]) end
	if struct["options"] then M.AssertLogConfigurationOptionsMap(struct["options"]) end
	for k,_ in pairs(struct) do
		assert(LogConfiguration_keys[k], "LogConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogConfiguration
-- <p>Log configuration options to send to a custom log driver for the container.</p>
-- @param logDriver [LogDriver] <p>The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default. </p> <note> <p>If you have a custom driver that is not listed above that you would like to work with the Amazon ECS container agent, you can fork the Amazon ECS container agent project that is <a href="https://github.com/aws/amazon-ecs-agent">available on GitHub</a> and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, Amazon Web Services does not currently provide support for running modified copies of this software.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- @param options [LogConfigurationOptionsMap] <p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- Required parameter: logDriver
function M.LogConfiguration(logDriver, options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogConfiguration")
	local t = { 
		["logDriver"] = logDriver,
		["options"] = options,
	}
	M.AssertLogConfiguration(t)
	return t
end

local VolumeFrom_keys = { "readOnly" = true, "sourceContainer" = true, nil }

function M.AssertVolumeFrom(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VolumeFrom to be of type 'table'")
	if struct["readOnly"] then M.AssertBoxedBoolean(struct["readOnly"]) end
	if struct["sourceContainer"] then M.AssertString(struct["sourceContainer"]) end
	for k,_ in pairs(struct) do
		assert(VolumeFrom_keys[k], "VolumeFrom contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VolumeFrom
-- <p>Details on a data volume from another container in the same task definition.</p>
-- @param readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- @param sourceContainer [String] <p>The name of another container within the same task definition to mount volumes from.</p>
function M.VolumeFrom(readOnly, sourceContainer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeFrom")
	local t = { 
		["readOnly"] = readOnly,
		["sourceContainer"] = sourceContainer,
	}
	M.AssertVolumeFrom(t)
	return t
end

local DeregisterContainerInstanceRequest_keys = { "cluster" = true, "force" = true, "containerInstance" = true, nil }

function M.AssertDeregisterContainerInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterContainerInstanceRequest to be of type 'table'")
	assert(struct["containerInstance"], "Expected key containerInstance to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["force"] then M.AssertBoxedBoolean(struct["force"]) end
	if struct["containerInstance"] then M.AssertString(struct["containerInstance"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterContainerInstanceRequest_keys[k], "DeregisterContainerInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterContainerInstanceRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to deregister. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param force [BoxedBoolean] <p>Forces the deregistration of the container instance. If you have tasks running on the container instance when you deregister it with the <code>force</code> option, these tasks remain running until you terminate the instance or the tasks stop through some other means, but they are orphaned (no longer monitored or accounted for by Amazon ECS). If an orphaned task on your container instance is part of an Amazon ECS service, then the service scheduler starts another copy of that task, on a different container instance if possible. </p> <p>Any containers in orphaned service tasks that are registered with a Classic load balancer or an Application load balancer target group are deregistered, and they will begin connection draining according to the settings on the load balancer or target group.</p>
-- @param containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance to deregister. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- Required parameter: containerInstance
function M.DeregisterContainerInstanceRequest(cluster, force, containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterContainerInstanceRequest")
	local t = { 
		["cluster"] = cluster,
		["force"] = force,
		["containerInstance"] = containerInstance,
	}
	M.AssertDeregisterContainerInstanceRequest(t)
	return t
end

local LoadBalancer_keys = { "containerName" = true, "targetGroupArn" = true, "containerPort" = true, "loadBalancerName" = true, nil }

function M.AssertLoadBalancer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoadBalancer to be of type 'table'")
	if struct["containerName"] then M.AssertString(struct["containerName"]) end
	if struct["targetGroupArn"] then M.AssertString(struct["targetGroupArn"]) end
	if struct["containerPort"] then M.AssertBoxedInteger(struct["containerPort"]) end
	if struct["loadBalancerName"] then M.AssertString(struct["loadBalancerName"]) end
	for k,_ in pairs(struct) do
		assert(LoadBalancer_keys[k], "LoadBalancer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoadBalancer
-- <p>Details on a load balancer that is used with a service.</p>
-- @param containerName [String] <p>The name of the container (as it appears in a container definition) to associate with the load balancer.</p>
-- @param targetGroupArn [String] <p>The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group associated with a service.</p>
-- @param containerPort [BoxedInteger] <p>The port on the container to associate with the load balancer. This port must correspond to a <code>containerPort</code> in the service's task definition. Your container instances must allow ingress traffic on the <code>hostPort</code> of the port mapping.</p>
-- @param loadBalancerName [String] <p>The name of a Classic load balancer.</p>
function M.LoadBalancer(containerName, targetGroupArn, containerPort, loadBalancerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancer")
	local t = { 
		["containerName"] = containerName,
		["targetGroupArn"] = targetGroupArn,
		["containerPort"] = containerPort,
		["loadBalancerName"] = loadBalancerName,
	}
	M.AssertLoadBalancer(t)
	return t
end

local DeleteServiceRequest_keys = { "cluster" = true, "service" = true, nil }

function M.AssertDeleteServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceRequest to be of type 'table'")
	assert(struct["service"], "Expected key service to exist in table")
	if struct["cluster"] then M.AssertString(struct["cluster"]) end
	if struct["service"] then M.AssertString(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(DeleteServiceRequest_keys[k], "DeleteServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceRequest
--  
-- @param cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param service [String] <p>The name of the service to delete.</p>
-- Required parameter: service
function M.DeleteServiceRequest(cluster, service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceRequest")
	local t = { 
		["cluster"] = cluster,
		["service"] = service,
	}
	M.AssertDeleteServiceRequest(t)
	return t
end

function M.AssertTaskDefinitionFamilyStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionFamilyStatus to be of type 'string'")
end

--  
function M.TaskDefinitionFamilyStatus(str)
	M.AssertTaskDefinitionFamilyStatus(str)
	return str
end

function M.AssertTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetType to be of type 'string'")
end

--  
function M.TargetType(str)
	M.AssertTargetType(str)
	return str
end

function M.AssertContainerInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerInstanceStatus to be of type 'string'")
end

--  
function M.ContainerInstanceStatus(str)
	M.AssertContainerInstanceStatus(str)
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

function M.AssertUlimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected UlimitName to be of type 'string'")
end

--  
function M.UlimitName(str)
	M.AssertUlimitName(str)
	return str
end

function M.AssertTaskDefinitionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionStatus to be of type 'string'")
end

--  
function M.TaskDefinitionStatus(str)
	M.AssertTaskDefinitionStatus(str)
	return str
end

function M.AssertAgentUpdateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentUpdateStatus to be of type 'string'")
end

--  
function M.AgentUpdateStatus(str)
	M.AssertAgentUpdateStatus(str)
	return str
end

function M.AssertPlacementStrategyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlacementStrategyType to be of type 'string'")
end

--  
function M.PlacementStrategyType(str)
	M.AssertPlacementStrategyType(str)
	return str
end

function M.AssertNetworkMode(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkMode to be of type 'string'")
end

--  
function M.NetworkMode(str)
	M.AssertNetworkMode(str)
	return str
end

function M.AssertTransportProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected TransportProtocol to be of type 'string'")
end

--  
function M.TransportProtocol(str)
	M.AssertTransportProtocol(str)
	return str
end

function M.AssertLogDriver(str)
	assert(str)
	assert(type(str) == "string", "Expected LogDriver to be of type 'string'")
end

--  
function M.LogDriver(str)
	M.AssertLogDriver(str)
	return str
end

function M.AssertDesiredStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DesiredStatus to be of type 'string'")
end

--  
function M.DesiredStatus(str)
	M.AssertDesiredStatus(str)
	return str
end

function M.AssertPlacementConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlacementConstraintType to be of type 'string'")
end

--  
function M.PlacementConstraintType(str)
	M.AssertPlacementConstraintType(str)
	return str
end

function M.AssertSortOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected SortOrder to be of type 'string'")
end

--  
function M.SortOrder(str)
	M.AssertSortOrder(str)
	return str
end

function M.AssertTaskDefinitionPlacementConstraintType(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskDefinitionPlacementConstraintType to be of type 'string'")
end

--  
function M.TaskDefinitionPlacementConstraintType(str)
	M.AssertTaskDefinitionPlacementConstraintType(str)
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

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertBoxedInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected BoxedInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.BoxedInteger(integer)
	M.AssertBoxedInteger(integer)
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

function M.AssertBoxedBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BoxedBoolean to be of type 'boolean'")
end

function M.BoxedBoolean(boolean)
	M.AssertBoxedBoolean(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertLogConfigurationOptionsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LogConfigurationOptionsMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.LogConfigurationOptionsMap(map)
	M.AssertLogConfigurationOptionsMap(map)
	return map
end

function M.AssertDockerLabelsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DockerLabelsMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.DockerLabelsMap(map)
	M.AssertDockerLabelsMap(map)
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

function M.AssertFailures(list)
	assert(list)
	assert(type(list) == "table", "Expected Failures to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailure(v)
	end
end

--  
-- List of Failure objects
function M.Failures(list)
	M.AssertFailures(list)
	return list
end

function M.AssertRequiresAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected RequiresAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.RequiresAttributes(list)
	M.AssertRequiresAttributes(list)
	return list
end

function M.AssertResources(list)
	assert(list)
	assert(type(list) == "table", "Expected Resources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.Resources(list)
	M.AssertResources(list)
	return list
end

function M.AssertLoadBalancers(list)
	assert(list)
	assert(type(list) == "table", "Expected LoadBalancers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLoadBalancer(v)
	end
end

--  
-- List of LoadBalancer objects
function M.LoadBalancers(list)
	M.AssertLoadBalancers(list)
	return list
end

function M.AssertHostEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected HostEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHostEntry(v)
	end
end

--  
-- List of HostEntry objects
function M.HostEntryList(list)
	M.AssertHostEntryList(list)
	return list
end

function M.AssertMountPointList(list)
	assert(list)
	assert(type(list) == "table", "Expected MountPointList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMountPoint(v)
	end
end

--  
-- List of MountPoint objects
function M.MountPointList(list)
	M.AssertMountPointList(list)
	return list
end

function M.AssertAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected Attributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.Attributes(list)
	M.AssertAttributes(list)
	return list
end

function M.AssertUlimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected UlimitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUlimit(v)
	end
end

--  
-- List of Ulimit objects
function M.UlimitList(list)
	M.AssertUlimitList(list)
	return list
end

function M.AssertVolumeFromList(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeFromList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolumeFrom(v)
	end
end

--  
-- List of VolumeFrom objects
function M.VolumeFromList(list)
	M.AssertVolumeFromList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertContainerOverrides(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerOverrides to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContainerOverride(v)
	end
end

--  
-- List of ContainerOverride objects
function M.ContainerOverrides(list)
	M.AssertContainerOverrides(list)
	return list
end

function M.AssertPlacementConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacementConstraints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlacementConstraint(v)
	end
end

--  
-- List of PlacementConstraint objects
function M.PlacementConstraints(list)
	M.AssertPlacementConstraints(list)
	return list
end

function M.AssertTasks(list)
	assert(list)
	assert(type(list) == "table", "Expected Tasks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTask(v)
	end
end

--  
-- List of Task objects
function M.Tasks(list)
	M.AssertTasks(list)
	return list
end

function M.AssertVolumeList(list)
	assert(list)
	assert(type(list) == "table", "Expected VolumeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVolume(v)
	end
end

--  
-- List of Volume objects
function M.VolumeList(list)
	M.AssertVolumeList(list)
	return list
end

function M.AssertServiceEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceEvents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServiceEvent(v)
	end
end

--  
-- List of ServiceEvent objects
function M.ServiceEvents(list)
	M.AssertServiceEvents(list)
	return list
end

function M.AssertPortMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected PortMappingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPortMapping(v)
	end
end

--  
-- List of PortMapping objects
function M.PortMappingList(list)
	M.AssertPortMappingList(list)
	return list
end

function M.AssertServices(list)
	assert(list)
	assert(type(list) == "table", "Expected Services to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertService(v)
	end
end

--  
-- List of Service objects
function M.Services(list)
	M.AssertServices(list)
	return list
end

function M.AssertEnvironmentVariables(list)
	assert(list)
	assert(type(list) == "table", "Expected EnvironmentVariables to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertKeyValuePair(v)
	end
end

--  
-- List of KeyValuePair objects
function M.EnvironmentVariables(list)
	M.AssertEnvironmentVariables(list)
	return list
end

function M.AssertTaskDefinitionPlacementConstraints(list)
	assert(list)
	assert(type(list) == "table", "Expected TaskDefinitionPlacementConstraints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTaskDefinitionPlacementConstraint(v)
	end
end

--  
-- List of TaskDefinitionPlacementConstraint objects
function M.TaskDefinitionPlacementConstraints(list)
	M.AssertTaskDefinitionPlacementConstraints(list)
	return list
end

function M.AssertClusters(list)
	assert(list)
	assert(type(list) == "table", "Expected Clusters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCluster(v)
	end
end

--  
-- List of Cluster objects
function M.Clusters(list)
	M.AssertClusters(list)
	return list
end

function M.AssertContainers(list)
	assert(list)
	assert(type(list) == "table", "Expected Containers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContainer(v)
	end
end

--  
-- List of Container objects
function M.Containers(list)
	M.AssertContainers(list)
	return list
end

function M.AssertContainerInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerInstances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContainerInstance(v)
	end
end

--  
-- List of ContainerInstance objects
function M.ContainerInstances(list)
	M.AssertContainerInstances(list)
	return list
end

function M.AssertContainerDefinitions(list)
	assert(list)
	assert(type(list) == "table", "Expected ContainerDefinitions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContainerDefinition(v)
	end
end

--  
-- List of ContainerDefinition objects
function M.ContainerDefinitions(list)
	M.AssertContainerDefinitions(list)
	return list
end

function M.AssertNetworkBindings(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkBindings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNetworkBinding(v)
	end
end

--  
-- List of NetworkBinding objects
function M.NetworkBindings(list)
	M.AssertNetworkBindings(list)
	return list
end

function M.AssertPlacementStrategies(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacementStrategies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlacementStrategy(v)
	end
end

--  
-- List of PlacementStrategy objects
function M.PlacementStrategies(list)
	M.AssertPlacementStrategies(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateService
-- @param CreateServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateServiceAsync(CreateServiceRequest, cb)
	assert(CreateServiceRequest, "You must provide a CreateServiceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.CreateService",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateServiceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SubmitContainerStateChange
-- @param SubmitContainerStateChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubmitContainerStateChangeAsync(SubmitContainerStateChangeRequest, cb)
	assert(SubmitContainerStateChangeRequest, "You must provide a SubmitContainerStateChangeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.SubmitContainerStateChange",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SubmitContainerStateChangeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttributes
-- @param ListAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttributesAsync(ListAttributesRequest, cb)
	assert(ListAttributesRequest, "You must provide a ListAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCluster
-- @param CreateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SubmitTaskStateChange
-- @param SubmitTaskStateChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubmitTaskStateChangeAsync(SubmitTaskStateChangeRequest, cb)
	assert(SubmitTaskStateChangeRequest, "You must provide a SubmitTaskStateChangeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.SubmitTaskStateChange",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SubmitTaskStateChangeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTaskDefinitionFamilies
-- @param ListTaskDefinitionFamiliesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTaskDefinitionFamiliesAsync(ListTaskDefinitionFamiliesRequest, cb)
	assert(ListTaskDefinitionFamiliesRequest, "You must provide a ListTaskDefinitionFamiliesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTaskDefinitionFamilies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTaskDefinitionFamiliesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteService
-- @param DeleteServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServiceAsync(DeleteServiceRequest, cb)
	assert(DeleteServiceRequest, "You must provide a DeleteServiceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteService",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteServiceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListContainerInstances
-- @param ListContainerInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListContainerInstancesAsync(ListContainerInstancesRequest, cb)
	assert(ListContainerInstancesRequest, "You must provide a ListContainerInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListContainerInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListContainerInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeServices
-- @param DescribeServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeServicesAsync(DescribeServicesRequest, cb)
	assert(DescribeServicesRequest, "You must provide a DescribeServicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeServices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeServicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCluster
-- @param DeleteClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterAsync(DeleteClusterRequest, cb)
	assert(DeleteClusterRequest, "You must provide a DeleteClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateService
-- @param UpdateServiceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServiceAsync(UpdateServiceRequest, cb)
	assert(UpdateServiceRequest, "You must provide a UpdateServiceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateService",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServiceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListClusters
-- @param ListClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListClustersAsync(ListClustersRequest, cb)
	assert(ListClustersRequest, "You must provide a ListClustersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListClustersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterTaskDefinition
-- @param DeregisterTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTaskDefinitionAsync(DeregisterTaskDefinitionRequest, cb)
	assert(DeregisterTaskDefinitionRequest, "You must provide a DeregisterTaskDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeregisterTaskDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterTaskDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterTaskDefinition
-- @param RegisterTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTaskDefinitionAsync(RegisterTaskDefinitionRequest, cb)
	assert(RegisterTaskDefinitionRequest, "You must provide a RegisterTaskDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RegisterTaskDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterTaskDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopTask
-- @param StopTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopTaskAsync(StopTaskRequest, cb)
	assert(StopTaskRequest, "You must provide a StopTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.StopTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTaskDefinitions
-- @param ListTaskDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTaskDefinitionsAsync(ListTaskDefinitionsRequest, cb)
	assert(ListTaskDefinitionsRequest, "You must provide a ListTaskDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTaskDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTaskDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusters
-- @param DescribeClustersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClustersAsync(DescribeClustersRequest, cb)
	assert(DescribeClustersRequest, "You must provide a DescribeClustersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClustersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateContainerAgent
-- @param UpdateContainerAgentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateContainerAgentAsync(UpdateContainerAgentRequest, cb)
	assert(UpdateContainerAgentRequest, "You must provide a UpdateContainerAgentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateContainerAgent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateContainerAgentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAttributes
-- @param DeleteAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAttributesAsync(DeleteAttributesRequest, cb)
	assert(DeleteAttributesRequest, "You must provide a DeleteAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeleteAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListServices
-- @param ListServicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServicesAsync(ListServicesRequest, cb)
	assert(ListServicesRequest, "You must provide a ListServicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListServices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListServicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutAttributes
-- @param PutAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutAttributesAsync(PutAttributesRequest, cb)
	assert(PutAttributesRequest, "You must provide a PutAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.PutAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartTask
-- @param StartTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartTaskAsync(StartTaskRequest, cb)
	assert(StartTaskRequest, "You must provide a StartTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.StartTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterContainerInstance
-- @param RegisterContainerInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterContainerInstanceAsync(RegisterContainerInstanceRequest, cb)
	assert(RegisterContainerInstanceRequest, "You must provide a RegisterContainerInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RegisterContainerInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterContainerInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTaskDefinition
-- @param DescribeTaskDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTaskDefinitionAsync(DescribeTaskDefinitionRequest, cb)
	assert(DescribeTaskDefinitionRequest, "You must provide a DescribeTaskDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeTaskDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTaskDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTasks
-- @param DescribeTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTasksAsync(DescribeTasksRequest, cb)
	assert(DescribeTasksRequest, "You must provide a DescribeTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateContainerInstancesState
-- @param UpdateContainerInstancesStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateContainerInstancesStateAsync(UpdateContainerInstancesStateRequest, cb)
	assert(UpdateContainerInstancesStateRequest, "You must provide a UpdateContainerInstancesStateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.UpdateContainerInstancesState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateContainerInstancesStateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterContainerInstance
-- @param DeregisterContainerInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterContainerInstanceAsync(DeregisterContainerInstanceRequest, cb)
	assert(DeregisterContainerInstanceRequest, "You must provide a DeregisterContainerInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DeregisterContainerInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterContainerInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTasks
-- @param ListTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTasksAsync(ListTasksRequest, cb)
	assert(ListTasksRequest, "You must provide a ListTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.ListTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeContainerInstances
-- @param DescribeContainerInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeContainerInstancesAsync(DescribeContainerInstancesRequest, cb)
	assert(DescribeContainerInstancesRequest, "You must provide a DescribeContainerInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DescribeContainerInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeContainerInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RunTask
-- @param RunTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RunTaskAsync(RunTaskRequest, cb)
	assert(RunTaskRequest, "You must provide a RunTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.RunTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RunTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DiscoverPollEndpoint
-- @param DiscoverPollEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DiscoverPollEndpointAsync(DiscoverPollEndpointRequest, cb)
	assert(DiscoverPollEndpointRequest, "You must provide a DiscoverPollEndpointRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonEC2ContainerServiceV20141113.DiscoverPollEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DiscoverPollEndpointRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
