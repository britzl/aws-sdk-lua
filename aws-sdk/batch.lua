--- GENERATED CODE - DO NOT MODIFY
-- AWS Batch (batch-2016-08-10)

local M = {}

M.metadata = {
	api_version = "2016-08-10",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "batch",
	service_abbreviation = "AWS Batch",
	service_full_name = "AWS Batch",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "batch-2016-08-10",
}

local keys = {}
local asserts = {}

keys.DescribeJobDefinitionsRequest = { ["status"] = true, ["nextToken"] = true, ["jobDefinitions"] = true, ["jobDefinitionName"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeJobDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobDefinitionsRequest to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["jobDefinitions"] then asserts.AssertStringList(struct["jobDefinitions"]) end
	if struct["jobDefinitionName"] then asserts.AssertString(struct["jobDefinitionName"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobDefinitionsRequest[k], "DescribeJobDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobDefinitionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status with which to filter job definitions.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobDefinitions</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * jobDefinitions [StringList] <p>A space-separated list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.</p>
-- * jobDefinitionName [String] <p>The name of the job definition to describe.</p>
-- * maxResults [Integer] <p>The maximum number of results returned by <code>DescribeJobDefinitions</code> in paginated output. When this parameter is used, <code>DescribeJobDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeJobDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeJobDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return DescribeJobDefinitionsRequest structure as a key-value pair table
function M.DescribeJobDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeJobDefinitionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["nextToken"] = args["nextToken"],
		["jobDefinitions"] = args["jobDefinitions"],
		["jobDefinitionName"] = args["jobDefinitionName"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeJobDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComputeResourceUpdate = { ["maxvCpus"] = true, ["minvCpus"] = true, ["desiredvCpus"] = true, nil }

function asserts.AssertComputeResourceUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeResourceUpdate to be of type 'table'")
	if struct["maxvCpus"] then asserts.AssertInteger(struct["maxvCpus"]) end
	if struct["minvCpus"] then asserts.AssertInteger(struct["minvCpus"]) end
	if struct["desiredvCpus"] then asserts.AssertInteger(struct["desiredvCpus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeResourceUpdate[k], "ComputeResourceUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeResourceUpdate
-- <p>An object representing the attributes of a compute environment that can be updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * maxvCpus [Integer] <p>The maximum number of EC2 vCPUs that an environment can reach.</p>
-- * minvCpus [Integer] <p>The minimum number of EC2 vCPUs that an environment should maintain.</p>
-- * desiredvCpus [Integer] <p>The desired number of EC2 vCPUS in the compute environment.</p>
-- @return ComputeResourceUpdate structure as a key-value pair table
function M.ComputeResourceUpdate(args)
	assert(args, "You must provide an argument table when creating ComputeResourceUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["maxvCpus"] = args["maxvCpus"],
		["minvCpus"] = args["minvCpus"],
		["desiredvCpus"] = args["desiredvCpus"],
	}
	asserts.AssertComputeResourceUpdate(all_args)
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
	if struct["readOnly"] then asserts.AssertBoolean(struct["readOnly"]) end
	if struct["containerPath"] then asserts.AssertString(struct["containerPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.MountPoint[k], "MountPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MountPoint
-- <p>Details on a Docker volume mount point that is used in a job's container properties.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourceVolume [String] <p>The name of the volume to mount.</p>
-- * readOnly [Boolean] <p>If this value is <code>true</code>, the container has read-only access to the volume; otherwise, the container can write to the volume. The default value is <code>false</code>.</p>
-- * containerPath [String] <p>The path on the container at which to mount the host volume.</p>
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
	if struct["host"] then asserts.AssertHost(struct["host"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Volume[k], "Volume contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Volume
-- <p>A data volume used in a job's container properties.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * host [Host] <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data is not guaranteed to persist after the containers associated with it stop running.</p>
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

keys.DeleteComputeEnvironmentRequest = { ["computeEnvironment"] = true, nil }

function asserts.AssertDeleteComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then asserts.AssertString(struct["computeEnvironment"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteComputeEnvironmentRequest[k], "DeleteComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteComputeEnvironmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironment [String] <p>The name or Amazon Resource Name (ARN) of the compute environment to delete. </p>
-- Required key: computeEnvironment
-- @return DeleteComputeEnvironmentRequest structure as a key-value pair table
function M.DeleteComputeEnvironmentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteComputeEnvironmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironment"] = args["computeEnvironment"],
	}
	asserts.AssertDeleteComputeEnvironmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteComputeEnvironmentResponse = { nil }

function asserts.AssertDeleteComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteComputeEnvironmentResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteComputeEnvironmentResponse[k], "DeleteComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteComputeEnvironmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteComputeEnvironmentResponse structure as a key-value pair table
function M.DeleteComputeEnvironmentResponse(args)
	assert(args, "You must provide an argument table when creating DeleteComputeEnvironmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteComputeEnvironmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComputeResource = { ["subnets"] = true, ["spotIamFleetRole"] = true, ["tags"] = true, ["desiredvCpus"] = true, ["minvCpus"] = true, ["instanceTypes"] = true, ["imageId"] = true, ["bidPercentage"] = true, ["instanceRole"] = true, ["maxvCpus"] = true, ["securityGroupIds"] = true, ["type"] = true, ["ec2KeyPair"] = true, nil }

function asserts.AssertComputeResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeResource to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["minvCpus"], "Expected key minvCpus to exist in table")
	assert(struct["maxvCpus"], "Expected key maxvCpus to exist in table")
	assert(struct["instanceTypes"], "Expected key instanceTypes to exist in table")
	assert(struct["subnets"], "Expected key subnets to exist in table")
	assert(struct["securityGroupIds"], "Expected key securityGroupIds to exist in table")
	assert(struct["instanceRole"], "Expected key instanceRole to exist in table")
	if struct["subnets"] then asserts.AssertStringList(struct["subnets"]) end
	if struct["spotIamFleetRole"] then asserts.AssertString(struct["spotIamFleetRole"]) end
	if struct["tags"] then asserts.AssertTagsMap(struct["tags"]) end
	if struct["desiredvCpus"] then asserts.AssertInteger(struct["desiredvCpus"]) end
	if struct["minvCpus"] then asserts.AssertInteger(struct["minvCpus"]) end
	if struct["instanceTypes"] then asserts.AssertStringList(struct["instanceTypes"]) end
	if struct["imageId"] then asserts.AssertString(struct["imageId"]) end
	if struct["bidPercentage"] then asserts.AssertInteger(struct["bidPercentage"]) end
	if struct["instanceRole"] then asserts.AssertString(struct["instanceRole"]) end
	if struct["maxvCpus"] then asserts.AssertInteger(struct["maxvCpus"]) end
	if struct["securityGroupIds"] then asserts.AssertStringList(struct["securityGroupIds"]) end
	if struct["type"] then asserts.AssertCRType(struct["type"]) end
	if struct["ec2KeyPair"] then asserts.AssertString(struct["ec2KeyPair"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeResource[k], "ComputeResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeResource
-- <p>An object representing an AWS Batch compute resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * subnets [StringList] <p>The VPC subnets into which the compute resources are launched. </p>
-- * spotIamFleetRole [String] <p>The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a <code>SPOT</code> compute environment.</p>
-- * tags [TagsMap] <p>Key-value pair tags to be applied to resources that are launched in the compute environment. </p>
-- * desiredvCpus [Integer] <p>The desired number of EC2 vCPUS in the compute environment. </p>
-- * minvCpus [Integer] <p>The minimum number of EC2 vCPUs that an environment should maintain. </p>
-- * instanceTypes [StringList] <p>The instances types that may be launched. You can specify instance families to launch any instance type within those families (for example, <code>c4</code> or <code>p3</code>), or you can specify specific sizes within a family (such as <code>c4.8xlarge</code>). You can also choose <code>optimal</code> to pick instance types (from the latest C, M, and R instance families) on the fly that match the demand of your job queues.</p>
-- * imageId [String] <p>The Amazon Machine Image (AMI) ID used for instances launched in the compute environment.</p>
-- * bidPercentage [Integer] <p>The minimum percentage that a Spot Instance price must be when compared with the On-Demand price for that instance type before instances are launched. For example, if your bid percentage is 20%, then the Spot price must be below 20% of the current On-Demand price for that EC2 instance.</p>
-- * instanceRole [String] <p>The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment. You can specify the short name or full Amazon Resource Name (ARN) of an instance profile. For example, <code>ecsInstanceRole</code> or <code>arn:aws:iam::&lt;aws_account_id&gt;:instance-profile/ecsInstanceRole</code>. For more information, see <a href="http://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html">Amazon ECS Instance Role</a> in the <i>AWS Batch User Guide</i>.</p>
-- * maxvCpus [Integer] <p>The maximum number of EC2 vCPUs that an environment can reach. </p>
-- * securityGroupIds [StringList] <p>The EC2 security group that is associated with instances launched in the compute environment. </p>
-- * type [CRType] <p>The type of compute environment.</p>
-- * ec2KeyPair [String] <p>The EC2 key pair that is used for instances launched in the compute environment.</p>
-- Required key: type
-- Required key: minvCpus
-- Required key: maxvCpus
-- Required key: instanceTypes
-- Required key: subnets
-- Required key: securityGroupIds
-- Required key: instanceRole
-- @return ComputeResource structure as a key-value pair table
function M.ComputeResource(args)
	assert(args, "You must provide an argument table when creating ComputeResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["subnets"] = args["subnets"],
		["spotIamFleetRole"] = args["spotIamFleetRole"],
		["tags"] = args["tags"],
		["desiredvCpus"] = args["desiredvCpus"],
		["minvCpus"] = args["minvCpus"],
		["instanceTypes"] = args["instanceTypes"],
		["imageId"] = args["imageId"],
		["bidPercentage"] = args["bidPercentage"],
		["instanceRole"] = args["instanceRole"],
		["maxvCpus"] = args["maxvCpus"],
		["securityGroupIds"] = args["securityGroupIds"],
		["type"] = args["type"],
		["ec2KeyPair"] = args["ec2KeyPair"],
	}
	asserts.AssertComputeResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Host = { ["sourcePath"] = true, nil }

function asserts.AssertHost(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Host to be of type 'table'")
	if struct["sourcePath"] then asserts.AssertString(struct["sourcePath"]) end
	for k,_ in pairs(struct) do
		assert(keys.Host[k], "Host contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Host
-- <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sourcePath [String] <p>The path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p>
-- @return Host structure as a key-value pair table
function M.Host(args)
	assert(args, "You must provide an argument table when creating Host")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sourcePath"] = args["sourcePath"],
	}
	asserts.AssertHost(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComputeEnvironmentsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["computeEnvironments"] = true, nil }

function asserts.AssertDescribeComputeEnvironmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComputeEnvironmentsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["computeEnvironments"] then asserts.AssertStringList(struct["computeEnvironments"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComputeEnvironmentsRequest[k], "DescribeComputeEnvironmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComputeEnvironmentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeComputeEnvironments</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [Integer] <p>The maximum number of cluster results returned by <code>DescribeComputeEnvironments</code> in paginated output. When this parameter is used, <code>DescribeComputeEnvironments</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeComputeEnvironments</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeComputeEnvironments</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- * computeEnvironments [StringList] <p>A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries. </p>
-- @return DescribeComputeEnvironmentsRequest structure as a key-value pair table
function M.DescribeComputeEnvironmentsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeComputeEnvironmentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["computeEnvironments"] = args["computeEnvironments"],
	}
	asserts.AssertDescribeComputeEnvironmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobQueueResponse = { ["jobQueueArn"] = true, ["jobQueueName"] = true, nil }

function asserts.AssertUpdateJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobQueueResponse to be of type 'table'")
	if struct["jobQueueArn"] then asserts.AssertString(struct["jobQueueArn"]) end
	if struct["jobQueueName"] then asserts.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobQueueResponse[k], "UpdateJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- * jobQueueName [String] <p>The name of the job queue.</p>
-- @return UpdateJobQueueResponse structure as a key-value pair table
function M.UpdateJobQueueResponse(args)
	assert(args, "You must provide an argument table when creating UpdateJobQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobQueueArn"] = args["jobQueueArn"],
		["jobQueueName"] = args["jobQueueName"],
	}
	asserts.AssertUpdateJobQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobQueueResponse = { ["jobQueueArn"] = true, ["jobQueueName"] = true, nil }

function asserts.AssertCreateJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQueueResponse to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["jobQueueArn"], "Expected key jobQueueArn to exist in table")
	if struct["jobQueueArn"] then asserts.AssertString(struct["jobQueueArn"]) end
	if struct["jobQueueName"] then asserts.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobQueueResponse[k], "CreateJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- * jobQueueName [String] <p>The name of the job queue.</p>
-- Required key: jobQueueName
-- Required key: jobQueueArn
-- @return CreateJobQueueResponse structure as a key-value pair table
function M.CreateJobQueueResponse(args)
	assert(args, "You must provide an argument table when creating CreateJobQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobQueueArn"] = args["jobQueueArn"],
		["jobQueueName"] = args["jobQueueName"],
	}
	asserts.AssertCreateJobQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttemptContainerDetail = { ["reason"] = true, ["taskArn"] = true, ["containerInstanceArn"] = true, ["logStreamName"] = true, ["exitCode"] = true, nil }

function asserts.AssertAttemptContainerDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttemptContainerDetail to be of type 'table'")
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["taskArn"] then asserts.AssertString(struct["taskArn"]) end
	if struct["containerInstanceArn"] then asserts.AssertString(struct["containerInstanceArn"]) end
	if struct["logStreamName"] then asserts.AssertString(struct["logStreamName"]) end
	if struct["exitCode"] then asserts.AssertInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttemptContainerDetail[k], "AttemptContainerDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttemptContainerDetail
-- <p>An object representing the details of a container that is part of a job attempt.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- * taskArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the job attempt. Each container attempt receives a task ARN when they reach the <code>STARTING</code> status.</p>
-- * containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.</p>
-- * logStreamName [String] <p>The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is <code>/aws/batch/job</code>. Each container attempt receives a log stream name when they reach the <code>RUNNING</code> status.</p>
-- * exitCode [Integer] <p>The exit code for the job attempt. A non-zero exit code is considered a failure.</p>
-- @return AttemptContainerDetail structure as a key-value pair table
function M.AttemptContainerDetail(args)
	assert(args, "You must provide an argument table when creating AttemptContainerDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["taskArn"] = args["taskArn"],
		["containerInstanceArn"] = args["containerInstanceArn"],
		["logStreamName"] = args["logStreamName"],
		["exitCode"] = args["exitCode"],
	}
	asserts.AssertAttemptContainerDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobResponse = { nil }

function asserts.AssertCancelJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelJobResponse[k], "CancelJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelJobResponse structure as a key-value pair table
function M.CancelJobResponse(args)
	assert(args, "You must provide an argument table when creating CancelJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ulimit = { ["softLimit"] = true, ["hardLimit"] = true, ["name"] = true, nil }

function asserts.AssertUlimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ulimit to be of type 'table'")
	assert(struct["hardLimit"], "Expected key hardLimit to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["softLimit"], "Expected key softLimit to exist in table")
	if struct["softLimit"] then asserts.AssertInteger(struct["softLimit"]) end
	if struct["hardLimit"] then asserts.AssertInteger(struct["hardLimit"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ulimit[k], "Ulimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ulimit
-- <p>The <code>ulimit</code> settings to pass to the container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * softLimit [Integer] <p>The soft limit for the <code>ulimit</code> type.</p>
-- * hardLimit [Integer] <p>The hard limit for the <code>ulimit</code> type.</p>
-- * name [String] <p>The <code>type</code> of the <code>ulimit</code>.</p>
-- Required key: hardLimit
-- Required key: name
-- Required key: softLimit
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
		["hardLimit"] = args["hardLimit"],
		["name"] = args["name"],
	}
	asserts.AssertUlimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateJobRequest = { ["reason"] = true, ["jobId"] = true, nil }

function asserts.AssertTerminateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateJobRequest[k], "TerminateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [String] <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future <a>DescribeJobs</a> operations on the job. This message is also recorded in the AWS Batch activity logs. </p>
-- * jobId [String] <p>The AWS Batch job ID of the job to terminate.</p>
-- Required key: jobId
-- Required key: reason
-- @return TerminateJobRequest structure as a key-value pair table
function M.TerminateJobRequest(args)
	assert(args, "You must provide an argument table when creating TerminateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertTerminateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerSummary = { ["reason"] = true, ["exitCode"] = true, nil }

function asserts.AssertContainerSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerSummary to be of type 'table'")
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["exitCode"] then asserts.AssertInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerSummary[k], "ContainerSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerSummary
-- <p>An object representing summary details of a container within a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- * exitCode [Integer] <p>The exit code to return upon completion.</p>
-- @return ContainerSummary structure as a key-value pair table
function M.ContainerSummary(args)
	assert(args, "You must provide an argument table when creating ContainerSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["exitCode"] = args["exitCode"],
	}
	asserts.AssertContainerSummary(all_args)
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
-- <p>A key-value pair object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the key-value pair. For environment variables, this is the name of the environment variable.</p>
-- * value [String] <p>The value of the key-value pair. For environment variables, this is the value of the environment variable.</p>
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

keys.DescribeJobQueuesResponse = { ["jobQueues"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeJobQueuesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobQueuesResponse to be of type 'table'")
	if struct["jobQueues"] then asserts.AssertJobQueueDetailList(struct["jobQueues"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobQueuesResponse[k], "DescribeJobQueuesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobQueuesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobQueues [JobQueueDetailList] <p>The list of job queues. </p>
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeJobQueues</code> request. When the results of a <code>DescribeJobQueues</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @return DescribeJobQueuesResponse structure as a key-value pair table
function M.DescribeJobQueuesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeJobQueuesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobQueues"] = args["jobQueues"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeJobQueuesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitJobRequest = { ["timeout"] = true, ["parameters"] = true, ["jobDefinition"] = true, ["jobQueue"] = true, ["jobName"] = true, ["arrayProperties"] = true, ["retryStrategy"] = true, ["containerOverrides"] = true, ["dependsOn"] = true, nil }

function asserts.AssertSubmitJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitJobRequest to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["timeout"] then asserts.AssertJobTimeout(struct["timeout"]) end
	if struct["parameters"] then asserts.AssertParametersMap(struct["parameters"]) end
	if struct["jobDefinition"] then asserts.AssertString(struct["jobDefinition"]) end
	if struct["jobQueue"] then asserts.AssertString(struct["jobQueue"]) end
	if struct["jobName"] then asserts.AssertString(struct["jobName"]) end
	if struct["arrayProperties"] then asserts.AssertArrayProperties(struct["arrayProperties"]) end
	if struct["retryStrategy"] then asserts.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["containerOverrides"] then asserts.AssertContainerOverrides(struct["containerOverrides"]) end
	if struct["dependsOn"] then asserts.AssertJobDependencyList(struct["dependsOn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitJobRequest[k], "SubmitJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timeout [JobTimeout] <p>The timeout configuration for this <a>SubmitJob</a> operation. You can specify a timeout duration after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html">Job Timeouts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
-- * parameters [ParametersMap] <p>Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- * jobDefinition [String] <p>The job definition used by this job. This value can be either a <code>name:revision</code> or the Amazon Resource Name (ARN) for the job definition.</p>
-- * jobQueue [String] <p>The job queue into which the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue. </p>
-- * jobName [String] <p>The name of the job. The first character must be alphanumeric, and up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed. </p>
-- * arrayProperties [ArrayProperties] <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. For more information, see <a href="http://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html">Array Jobs</a> in the <i>AWS Batch User Guide</i>.</p>
-- * retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs from this <a>SubmitJob</a> operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition.</p>
-- * containerOverrides [ContainerOverrides] <p>A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p>
-- * dependsOn [JobDependencyList] <p>A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a <code>SEQUENTIAL</code> type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an <code>N_TO_N</code> type dependency with a job ID for array jobs so that each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin.</p>
-- Required key: jobName
-- Required key: jobQueue
-- Required key: jobDefinition
-- @return SubmitJobRequest structure as a key-value pair table
function M.SubmitJobRequest(args)
	assert(args, "You must provide an argument table when creating SubmitJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timeout"] = args["timeout"],
		["parameters"] = args["parameters"],
		["jobDefinition"] = args["jobDefinition"],
		["jobQueue"] = args["jobQueue"],
		["jobName"] = args["jobName"],
		["arrayProperties"] = args["arrayProperties"],
		["retryStrategy"] = args["retryStrategy"],
		["containerOverrides"] = args["containerOverrides"],
		["dependsOn"] = args["dependsOn"],
	}
	asserts.AssertSubmitJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArrayProperties = { ["size"] = true, nil }

function asserts.AssertArrayProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArrayProperties to be of type 'table'")
	if struct["size"] then asserts.AssertInteger(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArrayProperties[k], "ArrayProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArrayProperties
-- <p>An object representing an AWS Batch array job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * size [Integer] <p>The size of the array job.</p>
-- @return ArrayProperties structure as a key-value pair table
function M.ArrayProperties(args)
	assert(args, "You must provide an argument table when creating ArrayProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["size"] = args["size"],
	}
	asserts.AssertArrayProperties(all_args)
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
-- <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid. </p>
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

keys.ContainerOverrides = { ["environment"] = true, ["vcpus"] = true, ["command"] = true, ["memory"] = true, nil }

function asserts.AssertContainerOverrides(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerOverrides to be of type 'table'")
	if struct["environment"] then asserts.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then asserts.AssertInteger(struct["vcpus"]) end
	if struct["command"] then asserts.AssertStringList(struct["command"]) end
	if struct["memory"] then asserts.AssertInteger(struct["memory"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerOverrides[k], "ContainerOverrides contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerOverrides
-- <p>The overrides that should be sent to a container.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * environment [EnvironmentVariables] <p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the job definition.</p> <note> <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming convention is reserved for variables that are set by the AWS Batch service.</p> </note>
-- * vcpus [Integer] <p>The number of vCPUs to reserve for the container. This value overrides the value set in the job definition.</p>
-- * command [StringList] <p>The command to send to the container that overrides the default command from the Docker image or the job definition.</p>
-- * memory [Integer] <p>The number of MiB of memory reserved for the job. This value overrides the value set in the job definition.</p>
-- @return ContainerOverrides structure as a key-value pair table
function M.ContainerOverrides(args)
	assert(args, "You must provide an argument table when creating ContainerOverrides")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["environment"] = args["environment"],
		["vcpus"] = args["vcpus"],
		["command"] = args["command"],
		["memory"] = args["memory"],
	}
	asserts.AssertContainerOverrides(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobQueuesRequest = { ["jobQueues"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeJobQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobQueuesRequest to be of type 'table'")
	if struct["jobQueues"] then asserts.AssertStringList(struct["jobQueues"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobQueuesRequest[k], "DescribeJobQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobQueuesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobQueues [StringList] <p>A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobQueues</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [Integer] <p>The maximum number of results returned by <code>DescribeJobQueues</code> in paginated output. When this parameter is used, <code>DescribeJobQueues</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeJobQueues</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>DescribeJobQueues</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return DescribeJobQueuesRequest structure as a key-value pair table
function M.DescribeJobQueuesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeJobQueuesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobQueues"] = args["jobQueues"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertDescribeJobQueuesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobsRequest = { ["jobs"] = true, nil }

function asserts.AssertDescribeJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobsRequest to be of type 'table'")
	assert(struct["jobs"], "Expected key jobs to exist in table")
	if struct["jobs"] then asserts.AssertStringList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobsRequest[k], "DescribeJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobs [StringList] <p>A space-separated list of up to 100 job IDs.</p>
-- Required key: jobs
-- @return DescribeJobsRequest structure as a key-value pair table
function M.DescribeJobsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobs"] = args["jobs"],
	}
	asserts.AssertDescribeJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterJobDefinitionResponse = { ["jobDefinitionArn"] = true, ["jobDefinitionName"] = true, ["revision"] = true, nil }

function asserts.AssertRegisterJobDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterJobDefinitionResponse to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["jobDefinitionArn"], "Expected key jobDefinitionArn to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	if struct["jobDefinitionArn"] then asserts.AssertString(struct["jobDefinitionArn"]) end
	if struct["jobDefinitionName"] then asserts.AssertString(struct["jobDefinitionName"]) end
	if struct["revision"] then asserts.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterJobDefinitionResponse[k], "RegisterJobDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterJobDefinitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobDefinitionArn [String] <p>The Amazon Resource Name (ARN) of the job definition. </p>
-- * jobDefinitionName [String] <p>The name of the job definition.</p>
-- * revision [Integer] <p>The revision of the job definition.</p>
-- Required key: jobDefinitionName
-- Required key: jobDefinitionArn
-- Required key: revision
-- @return RegisterJobDefinitionResponse structure as a key-value pair table
function M.RegisterJobDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating RegisterJobDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobDefinitionArn"] = args["jobDefinitionArn"],
		["jobDefinitionName"] = args["jobDefinitionName"],
		["revision"] = args["revision"],
	}
	asserts.AssertRegisterJobDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerDetail = { ["mountPoints"] = true, ["taskArn"] = true, ["logStreamName"] = true, ["readonlyRootFilesystem"] = true, ["image"] = true, ["reason"] = true, ["containerInstanceArn"] = true, ["environment"] = true, ["vcpus"] = true, ["jobRoleArn"] = true, ["user"] = true, ["volumes"] = true, ["memory"] = true, ["command"] = true, ["privileged"] = true, ["ulimits"] = true, ["exitCode"] = true, nil }

function asserts.AssertContainerDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerDetail to be of type 'table'")
	if struct["mountPoints"] then asserts.AssertMountPoints(struct["mountPoints"]) end
	if struct["taskArn"] then asserts.AssertString(struct["taskArn"]) end
	if struct["logStreamName"] then asserts.AssertString(struct["logStreamName"]) end
	if struct["readonlyRootFilesystem"] then asserts.AssertBoolean(struct["readonlyRootFilesystem"]) end
	if struct["image"] then asserts.AssertString(struct["image"]) end
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["containerInstanceArn"] then asserts.AssertString(struct["containerInstanceArn"]) end
	if struct["environment"] then asserts.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then asserts.AssertInteger(struct["vcpus"]) end
	if struct["jobRoleArn"] then asserts.AssertString(struct["jobRoleArn"]) end
	if struct["user"] then asserts.AssertString(struct["user"]) end
	if struct["volumes"] then asserts.AssertVolumes(struct["volumes"]) end
	if struct["memory"] then asserts.AssertInteger(struct["memory"]) end
	if struct["command"] then asserts.AssertStringList(struct["command"]) end
	if struct["privileged"] then asserts.AssertBoolean(struct["privileged"]) end
	if struct["ulimits"] then asserts.AssertUlimits(struct["ulimits"]) end
	if struct["exitCode"] then asserts.AssertInteger(struct["exitCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerDetail[k], "ContainerDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerDetail
-- <p>An object representing the details of a container that is part of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * mountPoints [MountPoints] <p>The mount points for data volumes in your container.</p>
-- * taskArn [String] <p>The Amazon Resource Name (ARN) of the Amazon ECS task that is associated with the container job. Each container attempt receives a task ARN when they reach the <code>STARTING</code> status.</p>
-- * logStreamName [String] <p>The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is <code>/aws/batch/job</code>. Each container attempt receives a log stream name when they reach the <code>RUNNING</code> status.</p>
-- * readonlyRootFilesystem [Boolean] <p>When this parameter is true, the container is given read-only access to its root file system.</p>
-- * image [String] <p>The image used to start the container.</p>
-- * reason [String] <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>
-- * containerInstanceArn [String] <p>The Amazon Resource Name (ARN) of the container instance on which the container is running.</p>
-- * environment [EnvironmentVariables] <p>The environment variables to pass to a container.</p> <note> <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming convention is reserved for variables that are set by the AWS Batch service.</p> </note>
-- * vcpus [Integer] <p>The number of VCPUs allocated for the job. </p>
-- * jobRoleArn [String] <p>The Amazon Resource Name (ARN) associated with the job upon execution. </p>
-- * user [String] <p>The user name to use inside the container.</p>
-- * volumes [Volumes] <p>A list of volumes associated with the job.</p>
-- * memory [Integer] <p>The number of MiB of memory reserved for the job.</p>
-- * command [StringList] <p>The command that is passed to the container. </p>
-- * privileged [Boolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user).</p>
-- * ulimits [Ulimits] <p>A list of <code>ulimit</code> values to set in the container.</p>
-- * exitCode [Integer] <p>The exit code to return upon completion.</p>
-- @return ContainerDetail structure as a key-value pair table
function M.ContainerDetail(args)
	assert(args, "You must provide an argument table when creating ContainerDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["mountPoints"] = args["mountPoints"],
		["taskArn"] = args["taskArn"],
		["logStreamName"] = args["logStreamName"],
		["readonlyRootFilesystem"] = args["readonlyRootFilesystem"],
		["image"] = args["image"],
		["reason"] = args["reason"],
		["containerInstanceArn"] = args["containerInstanceArn"],
		["environment"] = args["environment"],
		["vcpus"] = args["vcpus"],
		["jobRoleArn"] = args["jobRoleArn"],
		["user"] = args["user"],
		["volumes"] = args["volumes"],
		["memory"] = args["memory"],
		["command"] = args["command"],
		["privileged"] = args["privileged"],
		["ulimits"] = args["ulimits"],
		["exitCode"] = args["exitCode"],
	}
	asserts.AssertContainerDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterJobDefinitionRequest = { ["jobDefinition"] = true, nil }

function asserts.AssertDeregisterJobDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterJobDefinitionRequest to be of type 'table'")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["jobDefinition"] then asserts.AssertString(struct["jobDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterJobDefinitionRequest[k], "DeregisterJobDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterJobDefinitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobDefinition [String] <p>The name and revision (<code>name:revision</code>) or full Amazon Resource Name (ARN) of the job definition to deregister. </p>
-- Required key: jobDefinition
-- @return DeregisterJobDefinitionRequest structure as a key-value pair table
function M.DeregisterJobDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterJobDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobDefinition"] = args["jobDefinition"],
	}
	asserts.AssertDeregisterJobDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RetryStrategy = { ["attempts"] = true, nil }

function asserts.AssertRetryStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetryStrategy to be of type 'table'")
	if struct["attempts"] then asserts.AssertInteger(struct["attempts"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetryStrategy[k], "RetryStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetryStrategy
-- <p>The retry strategy associated with a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attempts [Integer] <p>The number of times to move a job to the <code>RUNNABLE</code> status. You may specify between 1 and 10 attempts. If the value of <code>attempts</code> is greater than one, the job is retried if it fails until it has moved to <code>RUNNABLE</code> that many times.</p>
-- @return RetryStrategy structure as a key-value pair table
function M.RetryStrategy(args)
	assert(args, "You must provide an argument table when creating RetryStrategy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attempts"] = args["attempts"],
	}
	asserts.AssertRetryStrategy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateComputeEnvironmentRequest = { ["computeEnvironmentName"] = true, ["state"] = true, ["type"] = true, ["computeResources"] = true, ["serviceRole"] = true, nil }

function asserts.AssertCreateComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironmentName"], "Expected key computeEnvironmentName to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["serviceRole"], "Expected key serviceRole to exist in table")
	if struct["computeEnvironmentName"] then asserts.AssertString(struct["computeEnvironmentName"]) end
	if struct["state"] then asserts.AssertCEState(struct["state"]) end
	if struct["type"] then asserts.AssertCEType(struct["type"]) end
	if struct["computeResources"] then asserts.AssertComputeResource(struct["computeResources"]) end
	if struct["serviceRole"] then asserts.AssertString(struct["serviceRole"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateComputeEnvironmentRequest[k], "CreateComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputeEnvironmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironmentName [String] <p>The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- * state [CEState] <p>The state of the compute environment. If the state is <code>ENABLED</code>, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.</p>
-- * type [CEType] <p>The type of the compute environment. </p>
-- * computeResources [ComputeResource] <p>Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments.</p>
-- * serviceRole [String] <p>The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.</p> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.</p> <note> <p>Depending on how you created your AWS Batch service role, its ARN may contain the <code>service-role</code> path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the <code>service-role</code> path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.</p> </note>
-- Required key: computeEnvironmentName
-- Required key: type
-- Required key: serviceRole
-- @return CreateComputeEnvironmentRequest structure as a key-value pair table
function M.CreateComputeEnvironmentRequest(args)
	assert(args, "You must provide an argument table when creating CreateComputeEnvironmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironmentName"] = args["computeEnvironmentName"],
		["state"] = args["state"],
		["type"] = args["type"],
		["computeResources"] = args["computeResources"],
		["serviceRole"] = args["serviceRole"],
	}
	asserts.AssertCreateComputeEnvironmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArrayPropertiesSummary = { ["index"] = true, ["size"] = true, nil }

function asserts.AssertArrayPropertiesSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArrayPropertiesSummary to be of type 'table'")
	if struct["index"] then asserts.AssertInteger(struct["index"]) end
	if struct["size"] then asserts.AssertInteger(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArrayPropertiesSummary[k], "ArrayPropertiesSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArrayPropertiesSummary
-- <p>An object representing the array properties of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * index [Integer] <p>The job index within the array that is associated with this job. This parameter is returned for children of array jobs.</p>
-- * size [Integer] <p>The size of the array job. This parameter is returned for parent array jobs.</p>
-- @return ArrayPropertiesSummary structure as a key-value pair table
function M.ArrayPropertiesSummary(args)
	assert(args, "You must provide an argument table when creating ArrayPropertiesSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["index"] = args["index"],
		["size"] = args["size"],
	}
	asserts.AssertArrayPropertiesSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComputeEnvironmentOrder = { ["computeEnvironment"] = true, ["order"] = true, nil }

function asserts.AssertComputeEnvironmentOrder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeEnvironmentOrder to be of type 'table'")
	assert(struct["order"], "Expected key order to exist in table")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then asserts.AssertString(struct["computeEnvironment"]) end
	if struct["order"] then asserts.AssertInteger(struct["order"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeEnvironmentOrder[k], "ComputeEnvironmentOrder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeEnvironmentOrder
-- <p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironment [String] <p>The Amazon Resource Name (ARN) of the compute environment.</p>
-- * order [Integer] <p>The order of the compute environment.</p>
-- Required key: order
-- Required key: computeEnvironment
-- @return ComputeEnvironmentOrder structure as a key-value pair table
function M.ComputeEnvironmentOrder(args)
	assert(args, "You must provide an argument table when creating ComputeEnvironmentOrder")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironment"] = args["computeEnvironment"],
		["order"] = args["order"],
	}
	asserts.AssertComputeEnvironmentOrder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsRequest = { ["arrayJobId"] = true, ["nextToken"] = true, ["maxResults"] = true, ["jobStatus"] = true, ["jobQueue"] = true, nil }

function asserts.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	if struct["arrayJobId"] then asserts.AssertString(struct["arrayJobId"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertInteger(struct["maxResults"]) end
	if struct["jobStatus"] then asserts.AssertJobStatus(struct["jobStatus"]) end
	if struct["jobQueue"] then asserts.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsRequest[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * arrayJobId [String] <p>The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListJobs</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [Integer] <p>The maximum number of results returned by <code>ListJobs</code> in paginated output. When this parameter is used, <code>ListJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListJobs</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- * jobStatus [JobStatus] <p>The job status with which to filter jobs in the specified queue. If you do not specify a status, only <code>RUNNING</code> jobs are returned.</p>
-- * jobQueue [String] <p>The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.</p>
-- @return ListJobsRequest structure as a key-value pair table
function M.ListJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["arrayJobId"] = args["arrayJobId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["jobStatus"] = args["jobStatus"],
		["jobQueue"] = args["jobQueue"],
	}
	asserts.AssertListJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobSummary = { ["status"] = true, ["container"] = true, ["statusReason"] = true, ["jobName"] = true, ["arrayProperties"] = true, ["stoppedAt"] = true, ["startedAt"] = true, ["jobId"] = true, ["createdAt"] = true, nil }

function asserts.AssertJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobSummary to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	if struct["status"] then asserts.AssertJobStatus(struct["status"]) end
	if struct["container"] then asserts.AssertContainerSummary(struct["container"]) end
	if struct["statusReason"] then asserts.AssertString(struct["statusReason"]) end
	if struct["jobName"] then asserts.AssertString(struct["jobName"]) end
	if struct["arrayProperties"] then asserts.AssertArrayPropertiesSummary(struct["arrayProperties"]) end
	if struct["stoppedAt"] then asserts.AssertLong(struct["stoppedAt"]) end
	if struct["startedAt"] then asserts.AssertLong(struct["startedAt"]) end
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	if struct["createdAt"] then asserts.AssertLong(struct["createdAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobSummary[k], "JobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobSummary
-- <p>An object representing summary details of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobStatus] <p>The current status for the job.</p>
-- * container [ContainerSummary] <p>An object representing the details of the container that is associated with the job.</p>
-- * statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job.</p>
-- * jobName [String] <p>The name of the job.</p>
-- * arrayProperties [ArrayPropertiesSummary] <p>The array properties of the job, if it is an array job.</p>
-- * stoppedAt [Long] <p>The Unix time stamp for when the job was stopped (when the job transitioned from the <code>RUNNING</code> state to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
-- * startedAt [Long] <p>The Unix time stamp for when the job was started (when the job transitioned from the <code>STARTING</code> state to the <code>RUNNING</code> state).</p>
-- * jobId [String] <p>The ID of the job.</p>
-- * createdAt [Long] <p>The Unix time stamp for when the job was created. For non-array jobs and parent array jobs, this is when the job entered the <code>SUBMITTED</code> state (at the time <a>SubmitJob</a> was called). For array child jobs, this is when the child job was spawned by its parent and entered the <code>PENDING</code> state.</p>
-- Required key: jobId
-- Required key: jobName
-- @return JobSummary structure as a key-value pair table
function M.JobSummary(args)
	assert(args, "You must provide an argument table when creating JobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["container"] = args["container"],
		["statusReason"] = args["statusReason"],
		["jobName"] = args["jobName"],
		["arrayProperties"] = args["arrayProperties"],
		["stoppedAt"] = args["stoppedAt"],
		["startedAt"] = args["startedAt"],
		["jobId"] = args["jobId"],
		["createdAt"] = args["createdAt"],
	}
	asserts.AssertJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobDefinition = { ["status"] = true, ["jobDefinitionArn"] = true, ["parameters"] = true, ["retryStrategy"] = true, ["timeout"] = true, ["containerProperties"] = true, ["type"] = true, ["jobDefinitionName"] = true, ["revision"] = true, nil }

function asserts.AssertJobDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDefinition to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["jobDefinitionArn"], "Expected key jobDefinitionArn to exist in table")
	assert(struct["revision"], "Expected key revision to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["jobDefinitionArn"] then asserts.AssertString(struct["jobDefinitionArn"]) end
	if struct["parameters"] then asserts.AssertParametersMap(struct["parameters"]) end
	if struct["retryStrategy"] then asserts.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["timeout"] then asserts.AssertJobTimeout(struct["timeout"]) end
	if struct["containerProperties"] then asserts.AssertContainerProperties(struct["containerProperties"]) end
	if struct["type"] then asserts.AssertString(struct["type"]) end
	if struct["jobDefinitionName"] then asserts.AssertString(struct["jobDefinitionName"]) end
	if struct["revision"] then asserts.AssertInteger(struct["revision"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobDefinition[k], "JobDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDefinition
-- <p>An object representing an AWS Batch job definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [String] <p>The status of the job definition.</p>
-- * jobDefinitionArn [String] <p>The Amazon Resource Name (ARN) for the job definition. </p>
-- * parameters [ParametersMap] <p>Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- * retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs that are submitted with this job definition.</p>
-- * timeout [JobTimeout] <p>The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout duration after which AWS Batch terminates your jobs if they have not finished.</p>
-- * containerProperties [ContainerProperties] <p>An object with various properties specific to container-based jobs. </p>
-- * type [String] <p>The type of job definition.</p>
-- * jobDefinitionName [String] <p>The name of the job definition. </p>
-- * revision [Integer] <p>The revision of the job definition.</p>
-- Required key: jobDefinitionName
-- Required key: jobDefinitionArn
-- Required key: revision
-- Required key: type
-- @return JobDefinition structure as a key-value pair table
function M.JobDefinition(args)
	assert(args, "You must provide an argument table when creating JobDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["jobDefinitionArn"] = args["jobDefinitionArn"],
		["parameters"] = args["parameters"],
		["retryStrategy"] = args["retryStrategy"],
		["timeout"] = args["timeout"],
		["containerProperties"] = args["containerProperties"],
		["type"] = args["type"],
		["jobDefinitionName"] = args["jobDefinitionName"],
		["revision"] = args["revision"],
	}
	asserts.AssertJobDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterJobDefinitionResponse = { nil }

function asserts.AssertDeregisterJobDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterJobDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterJobDefinitionResponse[k], "DeregisterJobDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterJobDefinitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterJobDefinitionResponse structure as a key-value pair table
function M.DeregisterJobDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterJobDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterJobDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateComputeEnvironmentResponse = { ["computeEnvironmentName"] = true, ["computeEnvironmentArn"] = true, nil }

function asserts.AssertUpdateComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateComputeEnvironmentResponse to be of type 'table'")
	if struct["computeEnvironmentName"] then asserts.AssertString(struct["computeEnvironmentName"]) end
	if struct["computeEnvironmentArn"] then asserts.AssertString(struct["computeEnvironmentArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateComputeEnvironmentResponse[k], "UpdateComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateComputeEnvironmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironmentName [String] <p>The name of compute environment.</p>
-- * computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
-- @return UpdateComputeEnvironmentResponse structure as a key-value pair table
function M.UpdateComputeEnvironmentResponse(args)
	assert(args, "You must provide an argument table when creating UpdateComputeEnvironmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironmentName"] = args["computeEnvironmentName"],
		["computeEnvironmentArn"] = args["computeEnvironmentArn"],
	}
	asserts.AssertUpdateComputeEnvironmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobQueueDetail = { ["status"] = true, ["jobQueueArn"] = true, ["computeEnvironmentOrder"] = true, ["statusReason"] = true, ["priority"] = true, ["state"] = true, ["jobQueueName"] = true, nil }

function asserts.AssertJobQueueDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobQueueDetail to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["jobQueueArn"], "Expected key jobQueueArn to exist in table")
	assert(struct["state"], "Expected key state to exist in table")
	assert(struct["priority"], "Expected key priority to exist in table")
	assert(struct["computeEnvironmentOrder"], "Expected key computeEnvironmentOrder to exist in table")
	if struct["status"] then asserts.AssertJQStatus(struct["status"]) end
	if struct["jobQueueArn"] then asserts.AssertString(struct["jobQueueArn"]) end
	if struct["computeEnvironmentOrder"] then asserts.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["statusReason"] then asserts.AssertString(struct["statusReason"]) end
	if struct["priority"] then asserts.AssertInteger(struct["priority"]) end
	if struct["state"] then asserts.AssertJQState(struct["state"]) end
	if struct["jobQueueName"] then asserts.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobQueueDetail[k], "JobQueueDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobQueueDetail
-- <p>An object representing the details of an AWS Batch job queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JQStatus] <p>The status of the job queue (for example, <code>CREATING</code> or <code>VALID</code>).</p>
-- * jobQueueArn [String] <p>The Amazon Resource Name (ARN) of the job queue.</p>
-- * computeEnvironmentOrder [ComputeEnvironmentOrders] <p>The compute environments that are attached to the job queue and the order in which job placement is preferred. Compute environments are selected for job placement in ascending order.</p>
-- * statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job queue.</p>
-- * priority [Integer] <p>The priority of the job queue. </p>
-- * state [JQState] <p>Describes the ability of the queue to accept new jobs.</p>
-- * jobQueueName [String] <p>The name of the job queue.</p>
-- Required key: jobQueueName
-- Required key: jobQueueArn
-- Required key: state
-- Required key: priority
-- Required key: computeEnvironmentOrder
-- @return JobQueueDetail structure as a key-value pair table
function M.JobQueueDetail(args)
	assert(args, "You must provide an argument table when creating JobQueueDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["jobQueueArn"] = args["jobQueueArn"],
		["computeEnvironmentOrder"] = args["computeEnvironmentOrder"],
		["statusReason"] = args["statusReason"],
		["priority"] = args["priority"],
		["state"] = args["state"],
		["jobQueueName"] = args["jobQueueName"],
	}
	asserts.AssertJobQueueDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateJobResponse = { nil }

function asserts.AssertTerminateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TerminateJobResponse[k], "TerminateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TerminateJobResponse structure as a key-value pair table
function M.TerminateJobResponse(args)
	assert(args, "You must provide an argument table when creating TerminateJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTerminateJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobQueueRequest = { ["priority"] = true, ["state"] = true, ["computeEnvironmentOrder"] = true, ["jobQueueName"] = true, nil }

function asserts.AssertCreateJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobQueueRequest to be of type 'table'")
	assert(struct["jobQueueName"], "Expected key jobQueueName to exist in table")
	assert(struct["priority"], "Expected key priority to exist in table")
	assert(struct["computeEnvironmentOrder"], "Expected key computeEnvironmentOrder to exist in table")
	if struct["priority"] then asserts.AssertInteger(struct["priority"]) end
	if struct["state"] then asserts.AssertJQState(struct["state"]) end
	if struct["computeEnvironmentOrder"] then asserts.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["jobQueueName"] then asserts.AssertString(struct["jobQueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobQueueRequest[k], "CreateJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * priority [Integer] <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the <code>priority</code> parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of <code>10</code> is given scheduling preference over a job queue with a priority value of <code>1</code>.</p>
-- * state [JQState] <p>The state of the job queue. If the job queue state is <code>ENABLED</code>, it is able to accept jobs.</p>
-- * computeEnvironmentOrder [ComputeEnvironmentOrders] <p>The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the <code>VALID</code> state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.</p>
-- * jobQueueName [String] <p>The name of the job queue.</p>
-- Required key: jobQueueName
-- Required key: priority
-- Required key: computeEnvironmentOrder
-- @return CreateJobQueueRequest structure as a key-value pair table
function M.CreateJobQueueRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["priority"] = args["priority"],
		["state"] = args["state"],
		["computeEnvironmentOrder"] = args["computeEnvironmentOrder"],
		["jobQueueName"] = args["jobQueueName"],
	}
	asserts.AssertCreateJobQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttemptDetail = { ["startedAt"] = true, ["container"] = true, ["stoppedAt"] = true, ["statusReason"] = true, nil }

function asserts.AssertAttemptDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttemptDetail to be of type 'table'")
	if struct["startedAt"] then asserts.AssertLong(struct["startedAt"]) end
	if struct["container"] then asserts.AssertAttemptContainerDetail(struct["container"]) end
	if struct["stoppedAt"] then asserts.AssertLong(struct["stoppedAt"]) end
	if struct["statusReason"] then asserts.AssertString(struct["statusReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttemptDetail[k], "AttemptDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttemptDetail
-- <p>An object representing a job attempt.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedAt [Long] <p>The Unix time stamp (in seconds and milliseconds) for when the attempt was started (when the attempt transitioned from the <code>STARTING</code> state to the <code>RUNNING</code> state).</p>
-- * container [AttemptContainerDetail] <p>Details about the container in this job attempt.</p>
-- * stoppedAt [Long] <p>The Unix time stamp (in seconds and milliseconds) for when the attempt was stopped (when the attempt transitioned from the <code>RUNNING</code> state to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
-- * statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job attempt.</p>
-- @return AttemptDetail structure as a key-value pair table
function M.AttemptDetail(args)
	assert(args, "You must provide an argument table when creating AttemptDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedAt"] = args["startedAt"],
		["container"] = args["container"],
		["stoppedAt"] = args["stoppedAt"],
		["statusReason"] = args["statusReason"],
	}
	asserts.AssertAttemptDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubmitJobResponse = { ["jobId"] = true, ["jobName"] = true, nil }

function asserts.AssertSubmitJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubmitJobResponse to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	if struct["jobName"] then asserts.AssertString(struct["jobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubmitJobResponse[k], "SubmitJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubmitJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobId [String] <p>The unique identifier for the job.</p>
-- * jobName [String] <p>The name of the job. </p>
-- Required key: jobName
-- Required key: jobId
-- @return SubmitJobResponse structure as a key-value pair table
function M.SubmitJobResponse(args)
	assert(args, "You must provide an argument table when creating SubmitJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobId"] = args["jobId"],
		["jobName"] = args["jobName"],
	}
	asserts.AssertSubmitJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateComputeEnvironmentRequest = { ["computeEnvironment"] = true, ["state"] = true, ["computeResources"] = true, ["serviceRole"] = true, nil }

function asserts.AssertUpdateComputeEnvironmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateComputeEnvironmentRequest to be of type 'table'")
	assert(struct["computeEnvironment"], "Expected key computeEnvironment to exist in table")
	if struct["computeEnvironment"] then asserts.AssertString(struct["computeEnvironment"]) end
	if struct["state"] then asserts.AssertCEState(struct["state"]) end
	if struct["computeResources"] then asserts.AssertComputeResourceUpdate(struct["computeResources"]) end
	if struct["serviceRole"] then asserts.AssertString(struct["serviceRole"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateComputeEnvironmentRequest[k], "UpdateComputeEnvironmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateComputeEnvironmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironment [String] <p>The name or full Amazon Resource Name (ARN) of the compute environment to update.</p>
-- * state [CEState] <p>The state of the compute environment. Compute environments in the <code>ENABLED</code> state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.</p>
-- * computeResources [ComputeResourceUpdate] <p>Details of the compute resources managed by the compute environment. Required for a managed compute environment.</p>
-- * serviceRole [String] <p>The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.</p> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.</p> <note> <p>Depending on how you created your AWS Batch service role, its ARN may contain the <code>service-role</code> path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the <code>service-role</code> path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.</p> </note>
-- Required key: computeEnvironment
-- @return UpdateComputeEnvironmentRequest structure as a key-value pair table
function M.UpdateComputeEnvironmentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateComputeEnvironmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironment"] = args["computeEnvironment"],
		["state"] = args["state"],
		["computeResources"] = args["computeResources"],
		["serviceRole"] = args["serviceRole"],
	}
	asserts.AssertUpdateComputeEnvironmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComputeEnvironmentDetail = { ["status"] = true, ["serviceRole"] = true, ["computeEnvironmentArn"] = true, ["computeResources"] = true, ["statusReason"] = true, ["ecsClusterArn"] = true, ["state"] = true, ["computeEnvironmentName"] = true, ["type"] = true, nil }

function asserts.AssertComputeEnvironmentDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeEnvironmentDetail to be of type 'table'")
	assert(struct["computeEnvironmentName"], "Expected key computeEnvironmentName to exist in table")
	assert(struct["computeEnvironmentArn"], "Expected key computeEnvironmentArn to exist in table")
	assert(struct["ecsClusterArn"], "Expected key ecsClusterArn to exist in table")
	if struct["status"] then asserts.AssertCEStatus(struct["status"]) end
	if struct["serviceRole"] then asserts.AssertString(struct["serviceRole"]) end
	if struct["computeEnvironmentArn"] then asserts.AssertString(struct["computeEnvironmentArn"]) end
	if struct["computeResources"] then asserts.AssertComputeResource(struct["computeResources"]) end
	if struct["statusReason"] then asserts.AssertString(struct["statusReason"]) end
	if struct["ecsClusterArn"] then asserts.AssertString(struct["ecsClusterArn"]) end
	if struct["state"] then asserts.AssertCEState(struct["state"]) end
	if struct["computeEnvironmentName"] then asserts.AssertString(struct["computeEnvironmentName"]) end
	if struct["type"] then asserts.AssertCEType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeEnvironmentDetail[k], "ComputeEnvironmentDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeEnvironmentDetail
-- <p>An object representing an AWS Batch compute environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [CEStatus] <p>The current status of the compute environment (for example, <code>CREATING</code> or <code>VALID</code>).</p>
-- * serviceRole [String] <p>The service role associated with the compute environment that allows AWS Batch to make calls to AWS API operations on your behalf.</p>
-- * computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
-- * computeResources [ComputeResource] <p>The compute resources defined for the compute environment. </p>
-- * statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the compute environment.</p>
-- * ecsClusterArn [String] <p>The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment. </p>
-- * state [CEState] <p>The state of the compute environment. The valid values are <code>ENABLED</code> or <code>DISABLED</code>. An <code>ENABLED</code> state indicates that you can register instances with the compute environment and that the associated instances can accept jobs. </p>
-- * computeEnvironmentName [String] <p>The name of the compute environment. </p>
-- * type [CEType] <p>The type of the compute environment.</p>
-- Required key: computeEnvironmentName
-- Required key: computeEnvironmentArn
-- Required key: ecsClusterArn
-- @return ComputeEnvironmentDetail structure as a key-value pair table
function M.ComputeEnvironmentDetail(args)
	assert(args, "You must provide an argument table when creating ComputeEnvironmentDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["serviceRole"] = args["serviceRole"],
		["computeEnvironmentArn"] = args["computeEnvironmentArn"],
		["computeResources"] = args["computeResources"],
		["statusReason"] = args["statusReason"],
		["ecsClusterArn"] = args["ecsClusterArn"],
		["state"] = args["state"],
		["computeEnvironmentName"] = args["computeEnvironmentName"],
		["type"] = args["type"],
	}
	asserts.AssertComputeEnvironmentDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobDetail = { ["status"] = true, ["container"] = true, ["parameters"] = true, ["jobDefinition"] = true, ["statusReason"] = true, ["jobId"] = true, ["attempts"] = true, ["arrayProperties"] = true, ["retryStrategy"] = true, ["jobQueue"] = true, ["timeout"] = true, ["dependsOn"] = true, ["startedAt"] = true, ["jobName"] = true, ["createdAt"] = true, ["stoppedAt"] = true, nil }

function asserts.AssertJobDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDetail to be of type 'table'")
	assert(struct["jobName"], "Expected key jobName to exist in table")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startedAt"], "Expected key startedAt to exist in table")
	assert(struct["jobDefinition"], "Expected key jobDefinition to exist in table")
	if struct["status"] then asserts.AssertJobStatus(struct["status"]) end
	if struct["container"] then asserts.AssertContainerDetail(struct["container"]) end
	if struct["parameters"] then asserts.AssertParametersMap(struct["parameters"]) end
	if struct["jobDefinition"] then asserts.AssertString(struct["jobDefinition"]) end
	if struct["statusReason"] then asserts.AssertString(struct["statusReason"]) end
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	if struct["attempts"] then asserts.AssertAttemptDetails(struct["attempts"]) end
	if struct["arrayProperties"] then asserts.AssertArrayPropertiesDetail(struct["arrayProperties"]) end
	if struct["retryStrategy"] then asserts.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["jobQueue"] then asserts.AssertString(struct["jobQueue"]) end
	if struct["timeout"] then asserts.AssertJobTimeout(struct["timeout"]) end
	if struct["dependsOn"] then asserts.AssertJobDependencyList(struct["dependsOn"]) end
	if struct["startedAt"] then asserts.AssertLong(struct["startedAt"]) end
	if struct["jobName"] then asserts.AssertString(struct["jobName"]) end
	if struct["createdAt"] then asserts.AssertLong(struct["createdAt"]) end
	if struct["stoppedAt"] then asserts.AssertLong(struct["stoppedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobDetail[k], "JobDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDetail
-- <p>An object representing an AWS Batch job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [JobStatus] <p>The current status for the job.</p>
-- * container [ContainerDetail] <p>An object representing the details of the container that is associated with the job.</p>
-- * parameters [ParametersMap] <p>Additional parameters passed to the job that replace parameter substitution placeholders or override any corresponding parameter defaults from the job definition. </p>
-- * jobDefinition [String] <p>The job definition that is used by this job.</p>
-- * statusReason [String] <p>A short, human-readable string to provide additional details about the current status of the job. </p>
-- * jobId [String] <p>The ID for the job.</p>
-- * attempts [AttemptDetails] <p>A list of job attempts associated with this job.</p>
-- * arrayProperties [ArrayPropertiesDetail] <p>The array properties of the job, if it is an array job.</p>
-- * retryStrategy [RetryStrategy] <p>The retry strategy to use for this job if an attempt fails.</p>
-- * jobQueue [String] <p>The Amazon Resource Name (ARN) of the job queue with which the job is associated.</p>
-- * timeout [JobTimeout] <p>The timeout configuration for the job. </p>
-- * dependsOn [JobDependencyList] <p>A list of job names or IDs on which this job depends.</p>
-- * startedAt [Long] <p>The Unix time stamp (in seconds and milliseconds) for when the job was started (when the job transitioned from the <code>STARTING</code> state to the <code>RUNNING</code> state).</p>
-- * jobName [String] <p>The name of the job.</p>
-- * createdAt [Long] <p>The Unix time stamp (in seconds and milliseconds) for when the job was created. For non-array jobs and parent array jobs, this is when the job entered the <code>SUBMITTED</code> state (at the time <a>SubmitJob</a> was called). For array child jobs, this is when the child job was spawned by its parent and entered the <code>PENDING</code> state.</p>
-- * stoppedAt [Long] <p>The Unix time stamp (in seconds and milliseconds) for when the job was stopped (when the job transitioned from the <code>RUNNING</code> state to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
-- Required key: jobName
-- Required key: jobId
-- Required key: jobQueue
-- Required key: status
-- Required key: startedAt
-- Required key: jobDefinition
-- @return JobDetail structure as a key-value pair table
function M.JobDetail(args)
	assert(args, "You must provide an argument table when creating JobDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["container"] = args["container"],
		["parameters"] = args["parameters"],
		["jobDefinition"] = args["jobDefinition"],
		["statusReason"] = args["statusReason"],
		["jobId"] = args["jobId"],
		["attempts"] = args["attempts"],
		["arrayProperties"] = args["arrayProperties"],
		["retryStrategy"] = args["retryStrategy"],
		["jobQueue"] = args["jobQueue"],
		["timeout"] = args["timeout"],
		["dependsOn"] = args["dependsOn"],
		["startedAt"] = args["startedAt"],
		["jobName"] = args["jobName"],
		["createdAt"] = args["createdAt"],
		["stoppedAt"] = args["stoppedAt"],
	}
	asserts.AssertJobDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArrayPropertiesDetail = { ["index"] = true, ["size"] = true, ["statusSummary"] = true, nil }

function asserts.AssertArrayPropertiesDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArrayPropertiesDetail to be of type 'table'")
	if struct["index"] then asserts.AssertInteger(struct["index"]) end
	if struct["size"] then asserts.AssertInteger(struct["size"]) end
	if struct["statusSummary"] then asserts.AssertArrayJobStatusSummary(struct["statusSummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArrayPropertiesDetail[k], "ArrayPropertiesDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArrayPropertiesDetail
-- <p>An object representing the array properties of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * index [Integer] <p>The job index within the array that is associated with this job. This parameter is returned for array job children.</p>
-- * size [Integer] <p>The size of the array job. This parameter is returned for parent array jobs.</p>
-- * statusSummary [ArrayJobStatusSummary] <p>A summary of the number of array job children in each available job status. This parameter is returned for parent array jobs.</p>
-- @return ArrayPropertiesDetail structure as a key-value pair table
function M.ArrayPropertiesDetail(args)
	assert(args, "You must provide an argument table when creating ArrayPropertiesDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["index"] = args["index"],
		["size"] = args["size"],
		["statusSummary"] = args["statusSummary"],
	}
	asserts.AssertArrayPropertiesDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterJobDefinitionRequest = { ["parameters"] = true, ["retryStrategy"] = true, ["timeout"] = true, ["containerProperties"] = true, ["type"] = true, ["jobDefinitionName"] = true, nil }

function asserts.AssertRegisterJobDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterJobDefinitionRequest to be of type 'table'")
	assert(struct["jobDefinitionName"], "Expected key jobDefinitionName to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["parameters"] then asserts.AssertParametersMap(struct["parameters"]) end
	if struct["retryStrategy"] then asserts.AssertRetryStrategy(struct["retryStrategy"]) end
	if struct["timeout"] then asserts.AssertJobTimeout(struct["timeout"]) end
	if struct["containerProperties"] then asserts.AssertContainerProperties(struct["containerProperties"]) end
	if struct["type"] then asserts.AssertJobDefinitionType(struct["type"]) end
	if struct["jobDefinitionName"] then asserts.AssertString(struct["jobDefinitionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterJobDefinitionRequest[k], "RegisterJobDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterJobDefinitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * parameters [ParametersMap] <p>Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults from the job definition.</p>
-- * retryStrategy [RetryStrategy] <p>The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a <a>SubmitJob</a> operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it is not retried. </p>
-- * timeout [JobTimeout] <p>The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that is specified during a <a>SubmitJob</a> operation overrides the timeout configuration defined here. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html">Job Timeouts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
-- * containerProperties [ContainerProperties] <p>An object with various properties specific for container-based jobs. This parameter is required if the <code>type</code> parameter is <code>container</code>.</p>
-- * type [JobDefinitionType] <p>The type of job definition.</p>
-- * jobDefinitionName [String] <p>The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p>
-- Required key: jobDefinitionName
-- Required key: type
-- @return RegisterJobDefinitionRequest structure as a key-value pair table
function M.RegisterJobDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating RegisterJobDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["parameters"] = args["parameters"],
		["retryStrategy"] = args["retryStrategy"],
		["timeout"] = args["timeout"],
		["containerProperties"] = args["containerProperties"],
		["type"] = args["type"],
		["jobDefinitionName"] = args["jobDefinitionName"],
	}
	asserts.AssertRegisterJobDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobDependency = { ["type"] = true, ["jobId"] = true, nil }

function asserts.AssertJobDependency(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobDependency to be of type 'table'")
	if struct["type"] then asserts.AssertArrayJobDependency(struct["type"]) end
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobDependency[k], "JobDependency contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobDependency
-- <p>An object representing an AWS Batch job dependency.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [ArrayJobDependency] <p>The type of the job dependency.</p>
-- * jobId [String] <p>The job ID of the AWS Batch job associated with this dependency.</p>
-- @return JobDependency structure as a key-value pair table
function M.JobDependency(args)
	assert(args, "You must provide an argument table when creating JobDependency")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertJobDependency(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobTimeout = { ["attemptDurationSeconds"] = true, nil }

function asserts.AssertJobTimeout(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobTimeout to be of type 'table'")
	if struct["attemptDurationSeconds"] then asserts.AssertInteger(struct["attemptDurationSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobTimeout[k], "JobTimeout contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobTimeout
-- <p>An object representing a job timeout configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attemptDurationSeconds [Integer] <p>The time duration in seconds (measured from the job attempt's <code>startedAt</code> timestamp) after which AWS Batch terminates your jobs if they have not finished.</p>
-- @return JobTimeout structure as a key-value pair table
function M.JobTimeout(args)
	assert(args, "You must provide an argument table when creating JobTimeout")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attemptDurationSeconds"] = args["attemptDurationSeconds"],
	}
	asserts.AssertJobTimeout(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeComputeEnvironmentsResponse = { ["nextToken"] = true, ["computeEnvironments"] = true, nil }

function asserts.AssertDescribeComputeEnvironmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeComputeEnvironmentsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["computeEnvironments"] then asserts.AssertComputeEnvironmentDetailList(struct["computeEnvironments"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeComputeEnvironmentsResponse[k], "DescribeComputeEnvironmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeComputeEnvironmentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeComputeEnvironments</code> request. When the results of a <code>DescribeJobDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * computeEnvironments [ComputeEnvironmentDetailList] <p>The list of compute environments.</p>
-- @return DescribeComputeEnvironmentsResponse structure as a key-value pair table
function M.DescribeComputeEnvironmentsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeComputeEnvironmentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["computeEnvironments"] = args["computeEnvironments"],
	}
	asserts.AssertDescribeComputeEnvironmentsResponse(all_args)
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

keys.CreateComputeEnvironmentResponse = { ["computeEnvironmentName"] = true, ["computeEnvironmentArn"] = true, nil }

function asserts.AssertCreateComputeEnvironmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateComputeEnvironmentResponse to be of type 'table'")
	if struct["computeEnvironmentName"] then asserts.AssertString(struct["computeEnvironmentName"]) end
	if struct["computeEnvironmentArn"] then asserts.AssertString(struct["computeEnvironmentArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateComputeEnvironmentResponse[k], "CreateComputeEnvironmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateComputeEnvironmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * computeEnvironmentName [String] <p>The name of the compute environment.</p>
-- * computeEnvironmentArn [String] <p>The Amazon Resource Name (ARN) of the compute environment. </p>
-- @return CreateComputeEnvironmentResponse structure as a key-value pair table
function M.CreateComputeEnvironmentResponse(args)
	assert(args, "You must provide an argument table when creating CreateComputeEnvironmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["computeEnvironmentName"] = args["computeEnvironmentName"],
		["computeEnvironmentArn"] = args["computeEnvironmentArn"],
	}
	asserts.AssertCreateComputeEnvironmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobQueueRequest = { ["priority"] = true, ["state"] = true, ["computeEnvironmentOrder"] = true, ["jobQueue"] = true, nil }

function asserts.AssertUpdateJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobQueueRequest to be of type 'table'")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	if struct["priority"] then asserts.AssertInteger(struct["priority"]) end
	if struct["state"] then asserts.AssertJQState(struct["state"]) end
	if struct["computeEnvironmentOrder"] then asserts.AssertComputeEnvironmentOrders(struct["computeEnvironmentOrder"]) end
	if struct["jobQueue"] then asserts.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobQueueRequest[k], "UpdateJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * priority [Integer] <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the <code>priority</code> parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of <code>10</code> is given scheduling preference over a job queue with a priority value of <code>1</code>.</p>
-- * state [JQState] <p>Describes the queue's ability to accept new jobs.</p>
-- * computeEnvironmentOrder [ComputeEnvironmentOrders] <p>Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job. </p>
-- * jobQueue [String] <p>The name or the Amazon Resource Name (ARN) of the job queue.</p>
-- Required key: jobQueue
-- @return UpdateJobQueueRequest structure as a key-value pair table
function M.UpdateJobQueueRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJobQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["priority"] = args["priority"],
		["state"] = args["state"],
		["computeEnvironmentOrder"] = args["computeEnvironmentOrder"],
		["jobQueue"] = args["jobQueue"],
	}
	asserts.AssertUpdateJobQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobsResponse = { ["jobs"] = true, nil }

function asserts.AssertDescribeJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobsResponse to be of type 'table'")
	if struct["jobs"] then asserts.AssertJobDetailList(struct["jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobsResponse[k], "DescribeJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobs [JobDetailList] <p>The list of jobs. </p>
-- @return DescribeJobsResponse structure as a key-value pair table
function M.DescribeJobsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobs"] = args["jobs"],
	}
	asserts.AssertDescribeJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerProperties = { ["mountPoints"] = true, ["readonlyRootFilesystem"] = true, ["image"] = true, ["environment"] = true, ["vcpus"] = true, ["jobRoleArn"] = true, ["user"] = true, ["volumes"] = true, ["memory"] = true, ["command"] = true, ["privileged"] = true, ["ulimits"] = true, nil }

function asserts.AssertContainerProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerProperties to be of type 'table'")
	assert(struct["image"], "Expected key image to exist in table")
	assert(struct["vcpus"], "Expected key vcpus to exist in table")
	assert(struct["memory"], "Expected key memory to exist in table")
	if struct["mountPoints"] then asserts.AssertMountPoints(struct["mountPoints"]) end
	if struct["readonlyRootFilesystem"] then asserts.AssertBoolean(struct["readonlyRootFilesystem"]) end
	if struct["image"] then asserts.AssertString(struct["image"]) end
	if struct["environment"] then asserts.AssertEnvironmentVariables(struct["environment"]) end
	if struct["vcpus"] then asserts.AssertInteger(struct["vcpus"]) end
	if struct["jobRoleArn"] then asserts.AssertString(struct["jobRoleArn"]) end
	if struct["user"] then asserts.AssertString(struct["user"]) end
	if struct["volumes"] then asserts.AssertVolumes(struct["volumes"]) end
	if struct["memory"] then asserts.AssertInteger(struct["memory"]) end
	if struct["command"] then asserts.AssertStringList(struct["command"]) end
	if struct["privileged"] then asserts.AssertBoolean(struct["privileged"]) end
	if struct["ulimits"] then asserts.AssertUlimits(struct["ulimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerProperties[k], "ContainerProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerProperties
-- <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * mountPoints [MountPoints] <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * readonlyRootFilesystem [Boolean] <p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--read-only</code> option to <code>docker run</code>.</p>
-- * image [String] <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <ul> <li> <p>Images in Amazon ECR repositories use the full registry and repository URI (for example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;</code>). </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>
-- * environment [EnvironmentVariables] <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p> <important> <p>We do not recommend using plaintext environment variables for sensitive information, such as credential data.</p> </important> <note> <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming convention is reserved for variables that are set by the AWS Batch service.</p> </note>
-- * vcpus [Integer] <p>The number of vCPUs reserved for the container. This parameter maps to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU.</p>
-- * jobRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions.</p>
-- * user [String] <p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * volumes [Volumes] <p>A list of data volumes used in a job.</p>
-- * memory [Integer] <p>The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. You must specify at least 4 MiB of memory for a job.</p> <note> <p>If you are trying to maximize your resource utilization by providing your jobs as much memory as possible for a particular instance type, see <a href="http://docs.aws.amazon.com/batch/latest/userguide/memory-management.html">Memory Management</a> in the <i>AWS Batch User Guide</i>.</p> </note>
-- * command [StringList] <p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/#cmd">https://docs.docker.com/engine/reference/builder/#cmd</a>.</p>
-- * privileged [Boolean] <p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- * ulimits [Ulimits] <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
-- Required key: image
-- Required key: vcpus
-- Required key: memory
-- @return ContainerProperties structure as a key-value pair table
function M.ContainerProperties(args)
	assert(args, "You must provide an argument table when creating ContainerProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["mountPoints"] = args["mountPoints"],
		["readonlyRootFilesystem"] = args["readonlyRootFilesystem"],
		["image"] = args["image"],
		["environment"] = args["environment"],
		["vcpus"] = args["vcpus"],
		["jobRoleArn"] = args["jobRoleArn"],
		["user"] = args["user"],
		["volumes"] = args["volumes"],
		["memory"] = args["memory"],
		["command"] = args["command"],
		["privileged"] = args["privileged"],
		["ulimits"] = args["ulimits"],
	}
	asserts.AssertContainerProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobQueueResponse = { nil }

function asserts.AssertDeleteJobQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobQueueResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobQueueResponse[k], "DeleteJobQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteJobQueueResponse structure as a key-value pair table
function M.DeleteJobQueueResponse(args)
	assert(args, "You must provide an argument table when creating DeleteJobQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteJobQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobQueueRequest = { ["jobQueue"] = true, nil }

function asserts.AssertDeleteJobQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobQueueRequest to be of type 'table'")
	assert(struct["jobQueue"], "Expected key jobQueue to exist in table")
	if struct["jobQueue"] then asserts.AssertString(struct["jobQueue"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobQueueRequest[k], "DeleteJobQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * jobQueue [String] <p>The short name or full Amazon Resource Name (ARN) of the queue to delete. </p>
-- Required key: jobQueue
-- @return DeleteJobQueueRequest structure as a key-value pair table
function M.DeleteJobQueueRequest(args)
	assert(args, "You must provide an argument table when creating DeleteJobQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["jobQueue"] = args["jobQueue"],
	}
	asserts.AssertDeleteJobQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsResponse = { ["nextToken"] = true, ["jobSummaryList"] = true, nil }

function asserts.AssertListJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResponse to be of type 'table'")
	assert(struct["jobSummaryList"], "Expected key jobSummaryList to exist in table")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["jobSummaryList"] then asserts.AssertJobSummaryList(struct["jobSummaryList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsResponse[k], "ListJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListJobs</code> request. When the results of a <code>ListJobs</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * jobSummaryList [JobSummaryList] <p>A list of job summaries that match the request.</p>
-- Required key: jobSummaryList
-- @return ListJobsResponse structure as a key-value pair table
function M.ListJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["jobSummaryList"] = args["jobSummaryList"],
	}
	asserts.AssertListJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobDefinitionsResponse = { ["nextToken"] = true, ["jobDefinitions"] = true, nil }

function asserts.AssertDescribeJobDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobDefinitionsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["jobDefinitions"] then asserts.AssertJobDefinitionList(struct["jobDefinitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobDefinitionsResponse[k], "DescribeJobDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobDefinitionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>DescribeJobDefinitions</code> request. When the results of a <code>DescribeJobDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- * jobDefinitions [JobDefinitionList] <p>The list of job definitions. </p>
-- @return DescribeJobDefinitionsResponse structure as a key-value pair table
function M.DescribeJobDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeJobDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["jobDefinitions"] = args["jobDefinitions"],
	}
	asserts.AssertDescribeJobDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobRequest = { ["reason"] = true, ["jobId"] = true, nil }

function asserts.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["jobId"], "Expected key jobId to exist in table")
	assert(struct["reason"], "Expected key reason to exist in table")
	if struct["reason"] then asserts.AssertString(struct["reason"]) end
	if struct["jobId"] then asserts.AssertString(struct["jobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobRequest[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [String] <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future <a>DescribeJobs</a> operations on the job. This message is also recorded in the AWS Batch activity logs. </p>
-- * jobId [String] <p>The AWS Batch job ID of the job to cancel.</p>
-- Required key: jobId
-- Required key: reason
-- @return CancelJobRequest structure as a key-value pair table
function M.CancelJobRequest(args)
	assert(args, "You must provide an argument table when creating CancelJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["jobId"] = args["jobId"],
	}
	asserts.AssertCancelJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertJQState(str)
	assert(str)
	assert(type(str) == "string", "Expected JQState to be of type 'string'")
end

--  
function M.JQState(str)
	asserts.AssertJQState(str)
	return str
end

function asserts.AssertCEStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CEStatus to be of type 'string'")
end

--  
function M.CEStatus(str)
	asserts.AssertCEStatus(str)
	return str
end

function asserts.AssertJobDefinitionType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobDefinitionType to be of type 'string'")
end

--  
function M.JobDefinitionType(str)
	asserts.AssertJobDefinitionType(str)
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

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertJQStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JQStatus to be of type 'string'")
end

--  
function M.JQStatus(str)
	asserts.AssertJQStatus(str)
	return str
end

function asserts.AssertCEState(str)
	assert(str)
	assert(type(str) == "string", "Expected CEState to be of type 'string'")
end

--  
function M.CEState(str)
	asserts.AssertCEState(str)
	return str
end

function asserts.AssertArrayJobDependency(str)
	assert(str)
	assert(type(str) == "string", "Expected ArrayJobDependency to be of type 'string'")
end

--  
function M.ArrayJobDependency(str)
	asserts.AssertArrayJobDependency(str)
	return str
end

function asserts.AssertCEType(str)
	assert(str)
	assert(type(str) == "string", "Expected CEType to be of type 'string'")
end

--  
function M.CEType(str)
	asserts.AssertCEType(str)
	return str
end

function asserts.AssertCRType(str)
	assert(str)
	assert(type(str) == "string", "Expected CRType to be of type 'string'")
end

--  
function M.CRType(str)
	asserts.AssertCRType(str)
	return str
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

function asserts.AssertParametersMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ParametersMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.ParametersMap(map)
	asserts.AssertParametersMap(map)
	return map
end

function asserts.AssertTagsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TagsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.TagsMap(map)
	asserts.AssertTagsMap(map)
	return map
end

function asserts.AssertArrayJobStatusSummary(map)
	assert(map)
	assert(type(map) == "table", "Expected ArrayJobStatusSummary to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertInteger(v)
	end
end

function M.ArrayJobStatusSummary(map)
	asserts.AssertArrayJobStatusSummary(map)
	return map
end

function asserts.AssertJobDependencyList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDependencyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobDependency(v)
	end
end

--  
-- List of JobDependency objects
function M.JobDependencyList(list)
	asserts.AssertJobDependencyList(list)
	return list
end

function asserts.AssertComputeEnvironmentOrders(list)
	assert(list)
	assert(type(list) == "table", "Expected ComputeEnvironmentOrders to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComputeEnvironmentOrder(v)
	end
end

--  
-- List of ComputeEnvironmentOrder objects
function M.ComputeEnvironmentOrders(list)
	asserts.AssertComputeEnvironmentOrders(list)
	return list
end

function asserts.AssertMountPoints(list)
	assert(list)
	assert(type(list) == "table", "Expected MountPoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMountPoint(v)
	end
end

--  
-- List of MountPoint objects
function M.MountPoints(list)
	asserts.AssertMountPoints(list)
	return list
end

function asserts.AssertJobSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobSummary(v)
	end
end

--  
-- List of JobSummary objects
function M.JobSummaryList(list)
	asserts.AssertJobSummaryList(list)
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

function asserts.AssertUlimits(list)
	assert(list)
	assert(type(list) == "table", "Expected Ulimits to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUlimit(v)
	end
end

--  
-- List of Ulimit objects
function M.Ulimits(list)
	asserts.AssertUlimits(list)
	return list
end

function asserts.AssertAttemptDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected AttemptDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttemptDetail(v)
	end
end

--  
-- List of AttemptDetail objects
function M.AttemptDetails(list)
	asserts.AssertAttemptDetails(list)
	return list
end

function asserts.AssertJobQueueDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobQueueDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobQueueDetail(v)
	end
end

--  
-- List of JobQueueDetail objects
function M.JobQueueDetailList(list)
	asserts.AssertJobQueueDetailList(list)
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

function asserts.AssertComputeEnvironmentDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected ComputeEnvironmentDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertComputeEnvironmentDetail(v)
	end
end

--  
-- List of ComputeEnvironmentDetail objects
function M.ComputeEnvironmentDetailList(list)
	asserts.AssertComputeEnvironmentDetailList(list)
	return list
end

function asserts.AssertJobDetailList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDetailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobDetail(v)
	end
end

--  
-- List of JobDetail objects
function M.JobDetailList(list)
	asserts.AssertJobDetailList(list)
	return list
end

function asserts.AssertJobDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobDefinition(v)
	end
end

--  
-- List of JobDefinition objects
function M.JobDefinitionList(list)
	asserts.AssertJobDefinitionList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "batch.amazonaws.com"
		end
	end
	local ss = { "batch" }
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
--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}
	for header,value in pairs(ListJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/listjobs", ListJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SubmitJob asynchronously, invoking a callback when done
-- @param SubmitJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SubmitJobAsync(SubmitJobRequest, cb)
	assert(SubmitJobRequest, "You must provide a SubmitJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SubmitJob",
	}
	for header,value in pairs(SubmitJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/submitjob", SubmitJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SubmitJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubmitJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SubmitJobSync(SubmitJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubmitJobAsync(SubmitJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJobQueue asynchronously, invoking a callback when done
-- @param UpdateJobQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobQueueAsync(UpdateJobQueueRequest, cb)
	assert(UpdateJobQueueRequest, "You must provide a UpdateJobQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateJobQueue",
	}
	for header,value in pairs(UpdateJobQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/updatejobqueue", UpdateJobQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJobQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobQueueSync(UpdateJobQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobQueueAsync(UpdateJobQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateComputeEnvironment asynchronously, invoking a callback when done
-- @param UpdateComputeEnvironmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateComputeEnvironmentAsync(UpdateComputeEnvironmentRequest, cb)
	assert(UpdateComputeEnvironmentRequest, "You must provide a UpdateComputeEnvironmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateComputeEnvironment",
	}
	for header,value in pairs(UpdateComputeEnvironmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/updatecomputeenvironment", UpdateComputeEnvironmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateComputeEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateComputeEnvironmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateComputeEnvironmentSync(UpdateComputeEnvironmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateComputeEnvironmentAsync(UpdateComputeEnvironmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterJobDefinition asynchronously, invoking a callback when done
-- @param DeregisterJobDefinitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterJobDefinitionAsync(DeregisterJobDefinitionRequest, cb)
	assert(DeregisterJobDefinitionRequest, "You must provide a DeregisterJobDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeregisterJobDefinition",
	}
	for header,value in pairs(DeregisterJobDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/deregisterjobdefinition", DeregisterJobDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterJobDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterJobDefinitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterJobDefinitionSync(DeregisterJobDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterJobDefinitionAsync(DeregisterJobDefinitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJobQueues asynchronously, invoking a callback when done
-- @param DescribeJobQueuesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobQueuesAsync(DescribeJobQueuesRequest, cb)
	assert(DescribeJobQueuesRequest, "You must provide a DescribeJobQueuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeJobQueues",
	}
	for header,value in pairs(DescribeJobQueuesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/describejobqueues", DescribeJobQueuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJobQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobQueuesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobQueuesSync(DescribeJobQueuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobQueuesAsync(DescribeJobQueuesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateComputeEnvironment asynchronously, invoking a callback when done
-- @param CreateComputeEnvironmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateComputeEnvironmentAsync(CreateComputeEnvironmentRequest, cb)
	assert(CreateComputeEnvironmentRequest, "You must provide a CreateComputeEnvironmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateComputeEnvironment",
	}
	for header,value in pairs(CreateComputeEnvironmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/createcomputeenvironment", CreateComputeEnvironmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateComputeEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateComputeEnvironmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateComputeEnvironmentSync(CreateComputeEnvironmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateComputeEnvironmentAsync(CreateComputeEnvironmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteComputeEnvironment asynchronously, invoking a callback when done
-- @param DeleteComputeEnvironmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteComputeEnvironmentAsync(DeleteComputeEnvironmentRequest, cb)
	assert(DeleteComputeEnvironmentRequest, "You must provide a DeleteComputeEnvironmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteComputeEnvironment",
	}
	for header,value in pairs(DeleteComputeEnvironmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/deletecomputeenvironment", DeleteComputeEnvironmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteComputeEnvironment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteComputeEnvironmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteComputeEnvironmentSync(DeleteComputeEnvironmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteComputeEnvironmentAsync(DeleteComputeEnvironmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeComputeEnvironments asynchronously, invoking a callback when done
-- @param DescribeComputeEnvironmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeComputeEnvironmentsAsync(DescribeComputeEnvironmentsRequest, cb)
	assert(DescribeComputeEnvironmentsRequest, "You must provide a DescribeComputeEnvironmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeComputeEnvironments",
	}
	for header,value in pairs(DescribeComputeEnvironmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/describecomputeenvironments", DescribeComputeEnvironmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeComputeEnvironments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeComputeEnvironmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeComputeEnvironmentsSync(DescribeComputeEnvironmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeComputeEnvironmentsAsync(DescribeComputeEnvironmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJobQueue asynchronously, invoking a callback when done
-- @param CreateJobQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobQueueAsync(CreateJobQueueRequest, cb)
	assert(CreateJobQueueRequest, "You must provide a CreateJobQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateJobQueue",
	}
	for header,value in pairs(CreateJobQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/createjobqueue", CreateJobQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJobQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobQueueSync(CreateJobQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobQueueAsync(CreateJobQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterJobDefinition asynchronously, invoking a callback when done
-- @param RegisterJobDefinitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterJobDefinitionAsync(RegisterJobDefinitionRequest, cb)
	assert(RegisterJobDefinitionRequest, "You must provide a RegisterJobDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RegisterJobDefinition",
	}
	for header,value in pairs(RegisterJobDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/registerjobdefinition", RegisterJobDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterJobDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterJobDefinitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterJobDefinitionSync(RegisterJobDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterJobDefinitionAsync(RegisterJobDefinitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
-- @param CancelJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}
	for header,value in pairs(CancelJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/canceljob", CancelJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelJobSync(CancelJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(CancelJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJobDefinitions asynchronously, invoking a callback when done
-- @param DescribeJobDefinitionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobDefinitionsAsync(DescribeJobDefinitionsRequest, cb)
	assert(DescribeJobDefinitionsRequest, "You must provide a DescribeJobDefinitionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeJobDefinitions",
	}
	for header,value in pairs(DescribeJobDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/describejobdefinitions", DescribeJobDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJobDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobDefinitionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobDefinitionsSync(DescribeJobDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobDefinitionsAsync(DescribeJobDefinitionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteJobQueue asynchronously, invoking a callback when done
-- @param DeleteJobQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteJobQueueAsync(DeleteJobQueueRequest, cb)
	assert(DeleteJobQueueRequest, "You must provide a DeleteJobQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteJobQueue",
	}
	for header,value in pairs(DeleteJobQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/deletejobqueue", DeleteJobQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteJobQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteJobQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteJobQueueSync(DeleteJobQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteJobQueueAsync(DeleteJobQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJobs asynchronously, invoking a callback when done
-- @param DescribeJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobsAsync(DescribeJobsRequest, cb)
	assert(DescribeJobsRequest, "You must provide a DescribeJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeJobs",
	}
	for header,value in pairs(DescribeJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/describejobs", DescribeJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobsSync(DescribeJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobsAsync(DescribeJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateJob asynchronously, invoking a callback when done
-- @param TerminateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateJobAsync(TerminateJobRequest, cb)
	assert(TerminateJobRequest, "You must provide a TerminateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TerminateJob",
	}
	for header,value in pairs(TerminateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/terminatejob", TerminateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateJobSync(TerminateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateJobAsync(TerminateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
