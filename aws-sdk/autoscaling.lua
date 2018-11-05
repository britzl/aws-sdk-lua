--- GENERATED CODE - DO NOT MODIFY
-- AWS Auto Scaling Plans (autoscaling-plans-2018-01-06)

local M = {}

M.metadata = {
	api_version = "2018-01-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "autoscaling",
	service_abbreviation = "",
	service_full_name = "AWS Auto Scaling Plans",
	signature_version = "v4",
	target_prefix = "AnyScaleScalingPlannerFrontendService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "autoscaling-plans-2018-01-06",
}

local keys = {}
local asserts = {}

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
-- <p>Concurrent updates caused an exception, for example, if you request an update to a scaling plan that already has a pending update.</p>
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
-- <p>Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded.</p>
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

keys.CreateScalingPlanResponse = { ["ScalingPlanVersion"] = true, nil }

function asserts.AssertCreateScalingPlanResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateScalingPlanResponse to be of type 'table'")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateScalingPlanResponse[k], "CreateScalingPlanResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateScalingPlanResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan. This value is always 1.</p>
-- Required key: ScalingPlanVersion
-- @return CreateScalingPlanResponse structure as a key-value pair table
function M.CreateScalingPlanResponse(args)
	assert(args, "You must provide an argument table when creating CreateScalingPlanResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
	}
	asserts.AssertCreateScalingPlanResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateScalingPlanRequest = { ["ApplicationSource"] = true, ["ScalingPlanVersion"] = true, ["ScalingPlanName"] = true, ["ScalingInstructions"] = true, nil }

function asserts.AssertUpdateScalingPlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingPlanRequest to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	if struct["ApplicationSource"] then asserts.AssertApplicationSource(struct["ApplicationSource"]) end
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	if struct["ScalingInstructions"] then asserts.AssertScalingInstructions(struct["ScalingInstructions"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateScalingPlanRequest[k], "UpdateScalingPlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingPlanRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationSource [ApplicationSource] <p>A CloudFormation stack or set of tags.</p>
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version number.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan.</p>
-- * ScalingInstructions [ScalingInstructions] <p>The scaling instructions.</p>
-- Required key: ScalingPlanName
-- Required key: ScalingPlanVersion
-- @return UpdateScalingPlanRequest structure as a key-value pair table
function M.UpdateScalingPlanRequest(args)
	assert(args, "You must provide an argument table when creating UpdateScalingPlanRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationSource"] = args["ApplicationSource"],
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["ScalingPlanName"] = args["ScalingPlanName"],
		["ScalingInstructions"] = args["ScalingInstructions"],
	}
	asserts.AssertUpdateScalingPlanRequest(all_args)
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
-- <p>An exception was thrown for a validation issue. Review the parameters provided.</p>
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
-- <p>The token provided is not valid.</p>
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

keys.DescribeScalingPlanResourcesResponse = { ["NextToken"] = true, ["ScalingPlanResources"] = true, nil }

function asserts.AssertDescribeScalingPlanResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPlanResourcesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ScalingPlanResources"] then asserts.AssertScalingPlanResources(struct["ScalingPlanResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPlanResourcesResponse[k], "DescribeScalingPlanResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPlanResourcesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- * ScalingPlanResources [ScalingPlanResources] <p>Information about the scalable resources.</p>
-- @return DescribeScalingPlanResourcesResponse structure as a key-value pair table
function M.DescribeScalingPlanResourcesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPlanResourcesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ScalingPlanResources"] = args["ScalingPlanResources"],
	}
	asserts.AssertDescribeScalingPlanResourcesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingPlan = { ["ScalingPlanVersion"] = true, ["CreationTime"] = true, ["ScalingInstructions"] = true, ["ApplicationSource"] = true, ["StatusStartTime"] = true, ["ScalingPlanName"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertScalingPlan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPlan to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	assert(struct["ApplicationSource"], "Expected key ApplicationSource to exist in table")
	assert(struct["ScalingInstructions"], "Expected key ScalingInstructions to exist in table")
	assert(struct["StatusCode"], "Expected key StatusCode to exist in table")
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["CreationTime"] then asserts.AssertTimestampType(struct["CreationTime"]) end
	if struct["ScalingInstructions"] then asserts.AssertScalingInstructions(struct["ScalingInstructions"]) end
	if struct["ApplicationSource"] then asserts.AssertApplicationSource(struct["ApplicationSource"]) end
	if struct["StatusStartTime"] then asserts.AssertTimestampType(struct["StatusStartTime"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	if struct["StatusMessage"] then asserts.AssertXmlString(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.AssertScalingPlanStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPlan[k], "ScalingPlan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPlan
-- <p>Represents a scaling plan.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan.</p>
-- * CreationTime [TimestampType] <p>The Unix timestamp when the scaling plan was created.</p>
-- * ScalingInstructions [ScalingInstructions] <p>The scaling instructions.</p>
-- * ApplicationSource [ApplicationSource] <p>The application source.</p>
-- * StatusStartTime [TimestampType] <p>The Unix timestamp when the scaling plan entered the current status.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan.</p>
-- * StatusMessage [XmlString] <p>A simple message about the current status of the scaling plan.</p>
-- * StatusCode [ScalingPlanStatusCode] <p>The status of the scaling plan.</p> <ul> <li> <p> <code>Active</code> - The scaling plan is active.</p> </li> <li> <p> <code>ActiveWithProblems</code> - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.</p> </li> <li> <p> <code>CreationInProgress</code> - The scaling plan is being created.</p> </li> <li> <p> <code>CreationFailed</code> - The scaling plan could not be created.</p> </li> <li> <p> <code>DeletionInProgress</code> - The scaling plan is being deleted.</p> </li> <li> <p> <code>DeletionFailed</code> - The scaling plan could not be deleted.</p> </li> </ul>
-- Required key: ScalingPlanName
-- Required key: ScalingPlanVersion
-- Required key: ApplicationSource
-- Required key: ScalingInstructions
-- Required key: StatusCode
-- @return ScalingPlan structure as a key-value pair table
function M.ScalingPlan(args)
	assert(args, "You must provide an argument table when creating ScalingPlan")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["CreationTime"] = args["CreationTime"],
		["ScalingInstructions"] = args["ScalingInstructions"],
		["ApplicationSource"] = args["ApplicationSource"],
		["StatusStartTime"] = args["StatusStartTime"],
		["ScalingPlanName"] = args["ScalingPlanName"],
		["StatusMessage"] = args["StatusMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertScalingPlan(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingPlansRequest = { ["ScalingPlanVersion"] = true, ["ScalingPlanNames"] = true, ["NextToken"] = true, ["ApplicationSources"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeScalingPlansRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPlansRequest to be of type 'table'")
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["ScalingPlanNames"] then asserts.AssertScalingPlanNames(struct["ScalingPlanNames"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ApplicationSources"] then asserts.AssertApplicationSources(struct["ApplicationSources"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPlansRequest[k], "DescribeScalingPlansRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPlansRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan. If you specify a scaling plan version, you must also specify a scaling plan name.</p>
-- * ScalingPlanNames [ScalingPlanNames] <p>The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.</p>
-- * NextToken [NextToken] <p>The token for the next set of results.</p>
-- * ApplicationSources [ApplicationSources] <p>The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.</p>
-- * MaxResults [MaxResults] <p>The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.</p>
-- @return DescribeScalingPlansRequest structure as a key-value pair table
function M.DescribeScalingPlansRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPlansRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["ScalingPlanNames"] = args["ScalingPlanNames"],
		["NextToken"] = args["NextToken"],
		["ApplicationSources"] = args["ApplicationSources"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeScalingPlansRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateScalingPlanResponse = { nil }

function asserts.AssertUpdateScalingPlanResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateScalingPlanResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateScalingPlanResponse[k], "UpdateScalingPlanResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateScalingPlanResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateScalingPlanResponse structure as a key-value pair table
function M.UpdateScalingPlanResponse(args)
	assert(args, "You must provide an argument table when creating UpdateScalingPlanResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateScalingPlanResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingInstruction = { ["ScalableDimension"] = true, ["TargetTrackingConfigurations"] = true, ["ResourceId"] = true, ["MinCapacity"] = true, ["ServiceNamespace"] = true, ["MaxCapacity"] = true, nil }

function asserts.AssertScalingInstruction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingInstruction to be of type 'table'")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	assert(struct["MinCapacity"], "Expected key MinCapacity to exist in table")
	assert(struct["MaxCapacity"], "Expected key MaxCapacity to exist in table")
	assert(struct["TargetTrackingConfigurations"], "Expected key TargetTrackingConfigurations to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["TargetTrackingConfigurations"] then asserts.AssertTargetTrackingConfigurations(struct["TargetTrackingConfigurations"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["MinCapacity"] then asserts.AssertResourceCapacity(struct["MinCapacity"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["MaxCapacity"] then asserts.AssertResourceCapacity(struct["MaxCapacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingInstruction[k], "ScalingInstruction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingInstruction
-- <p>Specifies the scaling configuration for a scalable resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension associated with the resource.</p> <ul> <li> <p> <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p> </li> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> </ul>
-- * TargetTrackingConfigurations [TargetTrackingConfigurations] <p>The target tracking scaling policies (up to 10).</p>
-- * ResourceId [ResourceIdMaxLen1600] <p>The ID of the resource. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p> </li> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> </ul>
-- * MinCapacity [ResourceCapacity] <p>The minimum value to scale to in response to a scale in event.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service.</p>
-- * MaxCapacity [ResourceCapacity] <p>The maximum value to scale to in response to a scale out event.</p>
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- Required key: MinCapacity
-- Required key: MaxCapacity
-- Required key: TargetTrackingConfigurations
-- @return ScalingInstruction structure as a key-value pair table
function M.ScalingInstruction(args)
	assert(args, "You must provide an argument table when creating ScalingInstruction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["TargetTrackingConfigurations"] = args["TargetTrackingConfigurations"],
		["ResourceId"] = args["ResourceId"],
		["MinCapacity"] = args["MinCapacity"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["MaxCapacity"] = args["MaxCapacity"],
	}
	asserts.AssertScalingInstruction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScalingPlanRequest = { ["ScalingPlanVersion"] = true, ["ScalingPlanName"] = true, nil }

function asserts.AssertDeleteScalingPlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPlanRequest to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteScalingPlanRequest[k], "DeleteScalingPlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPlanRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan.</p>
-- Required key: ScalingPlanName
-- Required key: ScalingPlanVersion
-- @return DeleteScalingPlanRequest structure as a key-value pair table
function M.DeleteScalingPlanRequest(args)
	assert(args, "You must provide an argument table when creating DeleteScalingPlanRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["ScalingPlanName"] = args["ScalingPlanName"],
	}
	asserts.AssertDeleteScalingPlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteScalingPlanResponse = { nil }

function asserts.AssertDeleteScalingPlanResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteScalingPlanResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteScalingPlanResponse[k], "DeleteScalingPlanResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteScalingPlanResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteScalingPlanResponse structure as a key-value pair table
function M.DeleteScalingPlanResponse(args)
	assert(args, "You must provide an argument table when creating DeleteScalingPlanResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteScalingPlanResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PredefinedScalingMetricSpecification = { ["PredefinedScalingMetricType"] = true, ["ResourceLabel"] = true, nil }

function asserts.AssertPredefinedScalingMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PredefinedScalingMetricSpecification to be of type 'table'")
	assert(struct["PredefinedScalingMetricType"], "Expected key PredefinedScalingMetricType to exist in table")
	if struct["PredefinedScalingMetricType"] then asserts.AssertScalingMetricType(struct["PredefinedScalingMetricType"]) end
	if struct["ResourceLabel"] then asserts.AssertResourceLabel(struct["ResourceLabel"]) end
	for k,_ in pairs(struct) do
		assert(keys.PredefinedScalingMetricSpecification[k], "PredefinedScalingMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PredefinedScalingMetricSpecification
-- <p>Represents a predefined metric for a target tracking policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PredefinedScalingMetricType [ScalingMetricType] <p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to Auto Scaling groups, Sport Fleet requests, and ECS services.</p>
-- * ResourceLabel [ResourceLabel] <p>Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or ECS service.</p> <p>The format is app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt;/targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt;, where:</p> <ul> <li> <p>app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the final portion of the load balancer ARN</p> </li> <li> <p>targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is the final portion of the target group ARN.</p> </li> </ul>
-- Required key: PredefinedScalingMetricType
-- @return PredefinedScalingMetricSpecification structure as a key-value pair table
function M.PredefinedScalingMetricSpecification(args)
	assert(args, "You must provide an argument table when creating PredefinedScalingMetricSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PredefinedScalingMetricType"] = args["PredefinedScalingMetricType"],
		["ResourceLabel"] = args["ResourceLabel"],
	}
	asserts.AssertPredefinedScalingMetricSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingPlanResourcesRequest = { ["ScalingPlanVersion"] = true, ["NextToken"] = true, ["ScalingPlanName"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeScalingPlanResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPlanResourcesRequest to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPlanResourcesRequest[k], "DescribeScalingPlanResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPlanResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan.</p>
-- * NextToken [NextToken] <p>The token for the next set of results.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan.</p>
-- * MaxResults [MaxResults] <p>The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.</p>
-- Required key: ScalingPlanName
-- Required key: ScalingPlanVersion
-- @return DescribeScalingPlanResourcesRequest structure as a key-value pair table
function M.DescribeScalingPlanResourcesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPlanResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["NextToken"] = args["NextToken"],
		["ScalingPlanName"] = args["ScalingPlanName"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeScalingPlanResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationSource = { ["CloudFormationStackARN"] = true, ["TagFilters"] = true, nil }

function asserts.AssertApplicationSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSource to be of type 'table'")
	if struct["CloudFormationStackARN"] then asserts.AssertXmlString(struct["CloudFormationStackARN"]) end
	if struct["TagFilters"] then asserts.AssertTagFilters(struct["TagFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSource[k], "ApplicationSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSource
-- <p>Represents an application source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudFormationStackARN [XmlString] <p>The Amazon Resource Name (ARN) of a CloudFormation stack.</p>
-- * TagFilters [TagFilters] <p>A set of tags (up to 50).</p>
-- @return ApplicationSource structure as a key-value pair table
function M.ApplicationSource(args)
	assert(args, "You must provide an argument table when creating ApplicationSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudFormationStackARN"] = args["CloudFormationStackARN"],
		["TagFilters"] = args["TagFilters"],
	}
	asserts.AssertApplicationSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateScalingPlanRequest = { ["ApplicationSource"] = true, ["ScalingPlanName"] = true, ["ScalingInstructions"] = true, nil }

function asserts.AssertCreateScalingPlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateScalingPlanRequest to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ApplicationSource"], "Expected key ApplicationSource to exist in table")
	assert(struct["ScalingInstructions"], "Expected key ScalingInstructions to exist in table")
	if struct["ApplicationSource"] then asserts.AssertApplicationSource(struct["ApplicationSource"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	if struct["ScalingInstructions"] then asserts.AssertScalingInstructions(struct["ScalingInstructions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateScalingPlanRequest[k], "CreateScalingPlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateScalingPlanRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationSource [ApplicationSource] <p>A CloudFormation stack or set of tags. You can create one scaling plan per application source.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.</p>
-- * ScalingInstructions [ScalingInstructions] <p>The scaling instructions.</p>
-- Required key: ScalingPlanName
-- Required key: ApplicationSource
-- Required key: ScalingInstructions
-- @return CreateScalingPlanRequest structure as a key-value pair table
function M.CreateScalingPlanRequest(args)
	assert(args, "You must provide an argument table when creating CreateScalingPlanRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationSource"] = args["ApplicationSource"],
		["ScalingPlanName"] = args["ScalingPlanName"],
		["ScalingInstructions"] = args["ScalingInstructions"],
	}
	asserts.AssertCreateScalingPlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScalingPlansResponse = { ["NextToken"] = true, ["ScalingPlans"] = true, nil }

function asserts.AssertDescribeScalingPlansResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScalingPlansResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ScalingPlans"] then asserts.AssertScalingPlans(struct["ScalingPlans"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScalingPlansResponse[k], "DescribeScalingPlansResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScalingPlansResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token required to get the next set of results. This value is <code>null</code> if there are no more results to return.</p>
-- * ScalingPlans [ScalingPlans] <p>Information about the scaling plans.</p>
-- @return DescribeScalingPlansResponse structure as a key-value pair table
function M.DescribeScalingPlansResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScalingPlansResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ScalingPlans"] = args["ScalingPlans"],
	}
	asserts.AssertDescribeScalingPlansResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TargetTrackingConfiguration = { ["CustomizedScalingMetricSpecification"] = true, ["EstimatedInstanceWarmup"] = true, ["ScaleOutCooldown"] = true, ["DisableScaleIn"] = true, ["PredefinedScalingMetricSpecification"] = true, ["TargetValue"] = true, ["ScaleInCooldown"] = true, nil }

function asserts.AssertTargetTrackingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetTrackingConfiguration to be of type 'table'")
	assert(struct["TargetValue"], "Expected key TargetValue to exist in table")
	if struct["CustomizedScalingMetricSpecification"] then asserts.AssertCustomizedScalingMetricSpecification(struct["CustomizedScalingMetricSpecification"]) end
	if struct["EstimatedInstanceWarmup"] then asserts.AssertCooldown(struct["EstimatedInstanceWarmup"]) end
	if struct["ScaleOutCooldown"] then asserts.AssertCooldown(struct["ScaleOutCooldown"]) end
	if struct["DisableScaleIn"] then asserts.AssertDisableScaleIn(struct["DisableScaleIn"]) end
	if struct["PredefinedScalingMetricSpecification"] then asserts.AssertPredefinedScalingMetricSpecification(struct["PredefinedScalingMetricSpecification"]) end
	if struct["TargetValue"] then asserts.AssertMetricScale(struct["TargetValue"]) end
	if struct["ScaleInCooldown"] then asserts.AssertCooldown(struct["ScaleInCooldown"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetTrackingConfiguration[k], "TargetTrackingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetTrackingConfiguration
-- <p>Represents a target tracking scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomizedScalingMetricSpecification [CustomizedScalingMetricSpecification] <p>A customized metric.</p>
-- * EstimatedInstanceWarmup [Cooldown] <p>The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.</p>
-- * ScaleOutCooldown [Cooldown] <p>The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. This value is not used if the scalable resource is an Auto Scaling group.</p> <p>While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.</p>
-- * DisableScaleIn [DisableScaleIn] <p>Indicates whether scale in by the target tracking policy is disabled. If the value is <code>true</code>, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is <code>false</code>.</p>
-- * PredefinedScalingMetricSpecification [PredefinedScalingMetricSpecification] <p>A predefined metric.</p>
-- * TargetValue [MetricScale] <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).</p>
-- * ScaleInCooldown [Cooldown] <p>The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. This value is not used if the scalable resource is an Auto Scaling group.</p> <p>The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, AWS Auto Scaling scales out your scalable target immediately.</p>
-- Required key: TargetValue
-- @return TargetTrackingConfiguration structure as a key-value pair table
function M.TargetTrackingConfiguration(args)
	assert(args, "You must provide an argument table when creating TargetTrackingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomizedScalingMetricSpecification"] = args["CustomizedScalingMetricSpecification"],
		["EstimatedInstanceWarmup"] = args["EstimatedInstanceWarmup"],
		["ScaleOutCooldown"] = args["ScaleOutCooldown"],
		["DisableScaleIn"] = args["DisableScaleIn"],
		["PredefinedScalingMetricSpecification"] = args["PredefinedScalingMetricSpecification"],
		["TargetValue"] = args["TargetValue"],
		["ScaleInCooldown"] = args["ScaleInCooldown"],
	}
	asserts.AssertTargetTrackingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomizedScalingMetricSpecification = { ["Statistic"] = true, ["Namespace"] = true, ["Dimensions"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertCustomizedScalingMetricSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomizedScalingMetricSpecification to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Statistic"], "Expected key Statistic to exist in table")
	if struct["Statistic"] then asserts.AssertMetricStatistic(struct["Statistic"]) end
	if struct["Namespace"] then asserts.AssertMetricNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then asserts.AssertMetricDimensions(struct["Dimensions"]) end
	if struct["Unit"] then asserts.AssertMetricUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomizedScalingMetricSpecification[k], "CustomizedScalingMetricSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomizedScalingMetricSpecification
-- <p>Represents a customized metric for a target tracking policy.</p>
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
-- @return CustomizedScalingMetricSpecification structure as a key-value pair table
function M.CustomizedScalingMetricSpecification(args)
	assert(args, "You must provide an argument table when creating CustomizedScalingMetricSpecification")
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
	asserts.AssertCustomizedScalingMetricSpecification(all_args)
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
-- <p>Represents a dimension for a customized metric.</p>
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
-- <p>The specified object could not be found.</p>
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

keys.ScalingPolicy = { ["PolicyName"] = true, ["PolicyType"] = true, ["TargetTrackingConfiguration"] = true, nil }

function asserts.AssertScalingPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPolicy to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	if struct["TargetTrackingConfiguration"] then asserts.AssertTargetTrackingConfiguration(struct["TargetTrackingConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPolicy[k], "ScalingPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPolicy
-- <p>Represents a scaling policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the scaling policy.</p>
-- * PolicyType [PolicyType] <p>The type of scaling policy.</p>
-- * TargetTrackingConfiguration [TargetTrackingConfiguration] <p>The target tracking scaling policy.</p>
-- Required key: PolicyName
-- Required key: PolicyType
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
		["PolicyType"] = args["PolicyType"],
		["TargetTrackingConfiguration"] = args["TargetTrackingConfiguration"],
	}
	asserts.AssertScalingPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	if struct["Values"] then asserts.AssertTagValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertXmlStringMaxLen128(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagFilter[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- <p>Represents a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [TagValues] <p>The tag values (0 to 20).</p>
-- * Key [XmlStringMaxLen128] <p>The tag key.</p>
-- @return TagFilter structure as a key-value pair table
function M.TagFilter(args)
	assert(args, "You must provide an argument table when creating TagFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertTagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScalingPlanResource = { ["ScalableDimension"] = true, ["ScalingPlanVersion"] = true, ["ResourceId"] = true, ["ScalingStatusCode"] = true, ["ScalingStatusMessage"] = true, ["ScalingPolicies"] = true, ["ServiceNamespace"] = true, ["ScalingPlanName"] = true, nil }

function asserts.AssertScalingPlanResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScalingPlanResource to be of type 'table'")
	assert(struct["ScalingPlanName"], "Expected key ScalingPlanName to exist in table")
	assert(struct["ScalingPlanVersion"], "Expected key ScalingPlanVersion to exist in table")
	assert(struct["ServiceNamespace"], "Expected key ServiceNamespace to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["ScalableDimension"], "Expected key ScalableDimension to exist in table")
	assert(struct["ScalingStatusCode"], "Expected key ScalingStatusCode to exist in table")
	if struct["ScalableDimension"] then asserts.AssertScalableDimension(struct["ScalableDimension"]) end
	if struct["ScalingPlanVersion"] then asserts.AssertScalingPlanVersion(struct["ScalingPlanVersion"]) end
	if struct["ResourceId"] then asserts.AssertResourceIdMaxLen1600(struct["ResourceId"]) end
	if struct["ScalingStatusCode"] then asserts.AssertScalingStatusCode(struct["ScalingStatusCode"]) end
	if struct["ScalingStatusMessage"] then asserts.AssertXmlString(struct["ScalingStatusMessage"]) end
	if struct["ScalingPolicies"] then asserts.AssertScalingPolicies(struct["ScalingPolicies"]) end
	if struct["ServiceNamespace"] then asserts.AssertServiceNamespace(struct["ServiceNamespace"]) end
	if struct["ScalingPlanName"] then asserts.AssertScalingPlanName(struct["ScalingPlanName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScalingPlanResource[k], "ScalingPlanResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScalingPlanResource
-- <p>Represents a scalable resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalableDimension [ScalableDimension] <p>The scalable dimension for the resource.</p> <ul> <li> <p> <code>autoscaling:autoScalingGroup:DesiredCapacity</code> - The desired capacity of an Auto Scaling group.</p> </li> <li> <p> <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p> </li> <li> <p> <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot fleet request.</p> </li> <li> <p> <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p> </li> <li> <p> <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p> </li> <li> <p> <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition.</p> </li> </ul>
-- * ScalingPlanVersion [ScalingPlanVersion] <p>The version of the scaling plan.</p>
-- * ResourceId [ResourceIdMaxLen1600] <p>The ID of the resource. This string consists of the resource type and unique identifier.</p> <ul> <li> <p>Auto Scaling group - The resource type is <code>autoScalingGroup</code> and the unique identifier is the name of the Auto Scaling group. Example: <code>autoScalingGroup/my-asg</code>.</p> </li> <li> <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name and service name. Example: <code>service/default/sample-webapp</code>.</p> </li> <li> <p>Spot fleet request - The resource type is <code>spot-fleet-request</code> and the unique identifier is the Spot fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p> </li> <li> <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the resource ID. Example: <code>table/my-table</code>.</p> </li> <li> <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the resource ID. Example: <code>table/my-table/index/my-table-index</code>.</p> </li> <li> <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:my-db-cluster</code>.</p> </li> </ul>
-- * ScalingStatusCode [ScalingStatusCode] <p>The scaling status of the resource.</p> <ul> <li> <p> <code>Active</code> - The scaling configuration is active.</p> </li> <li> <p> <code>Inactive</code> - The scaling configuration is not active because the scaling plan is being created or the scaling configuration could not be applied. Check the status message for more information.</p> </li> <li> <p> <code>PartiallyActive</code> - The scaling configuration is partially active because the scaling plan is being created or deleted or the scaling configuration could not be fully applied. Check the status message for more information.</p> </li> </ul>
-- * ScalingStatusMessage [XmlString] <p>A simple message about the current scaling status of the resource.</p>
-- * ScalingPolicies [ScalingPolicies] <p>The scaling policies.</p>
-- * ServiceNamespace [ServiceNamespace] <p>The namespace of the AWS service.</p>
-- * ScalingPlanName [ScalingPlanName] <p>The name of the scaling plan.</p>
-- Required key: ScalingPlanName
-- Required key: ScalingPlanVersion
-- Required key: ServiceNamespace
-- Required key: ResourceId
-- Required key: ScalableDimension
-- Required key: ScalingStatusCode
-- @return ScalingPlanResource structure as a key-value pair table
function M.ScalingPlanResource(args)
	assert(args, "You must provide an argument table when creating ScalingPlanResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalableDimension"] = args["ScalableDimension"],
		["ScalingPlanVersion"] = args["ScalingPlanVersion"],
		["ResourceId"] = args["ResourceId"],
		["ScalingStatusCode"] = args["ScalingStatusCode"],
		["ScalingStatusMessage"] = args["ScalingStatusMessage"],
		["ScalingPolicies"] = args["ScalingPolicies"],
		["ServiceNamespace"] = args["ServiceNamespace"],
		["ScalingPlanName"] = args["ScalingPlanName"],
	}
	asserts.AssertScalingPlanResource(all_args)
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

function asserts.AssertScalableDimension(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalableDimension to be of type 'string'")
end

--  
function M.ScalableDimension(str)
	asserts.AssertScalableDimension(str)
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

function asserts.AssertScalingStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingStatusCode to be of type 'string'")
end

--  
function M.ScalingStatusCode(str)
	asserts.AssertScalingStatusCode(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
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

function asserts.AssertScalingPlanStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingPlanStatusCode to be of type 'string'")
end

--  
function M.ScalingPlanStatusCode(str)
	asserts.AssertScalingPlanStatusCode(str)
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

function asserts.AssertXmlStringMaxLen256(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen256(str)
	asserts.AssertXmlStringMaxLen256(str)
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

function asserts.AssertXmlStringMaxLen128(str)
	assert(str)
	assert(type(str) == "string", "Expected XmlStringMaxLen128 to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.XmlStringMaxLen128(str)
	asserts.AssertXmlStringMaxLen128(str)
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

function asserts.AssertScalingMetricType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingMetricType to be of type 'string'")
end

--  
function M.ScalingMetricType(str)
	asserts.AssertScalingMetricType(str)
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

function asserts.AssertScalingPlanName(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingPlanName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ScalingPlanName(str)
	asserts.AssertScalingPlanName(str)
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

function asserts.AssertScalingPlanVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected ScalingPlanVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ScalingPlanVersion(long)
	asserts.AssertScalingPlanVersion(long)
	return long
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

function asserts.AssertScalingPlans(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPlans to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPlan(v)
	end
end

--  
-- List of ScalingPlan objects
function M.ScalingPlans(list)
	asserts.AssertScalingPlans(list)
	return list
end

function asserts.AssertTagFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected TagFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagFilter(v)
	end
end

--  
-- List of TagFilter objects
function M.TagFilters(list)
	asserts.AssertTagFilters(list)
	return list
end

function asserts.AssertScalingPlanResources(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPlanResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPlanResource(v)
	end
end

--  
-- List of ScalingPlanResource objects
function M.ScalingPlanResources(list)
	asserts.AssertScalingPlanResources(list)
	return list
end

function asserts.AssertTargetTrackingConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetTrackingConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTargetTrackingConfiguration(v)
	end
end

--  
-- List of TargetTrackingConfiguration objects
function M.TargetTrackingConfigurations(list)
	asserts.AssertTargetTrackingConfigurations(list)
	return list
end

function asserts.AssertScalingInstructions(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingInstructions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingInstruction(v)
	end
end

--  
-- List of ScalingInstruction objects
function M.ScalingInstructions(list)
	asserts.AssertScalingInstructions(list)
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

function asserts.AssertTagValues(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertXmlStringMaxLen256(v)
	end
end

--  
-- List of XmlStringMaxLen256 objects
function M.TagValues(list)
	asserts.AssertTagValues(list)
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

function asserts.AssertApplicationSources(list)
	assert(list)
	assert(type(list) == "table", "Expected ApplicationSources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationSource(v)
	end
end

--  
-- List of ApplicationSource objects
function M.ApplicationSources(list)
	asserts.AssertApplicationSources(list)
	return list
end

function asserts.AssertScalingPlanNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ScalingPlanNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScalingPlanName(v)
	end
end

--  
-- List of ScalingPlanName objects
function M.ScalingPlanNames(list)
	asserts.AssertScalingPlanNames(list)
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
--- Call DescribeScalingPlanResources asynchronously, invoking a callback when done
-- @param DescribeScalingPlanResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingPlanResourcesAsync(DescribeScalingPlanResourcesRequest, cb)
	assert(DescribeScalingPlanResourcesRequest, "You must provide a DescribeScalingPlanResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleScalingPlannerFrontendService.DescribeScalingPlanResources",
	}
	for header,value in pairs(DescribeScalingPlanResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingPlanResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingPlanResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingPlanResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingPlanResourcesSync(DescribeScalingPlanResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingPlanResourcesAsync(DescribeScalingPlanResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateScalingPlan asynchronously, invoking a callback when done
-- @param CreateScalingPlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateScalingPlanAsync(CreateScalingPlanRequest, cb)
	assert(CreateScalingPlanRequest, "You must provide a CreateScalingPlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleScalingPlannerFrontendService.CreateScalingPlan",
	}
	for header,value in pairs(CreateScalingPlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateScalingPlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateScalingPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateScalingPlanRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateScalingPlanSync(CreateScalingPlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateScalingPlanAsync(CreateScalingPlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteScalingPlan asynchronously, invoking a callback when done
-- @param DeleteScalingPlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteScalingPlanAsync(DeleteScalingPlanRequest, cb)
	assert(DeleteScalingPlanRequest, "You must provide a DeleteScalingPlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleScalingPlannerFrontendService.DeleteScalingPlan",
	}
	for header,value in pairs(DeleteScalingPlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteScalingPlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteScalingPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteScalingPlanRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteScalingPlanSync(DeleteScalingPlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteScalingPlanAsync(DeleteScalingPlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeScalingPlans asynchronously, invoking a callback when done
-- @param DescribeScalingPlansRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScalingPlansAsync(DescribeScalingPlansRequest, cb)
	assert(DescribeScalingPlansRequest, "You must provide a DescribeScalingPlansRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleScalingPlannerFrontendService.DescribeScalingPlans",
	}
	for header,value in pairs(DescribeScalingPlansRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeScalingPlansRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeScalingPlans synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScalingPlansRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScalingPlansSync(DescribeScalingPlansRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScalingPlansAsync(DescribeScalingPlansRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateScalingPlan asynchronously, invoking a callback when done
-- @param UpdateScalingPlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateScalingPlanAsync(UpdateScalingPlanRequest, cb)
	assert(UpdateScalingPlanRequest, "You must provide a UpdateScalingPlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AnyScaleScalingPlannerFrontendService.UpdateScalingPlan",
	}
	for header,value in pairs(UpdateScalingPlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateScalingPlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateScalingPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateScalingPlanRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateScalingPlanSync(UpdateScalingPlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateScalingPlanAsync(UpdateScalingPlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
