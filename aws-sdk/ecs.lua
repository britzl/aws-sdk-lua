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
-- @param _status [String] <p>The status of the service. The valid values are <code>ACTIVE</code>, <code>DRAINING</code>, or <code>INACTIVE</code>.</p>
-- @param _taskDefinition [String] <p>The task definition to use for tasks in the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- @param _pendingCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- @param _loadBalancers [LoadBalancers] <p>A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.</p>
-- @param _roleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.</p>
-- @param _placementConstraints [PlacementConstraints] <p>The placement constraints for the tasks in the service.</p>
-- @param _createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- @param _desiredCount [Integer] <p>The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
-- @param _serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- @param _clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the service.</p>
-- @param _serviceArn [String] <p>The Amazon Resource Name (ARN) that identifies the service. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the service, the AWS account ID of the service owner, the <code>service</code> namespace, and then the service name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:service/<i>my-service</i> </code>.</p>
-- @param _deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param _deployments [Deployments] <p>The current state of deployments for the service.</p>
-- @param _events [ServiceEvents] <p>The event stream for your service. A maximum of 100 of the latest events are displayed.</p>
-- @param _runningCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- @param _placementStrategy [PlacementStrategies] <p>The placement strategy that determines how tasks for the service are placed.</p>
function M.Service(_status, _taskDefinition, _pendingCount, _loadBalancers, _roleArn, _placementConstraints, _createdAt, _desiredCount, _serviceName, _clusterArn, _serviceArn, _deploymentConfiguration, _deployments, _events, _runningCount, _placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["status"] = _status,
		["taskDefinition"] = _taskDefinition,
		["pendingCount"] = _pendingCount,
		["loadBalancers"] = _loadBalancers,
		["roleArn"] = _roleArn,
		["placementConstraints"] = _placementConstraints,
		["createdAt"] = _createdAt,
		["desiredCount"] = _desiredCount,
		["serviceName"] = _serviceName,
		["clusterArn"] = _clusterArn,
		["serviceArn"] = _serviceArn,
		["deploymentConfiguration"] = _deploymentConfiguration,
		["deployments"] = _deployments,
		["events"] = _events,
		["runningCount"] = _runningCount,
		["placementStrategy"] = _placementStrategy,
	}
	asserts.AssertService(t)
	return t
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
-- @param _attributes [Attributes] <p>A list of attribute objects that were successfully deleted from your resource.</p>
function M.DeleteAttributesResponse(_attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesResponse")
	local t = { 
		["attributes"] = _attributes,
	}
	asserts.AssertDeleteAttributesResponse(t)
	return t
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
-- @param _cluster [Cluster] <p>The full description of the deleted cluster.</p>
function M.DeleteClusterResponse(_cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResponse")
	local t = { 
		["cluster"] = _cluster,
	}
	asserts.AssertDeleteClusterResponse(t)
	return t
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
-- @param _sourceVolume [String] <p>The name of the volume to mount.</p>
-- @param _readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- @param _containerPath [String] <p>The path on the container to mount the host volume at.</p>
function M.MountPoint(_sourceVolume, _readOnly, _containerPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MountPoint")
	local t = { 
		["sourceVolume"] = _sourceVolume,
		["readOnly"] = _readOnly,
		["containerPath"] = _containerPath,
	}
	asserts.AssertMountPoint(t)
	return t
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
-- @param _host [HostVolumeProperties] <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- @param _name [String] <p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This name is referenced in the <code>sourceVolume</code> parameter of container definition <code>mountPoints</code>.</p>
function M.Volume(_host, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Volume")
	local t = { 
		["host"] = _host,
		["name"] = _name,
	}
	asserts.AssertVolume(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) entries for the container instance on which you would like to update the Amazon ECS container agent.</p>
-- Required parameter: containerInstance
function M.UpdateContainerAgentRequest(_cluster, _containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerAgentRequest")
	local t = { 
		["cluster"] = _cluster,
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertUpdateContainerAgentRequest(t)
	return t
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
function M.ServiceNotActiveException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotActiveException")
	local t = { 
	}
	asserts.AssertServiceNotActiveException(t)
	return t
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
function M.AttributeLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeLimitExceededException")
	local t = { 
	}
	asserts.AssertAttributeLimitExceededException(t)
	return t
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
-- @param _reason [String] <p>The reason for the failure.</p>
-- @param _arn [String] <p>The Amazon Resource Name (ARN) of the failed resource.</p>
function M.Failure(_reason, _arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Failure")
	local t = { 
		["reason"] = _reason,
		["arn"] = _arn,
	}
	asserts.AssertFailure(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _attributes [Attributes] <p>The attributes to apply to your resource. You can specify up to 10 custom attributes per resource. You can specify up to 10 attributes in a single call.</p>
-- Required parameter: attributes
function M.PutAttributesRequest(_cluster, _attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesRequest")
	local t = { 
		["cluster"] = _cluster,
		["attributes"] = _attributes,
	}
	asserts.AssertPutAttributesRequest(t)
	return t
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
-- @param _instanceIdentityDocument [String] <p>The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/document/</code> </p>
-- @param _instanceIdentityDocumentSignature [String] <p>The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/signature/</code> </p>
-- @param _containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance (if it was previously registered).</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _attributes [Attributes] <p>The container instance attributes that this container instance supports.</p>
-- @param _versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- @param _totalResources [Resources] <p>The resources available on the instance.</p>
function M.RegisterContainerInstanceRequest(_instanceIdentityDocument, _instanceIdentityDocumentSignature, _containerInstanceArn, _cluster, _attributes, _versionInfo, _totalResources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterContainerInstanceRequest")
	local t = { 
		["instanceIdentityDocument"] = _instanceIdentityDocument,
		["instanceIdentityDocumentSignature"] = _instanceIdentityDocumentSignature,
		["containerInstanceArn"] = _containerInstanceArn,
		["cluster"] = _cluster,
		["attributes"] = _attributes,
		["versionInfo"] = _versionInfo,
		["totalResources"] = _totalResources,
	}
	asserts.AssertRegisterContainerInstanceRequest(t)
	return t
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
function M.ServiceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotFoundException")
	local t = { 
	}
	asserts.AssertServiceNotFoundException(t)
	return t
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
-- @param _containerInstance [ContainerInstance] <p>The container instance that was registered.</p>
function M.RegisterContainerInstanceResponse(_containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterContainerInstanceResponse")
	local t = { 
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertRegisterContainerInstanceResponse(t)
	return t
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
-- @param _containerInstance [ContainerInstance] <p>The container instance for which the container agent was updated.</p>
function M.UpdateContainerAgentResponse(_containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerAgentResponse")
	local t = { 
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertUpdateContainerAgentResponse(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
-- Required parameter: cluster
function M.DeleteClusterRequest(_cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterRequest")
	local t = { 
		["cluster"] = _cluster,
	}
	asserts.AssertDeleteClusterRequest(t)
	return t
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
-- @param _taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- @param _group [String] <p>The name of the task group associated with the task.</p>
-- @param _overrides [TaskOverride] <p>One or more container overrides.</p>
-- @param _lastStatus [String] <p>The last known status of the task.</p>
-- @param _containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instances that host the task.</p>
-- @param _createdAt [Timestamp] <p>The Unix timestamp for when the task was created (the task entered the <code>PENDING</code> state).</p>
-- @param _version [Long] <p>The version counter for the task. Every time a task experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS task state with CloudWatch events, you can compare the version of a task reported by the Amazon ECS APIs with the version reported in CloudWatch events for the task (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- @param _clusterArn [String] <p>The Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- @param _startedAt [Timestamp] <p>The Unix timestamp for when the task was started (the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state).</p>
-- @param _desiredStatus [String] <p>The desired status of the task.</p>
-- @param _stoppedReason [String] <p>The reason the task was stopped.</p>
-- @param _taskDefinitionArn [String] <p>The Amazon Resource Name (ARN) of the task definition that creates the task.</p>
-- @param _startedBy [String] <p>The tag specified when a task is started. If the task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param _containers [Containers] <p>The containers associated with the task.</p>
-- @param _stoppedAt [Timestamp] <p>The Unix timestamp for when the task was stopped (the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>
function M.Task(_taskArn, _group, _overrides, _lastStatus, _containerInstanceArn, _createdAt, _version, _clusterArn, _startedAt, _desiredStatus, _stoppedReason, _taskDefinitionArn, _startedBy, _containers, _stoppedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Task")
	local t = { 
		["taskArn"] = _taskArn,
		["group"] = _group,
		["overrides"] = _overrides,
		["lastStatus"] = _lastStatus,
		["containerInstanceArn"] = _containerInstanceArn,
		["createdAt"] = _createdAt,
		["version"] = _version,
		["clusterArn"] = _clusterArn,
		["startedAt"] = _startedAt,
		["desiredStatus"] = _desiredStatus,
		["stoppedReason"] = _stoppedReason,
		["taskDefinitionArn"] = _taskDefinitionArn,
		["startedBy"] = _startedBy,
		["containers"] = _containers,
		["stoppedAt"] = _stoppedAt,
	}
	asserts.AssertTask(t)
	return t
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
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
-- @param _tasks [Tasks] <p>The list of tasks.</p>
function M.DescribeTasksResponse(_failures, _tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTasksResponse")
	local t = { 
		["failures"] = _failures,
		["tasks"] = _tasks,
	}
	asserts.AssertDescribeTasksResponse(t)
	return t
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
-- @param _containerInstance [ContainerInstance] <p>The container instance that was deregistered.</p>
function M.DeregisterContainerInstanceResponse(_containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterContainerInstanceResponse")
	local t = { 
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertDeregisterContainerInstanceResponse(t)
	return t
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
-- @param _service [Service] <p>The full description of the deleted service.</p>
function M.DeleteServiceResponse(_service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceResponse")
	local t = { 
		["service"] = _service,
	}
	asserts.AssertDeleteServiceResponse(t)
	return t
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
-- @param _familyPrefix [String] <p>The <code>familyPrefix</code> is a string that is used to filter the results of <code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>, only task definition family names that begin with the <code>familyPrefix</code> string are returned.</p>
-- @param _status [TaskDefinitionFamilyStatus] <p>The task definition family status with which to filter the <code>ListTaskDefinitionFamilies</code> results. By default, both <code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed. If this parameter is set to <code>ACTIVE</code>, only task definition families that have an <code>ACTIVE</code> task definition revision are returned. If this parameter is set to <code>INACTIVE</code>, only task definition families that do not have any <code>ACTIVE</code> task definition revisions are returned. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitionFamilies</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _maxResults [BoxedInteger] <p>The maximum number of task definition family results returned by <code>ListTaskDefinitionFamilies</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitionFamilies</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitionFamilies</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListTaskDefinitionFamiliesRequest(_familyPrefix, _status, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionFamiliesRequest")
	local t = { 
		["familyPrefix"] = _familyPrefix,
		["status"] = _status,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListTaskDefinitionFamiliesRequest(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListContainerInstances</code> request. When the results of a <code>ListContainerInstances</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _containerInstanceArns [StringList] <p>The list of container instances with full Amazon Resource Name (ARN) entries for each container instance associated with the specified cluster.</p>
function M.ListContainerInstancesResponse(_nextToken, _containerInstanceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListContainerInstancesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["containerInstanceArns"] = _containerInstanceArns,
	}
	asserts.AssertListContainerInstancesResponse(t)
	return t
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
-- @param _hostname [String] <p>The hostname to use in the <code>/etc/hosts</code> entry.</p>
-- @param _ipAddress [String] <p>The IP address to use in the <code>/etc/hosts</code> entry.</p>
-- Required parameter: hostname
-- Required parameter: ipAddress
function M.HostEntry(_hostname, _ipAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostEntry")
	local t = { 
		["hostname"] = _hostname,
		["ipAddress"] = _ipAddress,
	}
	asserts.AssertHostEntry(t)
	return t
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
-- @param _message [String] <p>The event message.</p>
-- @param _id [String] <p>The ID string of the event.</p>
-- @param _createdAt [Timestamp] <p>The Unix timestamp for when the event was triggered.</p>
function M.ServiceEvent(_message, _id, _createdAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceEvent")
	local t = { 
		["message"] = _message,
		["id"] = _id,
		["createdAt"] = _createdAt,
	}
	asserts.AssertServiceEvent(t)
	return t
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
-- @param _memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.</p>
-- @param _name [String] <p>The name of the container that receives the override. This parameter is required if any override is specified.</p>
-- @param _environment [EnvironmentVariables] <p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name.</p>
-- @param _command [StringList] <p>The command to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.</p>
-- @param _memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.</p>
-- @param _cpu [BoxedInteger] <p>The number of <code>cpu</code> units reserved for the container, instead of the default value from the task definition. You must also specify a container name.</p>
function M.ContainerOverride(_memoryReservation, _name, _environment, _command, _memory, _cpu, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerOverride")
	local t = { 
		["memoryReservation"] = _memoryReservation,
		["name"] = _name,
		["environment"] = _environment,
		["command"] = _command,
		["memory"] = _memory,
		["cpu"] = _cpu,
	}
	asserts.AssertContainerOverride(t)
	return t
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
-- @param _hostname [String] <p>The hostname to use for your container. This parameter maps to <code>Hostname</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--hostname</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _links [StringList] <p>The <code>link</code> parameter allows containers to communicate with each other without the need for port mappings, using the <code>name</code> parameter and optionally, an <code>alias</code> for the link. This construct is analogous to <code>name:alias</code> in Docker links. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed for each <code>name</code> and <code>alias</code>. For more information on linking Docker containers, see <a href="https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/">https://docs.docker.com/engine/userguide/networking/default_network/dockerlinks/</a>. This parameter maps to <code>Links</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--link</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.</p> </important>
-- @param _image [String] <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <ul> <li> <p>Images in Amazon ECR repositories use the full registry and repository URI (for example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;</code>). </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>
-- @param _memoryReservation [BoxedInteger] <p>The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit; however, your container can consume more memory when it needs to, up to either the hard limit specified with the <code>memory</code> parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to <code>MemoryReservation</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory-reservation</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a <code>memoryReservation</code> of 128 MiB, and a <code>memory</code> hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed.</p>
-- @param _workingDirectory [String] <p>The working directory in which to run commands inside the container. This parameter maps to <code>WorkingDir</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--workdir</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _disableNetworking [BoxedBoolean] <p>When this parameter is true, networking is disabled within the container. This parameter maps to <code>NetworkDisabled</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a>.</p>
-- @param _environment [EnvironmentVariables] <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>We do not recommend using plain text environment variables for sensitive information, such as credential data.</p> </important>
-- @param _memory [BoxedInteger] <p>The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <p>You must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in container definitions. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed; otherwise, the value of <code>memory</code> is used.</p> <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. </p>
-- @param _extraHosts [HostEntryList] <p>A list of hostnames and IP address mappings to append to the <code>/etc/hosts</code> file on the container. This parameter maps to <code>ExtraHosts</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--add-host</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _privileged [BoxedBoolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _volumesFrom [VolumeFromList] <p>Data volumes to mount from another container. This parameter maps to <code>VolumesFrom</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volumes-from</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _dnsSearchDomains [StringList] <p>A list of DNS search domains that are presented to the container. This parameter maps to <code>DnsSearch</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns-search</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _readonlyRootFilesystem [BoxedBoolean] <p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--read-only</code> option to <code>docker run</code>.</p>
-- @param _logConfiguration [LogConfiguration] <p>The log configuration specification for the container. This parameter maps to <code>LogConfig</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure logging drivers</a> in the Docker documentation.</p> <note> <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type). Additional log drivers may be available in future releases of the Amazon ECS container agent.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p> <note> <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that instance can use these log configuration options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- @param _dockerSecurityOptions [StringList] <p>A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This parameter maps to <code>SecurityOpt</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--security-opt</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>The Amazon ECS container agent running on a container instance must register with the <code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code> environment variables before containers placed on that instance can use these security options. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </note>
-- @param _entryPoint [StringList] <important> <p>Early versions of the Amazon ECS container agent do not properly handle <code>entryPoint</code> parameters. If you have problems using <code>entryPoint</code>, update your container agent or enter your commands and arguments as <code>command</code> array items instead.</p> </important> <p>The entry point that is passed to the container. This parameter maps to <code>Entrypoint</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--entrypoint</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#entrypoint">https://docs.docker.com/engine/reference/builder/#entrypoint</a>.</p>
-- @param _user [String] <p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _mountPoints [MountPointList] <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _name [String] <p>The name of a container. If you are linking multiple containers together in a task definition, the <code>name</code> of one container can be entered in the <code>links</code> of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. This parameter maps to <code>name</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--name</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. </p>
-- @param _dockerLabels [DockerLabelsMap] <p>A key/value map of labels to add to the container. This parameter maps to <code>Labels</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--label</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- @param _dnsServers [StringList] <p>A list of DNS servers that are presented to the container. This parameter maps to <code>Dns</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--dns</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- @param _portMappings [PortMappingList] <p>The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic. This parameter maps to <code>PortBindings</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--publish</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. If the network mode of a task definition is set to <code>none</code>, then you cannot specify port mappings. If the network mode of a task definition is set to <code>host</code>, then host ports must either be undefined or they must match the container port in the port mapping.</p> <note> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <b>Network Bindings</b> section of a container description of a selected task in the Amazon ECS console, or the <code>networkBindings</code> section <a>DescribeTasks</a> responses.</p> </note>
-- @param _command [StringList] <p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#cmd">https://docs.docker.com/engine/reference/builder/#cmd</a>.</p>
-- @param _cpu [Integer] <p>The number of <code>cpu</code> units reserved for the container. A container instance has 1,024 <code>cpu</code> units for every CPU core. This parameter specifies the minimum amount of CPU to reserve for a container, and containers share unallocated CPU units with other containers on the instance with the same ratio as their allocated amount. This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <note> <p>You can determine the number of CPU units that are available per EC2 instance type by multiplying the vCPUs listed for that instance type on the <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instances</a> detail page by 1,024.</p> </note> <p>For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units.</p> <p>The Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <a href="https://docs.docker.com/engine/reference/run/#cpu-share-constraint">CPU share constraint</a> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2; however, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:</p> <ul> <li> <p> <b>Agent versions less than or equal to 1.1.0:</b> Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to 2 CPU shares.</p> </li> <li> <p> <b>Agent versions greater than or equal to 1.2.0:</b> Null, zero, and CPU values of 1 are passed to Docker as 2.</p> </li> </ul>
-- @param _essential [BoxedBoolean] <p>If the <code>essential</code> parameter of a container is marked as <code>true</code>, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the <code>essential</code> parameter of a container is marked as <code>false</code>, then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential.</p> <p>All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html">Application Architecture</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _ulimits [UlimitList] <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Valid naming values are displayed in the <a>Ulimit</a> data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
function M.ContainerDefinition(_hostname, _links, _image, _memoryReservation, _workingDirectory, _disableNetworking, _environment, _memory, _extraHosts, _privileged, _volumesFrom, _dnsSearchDomains, _readonlyRootFilesystem, _logConfiguration, _dockerSecurityOptions, _entryPoint, _user, _mountPoints, _name, _dockerLabels, _dnsServers, _portMappings, _command, _cpu, _essential, _ulimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerDefinition")
	local t = { 
		["hostname"] = _hostname,
		["links"] = _links,
		["image"] = _image,
		["memoryReservation"] = _memoryReservation,
		["workingDirectory"] = _workingDirectory,
		["disableNetworking"] = _disableNetworking,
		["environment"] = _environment,
		["memory"] = _memory,
		["extraHosts"] = _extraHosts,
		["privileged"] = _privileged,
		["volumesFrom"] = _volumesFrom,
		["dnsSearchDomains"] = _dnsSearchDomains,
		["readonlyRootFilesystem"] = _readonlyRootFilesystem,
		["logConfiguration"] = _logConfiguration,
		["dockerSecurityOptions"] = _dockerSecurityOptions,
		["entryPoint"] = _entryPoint,
		["user"] = _user,
		["mountPoints"] = _mountPoints,
		["name"] = _name,
		["dockerLabels"] = _dockerLabels,
		["dnsServers"] = _dnsServers,
		["portMappings"] = _portMappings,
		["command"] = _command,
		["cpu"] = _cpu,
		["essential"] = _essential,
		["ulimits"] = _ulimits,
	}
	asserts.AssertContainerDefinition(t)
	return t
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
-- @param _expression [String] <p>A cluster query language expression to apply to the constraint. Note you cannot specify an expression if the constraint type is <code>distinctInstance</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _type [PlacementConstraintType] <p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in a particular group is running on a different container instance. Use <code>memberOf</code> to restrict selection to a group of valid candidates. Note that <code>distinctInstance</code> is not supported in task definitions.</p>
function M.PlacementConstraint(_expression, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacementConstraint")
	local t = { 
		["expression"] = _expression,
		["type"] = _type,
	}
	asserts.AssertPlacementConstraint(t)
	return t
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
-- @param _taskDefinition [TaskDefinition] <p>The full task definition description.</p>
function M.DescribeTaskDefinitionResponse(_taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertDescribeTaskDefinitionResponse(t)
	return t
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
-- @param _field [String] <p>The field to apply the placement strategy against. For the <code>spread</code> placement strategy, valid values are <code>instanceId</code> (or <code>host</code>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>. For the <code>binpack</code> placement strategy, valid values are <code>cpu</code> and <code>memory</code>. For the <code>random</code> placement strategy, this field is not used.</p>
-- @param _type [PlacementStrategyType] <p>The type of placement strategy. The <code>random</code> placement strategy randomly places tasks on available candidates. The <code>spread</code> placement strategy spreads placement across available candidates evenly based on the <code>field</code> parameter. The <code>binpack</code> strategy places tasks on available candidates that have the least available amount of the resource that is specified with the <code>field</code> parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task).</p>
function M.PlacementStrategy(_field, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlacementStrategy")
	local t = { 
		["field"] = _field,
		["type"] = _type,
	}
	asserts.AssertPlacementStrategy(t)
	return t
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
-- @param _clusters [StringList] <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.</p>
function M.DescribeClustersRequest(_clusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersRequest")
	local t = { 
		["clusters"] = _clusters,
	}
	asserts.AssertDescribeClustersRequest(t)
	return t
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
-- @param _softLimit [Integer] <p>The soft limit for the ulimit type.</p>
-- @param _name [UlimitName] <p>The <code>type</code> of the <code>ulimit</code>.</p>
-- @param _hardLimit [Integer] <p>The hard limit for the ulimit type.</p>
-- Required parameter: name
-- Required parameter: softLimit
-- Required parameter: hardLimit
function M.Ulimit(_softLimit, _name, _hardLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Ulimit")
	local t = { 
		["softLimit"] = _softLimit,
		["name"] = _name,
		["hardLimit"] = _hardLimit,
	}
	asserts.AssertUlimit(t)
	return t
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
-- @param _message [String] 
function M.ServerException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServerException(t)
	return t
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
-- @param _name [String] <p>The name of the key value pair. For environment variables, this is the name of the environment variable.</p>
-- @param _value [String] <p>The value of the key value pair. For environment variables, this is the value of the environment variable.</p>
function M.KeyValuePair(_name, _value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyValuePair")
	local t = { 
		["name"] = _name,
		["value"] = _value,
	}
	asserts.AssertKeyValuePair(t)
	return t
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
-- @param _taskDefinition [String] <p>The <code>family</code> for the latest <code>ACTIVE</code> revision, <code>family</code> and <code>revision</code> (<code>family:revision</code>) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.</p>
-- Required parameter: taskDefinition
function M.DescribeTaskDefinitionRequest(_taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTaskDefinitionRequest")
	local t = { 
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertDescribeTaskDefinitionRequest(t)
	return t
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
-- @param _status [String] <p>The status of the state change request.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
-- @param _reason [String] <p>The reason for the state change request.</p>
-- @param _task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task in the state change request.</p>
function M.SubmitTaskStateChangeRequest(_status, _cluster, _reason, _task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitTaskStateChangeRequest")
	local t = { 
		["status"] = _status,
		["cluster"] = _cluster,
		["reason"] = _reason,
		["task"] = _task,
	}
	asserts.AssertSubmitTaskStateChangeRequest(t)
	return t
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
-- @param _task [Task] <p>The task that was stopped.</p>
function M.StopTaskResponse(_task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopTaskResponse")
	local t = { 
		["task"] = _task,
	}
	asserts.AssertStopTaskResponse(t)
	return t
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
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
-- @param _containerInstances [ContainerInstances] <p>The list of container instances.</p>
function M.DescribeContainerInstancesResponse(_failures, _containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeContainerInstancesResponse")
	local t = { 
		["failures"] = _failures,
		["containerInstances"] = _containerInstances,
	}
	asserts.AssertDescribeContainerInstancesResponse(t)
	return t
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
-- @param _cluster [Cluster] <p>The full description of your new cluster.</p>
function M.CreateClusterResponse(_cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResponse")
	local t = { 
		["cluster"] = _cluster,
	}
	asserts.AssertCreateClusterResponse(t)
	return t
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
function M.TargetNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetNotFoundException")
	local t = { 
	}
	asserts.AssertTargetNotFoundException(t)
	return t
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
-- @param _service [Service] <p>The full description of your service following the create call.</p>
function M.CreateServiceResponse(_service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceResponse")
	local t = { 
		["service"] = _service,
	}
	asserts.AssertCreateServiceResponse(t)
	return t
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
-- @param _familyPrefix [String] <p>The full family name with which to filter the <code>ListTaskDefinitions</code> results. Specifying a <code>familyPrefix</code> limits the listed task definitions to task definition revisions that belong to that family.</p>
-- @param _status [TaskDefinitionStatus] <p>The task definition status with which to filter the <code>ListTaskDefinitions</code> results. By default, only <code>ACTIVE</code> task definitions are listed. By setting this parameter to <code>INACTIVE</code>, you can view task definitions that are <code>INACTIVE</code> as long as an active task or service still references them. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTaskDefinitions</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _maxResults [BoxedInteger] <p>The maximum number of task definition results returned by <code>ListTaskDefinitions</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param _sort [SortOrder] <p>The order in which to sort the results. Valid values are <code>ASC</code> and <code>DESC</code>. By default (<code>ASC</code>), task definitions are listed lexicographically by family name and in ascending numerical order by revision so that the newest task definitions in a family are listed last. Setting this parameter to <code>DESC</code> reverses the sort order on family name and revision so that the newest task definitions in a family are listed first.</p>
function M.ListTaskDefinitionsRequest(_familyPrefix, _status, _nextToken, _maxResults, _sort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionsRequest")
	local t = { 
		["familyPrefix"] = _familyPrefix,
		["status"] = _status,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["sort"] = _sort,
	}
	asserts.AssertListTaskDefinitionsRequest(t)
	return t
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
-- @param _maximumPercent [BoxedInteger] <p>The upper limit (as a percentage of the service's <code>desiredCount</code>) of the number of tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state in a service during a deployment. The maximum number of tasks during a deployment is the <code>desiredCount</code> multiplied by <code>maximumPercent</code>/100, rounded down to the nearest integer value.</p>
-- @param _minimumHealthyPercent [BoxedInteger] <p>The lower limit (as a percentage of the service's <code>desiredCount</code>) of the number of running tasks that must remain in the <code>RUNNING</code> state in a service during a deployment. The minimum healthy tasks during a deployment is the <code>desiredCount</code> multiplied by <code>minimumHealthyPercent</code>/100, rounded up to the nearest integer value.</p>
function M.DeploymentConfiguration(_maximumPercent, _minimumHealthyPercent, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeploymentConfiguration")
	local t = { 
		["maximumPercent"] = _maximumPercent,
		["minimumHealthyPercent"] = _minimumHealthyPercent,
	}
	asserts.AssertDeploymentConfiguration(t)
	return t
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
-- @param _loadBalancers [LoadBalancers] <p>A load balancer object representing the load balancer to use with your service. Currently, you are limited to one load balancer or target group per service. After you create a service, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable.</p> <p>For Elastic Load Balancing Classic load balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here.</p> <p>For Elastic Load Balancing Application load balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here.</p>
-- @param _placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time). </p>
-- @param _desiredCount [BoxedInteger] <p>The number of instantiations of the specified task definition to place and keep running on your cluster.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _serviceName [String] <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a region or across multiple regions.</p>
-- @param _role [String] <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service. If you specify the <code>role</code> parameter, you must also specify a load balancer object with the <code>loadBalancers</code> parameter.</p> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly Names and Paths</a> in the <i>IAM User Guide</i>.</p>
-- @param _clientToken [String] <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.</p>
-- @param _deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param _taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- @param _placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules per service.</p>
-- Required parameter: serviceName
-- Required parameter: taskDefinition
-- Required parameter: desiredCount
function M.CreateServiceRequest(_loadBalancers, _placementConstraints, _desiredCount, _cluster, _serviceName, _role, _clientToken, _deploymentConfiguration, _taskDefinition, _placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceRequest")
	local t = { 
		["loadBalancers"] = _loadBalancers,
		["placementConstraints"] = _placementConstraints,
		["desiredCount"] = _desiredCount,
		["cluster"] = _cluster,
		["serviceName"] = _serviceName,
		["role"] = _role,
		["clientToken"] = _clientToken,
		["deploymentConfiguration"] = _deploymentConfiguration,
		["taskDefinition"] = _taskDefinition,
		["placementStrategy"] = _placementStrategy,
	}
	asserts.AssertCreateServiceRequest(t)
	return t
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
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
-- @param _tasks [Tasks] <p>A full description of the tasks that were started. Each task that was successfully placed on your container instances are described here.</p>
function M.StartTaskResponse(_failures, _tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTaskResponse")
	local t = { 
		["failures"] = _failures,
		["tasks"] = _tasks,
	}
	asserts.AssertStartTaskResponse(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _clusterArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each cluster associated with your account.</p>
function M.ListClustersResponse(_nextToken, _clusterArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["clusterArns"] = _clusterArns,
	}
	asserts.AssertListClustersResponse(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTasks</code> request. When the results of a <code>ListTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _taskArns [StringList] <p>The list of task Amazon Resource Name (ARN) entries for the <code>ListTasks</code> request.</p>
function M.ListTasksResponse(_nextToken, _taskArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTasksResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["taskArns"] = _taskArns,
	}
	asserts.AssertListTasksResponse(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _deploymentConfiguration [DeploymentConfiguration] <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-- @param _taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.</p>
-- @param _service [String] <p>The name of the service to update.</p>
-- @param _desiredCount [BoxedInteger] <p>The number of instantiations of the task to place and keep running in your service.</p>
-- Required parameter: service
function M.UpdateServiceRequest(_cluster, _deploymentConfiguration, _taskDefinition, _service, _desiredCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceRequest")
	local t = { 
		["cluster"] = _cluster,
		["deploymentConfiguration"] = _deploymentConfiguration,
		["taskDefinition"] = _taskDefinition,
		["service"] = _service,
		["desiredCount"] = _desiredCount,
	}
	asserts.AssertUpdateServiceRequest(t)
	return t
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
-- @param _status [String] <p>The status of the state change request.</p>
-- @param _containerName [String] <p>The name of the container.</p>
-- @param _task [String] <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
-- @param _networkBindings [NetworkBindings] <p>The network bindings of the container.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container.</p>
-- @param _reason [String] <p>The reason for the state change request.</p>
-- @param _exitCode [BoxedInteger] <p>The exit code returned for the state change request.</p>
function M.SubmitContainerStateChangeRequest(_status, _containerName, _task, _networkBindings, _cluster, _reason, _exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitContainerStateChangeRequest")
	local t = { 
		["status"] = _status,
		["containerName"] = _containerName,
		["task"] = _task,
		["networkBindings"] = _networkBindings,
		["cluster"] = _cluster,
		["reason"] = _reason,
		["exitCode"] = _exitCode,
	}
	asserts.AssertSubmitContainerStateChangeRequest(t)
	return t
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
function M.ClusterContainsContainerInstancesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterContainsContainerInstancesException")
	local t = { 
	}
	asserts.AssertClusterContainsContainerInstancesException(t)
	return t
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
function M.ClusterContainsServicesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterContainsServicesException")
	local t = { 
	}
	asserts.AssertClusterContainsServicesException(t)
	return t
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
-- @param _services [StringList] <p>A list of services to describe. You may specify up to 10 services to describe in a single operation.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- Required parameter: services
function M.DescribeServicesRequest(_services, _cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesRequest")
	local t = { 
		["services"] = _services,
		["cluster"] = _cluster,
	}
	asserts.AssertDescribeServicesRequest(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _attributes [Attributes] <p>The attributes to delete from your resource. You can specify up to 10 attributes per request. For custom attributes, specify the attribute name and target ID, but do not specify the value. If you specify the target ID using the short form, you must also specify the target type.</p>
-- Required parameter: attributes
function M.DeleteAttributesRequest(_cluster, _attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAttributesRequest")
	local t = { 
		["cluster"] = _cluster,
		["attributes"] = _attributes,
	}
	asserts.AssertDeleteAttributesRequest(t)
	return t
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
function M.NoUpdateAvailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoUpdateAvailableException")
	local t = { 
	}
	asserts.AssertNoUpdateAvailableException(t)
	return t
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
-- @param _acknowledgment [String] <p>Acknowledgement of the state change.</p>
function M.SubmitTaskStateChangeResponse(_acknowledgment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitTaskStateChangeResponse")
	local t = { 
		["acknowledgment"] = _acknowledgment,
	}
	asserts.AssertSubmitTaskStateChangeResponse(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListClusters</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When this parameter is used, <code>ListClusters</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListClustersRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClustersRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListClustersRequest(t)
	return t
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
-- @param _clusters [Clusters] <p>The list of clusters.</p>
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
function M.DescribeClustersResponse(_clusters, _failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersResponse")
	local t = { 
		["clusters"] = _clusters,
		["failures"] = _failures,
	}
	asserts.AssertDescribeClustersResponse(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitions</code> request. When the results of a <code>ListTaskDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _taskDefinitionArns [StringList] <p>The list of task definition Amazon Resource Name (ARN) entries for the <code>ListTaskDefinitions</code> request.</p>
function M.ListTaskDefinitionsResponse(_nextToken, _taskDefinitionArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["taskDefinitionArns"] = _taskDefinitionArns,
	}
	asserts.AssertListTaskDefinitionsResponse(t)
	return t
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
-- @param _status [String] <p>The status of the container instance. The valid values are <code>ACTIVE</code>, <code>INACTIVE</code>, or <code>DRAINING</code>. <code>ACTIVE</code> indicates that the container instance can accept tasks. <code>DRAINING</code> indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html">Container Instance Draining</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _registeredAt [Timestamp] <p>The Unix timestamp for when the container instance was registered.</p>
-- @param _registeredResources [Resources] <p>For most resource types, this parameter describes the registered resources on the container instance that are in use by current tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.</p>
-- @param _ec2InstanceId [String] <p>The EC2 instance ID of the container instance.</p>
-- @param _agentConnected [Boolean] <p>This parameter returns <code>true</code> if the agent is actually connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return <code>false</code>, and instances without a connected agent cannot accept placement requests.</p>
-- @param _containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- @param _pendingTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>PENDING</code> status.</p>
-- @param _remainingResources [Resources] <p>For most resource types, this parameter describes the remaining resources of the container instance that are available for new tasks. For port resource types, this parameter describes the ports that are reserved by the Amazon ECS container agent and any containers that have reserved port mappings; any port that is not specified here is available for new tasks.</p>
-- @param _version [Long] <p>The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch events for the container instance (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>
-- @param _agentUpdateStatus [AgentUpdateStatus] <p>The status of the most recent agent update. If an update has never been requested, this value is <code>NULL</code>.</p>
-- @param _attributes [Attributes] <p>The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the <a>PutAttributes</a> operation.</p>
-- @param _versionInfo [VersionInfo] <p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>
-- @param _runningTasksCount [Integer] <p>The number of tasks on the container instance that are in the <code>RUNNING</code> status.</p>
function M.ContainerInstance(_status, _registeredAt, _registeredResources, _ec2InstanceId, _agentConnected, _containerInstanceArn, _pendingTasksCount, _remainingResources, _version, _agentUpdateStatus, _attributes, _versionInfo, _runningTasksCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContainerInstance")
	local t = { 
		["status"] = _status,
		["registeredAt"] = _registeredAt,
		["registeredResources"] = _registeredResources,
		["ec2InstanceId"] = _ec2InstanceId,
		["agentConnected"] = _agentConnected,
		["containerInstanceArn"] = _containerInstanceArn,
		["pendingTasksCount"] = _pendingTasksCount,
		["remainingResources"] = _remainingResources,
		["version"] = _version,
		["agentUpdateStatus"] = _agentUpdateStatus,
		["attributes"] = _attributes,
		["versionInfo"] = _versionInfo,
		["runningTasksCount"] = _runningTasksCount,
	}
	asserts.AssertContainerInstance(t)
	return t
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
-- @param _endpoint [String] <p>The endpoint for the Amazon ECS agent to poll.</p>
-- @param _telemetryEndpoint [String] <p>The telemetry endpoint for the Amazon ECS agent.</p>
function M.DiscoverPollEndpointResponse(_endpoint, _telemetryEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverPollEndpointResponse")
	local t = { 
		["endpoint"] = _endpoint,
		["telemetryEndpoint"] = _telemetryEndpoint,
	}
	asserts.AssertDiscoverPollEndpointResponse(t)
	return t
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
-- @param _taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a <code>revision</code>.</p>
-- Required parameter: taskDefinition
function M.DeregisterTaskDefinitionRequest(_taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskDefinitionRequest")
	local t = { 
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertDeregisterTaskDefinitionRequest(t)
	return t
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
-- @param _acknowledgment [String] <p>Acknowledgement of the state change.</p>
function M.SubmitContainerStateChangeResponse(_acknowledgment, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubmitContainerStateChangeResponse")
	local t = { 
		["acknowledgment"] = _acknowledgment,
	}
	asserts.AssertSubmitContainerStateChangeResponse(t)
	return t
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
-- @param _service [Service] <p>The full description of your service following the update call.</p>
function M.UpdateServiceResponse(_service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceResponse")
	local t = { 
		["service"] = _service,
	}
	asserts.AssertUpdateServiceResponse(t)
	return t
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
function M.UpdateInProgressException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateInProgressException")
	local t = { 
	}
	asserts.AssertUpdateInProgressException(t)
	return t
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
-- @param _attributes [Attributes] <p>A list of attribute objects that meet the criteria of the request.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListAttributes</code> request. When the results of a <code>ListAttributes</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
function M.ListAttributesResponse(_attributes, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttributesResponse")
	local t = { 
		["attributes"] = _attributes,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListAttributesResponse(t)
	return t
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
-- @param _family [String] <p>The name of the family with which to filter the <code>ListTasks</code> results. Specifying a <code>family</code> limits the results to tasks that belong to that family.</p>
-- @param _maxResults [BoxedInteger] <p>The maximum number of task results returned by <code>ListTasks</code> in paginated output. When this parameter is used, <code>ListTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTasks</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTasks</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param _startedBy [String] <p>The <code>startedBy</code> value with which to filter the task results. Specifying a <code>startedBy</code> value limits the results to tasks that were started with that value.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _serviceName [String] <p>The name of the service with which to filter the <code>ListTasks</code> results. Specifying a <code>serviceName</code> limits the results to tasks that belong to that service.</p>
-- @param _desiredStatus [DesiredStatus] <p>The task desired status with which to filter the <code>ListTasks</code> results. Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to tasks that ECS has set the desired status to <code>STOPPED</code>, which can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is <code>RUNNING</code>, which shows tasks that ECS has set the desired status to <code>RUNNING</code>.</p> <note> <p>Although you can filter results based on a desired status of <code>PENDING</code>, this will not return any results because ECS never sets the desired status of a task to that value (only a task's <code>lastStatus</code> may have a value of <code>PENDING</code>).</p> </note>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance with which to filter the <code>ListTasks</code> results. Specifying a <code>containerInstance</code> limits the results to tasks that belong to that container instance.</p>
function M.ListTasksRequest(_family, _maxResults, _startedBy, _cluster, _serviceName, _desiredStatus, _nextToken, _containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTasksRequest")
	local t = { 
		["family"] = _family,
		["maxResults"] = _maxResults,
		["startedBy"] = _startedBy,
		["cluster"] = _cluster,
		["serviceName"] = _serviceName,
		["desiredStatus"] = _desiredStatus,
		["nextToken"] = _nextToken,
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertListTasksRequest(t)
	return t
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
function M.ClusterNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundException")
	local t = { 
	}
	asserts.AssertClusterNotFoundException(t)
	return t
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
-- @param _expression [String] <p>A cluster query language expression to apply to the constraint. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _type [TaskDefinitionPlacementConstraintType] <p>The type of constraint. The <code>DistinctInstance</code> constraint ensures that each task in a particular group is running on a different container instance. The <code>MemberOf</code> constraint restricts selection to be from a group of valid candidates.</p>
function M.TaskDefinitionPlacementConstraint(_expression, _type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDefinitionPlacementConstraint")
	local t = { 
		["expression"] = _expression,
		["type"] = _type,
	}
	asserts.AssertTaskDefinitionPlacementConstraint(t)
	return t
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
-- @param _clusterName [String] <p>The name of your cluster. If you do not specify a name for your cluster, you create a cluster named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
function M.CreateClusterRequest(_clusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["clusterName"] = _clusterName,
	}
	asserts.AssertCreateClusterRequest(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs to.</p>
-- @param _containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
function M.DiscoverPollEndpointRequest(_cluster, _containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DiscoverPollEndpointRequest")
	local t = { 
		["cluster"] = _cluster,
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertDiscoverPollEndpointRequest(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListServices</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListServices</code> in paginated output. When this parameter is used, <code>ListServices</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListServices</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 10. If this parameter is not used, then <code>ListServices</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>
function M.ListServicesRequest(_cluster, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServicesRequest")
	local t = { 
		["cluster"] = _cluster,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListServicesRequest(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: containerInstances
function M.DescribeContainerInstancesRequest(_cluster, _containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeContainerInstancesRequest")
	local t = { 
		["cluster"] = _cluster,
		["containerInstances"] = _containerInstances,
	}
	asserts.AssertDescribeContainerInstancesRequest(t)
	return t
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
-- @param _status [TaskDefinitionStatus] <p>The status of the task definition.</p>
-- @param _networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>If the network mode is <code>none</code>, the containers do not have external connectivity. The default Docker network mode is <code>bridge</code>. The <code>host</code> network mode offers the highest networking performance for containers because it uses the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- @param _family [String] <p>The family of your task definition, used as the definition name.</p>
-- @param _placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for tasks. </p>
-- @param _requiresAttributes [RequiresAttributes] <p>The container instance attributes required by your task.</p>
-- @param _volumes [VolumeList] <p>The list of volumes in a task. For more information about volume definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- @param _taskDefinitionArn [String] <p>The full Amazon Resource Name (ARN) of the task definition.</p>
-- @param _containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _revision [Integer] <p>The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is <code>1</code>; each time you register a new revision of a task definition in the same family, the revision value always increases by one (even if you have deregistered previous revisions in this family).</p>
function M.TaskDefinition(_status, _networkMode, _family, _placementConstraints, _requiresAttributes, _volumes, _taskRoleArn, _taskDefinitionArn, _containerDefinitions, _revision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDefinition")
	local t = { 
		["status"] = _status,
		["networkMode"] = _networkMode,
		["family"] = _family,
		["placementConstraints"] = _placementConstraints,
		["requiresAttributes"] = _requiresAttributes,
		["volumes"] = _volumes,
		["taskRoleArn"] = _taskRoleArn,
		["taskDefinitionArn"] = _taskDefinitionArn,
		["containerDefinitions"] = _containerDefinitions,
		["revision"] = _revision,
	}
	asserts.AssertTaskDefinition(t)
	return t
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
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
-- @param _containerInstances [ContainerInstances] <p>The list of container instances.</p>
function M.UpdateContainerInstancesStateResponse(_failures, _containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerInstancesStateResponse")
	local t = { 
		["failures"] = _failures,
		["containerInstances"] = _containerInstances,
	}
	asserts.AssertUpdateContainerInstancesStateResponse(t)
	return t
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
-- @param _attributes [Attributes] <p>The attributes applied to your resource.</p>
function M.PutAttributesResponse(_attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutAttributesResponse")
	local t = { 
		["attributes"] = _attributes,
	}
	asserts.AssertPutAttributesResponse(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitionFamilies</code> request. When the results of a <code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _families [StringList] <p>The list of task definition family names that match the <code>ListTaskDefinitionFamilies</code> request.</p>
function M.ListTaskDefinitionFamiliesResponse(_nextToken, _families, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTaskDefinitionFamiliesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["families"] = _families,
	}
	asserts.AssertListTaskDefinitionFamiliesResponse(t)
	return t
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
-- @param _targetType [TargetType] <p>The type of the target with which to list attributes.</p>
-- @param _attributeValue [String] <p>The value of the attribute with which to filter results. You must also specify an attribute name to use this parameter.</p>
-- @param _attributeName [String] <p>The name of the attribute with which to filter the results. </p>
-- @param _maxResults [BoxedInteger] <p>The maximum number of cluster results returned by <code>ListAttributes</code> in paginated output. When this parameter is used, <code>ListAttributes</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListAttributes</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListAttributes</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListAttributes</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- Required parameter: targetType
function M.ListAttributesRequest(_targetType, _attributeValue, _attributeName, _maxResults, _cluster, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttributesRequest")
	local t = { 
		["targetType"] = _targetType,
		["attributeValue"] = _attributeValue,
		["attributeName"] = _attributeName,
		["maxResults"] = _maxResults,
		["cluster"] = _cluster,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListAttributesRequest(t)
	return t
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
-- @param _count [BoxedInteger] <p>The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.</p>
-- @param _group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- @param _overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- @param _placementConstraints [PlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at run time).</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param _taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to run. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- @param _placementStrategy [PlacementStrategies] <p>The placement strategy objects to use for the task. You can specify a maximum of 5 strategy rules per task.</p>
-- Required parameter: taskDefinition
function M.RunTaskRequest(_count, _group, _overrides, _placementConstraints, _cluster, _startedBy, _taskDefinition, _placementStrategy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunTaskRequest")
	local t = { 
		["count"] = _count,
		["group"] = _group,
		["overrides"] = _overrides,
		["placementConstraints"] = _placementConstraints,
		["cluster"] = _cluster,
		["startedBy"] = _startedBy,
		["taskDefinition"] = _taskDefinition,
		["placementStrategy"] = _placementStrategy,
	}
	asserts.AssertRunTaskRequest(t)
	return t
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
-- @param _sourcePath [String] <p>The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p>
function M.HostVolumeProperties(_sourcePath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostVolumeProperties")
	local t = { 
		["sourcePath"] = _sourcePath,
	}
	asserts.AssertHostVolumeProperties(t)
	return t
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
-- @param _targetType [TargetType] <p>The type of the target with which to attach the attribute. This parameter is required if you use the short form ID for a resource instead of the full Amazon Resource Name (ARN).</p>
-- @param _targetId [String] <p>The ID of the target. You can specify the short form ID for a resource or the full Amazon Resource Name (ARN).</p>
-- @param _name [String] <p>The name of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, and periods are allowed.</p>
-- @param _value [String] <p>The value of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, periods, at signs (@), forward slashes, colons, and spaces are allowed.</p>
-- Required parameter: name
function M.Attribute(_targetType, _targetId, _name, _value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["targetType"] = _targetType,
		["targetId"] = _targetId,
		["name"] = _name,
		["value"] = _value,
	}
	asserts.AssertAttribute(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to describe. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _tasks [StringList] <p>A list of up to 100 task IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: tasks
function M.DescribeTasksRequest(_cluster, _tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTasksRequest")
	local t = { 
		["cluster"] = _cluster,
		["tasks"] = _tasks,
	}
	asserts.AssertDescribeTasksRequest(t)
	return t
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
-- @param _status [String] <p>The status of the cluster. The valid values are <code>ACTIVE</code> or <code>INACTIVE</code>. <code>ACTIVE</code> indicates that you can register container instances with the cluster and the associated instances can accept tasks.</p>
-- @param _clusterName [String] <p>A user-generated string that you use to identify your cluster.</p>
-- @param _registeredContainerInstancesCount [Integer] <p>The number of container instances registered into the cluster.</p>
-- @param _pendingTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
-- @param _runningTasksCount [Integer] <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
-- @param _activeServicesCount [Integer] <p>The number of services that are running on the cluster in an <code>ACTIVE</code> state. You can view these services with <a>ListServices</a>.</p>
-- @param _clusterArn [String] <p>The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the cluster, the AWS account ID of the cluster owner, the <code>cluster</code> namespace, and then the cluster name. For example, <code>arn:aws:ecs:<i>region</i>:<i>012345678910</i>:cluster/<i>test</i> </code>..</p>
function M.Cluster(_status, _clusterName, _registeredContainerInstancesCount, _pendingTasksCount, _runningTasksCount, _activeServicesCount, _clusterArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["status"] = _status,
		["clusterName"] = _clusterName,
		["registeredContainerInstancesCount"] = _registeredContainerInstancesCount,
		["pendingTasksCount"] = _pendingTasksCount,
		["runningTasksCount"] = _runningTasksCount,
		["activeServicesCount"] = _activeServicesCount,
		["clusterArn"] = _clusterArn,
	}
	asserts.AssertCluster(t)
	return t
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
-- @param _nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListServices</code> request. When the results of a <code>ListServices</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @param _serviceArns [StringList] <p>The list of full Amazon Resource Name (ARN) entries for each service associated with the specified cluster.</p>
function M.ListServicesResponse(_nextToken, _serviceArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServicesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["serviceArns"] = _serviceArns,
	}
	asserts.AssertListServicesResponse(t)
	return t
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
-- @param _message [String] 
function M.ClientException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClientException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertClientException(t)
	return t
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
-- @param _agentVersion [String] <p>The version number of the Amazon ECS container agent.</p>
-- @param _agentHash [String] <p>The Git commit hash for the Amazon ECS container agent build on the <a href="https://github.com/aws/amazon-ecs-agent/commits/master">amazon-ecs-agent </a> GitHub repository.</p>
-- @param _dockerVersion [String] <p>The Docker version running on the container instance.</p>
function M.VersionInfo(_agentVersion, _agentHash, _dockerVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionInfo")
	local t = { 
		["agentVersion"] = _agentVersion,
		["agentHash"] = _agentHash,
		["dockerVersion"] = _dockerVersion,
	}
	asserts.AssertVersionInfo(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _reason [String] <p>An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message will appear in subsequent <a>DescribeTasks</a> API operations on this task. Up to 255 characters are allowed in this message.</p>
-- @param _task [String] <p>The task ID or full Amazon Resource Name (ARN) entry of the task to stop.</p>
-- Required parameter: task
function M.StopTaskRequest(_cluster, _reason, _task, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopTaskRequest")
	local t = { 
		["cluster"] = _cluster,
		["reason"] = _reason,
		["task"] = _task,
	}
	asserts.AssertStopTaskRequest(t)
	return t
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
-- @param _taskRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>
-- @param _containerOverrides [ContainerOverrides] <p>One or more container overrides sent to a task.</p>
function M.TaskOverride(_taskRoleArn, _containerOverrides, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskOverride")
	local t = { 
		["taskRoleArn"] = _taskRoleArn,
		["containerOverrides"] = _containerOverrides,
	}
	asserts.AssertTaskOverride(t)
	return t
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
-- @param _containerArn [String] <p>The Amazon Resource Name (ARN) of the container.</p>
-- @param _taskArn [String] <p>The Amazon Resource Name (ARN) of the task.</p>
-- @param _name [String] <p>The name of the container.</p>
-- @param _networkBindings [NetworkBindings] <p>The network bindings associated with the container.</p>
-- @param _lastStatus [String] <p>The last known status of the container.</p>
-- @param _reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- @param _exitCode [BoxedInteger] <p>The exit code returned from the container.</p>
function M.Container(_containerArn, _taskArn, _name, _networkBindings, _lastStatus, _reason, _exitCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Container")
	local t = { 
		["containerArn"] = _containerArn,
		["taskArn"] = _taskArn,
		["name"] = _name,
		["networkBindings"] = _networkBindings,
		["lastStatus"] = _lastStatus,
		["reason"] = _reason,
		["exitCode"] = _exitCode,
	}
	asserts.AssertContainer(t)
	return t
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
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
-- @param _tasks [Tasks] <p>A full description of the tasks that were run. Each task that was successfully placed on your cluster are described here.</p>
function M.RunTaskResponse(_failures, _tasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunTaskResponse")
	local t = { 
		["failures"] = _failures,
		["tasks"] = _tasks,
	}
	asserts.AssertRunTaskResponse(t)
	return t
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
-- @param _taskDefinition [TaskDefinition] <p>The full description of the deregistered task.</p>
function M.DeregisterTaskDefinitionResponse(_taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertDeregisterTaskDefinitionResponse(t)
	return t
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
-- @param _services [Services] <p>The list of services described.</p>
-- @param _failures [Failures] <p>Any failures associated with the call.</p>
function M.DescribeServicesResponse(_services, _failures, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeServicesResponse")
	local t = { 
		["services"] = _services,
		["failures"] = _failures,
	}
	asserts.AssertDescribeServicesResponse(t)
	return t
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
-- @param _taskDefinition [TaskDefinition] <p>The full description of the registered task definition.</p>
function M.RegisterTaskDefinitionResponse(_taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskDefinitionResponse")
	local t = { 
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertRegisterTaskDefinitionResponse(t)
	return t
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
-- @param _group [String] <p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>
-- @param _containerInstances [StringList] <p>The container instance IDs or full Amazon Resource Name (ARN) entries for the container instances on which you would like to place your task. You can specify up to 10 container instances.</p>
-- @param _overrides [TaskOverride] <p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster on which to start your task. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _startedBy [String] <p>An optional tag specified when a task is started. For example if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>
-- @param _taskDefinition [String] <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to start. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>
-- Required parameter: taskDefinition
-- Required parameter: containerInstances
function M.StartTaskRequest(_group, _containerInstances, _overrides, _cluster, _startedBy, _taskDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTaskRequest")
	local t = { 
		["group"] = _group,
		["containerInstances"] = _containerInstances,
		["overrides"] = _overrides,
		["cluster"] = _cluster,
		["startedBy"] = _startedBy,
		["taskDefinition"] = _taskDefinition,
	}
	asserts.AssertStartTaskRequest(t)
	return t
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
function M.MissingVersionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingVersionException")
	local t = { 
	}
	asserts.AssertMissingVersionException(t)
	return t
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
-- @param _networkMode [NetworkMode] <p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, and <code>host</code>. </p> <p>The default Docker network mode is <code>bridge</code>. If the network mode is set to <code>none</code>, you cannot specify port mappings in your container definitions, and the task's containers do not have external connectivity. The <code>host</code> network mode offers the highest networking performance for containers because they use the host network stack instead of the virtualized network stack provided by the <code>bridge</code> mode; however, exposed container ports are mapped directly to the corresponding host port, so you cannot take advantage of dynamic host port mappings or run multiple instantiations of the same task on a single container instance if port mappings are used.</p> <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network settings</a> in the <i>Docker run reference</i>.</p>
-- @param _family [String] <p>You must specify a <code>family</code> for a task definition, which allows you to track multiple versions of the same task definition. The <code>family</code> is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- @param _placementConstraints [TaskDefinitionPlacementConstraints] <p>An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at run time).</p>
-- @param _volumes [VolumeList] <p>A list of volume definitions in JSON format that containers in your task may use.</p>
-- @param _taskRoleArn [String] <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _containerDefinitions [ContainerDefinitions] <p>A list of container definitions in JSON format that describe the different containers that make up your task.</p>
-- Required parameter: family
-- Required parameter: containerDefinitions
function M.RegisterTaskDefinitionRequest(_networkMode, _family, _placementConstraints, _volumes, _taskRoleArn, _containerDefinitions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskDefinitionRequest")
	local t = { 
		["networkMode"] = _networkMode,
		["family"] = _family,
		["placementConstraints"] = _placementConstraints,
		["volumes"] = _volumes,
		["taskRoleArn"] = _taskRoleArn,
		["containerDefinitions"] = _containerDefinitions,
	}
	asserts.AssertRegisterTaskDefinitionRequest(t)
	return t
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
-- @param _status [ContainerInstanceStatus] <p>The container instance state with which to update the container instance.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _containerInstances [StringList] <p>A list of container instance IDs or full Amazon Resource Name (ARN) entries.</p>
-- Required parameter: containerInstances
-- Required parameter: status
function M.UpdateContainerInstancesStateRequest(_status, _cluster, _containerInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateContainerInstancesStateRequest")
	local t = { 
		["status"] = _status,
		["cluster"] = _cluster,
		["containerInstances"] = _containerInstances,
	}
	asserts.AssertUpdateContainerInstancesStateRequest(t)
	return t
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
function M.InvalidParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
	}
	asserts.AssertInvalidParameterException(t)
	return t
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
-- @param _status [String] <p>The status of the deployment. Valid values are <code>PRIMARY</code> (for the most recent deployment), <code>ACTIVE</code> (for previous deployments that still have tasks running, but are being replaced with the <code>PRIMARY</code> deployment), and <code>INACTIVE</code> (for deployments that have been completely replaced).</p>
-- @param _pendingCount [Integer] <p>The number of tasks in the deployment that are in the <code>PENDING</code> status.</p>
-- @param _createdAt [Timestamp] <p>The Unix timestamp for when the service was created.</p>
-- @param _desiredCount [Integer] <p>The most recent desired count of tasks that was specified for the service to deploy or maintain.</p>
-- @param _taskDefinition [String] <p>The most recent task definition that was specified for the service to use.</p>
-- @param _updatedAt [Timestamp] <p>The Unix timestamp for when the service was last updated.</p>
-- @param _id [String] <p>The ID of the deployment.</p>
-- @param _runningCount [Integer] <p>The number of tasks in the deployment that are in the <code>RUNNING</code> status.</p>
function M.Deployment(_status, _pendingCount, _createdAt, _desiredCount, _taskDefinition, _updatedAt, _id, _runningCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["status"] = _status,
		["pendingCount"] = _pendingCount,
		["createdAt"] = _createdAt,
		["desiredCount"] = _desiredCount,
		["taskDefinition"] = _taskDefinition,
		["updatedAt"] = _updatedAt,
		["id"] = _id,
		["runningCount"] = _runningCount,
	}
	asserts.AssertDeployment(t)
	return t
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
-- @param _filter [String] <p>You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListContainerInstances</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- @param _status [ContainerInstanceStatus] <p>Filters the container instances by status. For example, if you specify the <code>DRAINING</code> status, the results include only container instances that have been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>. If you do not specify this parameter, the default is to include container instances set to <code>ACTIVE</code> and <code>DRAINING</code>.</p>
-- @param _maxResults [BoxedInteger] <p>The maximum number of container instance results returned by <code>ListContainerInstances</code> in paginated output. When this parameter is used, <code>ListContainerInstances</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListContainerInstances</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListContainerInstances</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
function M.ListContainerInstancesRequest(_filter, _cluster, _nextToken, _status, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListContainerInstancesRequest")
	local t = { 
		["filter"] = _filter,
		["cluster"] = _cluster,
		["nextToken"] = _nextToken,
		["status"] = _status,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListContainerInstancesRequest(t)
	return t
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
-- @param _name [String] <p>The name of the resource, such as <code>cpu</code>, <code>memory</code>, <code>ports</code>, or a user-defined resource.</p>
-- @param _longValue [Long] <p>When the <code>longValue</code> type is set, the value of the resource must be an extended precision floating-point type.</p>
-- @param _doubleValue [Double] <p>When the <code>doubleValue</code> type is set, the value of the resource must be a double precision floating-point type.</p>
-- @param _stringSetValue [StringList] <p>When the <code>stringSetValue</code> type is set, the value of the resource must be a string type.</p>
-- @param _type [String] <p>The type of the resource, such as <code>INTEGER</code>, <code>DOUBLE</code>, <code>LONG</code>, or <code>STRINGSET</code>.</p>
-- @param _integerValue [Integer] <p>When the <code>integerValue</code> type is set, the value of the resource must be an integer.</p>
function M.Resource(_name, _longValue, _doubleValue, _stringSetValue, _type, _integerValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["name"] = _name,
		["longValue"] = _longValue,
		["doubleValue"] = _doubleValue,
		["stringSetValue"] = _stringSetValue,
		["type"] = _type,
		["integerValue"] = _integerValue,
	}
	asserts.AssertResource(t)
	return t
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
-- @param _protocol [TransportProtocol] <p>The protocol used for the network binding.</p>
-- @param _bindIP [String] <p>The IP address that the container is bound to on the container instance.</p>
-- @param _containerPort [BoxedInteger] <p>The port number on the container that is be used with the network binding.</p>
-- @param _hostPort [BoxedInteger] <p>The port number on the host that is used with the network binding.</p>
function M.NetworkBinding(_protocol, _bindIP, _containerPort, _hostPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NetworkBinding")
	local t = { 
		["protocol"] = _protocol,
		["bindIP"] = _bindIP,
		["containerPort"] = _containerPort,
		["hostPort"] = _hostPort,
	}
	asserts.AssertNetworkBinding(t)
	return t
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
-- @param _protocol [TransportProtocol] <p>The protocol used for the port mapping. Valid values are <code>tcp</code> and <code>udp</code>. The default is <code>tcp</code>.</p>
-- @param _containerPort [BoxedInteger] <p>The port number on the container that is bound to the user-specified or automatically assigned host port. If you specify a container port and not a host port, your container automatically receives a host port in the ephemeral port range (for more information, see <code>hostPort</code>). Port mappings that are automatically assigned in this way do not count toward the 100 reserved ports limit of a container instance.</p>
-- @param _hostPort [BoxedInteger] <p>The port number on the container instance to reserve for your container. You can specify a non-reserved host port for your container port mapping, or you can omit the <code>hostPort</code> (or set it to <code>0</code>) while specifying a <code>containerPort</code> and your container automatically receives a port in the ephemeral port range for your container instance operating system and Docker version.</p> <p>The default ephemeral port range for Docker version 1.6.0 and later is listed on the instance under <code>/proc/sys/net/ipv4/ip_local_port_range</code>; if this kernel parameter is unavailable, the default ephemeral port range of 49153 to 65535 is used. You should not attempt to specify a host port in the ephemeral port range as these are reserved for automatic assignment. In general, ports below 32768 are outside of the ephemeral port range.</p> <note> <p>The default ephemeral port range of 49153 to 65535 will always be used for Docker versions prior to 1.6.0.</p> </note> <p>The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the Amazon ECS container agent ports 51678 and 51679. Any host port that was previously specified in a running task is also reserved while the task is running (after a task stops, the host port is released).The current reserved ports are displayed in the <code>remainingResources</code> of <a>DescribeContainerInstances</a> output, and a container instance may have up to 100 reserved ports at a time, including the default reserved ports (automatically assigned ports do not count toward the 100 reserved ports limit).</p>
function M.PortMapping(_protocol, _containerPort, _hostPort, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PortMapping")
	local t = { 
		["protocol"] = _protocol,
		["containerPort"] = _containerPort,
		["hostPort"] = _hostPort,
	}
	asserts.AssertPortMapping(t)
	return t
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
-- @param _logDriver [LogDriver] <p>The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default. </p> <note> <p>If you have a custom driver that is not listed above that you would like to work with the Amazon ECS container agent, you can fork the Amazon ECS container agent project that is <a href="https://github.com/aws/amazon-ecs-agent">available on GitHub</a> and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, Amazon Web Services does not currently provide support for running modified copies of this software.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- @param _options [LogConfigurationOptionsMap] <p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: <code>sudo docker version | grep "Server API version"</code> </p>
-- Required parameter: logDriver
function M.LogConfiguration(_logDriver, _options, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogConfiguration")
	local t = { 
		["logDriver"] = _logDriver,
		["options"] = _options,
	}
	asserts.AssertLogConfiguration(t)
	return t
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
-- @param _readOnly [BoxedBoolean] <p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>
-- @param _sourceContainer [String] <p>The name of another container within the same task definition to mount volumes from.</p>
function M.VolumeFrom(_readOnly, _sourceContainer, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VolumeFrom")
	local t = { 
		["readOnly"] = _readOnly,
		["sourceContainer"] = _sourceContainer,
	}
	asserts.AssertVolumeFrom(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to deregister. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _force [BoxedBoolean] <p>Forces the deregistration of the container instance. If you have tasks running on the container instance when you deregister it with the <code>force</code> option, these tasks remain running until you terminate the instance or the tasks stop through some other means, but they are orphaned (no longer monitored or accounted for by Amazon ECS). If an orphaned task on your container instance is part of an Amazon ECS service, then the service scheduler starts another copy of that task, on a different container instance if possible. </p> <p>Any containers in orphaned service tasks that are registered with a Classic load balancer or an Application load balancer target group are deregistered, and they will begin connection draining according to the settings on the load balancer or target group.</p>
-- @param _containerInstance [String] <p>The container instance ID or full Amazon Resource Name (ARN) of the container instance to deregister. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:<i>region</i>:<i>aws_account_id</i>:container-instance/<i>container_instance_ID</i> </code>.</p>
-- Required parameter: containerInstance
function M.DeregisterContainerInstanceRequest(_cluster, _force, _containerInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterContainerInstanceRequest")
	local t = { 
		["cluster"] = _cluster,
		["force"] = _force,
		["containerInstance"] = _containerInstance,
	}
	asserts.AssertDeregisterContainerInstanceRequest(t)
	return t
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
-- @param _containerName [String] <p>The name of the container (as it appears in a container definition) to associate with the load balancer.</p>
-- @param _targetGroupArn [String] <p>The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group associated with a service.</p>
-- @param _containerPort [BoxedInteger] <p>The port on the container to associate with the load balancer. This port must correspond to a <code>containerPort</code> in the service's task definition. Your container instances must allow ingress traffic on the <code>hostPort</code> of the port mapping.</p>
-- @param _loadBalancerName [String] <p>The name of a Classic load balancer.</p>
function M.LoadBalancer(_containerName, _targetGroupArn, _containerPort, _loadBalancerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoadBalancer")
	local t = { 
		["containerName"] = _containerName,
		["targetGroupArn"] = _targetGroupArn,
		["containerPort"] = _containerPort,
		["loadBalancerName"] = _loadBalancerName,
	}
	asserts.AssertLoadBalancer(t)
	return t
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
-- @param _cluster [String] <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.</p>
-- @param _service [String] <p>The name of the service to delete.</p>
-- Required parameter: service
function M.DeleteServiceRequest(_cluster, _service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceRequest")
	local t = { 
		["cluster"] = _cluster,
		["service"] = _service,
	}
	asserts.AssertDeleteServiceRequest(t)
	return t
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
