--- GENERATED CODE - DO NOT MODIFY
-- Application Auto Scaling (application-autoscaling-2016-02-06)

local M = {}

M.metadata = {
	api_version = "2016-02-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "autoscaling",
	service_abbreviation = "",
	service_full_name = "Application Auto Scaling",
	signature_version = "v4",
	target_prefix = "AnyScaleFrontendService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "application-autoscaling-2016-02-06",
}

local keys = {}
local asserts = {}

keys.DescribeScalableTargetsRequest = { ["ResourceIds"] = true, ["ServiceNamespace"] = true, ["NextToken"] = true, ["ScalableDimension"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeScalableTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalableTargetsRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	if struct["ResourceIds"] then asserts.AssertResourceIdsMaxLen1600(struct["ResourceIds"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalableTargetsRequest[k], "DescribeScalableTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalableTargetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceIds [ResourceIdsMaxLen1600] <p>The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * NextToken [XmlString] <p>The token for the next set of results.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.</p> <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results at a time, along with a <code>NextToken</code> value. To get the next set of results, include the <code>NextToken</code> value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a <code>NextToken</code> value, if applicable.</p>
-- Required key: ServiceNamespace
-- @return DescribeScalableTargetsRequest structure as a key-value pair table
function M.DescribeScalableTargetsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalableTargetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceIds"] = args["ResourceIds"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["NextToken"] = args["NextToken"],
		["ScalableDimension"] = args["ScalableDimension"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeScalableTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConcurrentUpdateException = { ["Message"] = true, nil }

function asserts.AssertConcurrentUpdateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentUpdateException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentUpdateException[k], "ConcurrentUpdateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentUpdateException
-- <p>Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ConcurrentUpdateException structure as a key-value pair table
function M.ConcurrentUpdateException(args)
	assert(args, "You must provide an argument table when creating ConcurrentUpdateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertConcurrentUpdateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["Message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>A per-account resource limit is exceeded. For more information, see <a href="http://docs.aws.amazon.com/ApplicationAutoScaling/latest/userguide/application-auto-scaling-limits.html">Application Auto Scaling Limits</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScalingPolicyRequest = { ["PolicyName"] = true, ["ServiceNamespace"] = true, ["ScalableDimension"] = true, ["ResourceId"] = true, nil }

function asserts.AssertDeleteScalingPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPolicyRequest to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	if struct["PolicyName"] then asserts.AssertResourceIdMaxLen1600(struct["PolicyName"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteScalingPolicyRequest[k], "DeleteScalingPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [ResourceIdMaxLen1600] <p>The name of the scaling policy.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- Required key: PolicyName
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- @return DeleteScalingPolicyRequest structure as a key-value pair table
function M.DeleteScalingPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteScalingPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDeleteScalingPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingActivitiesRequest = { ["ResourceId"] = true, ["ServiceNamespace"] = true, ["NextToken"] = true, ["ScalableDimension"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeScalingActivitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingActivitiesRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingActivitiesRequest[k], "DescribeScalingActivitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingActivitiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * NextToken [XmlString] <p>The token for the next set of results.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.</p> <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results at a time, along with a <code>NextToken</code> value. To get the next set of results, include the <code>NextToken</code> value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a <code>NextToken</code> value, if applicable.</p>
-- Required key: ServiceNamespace
-- @return DescribeScalingActivitiesRequest structure as a key-value pair table
function M.DescribeScalingActivitiesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalingActivitiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["NextToken"] = args["NextToken"],
		["ScalableDimension"] = args["ScalableDimension"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeScalingActivitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterScalableTargetRequest = { ["ScalableDimension"] = true, ["ResourceId"] = true, ["RoleARN"] = true, ["MinCapacity"] = true, ["ServiceNamespace"] = true, ["MaxCapacity"] = true, nil }

function asserts.AssertRegisterScalableTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterScalableTargetRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["RoleARN"] then asserts.AssertResourceIdMaxLen1600(struct["RoleARN"]) end
	if struct["MinCapacity"] then asserts.AssertResourceCapacity(struct["MinCapacity"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["MaxCapacity"] then asserts.AssertResourceCapacity(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterScalableTargetRequest[k], "RegisterScalableTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterScalableTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * RoleARN [ResourceIdMaxLen1600] <p>Application Auto Scaling creates a service-linked role that grants it permissions to modify the scalable target on your behalf. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/application/userguide/application-autoscaling-service-linked-roles.html">Service-Linked Roles for Application Auto Scaling</a>.</p> <p>For resources that are not supported using a service-linked role, this parameter is required and must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your behalf.</p>
-- * MinCapacity [ResourceCapacity] <p>The minimum value to scale to in response to a scale in event. This parameter is required if you are registering a scalable target.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * MaxCapacity [ResourceCapacity] <p>The maximum value to scale to in response to a scale out event. This parameter is required if you are registering a scalable target.</p>
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- @return RegisterScalableTargetRequest structure as a key-value pair table
function M.RegisterScalableTargetRequest(args)
	assert(args, "You must provide an argument table when creating RegisterScalableTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["RoleARN"] = args["RoleARN"],
		["MinCapacity"] = args["MinCapacity"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["MaxCapacity"] = args["MaxCapacity"],
	}
	asserts.AssertRegisterScalableTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScheduledActionResponse = { nil }

function asserts.AssertPutScheduledActionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScheduledActionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutScheduledActionResponse[k], "PutScheduledActionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScheduledActionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutScheduledActionResponse structure as a key-value pair table
function M.PutScheduledActionResponse(args)
	assert(args, "You must provide an argument table when creating PutScheduledActionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutScheduledActionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServiceException = { ["Message"] = true, nil }

function asserts.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceException[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- <p>The service encountered an internal error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InternalServiceException structure as a key-value pair table
function M.InternalServiceException(args)
	assert(args, "You must provide an argument table when creating InternalServiceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServiceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidationException = { ["Message"] = true, nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- <p>An exception was thrown for a validation issue. Review the available parameters for the API request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
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
		["Message"] = args["Message"],
	}
	asserts.AssertValidationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The next token supplied was invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PredefinedMetricSpecification = { ["PredefinedMetricType"] = true, ["ResourceLabel"] = true, nil }

function asserts.AssertPredefinedMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredefinedMetricSpecification to be of type 'table'")
	assert(struct["PredefinedMetricType"], "Expected key PredefinedMetricType to exist in table")
	if struct["PredefinedMetricType"] then asserts.AssertMetricType(struct["PredefinedMetricType"]) end
	if struct["ResourceLabel"] then asserts.AssertResourceLabel(struct["ResourceLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredefinedMetricSpecification[k], "PredefinedMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredefinedMetricSpecification
-- <p>Configures a predefined metric for a target tracking policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PredefinedMetricType [MetricType] <p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to Spot fleet requests and ECS services.</p>
-- * ResourceLabel [ResourceLabel] <p>Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target group attached to the Spot fleet request or ECS service.</p> <p>The format is app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;, where:</p> <ul> <li> <p>app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the final portion of the load balancer ARN</p> </li> <li> <p>targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is the final portion of the target group ARN.</p> </li> </ul>
-- Required key: PredefinedMetricType
-- @return PredefinedMetricSpecification structure as a key-value pair table
function M.PredefinedMetricSpecification(args)
	assert(args, "You must provide an argument table when creating PredefinedMetricSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PredefinedMetricType"] = args["PredefinedMetricType"],
		["ResourceLabel"] = args["ResourceLabel"],
	}
	asserts.AssertPredefinedMetricSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepAdjustment = { ["ScalingAdjustment"] = true, ["MetricIntervalLowerBound"] = true, ["MetricIntervalUpperBound"] = true, nil }

function asserts.AssertStepAdjustment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepAdjustment to be of type 'table'")
	assert(struct["ScalingAdjustment"], "Expected key ScalingAdjustment to exist in table")
	if struct["ScalingAdjustment"] then asserts.AssertScalingAdjustment(struct["ScalingAdjustment"]) end
	if struct["MetricIntervalLowerBound"] then asserts.AssertMetricScale(struct["MetricIntervalLowerBound"]) end
	if struct["MetricIntervalUpperBound"] then asserts.AssertMetricScale(struct["MetricIntervalUpperBound"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepAdjustment[k], "StepAdjustment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepAdjustment
-- <p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingAdjustment [ScalingAdjustment] <p>The amount by which to scale, based on the specified adjustment type. A positive value adds to the current scalable dimension while a negative number removes from the current scalable dimension.</p>
-- * MetricIntervalLowerBound [MetricScale] <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the lower bound is inclusive (the metric must be greater than or equal to the threshold plus the lower bound). Otherwise, it is exclusive (the metric must be greater than the threshold plus the lower bound). A null value indicates negative infinity.</p>
-- * MetricIntervalUpperBound [MetricScale] <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If the metric value is above the breach threshold, the upper bound is exclusive (the metric must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the metric must be less than or equal to the threshold plus the upper bound). A null value indicates positive infinity.</p> <p>The upper bound must be greater than the lower bound.</p>
-- Required key: ScalingAdjustment
-- @return StepAdjustment structure as a key-value pair table
function M.StepAdjustment(args)
	assert(args, "You must provide an argument table when creating StepAdjustment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingAdjustment"] = args["ScalingAdjustment"],
		["MetricIntervalLowerBound"] = args["MetricIntervalLowerBound"],
		["MetricIntervalUpperBound"] = args["MetricIntervalUpperBound"],
	}
	asserts.AssertStepAdjustment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScheduledActionsRequest = { ["ScalableDimension"] = true, ["ResourceId"] = true, ["MaxResults"] = true, ["ScheduledActionNames"] = true, ["ServiceNamespace"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScheduledActionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduledActionsRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ScheduledActionNames"] then asserts.AssertResourceIdsMaxLen1600(struct["ScheduledActionNames"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScheduledActionsRequest[k], "DescribeScheduledActionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduledActionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>The maximum number of scheduled action results. This value can be between 1 and 50. The default value is 50.</p> <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results at a time, along with a <code>NextToken</code> value. To get the next set of results, include the <code>NextToken</code> value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a <code>NextToken</code> value, if applicable.</p>
-- * ScheduledActionNames [ResourceIdsMaxLen1600] <p>The names of the scheduled actions to describe.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * NextToken [XmlString] <p>The token for the next set of results.</p>
-- Required key: ServiceNamespace
-- @return DescribeScheduledActionsRequest structure as a key-value pair table
function M.DescribeScheduledActionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScheduledActionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["MaxResults"] = args["MaxResults"],
		["ScheduledActionNames"] = args["ScheduledActionNames"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScheduledActionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterScalableTargetRequest = { ["ResourceId"] = true, ["ServiceNamespace"] = true, ["ScalableDimension"] = true, nil }

function asserts.AssertDeregisterScalableTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterScalableTargetRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterScalableTargetRequest[k], "DeregisterScalableTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterScalableTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- @return DeregisterScalableTargetRequest structure as a key-value pair table
function M.DeregisterScalableTargetRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterScalableTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["ScalableDimension"] = args["ScalableDimension"],
	}
	asserts.AssertDeregisterScalableTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScheduledActionRequest = { ["ResourceId"] = true, ["ServiceNamespace"] = true, ["ScalableDimension"] = true, ["ScheduledActionName"] = true, nil }

function asserts.AssertDeleteScheduledActionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScheduledActionRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ScheduledActionName"] then asserts.AssertResourceIdMaxLen1600(struct["ScheduledActionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteScheduledActionRequest[k], "DeleteScheduledActionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScheduledActionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ScheduledActionName [ResourceIdMaxLen1600] <p>The name of the scheduled action.</p>
-- Required key: ServiceNamespace
-- Required key: ScheduledActionName
-- Required key: ResourceId
-- @return DeleteScheduledActionRequest structure as a key-value pair table
function M.DeleteScheduledActionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteScheduledActionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["ScalableDimension"] = args["ScalableDimension"],
		["ScheduledActionName"] = args["ScheduledActionName"],
	}
	asserts.AssertDeleteScheduledActionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScheduledActionRequest = { ["ScalableDimension"] = true, ["Schedule"] = true, ["ResourceId"] = true, ["ScalableTargetAction"] = true, ["ScheduledActionName"] = true, ["StartTime"] = true, ["ServiceNamespace"] = true, ["EndTime"] = true, nil }

function asserts.AssertPutScheduledActionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScheduledActionRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["Schedule"] then asserts.AssertResourceIdMaxLen1600(struct["Schedule"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ScalableTargetAction"] then asserts.AssertScalableTargetAction(struct["ScalableTargetAction"]) end
	if struct["ScheduledActionName"] then asserts.AssertScheduledActionName(struct["ScheduledActionName"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScheduledActionRequest[k], "PutScheduledActionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScheduledActionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This parameter is required if you are creating a scheduled action. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * Schedule [ResourceIdMaxLen1600] <p>The schedule for this action. The following formats are supported:</p> <ul> <li> <p>At expressions - <code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code> </p> </li> <li> <p>Rate expressions - <code>rate(<i>value</i> <i>unit</i>)</code> </p> </li> <li> <p>Cron expressions - <code>cron(<i>fields</i>)</code> </p> </li> </ul> <p>At expressions are useful for one-time schedules. Specify the time, in UTC.</p> <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p> <p>For more information about cron expressions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ScalableTargetAction [ScalableTargetAction] <p>The new minimum and maximum capacity. You can set both values or just one. During the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.</p>
-- * ScheduledActionName [ScheduledActionName] <p>The name of the scheduled action.</p>
-- * StartTime [TimestampType] <p>The date and time for the scheduled action to start.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * EndTime [TimestampType] <p>The date and time for the scheduled action to end.</p>
-- Required key: ServiceNamespace
-- Required key: ScheduledActionName
-- Required key: ResourceId
-- @return PutScheduledActionRequest structure as a key-value pair table
function M.PutScheduledActionRequest(args)
	assert(args, "You must provide an argument table when creating PutScheduledActionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["Schedule"] = args["Schedule"],
		["ResourceId"] = args["ResourceId"],
		["ScalableTargetAction"] = args["ScalableTargetAction"],
		["ScheduledActionName"] = args["ScheduledActionName"],
		["StartTime"] = args["StartTime"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertPutScheduledActionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingActivitiesResponse = { ["ScalingActivities"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScalingActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingActivitiesResponse to be of type 'table'")
	if struct["ScalingActivities"] then asserts.AssertScalingActivities(struct["ScalingActivities"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingActivitiesResponse[k], "DescribeScalingActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingActivitiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingActivities [ScalingActivities] <p>A list of scaling activity objects.</p>
-- * NextToken [XmlString] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- @return DescribeScalingActivitiesResponse structure as a key-value pair table
function M.DescribeScalingActivitiesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalingActivitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingActivities"] = args["ScalingActivities"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScalingActivitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScheduledActionsResponse = { ["ScheduledActions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScheduledActionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduledActionsResponse to be of type 'table'")
	if struct["ScheduledActions"] then asserts.AssertScheduledActions(struct["ScheduledActions"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScheduledActionsResponse[k], "DescribeScheduledActionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduledActionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduledActions [ScheduledActions] <p>Information about the scheduled actions.</p>
-- * NextToken [XmlString] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- @return DescribeScheduledActionsResponse structure as a key-value pair table
function M.DescribeScheduledActionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScheduledActionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduledActions"] = args["ScheduledActions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScheduledActionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalableTargetAction = { ["MinCapacity"] = true, ["MaxCapacity"] = true, nil }

function asserts.AssertScalableTargetAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalableTargetAction to be of type 'table'")
	if struct["MinCapacity"] then asserts.AssertResourceCapacity(struct["MinCapacity"]) end
	if struct["MaxCapacity"] then asserts.AssertResourceCapacity(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalableTargetAction[k], "ScalableTargetAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalableTargetAction
-- <p>Represents the minimum and maximum capacity for a scheduled action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MinCapacity [ResourceCapacity] <p>The minimum capacity.</p>
-- * MaxCapacity [ResourceCapacity] <p>The maximum capacity.</p>
-- @return ScalableTargetAction structure as a key-value pair table
function M.ScalableTargetAction(args)
	assert(args, "You must provide an argument table when creating ScalableTargetAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MinCapacity"] = args["MinCapacity"],
		["MaxCapacity"] = args["MaxCapacity"],
	}
	asserts.AssertScalableTargetAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduledAction = { ["ScalableDimension"] = true, ["Schedule"] = true, ["ResourceId"] = true, ["CreationTime"] = true, ["ScheduledActionARN"] = true, ["ScalableTargetAction"] = true, ["ScheduledActionName"] = true, ["StartTime"] = true, ["ServiceNamespace"] = true, ["EndTime"] = true, nil }

function asserts.AssertScheduledAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduledAction to be of type 'table'")
	assert(struct["ScheduledActionName"], "Expected key ScheduledActionName to exist in table")
	assert(struct["ScheduledActionARN"], "Expected key ScheduledActionARN to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["Schedule"], "Expected key Schedule to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["Schedule"] then asserts.AssertResourceIdMaxLen1600(struct["Schedule"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["CreationTime"] then asserts.AssertTimestampType(struct["CreationTime"]) end
	if struct["ScheduledActionARN"] then asserts.AssertResourceIdMaxLen1600(struct["ScheduledActionARN"]) end
	if struct["ScalableTargetAction"] then asserts.AssertScalableTargetAction(struct["ScalableTargetAction"]) end
	if struct["ScheduledActionName"] then asserts.AssertScheduledActionName(struct["ScheduledActionName"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduledAction[k], "ScheduledAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduledAction
-- <p>Represents a scheduled action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * Schedule [ResourceIdMaxLen1600] <p>The schedule for this action. The following formats are supported:</p> <ul> <li> <p>At expressions - <code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code> </p> </li> <li> <p>Rate expressions - <code>rate(<i>value</i> <i>unit</i>)</code> </p> </li> <li> <p>Cron expressions - <code>cron(<i>fields</i>)</code> </p> </li> </ul> <p>At expressions are useful for one-time schedules. Specify the time, in UTC.</p> <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p> <p>For more information about cron expressions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * CreationTime [TimestampType] <p>The date and time that the scheduled action was created.</p>
-- * ScheduledActionARN [ResourceIdMaxLen1600] <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
-- * ScalableTargetAction [ScalableTargetAction] <p>The new minimum and maximum capacity. You can set both values or just one. During the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.</p>
-- * ScheduledActionName [ScheduledActionName] <p>The name of the scheduled action.</p>
-- * StartTime [TimestampType] <p>The date and time that the action is scheduled to begin.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * EndTime [TimestampType] <p>The date and time that the action is scheduled to end.</p>
-- Required key: ScheduledActionName
-- Required key: ScheduledActionARN
-- Required key: ServiceNamespace
-- Required key: Schedule
-- Required key: ResourceId
-- Required key: CreationTime
-- @return ScheduledAction structure as a key-value pair table
function M.ScheduledAction(args)
	assert(args, "You must provide an argument table when creating ScheduledAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["Schedule"] = args["Schedule"],
		["ResourceId"] = args["ResourceId"],
		["CreationTime"] = args["CreationTime"],
		["ScheduledActionARN"] = args["ScheduledActionARN"],
		["ScalableTargetAction"] = args["ScalableTargetAction"],
		["ScheduledActionName"] = args["ScheduledActionName"],
		["StartTime"] = args["StartTime"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertScheduledAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StepScalingPolicyConfiguration = { ["Cooldown"] = true, ["MetricAggregationType"] = true, ["MinAdjustmentMagnitude"] = true, ["StepAdjustments"] = true, ["AdjustmentType"] = true, nil }

function asserts.AssertStepScalingPolicyConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepScalingPolicyConfiguration to be of type 'table'")
	if struct["Cooldown"] then asserts.AssertCooldown(struct["Cooldown"]) end
	if struct["MetricAggregationType"] then asserts.AssertMetricAggregationType(struct["MetricAggregationType"]) end
	if struct["MinAdjustmentMagnitude"] then asserts.AssertMinAdjustmentMagnitude(struct["MinAdjustmentMagnitude"]) end
	if struct["StepAdjustments"] then asserts.AssertStepAdjustments(struct["StepAdjustments"]) end
	if struct["AdjustmentType"] then asserts.AssertAdjustmentType(struct["AdjustmentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepScalingPolicyConfiguration[k], "StepScalingPolicyConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepScalingPolicyConfiguration
-- <p>Represents a step scaling policy configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cooldown [Cooldown] <p>The amount of time, in seconds, after a scaling activity completes where previous trigger-related scaling activities can influence future scaling events.</p> <p>For scale out policies, while the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out. For example, an alarm triggers a step scaling policy to scale out an Amazon ECS service by 2 tasks, the scaling activity completes successfully, and a cooldown period of 5 minutes starts. During the Cooldown period, if the alarm triggers the same policy again but at a more aggressive step adjustment to scale out the service by 3 tasks, the 2 tasks that were added in the previous scale out event are considered part of that capacity and only 1 additional task is added to the desired count.</p> <p>For scale in policies, the cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, Application Auto Scaling scales out your scalable target immediately.</p>
-- * MetricAggregationType [MetricAggregationType] <p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code>.</p>
-- * MinAdjustmentMagnitude [MinAdjustmentMagnitude] <p>The minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is <code>PercentChangeInCapacity</code>, the scaling policy changes the scalable dimension of the scalable target by this amount.</p>
-- * StepAdjustments [StepAdjustments] <p>A set of adjustments that enable you to scale based on the size of the alarm breach.</p>
-- * AdjustmentType [AdjustmentType] <p>The adjustment type, which specifies how the <code>ScalingAdjustment</code> parameter in a <a>StepAdjustment</a> is interpreted.</p>
-- @return StepScalingPolicyConfiguration structure as a key-value pair table
function M.StepScalingPolicyConfiguration(args)
	assert(args, "You must provide an argument table when creating StepScalingPolicyConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cooldown"] = args["Cooldown"],
		["MetricAggregationType"] = args["MetricAggregationType"],
		["MinAdjustmentMagnitude"] = args["MinAdjustmentMagnitude"],
		["StepAdjustments"] = args["StepAdjustments"],
		["AdjustmentType"] = args["AdjustmentType"],
	}
	asserts.AssertStepScalingPolicyConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterScalableTargetResponse = { nil }

function asserts.AssertDeregisterScalableTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterScalableTargetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterScalableTargetResponse[k], "DeregisterScalableTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterScalableTargetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterScalableTargetResponse structure as a key-value pair table
function M.DeregisterScalableTargetResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterScalableTargetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterScalableTargetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingPoliciesRequest = { ["ScalableDimension"] = true, ["ResourceId"] = true, ["MaxResults"] = true, ["PolicyNames"] = true, ["ServiceNamespace"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScalingPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesRequest to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["PolicyNames"] then asserts.AssertResourceIdsMaxLen1600(struct["PolicyNames"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPoliciesRequest[k], "DescribeScalingPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier. If you specify a scalable dimension, you must also specify a resource ID.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50.</p> <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results at a time, along with a <code>NextToken</code> value. To get the next set of results, include the <code>NextToken</code> value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a <code>NextToken</code> value, if applicable.</p>
-- * PolicyNames [ResourceIdsMaxLen1600] <p>The names of the scaling policies to describe.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * NextToken [XmlString] <p>The token for the next set of results.</p>
-- Required key: ServiceNamespace
-- @return DescribeScalingPoliciesRequest structure as a key-value pair table
function M.DescribeScalingPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["MaxResults"] = args["MaxResults"],
		["PolicyNames"] = args["PolicyNames"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScalingPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Alarm = { ["AlarmName"] = true, ["AlarmARN"] = true, nil }

function asserts.AssertAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alarm to be of type 'table'")
	assert(struct["AlarmName"], "Expected key AlarmName to exist in table")
	assert(struct["AlarmARN"], "Expected key AlarmARN to exist in table")
	if struct["AlarmName"] then asserts.AssertResourceId(struct["AlarmName"]) end
	if struct["AlarmARN"] then asserts.AssertResourceId(struct["AlarmARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Alarm[k], "Alarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alarm
-- <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmName [ResourceId] <p>The name of the alarm.</p>
-- * AlarmARN [ResourceId] <p>The Amazon Resource Name (ARN) of the alarm.</p>
-- Required key: AlarmName
-- Required key: AlarmARN
-- @return Alarm structure as a key-value pair table
function M.Alarm(args)
	assert(args, "You must provide an argument table when creating Alarm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmName"] = args["AlarmName"],
		["AlarmARN"] = args["AlarmARN"],
	}
	asserts.AssertAlarm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingActivity = { ["ScalableDimension"] = true, ["Description"] = true, ["ResourceId"] = true, ["ActivityId"] = true, ["Details"] = true, ["StartTime"] = true, ["ServiceNamespace"] = true, ["EndTime"] = true, ["Cause"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertScalingActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingActivity to be of type 'table'")
	assert(struct["ActivityId"], "Expected key ActivityId to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Cause"], "Expected key Cause to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["Description"] then asserts.AssertXmlString(struct["Description"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ActivityId"] then asserts.AssertResourceId(struct["ActivityId"]) end
	if struct["Details"] then asserts.AssertXmlString(struct["Details"]) end
	if struct["StartTime"] then asserts.AssertTimestampType(struct["StartTime"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["EndTime"] then asserts.AssertTimestampType(struct["EndTime"]) end
	if struct["Cause"] then asserts.AssertXmlString(struct["Cause"]) end
	if struct["StatusMessage"] then asserts.AssertXmlString(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.AssertScalingActivityStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingActivity[k], "ScalingActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingActivity
-- <p>Represents a scaling activity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * Description [XmlString] <p>A simple description of what action the scaling activity intends to accomplish.</p>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * ActivityId [ResourceId] <p>The unique identifier of the scaling activity.</p>
-- * Details [XmlString] <p>The details about the scaling activity.</p>
-- * StartTime [TimestampType] <p>The Unix timestamp for when the scaling activity began.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * EndTime [TimestampType] <p>The Unix timestamp for when the scaling activity ended.</p>
-- * Cause [XmlString] <p>A simple description of what caused the scaling activity to happen.</p>
-- * StatusMessage [XmlString] <p>A simple message about the current status of the scaling activity.</p>
-- * StatusCode [ScalingActivityStatusCode] <p>Indicates the status of the scaling activity.</p>
-- Required key: ActivityId
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- Required key: Description
-- Required key: Cause
-- Required key: StartTime
-- Required key: StatusCode
-- @return ScalingActivity structure as a key-value pair table
function M.ScalingActivity(args)
	assert(args, "You must provide an argument table when creating ScalingActivity")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["Description"] = args["Description"],
		["ResourceId"] = args["ResourceId"],
		["ActivityId"] = args["ActivityId"],
		["Details"] = args["Details"],
		["StartTime"] = args["StartTime"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["EndTime"] = args["EndTime"],
		["Cause"] = args["Cause"],
		["StatusMessage"] = args["StatusMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertScalingActivity(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScalingPolicyResponse = { ["Alarms"] = true, ["PolicyARN"] = true, nil }

function asserts.AssertPutScalingPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyResponse to be of type 'table'")
	assert(struct["PolicyARN"], "Expected key PolicyARN to exist in table")
	if struct["Alarms"] then asserts.AssertAlarms(struct["Alarms"]) end
	if struct["PolicyARN"] then asserts.AssertResourceIdMaxLen1600(struct["PolicyARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScalingPolicyResponse[k], "PutScalingPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Alarms [Alarms] <p>The CloudWatch alarms created for the target tracking policy.</p>
-- * PolicyARN [ResourceIdMaxLen1600] <p>The Amazon Resource Name (ARN) of the resulting scaling policy.</p>
-- Required key: PolicyARN
-- @return PutScalingPolicyResponse structure as a key-value pair table
function M.PutScalingPolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutScalingPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Alarms"] = args["Alarms"],
		["PolicyARN"] = args["PolicyARN"],
	}
	asserts.AssertPutScalingPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedResourceAccessException = { ["Message"] = true, nil }

function asserts.AssertFailedResourceAccessException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedResourceAccessException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedResourceAccessException[k], "FailedResourceAccessException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedResourceAccessException
-- <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have permission to call the CloudWatch <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return FailedResourceAccessException structure as a key-value pair table
function M.FailedResourceAccessException(args)
	assert(args, "You must provide an argument table when creating FailedResourceAccessException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertFailedResourceAccessException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingPoliciesResponse = { ["ScalingPolicies"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScalingPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPoliciesResponse to be of type 'table'")
	if struct["ScalingPolicies"] then asserts.AssertScalingPolicies(struct["ScalingPolicies"]) end
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPoliciesResponse[k], "DescribeScalingPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPolicies [ScalingPolicies] <p>Information about the scaling policies.</p>
-- * NextToken [XmlString] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- @return DescribeScalingPoliciesResponse structure as a key-value pair table
function M.DescribeScalingPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPolicies"] = args["ScalingPolicies"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScalingPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomizedMetricSpecification = { ["Statistic"] = true, ["Namespace"] = true, ["Dimensions"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertCustomizedMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomizedMetricSpecification to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Statistic"], "Expected key Statistic to exist in table")
	if struct["Statistic"] then asserts.AssertMetricStatistic(struct["Statistic"]) end
	if struct["Namespace"] then asserts.AssertMetricNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then asserts.AssertMetricDimensions(struct["Dimensions"]) end
	if struct["Unit"] then asserts.AssertMetricUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomizedMetricSpecification[k], "CustomizedMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomizedMetricSpecification
-- <p>Configures a customized metric for a target tracking policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statistic [MetricStatistic] <p>The statistic of the metric.</p>
-- * Namespace [MetricNamespace] <p>The namespace of the metric.</p>
-- * Dimensions [MetricDimensions] <p>The dimensions of the metric.</p>
-- * Unit [MetricUnit] <p>The unit of the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- Required key: MetricName
-- Required key: Namespace
-- Required key: Statistic
-- @return CustomizedMetricSpecification structure as a key-value pair table
function M.CustomizedMetricSpecification(args)
	assert(args, "You must provide an argument table when creating CustomizedMetricSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statistic"] = args["Statistic"],
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCustomizedMetricSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingPolicy = { ["PolicyName"] = true, ["ScalableDimension"] = true, ["ResourceId"] = true, ["CreationTime"] = true, ["StepScalingPolicyConfiguration"] = true, ["PolicyARN"] = true, ["PolicyType"] = true, ["TargetTrackingScalingPolicyConfiguration"] = true, ["Alarms"] = true, ["ServiceNamespace"] = true, nil }

function asserts.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	assert(struct["PolicyARN"], "Expected key PolicyARN to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["CreationTime"] then asserts.AssertTimestampType(struct["CreationTime"]) end
	if struct["StepScalingPolicyConfiguration"] then asserts.AssertStepScalingPolicyConfiguration(struct["StepScalingPolicyConfiguration"]) end
	if struct["PolicyARN"] then asserts.AssertResourceIdMaxLen1600(struct["PolicyARN"]) end
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	if struct["TargetTrackingScalingPolicyConfiguration"] then asserts.AssertTargetTrackingScalingPolicyConfiguration(struct["TargetTrackingScalingPolicyConfiguration"]) end
	if struct["Alarms"] then asserts.AssertAlarms(struct["Alarms"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPolicy[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- <p>Represents a scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the scaling policy.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * CreationTime [TimestampType] <p>The Unix timestamp for when the scaling policy was created.</p>
-- * StepScalingPolicyConfiguration [StepScalingPolicyConfiguration] <p>A step scaling policy.</p>
-- * PolicyARN [ResourceIdMaxLen1600] <p>The Amazon Resource Name (ARN) of the scaling policy.</p>
-- * PolicyType [PolicyType] <p>The scaling policy type.</p>
-- * TargetTrackingScalingPolicyConfiguration [TargetTrackingScalingPolicyConfiguration] <p>A target tracking policy.</p>
-- * Alarms [Alarms] <p>The CloudWatch alarms associated with the scaling policy.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- Required key: PolicyARN
-- Required key: PolicyName
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- Required key: PolicyType
-- Required key: CreationTime
-- @return ScalingPolicy structure as a key-value pair table
function M.ScalingPolicy(args)
	assert(args, "You must provide an argument table when creating ScalingPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["CreationTime"] = args["CreationTime"],
		["StepScalingPolicyConfiguration"] = args["StepScalingPolicyConfiguration"],
		["PolicyARN"] = args["PolicyARN"],
		["PolicyType"] = args["PolicyType"],
		["TargetTrackingScalingPolicyConfiguration"] = args["TargetTrackingScalingPolicyConfiguration"],
		["Alarms"] = args["Alarms"],
		["ServiceNamespace"] = args["ServiceNamespace"],
	}
	asserts.AssertScalingPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalableTargetsResponse = { ["NextToken"] = true, ["ScalableTargets"] = true, nil }

function asserts.AssertDescribeScalableTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalableTargetsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertXmlString(struct["NextToken"]) end
	if struct["ScalableTargets"] then asserts.AssertScalableTargets(struct["ScalableTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalableTargetsResponse[k], "DescribeScalableTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalableTargetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [XmlString] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- * ScalableTargets [ScalableTargets] <p>The scalable targets that match the request parameters.</p>
-- @return DescribeScalableTargetsResponse structure as a key-value pair table
function M.DescribeScalableTargetsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalableTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ScalableTargets"] = args["ScalableTargets"],
	}
	asserts.AssertDescribeScalableTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDimension = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertMetricDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertMetricDimensionName(struct["Name"]) end
	if struct["Value"] then asserts.AssertMetricDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDimension[k], "MetricDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDimension
-- <p>Describes the dimension of a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [MetricDimensionName] <p>The name of the dimension.</p>
-- * Value [MetricDimensionValue] <p>The value of the dimension.</p>
-- Required key: Name
-- Required key: Value
-- @return MetricDimension structure as a key-value pair table
function M.MetricDimension(args)
	assert(args, "You must provide an argument table when creating MetricDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertMetricDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ObjectNotFoundException = { ["Message"] = true, nil }

function asserts.AssertObjectNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ObjectNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ObjectNotFoundException[k], "ObjectNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ObjectNotFoundException
-- <p>The specified object could not be found. For any operation that depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any operation that deletes or deregisters a resource, this exception is thrown if the resource cannot be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ObjectNotFoundException structure as a key-value pair table
function M.ObjectNotFoundException(args)
	assert(args, "You must provide an argument table when creating ObjectNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertObjectNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScalingPolicyResponse = { nil }

function asserts.AssertDeleteScalingPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteScalingPolicyResponse[k], "DeleteScalingPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteScalingPolicyResponse structure as a key-value pair table
function M.DeleteScalingPolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteScalingPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteScalingPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalableTarget = { ["ScalableDimension"] = true, ["ResourceId"] = true, ["RoleARN"] = true, ["CreationTime"] = true, ["MinCapacity"] = true, ["ServiceNamespace"] = true, ["MaxCapacity"] = true, nil }

function asserts.AssertScalableTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalableTarget to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	assert(struct["MinCapacity"], "Expected key MinCapacity to exist in table")
	assert(struct["MaxCapacity"], "Expected key MaxCapacity to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["RoleARN"] then asserts.AssertResourceIdMaxLen1600(struct["RoleARN"]) end
	if struct["CreationTime"] then asserts.AssertTimestampType(struct["CreationTime"]) end
	if struct["MinCapacity"] then asserts.AssertResourceCapacity(struct["MinCapacity"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["MaxCapacity"] then asserts.AssertResourceCapacity(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalableTarget[k], "ScalableTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalableTarget
-- <p>Represents a scalable target.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scalable target. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * RoleARN [ResourceIdMaxLen1600] <p>The ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your behalf.</p>
-- * CreationTime [TimestampType] <p>The Unix timestamp for when the scalable target was created.</p>
-- * MinCapacity [ResourceCapacity] <p>The minimum value to scale to in response to a scale in event.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- * MaxCapacity [ResourceCapacity] <p>The maximum value to scale to in response to a scale out event.</p>
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- Required key: MinCapacity
-- Required key: MaxCapacity
-- Required key: RoleARN
-- Required key: CreationTime
-- @return ScalableTarget structure as a key-value pair table
function M.ScalableTarget(args)
	assert(args, "You must provide an argument table when creating ScalableTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["RoleARN"] = args["RoleARN"],
		["CreationTime"] = args["CreationTime"],
		["MinCapacity"] = args["MinCapacity"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["MaxCapacity"] = args["MaxCapacity"],
	}
	asserts.AssertScalableTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScheduledActionResponse = { nil }

function asserts.AssertDeleteScheduledActionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScheduledActionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteScheduledActionResponse[k], "DeleteScheduledActionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScheduledActionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteScheduledActionResponse structure as a key-value pair table
function M.DeleteScheduledActionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteScheduledActionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteScheduledActionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterScalableTargetResponse = { nil }

function asserts.AssertRegisterScalableTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterScalableTargetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RegisterScalableTargetResponse[k], "RegisterScalableTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterScalableTargetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RegisterScalableTargetResponse structure as a key-value pair table
function M.RegisterScalableTargetResponse(args)
	assert(args, "You must provide an argument table when creating RegisterScalableTargetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRegisterScalableTargetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutScalingPolicyRequest = { ["PolicyName"] = true, ["ScalableDimension"] = true, ["ResourceId"] = true, ["StepScalingPolicyConfiguration"] = true, ["PolicyType"] = true, ["TargetTrackingScalingPolicyConfiguration"] = true, ["ServiceNamespace"] = true, nil }

function asserts.AssertPutScalingPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutScalingPolicyRequest to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["StepScalingPolicyConfiguration"] then asserts.AssertStepScalingPolicyConfiguration(struct["StepScalingPolicyConfiguration"]) end
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	if struct["TargetTrackingScalingPolicyConfiguration"] then asserts.AssertTargetTrackingScalingPolicyConfiguration(struct["TargetTrackingScalingPolicyConfiguration"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutScalingPolicyRequest[k], "PutScalingPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutScalingPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the scaling policy.</p>
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p> <ul> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p> </li> <li> <p> <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> <li> <p> <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an Amazon SageMaker model endpoint variant.</p> </li> <li> <p> <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p> </li> </ul>
-- * ResourceId [ResourceIdMaxLen1600] <p>The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID. Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p> </li> <li> <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name. Example: <code>fleet/sample-fleet</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> <li> <p>Amazon SageMaker endpoint variants - The resource type is <code>variant</code> and the unique identifier is the resource ID. Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p> </li> <li> <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider.</p> </li> </ul>
-- * StepScalingPolicyConfiguration [StepScalingPolicyConfiguration] <p>A step scaling policy.</p> <p>This parameter is required if you are creating a policy and the policy type is <code>StepScaling</code>.</p>
-- * PolicyType [PolicyType] <p>The policy type. This parameter is required if you are creating a policy.</p> <p>For DynamoDB, only <code>TargetTrackingScaling</code> is supported. For Amazon ECS, Spot Fleet, and Amazon RDS, both <code>StepScaling</code> and <code>TargetTrackingScaling</code> are supported. For any other service, only <code>StepScaling</code> is supported.</p>
-- * TargetTrackingScalingPolicyConfiguration [TargetTrackingScalingPolicyConfiguration] <p>A target tracking policy.</p> <p>This parameter is required if you are creating a policy and the policy type is <code>TargetTrackingScaling</code>.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service that provides the resource or <code>custom-resource</code> for a resource provided by your own application or service. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
-- Required key: PolicyName
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- @return PutScalingPolicyRequest structure as a key-value pair table
function M.PutScalingPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutScalingPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["ScalableDimension"] = args["ScalableDimension"],
		["ResourceId"] = args["ResourceId"],
		["StepScalingPolicyConfiguration"] = args["StepScalingPolicyConfiguration"],
		["PolicyType"] = args["PolicyType"],
		["TargetTrackingScalingPolicyConfiguration"] = args["TargetTrackingScalingPolicyConfiguration"],
		["ServiceNamespace"] = args["ServiceNamespace"],
	}
	asserts.AssertPutScalingPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetTrackingScalingPolicyConfiguration = { ["ScaleOutCooldown"] = true, ["DisableScaleIn"] = true, ["CustomizedMetricSpecification"] = true, ["TargetValue"] = true, ["PredefinedMetricSpecification"] = true, ["ScaleInCooldown"] = true, nil }

function asserts.AssertTargetTrackingScalingPolicyConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetTrackingScalingPolicyConfiguration to be of type 'table'")
	assert(struct["TargetValue"], "Expected key TargetValue to exist in table")
	if struct["ScaleOutCooldown"] then asserts.AssertCooldown(struct["ScaleOutCooldown"]) end
	if struct["DisableScaleIn"] then asserts.AssertDisableScaleIn(struct["DisableScaleIn"]) end
	if struct["CustomizedMetricSpecification"] then asserts.AssertCustomizedMetricSpecification(struct["CustomizedMetricSpecification"]) end
	if struct["TargetValue"] then asserts.AssertMetricScale(struct["TargetValue"]) end
	if struct["PredefinedMetricSpecification"] then asserts.AssertPredefinedMetricSpecification(struct["PredefinedMetricSpecification"]) end
	if struct["ScaleInCooldown"] then asserts.AssertCooldown(struct["ScaleInCooldown"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetTrackingScalingPolicyConfiguration[k], "TargetTrackingScalingPolicyConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetTrackingScalingPolicyConfiguration
-- <p>Represents a target tracking scaling policy configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScaleOutCooldown [Cooldown] <p>The amount of time, in seconds, after a scale out activity completes before another scale out activity can start.</p> <p>While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.</p>
-- * DisableScaleIn [DisableScaleIn] <p>Indicates whether scale in by the target tracking policy is disabled. If the value is <code>true</code>, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is <code>false</code>.</p>
-- * CustomizedMetricSpecification [CustomizedMetricSpecification] <p>A customized metric.</p>
-- * TargetValue [MetricScale] <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).</p>
-- * PredefinedMetricSpecification [PredefinedMetricSpecification] <p>A predefined metric.</p>
-- * ScaleInCooldown [Cooldown] <p>The amount of time, in seconds, after a scale in activity completes before another scale in activity can start.</p> <p>The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, Application Auto Scaling scales out your scalable target immediately.</p>
-- Required key: TargetValue
-- @return TargetTrackingScalingPolicyConfiguration structure as a key-value pair table
function M.TargetTrackingScalingPolicyConfiguration(args)
	assert(args, "You must provide an argument table when creating TargetTrackingScalingPolicyConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScaleOutCooldown"] = args["ScaleOutCooldown"],
		["DisableScaleIn"] = args["DisableScaleIn"],
		["CustomizedMetricSpecification"] = args["CustomizedMetricSpecification"],
		["TargetValue"] = args["TargetValue"],
		["PredefinedMetricSpecification"] = args["PredefinedMetricSpecification"],
		["ScaleInCooldown"] = args["ScaleInCooldown"],
	}
	asserts.AssertTargetTrackingScalingPolicyConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
	return str
end

function asserts.AssertMetricStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricStatistic to be of type 'string'")
end

--  
function M.MetricStatistic(str)
	asserts.AssertMetricStatistic(str)
	return str
end

function asserts.AssertScalingActivityStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingActivityStatusCode to be of type 'string'")
end

--  
function M.ScalingActivityStatusCode(str)
	asserts.AssertScalingActivityStatusCode(str)
	return str
end

function asserts.AssertMetricType(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricType to be of type 'string'")
end

--  
function M.MetricType(str)
	asserts.AssertMetricType(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertMetricDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricDimensionName to be of type 'string'")
end

--  
function M.MetricDimensionName(str)
	asserts.AssertMetricDimensionName(str)
	return str
end

function asserts.AssertXmlString(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlString to be of type 'string'")
end

--  
function M.XmlString(str)
	asserts.AssertXmlString(str)
	return str
end

function asserts.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
end

--  
function M.MetricNamespace(str)
	asserts.AssertMetricNamespace(str)
	return str
end

function asserts.AssertMetricAggregationType(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricAggregationType to be of type 'string'")
end

--  
function M.MetricAggregationType(str)
	asserts.AssertMetricAggregationType(str)
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

function asserts.AssertResourceIdMaxLen1600(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceIdMaxLen1600 to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceIdMaxLen1600(str)
	asserts.AssertResourceIdMaxLen1600(str)
	return str
end

function asserts.AssertServiceNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceNamespace to be of type 'string'")
end

--  
function M.ServiceNamespace(str)
	asserts.AssertServiceNamespace(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertScalableDimension(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalableDimension to be of type 'string'")
end

--  
function M.ScalableDimension(str)
	asserts.AssertScalableDimension(str)
	return str
end

function asserts.AssertResourceLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceLabel to be of type 'string'")
	assert(#str <= 1023, "Expected string to be max 1023 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceLabel(str)
	asserts.AssertResourceLabel(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
	return str
end

function asserts.AssertScheduledActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduledActionName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ScheduledActionName(str)
	asserts.AssertScheduledActionName(str)
	return str
end

function asserts.AssertAdjustmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected AdjustmentType to be of type 'string'")
end

--  
function M.AdjustmentType(str)
	asserts.AssertAdjustmentType(str)
	return str
end

function asserts.AssertMetricDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricDimensionValue to be of type 'string'")
end

--  
function M.MetricDimensionValue(str)
	asserts.AssertMetricDimensionValue(str)
	return str
end

function asserts.AssertMetricScale(double)
	assert(double)
	assert(type(double) == "number", "Expected MetricScale to be of type 'number'")
end

function M.MetricScale(double)
	asserts.AssertMetricScale(double)
	return double
end

function asserts.AssertMinAdjustmentMagnitude(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MinAdjustmentMagnitude to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MinAdjustmentMagnitude(integer)
	asserts.AssertMinAdjustmentMagnitude(integer)
	return integer
end

function asserts.AssertScalingAdjustment(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ScalingAdjustment to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ScalingAdjustment(integer)
	asserts.AssertScalingAdjustment(integer)
	return integer
end

function asserts.AssertResourceCapacity(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResourceCapacity to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResourceCapacity(integer)
	asserts.AssertResourceCapacity(integer)
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

function asserts.AssertCooldown(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Cooldown to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Cooldown(integer)
	asserts.AssertCooldown(integer)
	return integer
end

function asserts.AssertDisableScaleIn(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisableScaleIn to be of type 'boolean'")
end

function M.DisableScaleIn(boolean)
	asserts.AssertDisableScaleIn(boolean)
	return boolean
end

function asserts.AssertTimestampType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampType to be of type 'string'")
end

function M.TimestampType(timestamp)
	asserts.AssertTimestampType(timestamp)
	return timestamp
end

function asserts.AssertResourceIdsMaxLen1600(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdsMaxLen1600 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceIdMaxLen1600(v)
	end
end

--  
-- List of ResourceIdMaxLen1600 objects
function M.ResourceIdsMaxLen1600(list)
	asserts.AssertResourceIdsMaxLen1600(list)
	return list
end

function asserts.AssertScheduledActions(list)
	assert(list)
	assert(type(list) == "table", "Expected ScheduledActions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScheduledAction(v)
	end
end

--  
-- List of ScheduledAction objects
function M.ScheduledActions(list)
	asserts.AssertScheduledActions(list)
	return list
end

function asserts.AssertStepAdjustments(list)
	assert(list)
	assert(type(list) == "table", "Expected StepAdjustments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStepAdjustment(v)
	end
end

--  
-- List of StepAdjustment objects
function M.StepAdjustments(list)
	asserts.AssertStepAdjustments(list)
	return list
end

function asserts.AssertScalableTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalableTargets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalableTarget(v)
	end
end

--  
-- List of ScalableTarget objects
function M.ScalableTargets(list)
	asserts.AssertScalableTargets(list)
	return list
end

function asserts.AssertScalingPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPolicy(v)
	end
end

--  
-- List of ScalingPolicy objects
function M.ScalingPolicies(list)
	asserts.AssertScalingPolicies(list)
	return list
end

function asserts.AssertAlarms(list)
	assert(list)
	assert(type(list) == "table", "Expected Alarms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlarm(v)
	end
end

--  
-- List of Alarm objects
function M.Alarms(list)
	asserts.AssertAlarms(list)
	return list
end

function asserts.AssertMetricDimensions(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDimensions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDimension(v)
	end
end

--  
-- List of MetricDimension objects
function M.MetricDimensions(list)
	asserts.AssertMetricDimensions(list)
	return list
end

function asserts.AssertScalingActivities(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingActivities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingActivity(v)
	end
end

--  
-- List of ScalingActivity objects
function M.ScalingActivities(list)
	asserts.AssertScalingActivities(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "autoscaling.amazonaws.com"
		end
	end
	local ss = { "autoscaling" }
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
--- Call DescribeScalingActivities asynchronously, invoking a callback when done
-- @param DescribeScalingActivitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingActivitiesAsync(DescribeScalingActivitiesRequest, cb)
	assert(DescribeScalingActivitiesRequest, "You must provide a DescribeScalingActivitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DescribeScalingActivities",
	}
	for header,value in pairs(DescribeScalingActivitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingActivitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingActivitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingActivitiesSync(DescribeScalingActivitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingActivitiesAsync(DescribeScalingActivitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingPolicies asynchronously, invoking a callback when done
-- @param DescribeScalingPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingPoliciesAsync(DescribeScalingPoliciesRequest, cb)
	assert(DescribeScalingPoliciesRequest, "You must provide a DescribeScalingPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DescribeScalingPolicies",
	}
	for header,value in pairs(DescribeScalingPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingPoliciesSync(DescribeScalingPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingPoliciesAsync(DescribeScalingPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteScheduledAction asynchronously, invoking a callback when done
-- @param DeleteScheduledActionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteScheduledActionAsync(DeleteScheduledActionRequest, cb)
	assert(DeleteScheduledActionRequest, "You must provide a DeleteScheduledActionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DeleteScheduledAction",
	}
	for header,value in pairs(DeleteScheduledActionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteScheduledActionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteScheduledAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteScheduledActionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteScheduledActionSync(DeleteScheduledActionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteScheduledActionAsync(DeleteScheduledActionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutScalingPolicy asynchronously, invoking a callback when done
-- @param PutScalingPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutScalingPolicyAsync(PutScalingPolicyRequest, cb)
	assert(PutScalingPolicyRequest, "You must provide a PutScalingPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.PutScalingPolicy",
	}
	for header,value in pairs(PutScalingPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutScalingPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutScalingPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutScalingPolicySync(PutScalingPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutScalingPolicyAsync(PutScalingPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterScalableTarget asynchronously, invoking a callback when done
-- @param RegisterScalableTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterScalableTargetAsync(RegisterScalableTargetRequest, cb)
	assert(RegisterScalableTargetRequest, "You must provide a RegisterScalableTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.RegisterScalableTarget",
	}
	for header,value in pairs(RegisterScalableTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterScalableTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterScalableTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterScalableTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterScalableTargetSync(RegisterScalableTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterScalableTargetAsync(RegisterScalableTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterScalableTarget asynchronously, invoking a callback when done
-- @param DeregisterScalableTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterScalableTargetAsync(DeregisterScalableTargetRequest, cb)
	assert(DeregisterScalableTargetRequest, "You must provide a DeregisterScalableTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DeregisterScalableTarget",
	}
	for header,value in pairs(DeregisterScalableTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterScalableTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterScalableTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterScalableTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterScalableTargetSync(DeregisterScalableTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterScalableTargetAsync(DeregisterScalableTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutScheduledAction asynchronously, invoking a callback when done
-- @param PutScheduledActionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutScheduledActionAsync(PutScheduledActionRequest, cb)
	assert(PutScheduledActionRequest, "You must provide a PutScheduledActionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.PutScheduledAction",
	}
	for header,value in pairs(PutScheduledActionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutScheduledActionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutScheduledAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutScheduledActionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutScheduledActionSync(PutScheduledActionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutScheduledActionAsync(PutScheduledActionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteScalingPolicy asynchronously, invoking a callback when done
-- @param DeleteScalingPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteScalingPolicyAsync(DeleteScalingPolicyRequest, cb)
	assert(DeleteScalingPolicyRequest, "You must provide a DeleteScalingPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DeleteScalingPolicy",
	}
	for header,value in pairs(DeleteScalingPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteScalingPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteScalingPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteScalingPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteScalingPolicySync(DeleteScalingPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteScalingPolicyAsync(DeleteScalingPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalableTargets asynchronously, invoking a callback when done
-- @param DescribeScalableTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalableTargetsAsync(DescribeScalableTargetsRequest, cb)
	assert(DescribeScalableTargetsRequest, "You must provide a DescribeScalableTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DescribeScalableTargets",
	}
	for header,value in pairs(DescribeScalableTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalableTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalableTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalableTargetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalableTargetsSync(DescribeScalableTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalableTargetsAsync(DescribeScalableTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScheduledActions asynchronously, invoking a callback when done
-- @param DescribeScheduledActionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScheduledActionsAsync(DescribeScheduledActionsRequest, cb)
	assert(DescribeScheduledActionsRequest, "You must provide a DescribeScheduledActionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleFrontendService.DescribeScheduledActions",
	}
	for header,value in pairs(DescribeScheduledActionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScheduledActionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScheduledActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScheduledActionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScheduledActionsSync(DescribeScheduledActionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScheduledActionsAsync(DescribeScheduledActionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
