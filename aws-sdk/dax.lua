--- GENERATED CODE - DO NOT MODIFY
-- Amazon DynamoDB Accelerator (DAX) (dax-2017-04-19)

local M = {}

M.metadata = {
	api_version = "2017-04-19",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "dax",
	service_abbreviation = "Amazon DAX",
	service_full_name = "Amazon DynamoDB Accelerator (DAX)",
	signature_version = "v4",
	target_prefix = "AmazonDAXV3",
	timestamp_format = "",
	global_endpoint = "",
	uid = "dax-2017-04-19",
}

local ClusterNotFoundFault_keys = { nil }

function M.AssertClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterNotFoundFault_keys[k], "ClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundFault
-- <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
function M.ClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundFault")
	local t = { 
	}
	M.AssertClusterNotFoundFault(t)
	return t
end

local DescribeParametersResponse_keys = { "NextToken" = true, "Parameters" = true, nil }

function M.AssertDescribeParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Parameters"] then M.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParametersResponse_keys[k], "DescribeParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersResponse
--  
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param Parameters [ParameterList] <p>A list of parameters within a parameter group. Each element in the list represents one parameter.</p>
function M.DescribeParametersResponse(NextToken, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Parameters"] = Parameters,
	}
	M.AssertDescribeParametersResponse(t)
	return t
end

local ListTagsRequest_keys = { "ResourceName" = true, "NextToken" = true, nil }

function M.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsRequest_keys[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param ResourceName [String] <p>The name of the DAX resource to which the tags belong.</p>
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.</p>
-- Required parameter: ResourceName
function M.ListTagsRequest(ResourceName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceName"] = ResourceName,
		["NextToken"] = NextToken,
	}
	M.AssertListTagsRequest(t)
	return t
end

local UpdateParameterGroupRequest_keys = { "ParameterGroupName" = true, "ParameterNameValues" = true, nil }

function M.AssertUpdateParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["ParameterNameValues"], "Expected key ParameterNameValues to exist in table")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterNameValues"] then M.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(UpdateParameterGroupRequest_keys[k], "UpdateParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateParameterGroupRequest
--  
-- @param ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param ParameterNameValues [ParameterNameValueList] <p>An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.</p>
-- Required parameter: ParameterGroupName
-- Required parameter: ParameterNameValues
function M.UpdateParameterGroupRequest(ParameterGroupName, ParameterNameValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
		["ParameterNameValues"] = ParameterNameValues,
	}
	M.AssertUpdateParameterGroupRequest(t)
	return t
end

local DeleteClusterResponse_keys = { "Cluster" = true, nil }

function M.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterResponse_keys[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster that is being deleted.</p>
function M.DeleteClusterResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertDeleteClusterResponse(t)
	return t
end

local DeleteParameterGroupResponse_keys = { "DeletionMessage" = true, nil }

function M.AssertDeleteParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterGroupResponse to be of type 'table'")
	if struct["DeletionMessage"] then M.AssertString(struct["DeletionMessage"]) end
	for k,_ in pairs(struct) do
		assert(DeleteParameterGroupResponse_keys[k], "DeleteParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterGroupResponse
--  
-- @param DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the parameter group).</p>
function M.DeleteParameterGroupResponse(DeletionMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterGroupResponse")
	local t = { 
		["DeletionMessage"] = DeletionMessage,
	}
	M.AssertDeleteParameterGroupResponse(t)
	return t
end

local InvalidClusterStateFault_keys = { nil }

function M.AssertInvalidClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterStateFault_keys[k], "InvalidClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterStateFault
-- <p>The requested DAX cluster is not in the <i>available</i> state.</p>
function M.InvalidClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterStateFault")
	local t = { 
	}
	M.AssertInvalidClusterStateFault(t)
	return t
end

local IncreaseReplicationFactorResponse_keys = { "Cluster" = true, nil }

function M.AssertIncreaseReplicationFactorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicationFactorResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(IncreaseReplicationFactorResponse_keys[k], "IncreaseReplicationFactorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicationFactorResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster. with its new replication factor.</p>
function M.IncreaseReplicationFactorResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseReplicationFactorResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertIncreaseReplicationFactorResponse(t)
	return t
end

local DeleteParameterGroupRequest_keys = { "ParameterGroupName" = true, nil }

function M.AssertDeleteParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteParameterGroupRequest_keys[k], "DeleteParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterGroupRequest
--  
-- @param ParameterGroupName [String] <p>The name of the parameter group to delete.</p>
-- Required parameter: ParameterGroupName
function M.DeleteParameterGroupRequest(ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
	}
	M.AssertDeleteParameterGroupRequest(t)
	return t
end

local ParameterGroup_keys = { "ParameterGroupName" = true, "Description" = true, nil }

function M.AssertParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroup to be of type 'table'")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ParameterGroup_keys[k], "ParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroup
-- <p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>
-- @param ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param Description [String] <p>A description of the parameter group.</p>
function M.ParameterGroup(ParameterGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroup")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
		["Description"] = Description,
	}
	M.AssertParameterGroup(t)
	return t
end

local InsufficientClusterCapacityFault_keys = { nil }

function M.AssertInsufficientClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientClusterCapacityFault_keys[k], "InsufficientClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientClusterCapacityFault
-- <p>There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster). </p>
function M.InsufficientClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientClusterCapacityFault")
	local t = { 
	}
	M.AssertInsufficientClusterCapacityFault(t)
	return t
end

local DeleteClusterRequest_keys = { "ClusterName" = true, nil }

function M.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterRequest_keys[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param ClusterName [String] <p>The name of the cluster to be deleted.</p>
-- Required parameter: ClusterName
function M.DeleteClusterRequest(ClusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterRequest")
	local t = { 
		["ClusterName"] = ClusterName,
	}
	M.AssertDeleteClusterRequest(t)
	return t
end

local InvalidParameterGroupStateFault_keys = { nil }

function M.AssertInvalidParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterGroupStateFault_keys[k], "InvalidParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterGroupStateFault
-- <p>One or more parameters in a parameter group are in an invalid state.</p>
function M.InvalidParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterGroupStateFault")
	local t = { 
	}
	M.AssertInvalidParameterGroupStateFault(t)
	return t
end

local DeleteSubnetGroupResponse_keys = { "DeletionMessage" = true, nil }

function M.AssertDeleteSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubnetGroupResponse to be of type 'table'")
	if struct["DeletionMessage"] then M.AssertString(struct["DeletionMessage"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSubnetGroupResponse_keys[k], "DeleteSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubnetGroupResponse
--  
-- @param DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the subnet group).</p>
function M.DeleteSubnetGroupResponse(DeletionMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubnetGroupResponse")
	local t = { 
		["DeletionMessage"] = DeletionMessage,
	}
	M.AssertDeleteSubnetGroupResponse(t)
	return t
end

local CreateSubnetGroupResponse_keys = { "SubnetGroup" = true, nil }

function M.AssertCreateSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubnetGroupResponse to be of type 'table'")
	if struct["SubnetGroup"] then M.AssertSubnetGroup(struct["SubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubnetGroupResponse_keys[k], "CreateSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubnetGroupResponse
--  
-- @param SubnetGroup [SubnetGroup] <p>Represents the output of a <i>CreateSubnetGroup</i> operation.</p>
function M.CreateSubnetGroupResponse(SubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubnetGroupResponse")
	local t = { 
		["SubnetGroup"] = SubnetGroup,
	}
	M.AssertCreateSubnetGroupResponse(t)
	return t
end

local DescribeDefaultParametersRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeDefaultParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultParametersRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDefaultParametersRequest_keys[k], "DescribeDefaultParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultParametersRequest
--  
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeDefaultParametersRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultParametersRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeDefaultParametersRequest(t)
	return t
end

local DescribeSubnetGroupsRequest_keys = { "NextToken" = true, "SubnetGroupNames" = true, "MaxResults" = true, nil }

function M.AssertDescribeSubnetGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubnetGroupsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["SubnetGroupNames"] then M.AssertSubnetGroupNameList(struct["SubnetGroupNames"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubnetGroupsRequest_keys[k], "DescribeSubnetGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubnetGroupsRequest
--  
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param SubnetGroupNames [SubnetGroupNameList] <p>The name of the subnet group.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeSubnetGroupsRequest(NextToken, SubnetGroupNames, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubnetGroupsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["SubnetGroupNames"] = SubnetGroupNames,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeSubnetGroupsRequest(t)
	return t
end

local DeleteSubnetGroupRequest_keys = { "SubnetGroupName" = true, nil }

function M.AssertDeleteSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	if struct["SubnetGroupName"] then M.AssertString(struct["SubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSubnetGroupRequest_keys[k], "DeleteSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubnetGroupRequest
--  
-- @param SubnetGroupName [String] <p>The name of the subnet group to delete.</p>
-- Required parameter: SubnetGroupName
function M.DeleteSubnetGroupRequest(SubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubnetGroupRequest")
	local t = { 
		["SubnetGroupName"] = SubnetGroupName,
	}
	M.AssertDeleteSubnetGroupRequest(t)
	return t
end

local SubnetGroupQuotaExceededFault_keys = { nil }

function M.AssertSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetGroupQuotaExceededFault_keys[k], "SubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupQuotaExceededFault
-- <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
function M.SubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertSubnetGroupQuotaExceededFault(t)
	return t
end

local DecreaseReplicationFactorResponse_keys = { "Cluster" = true, nil }

function M.AssertDecreaseReplicationFactorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicationFactorResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(DecreaseReplicationFactorResponse_keys[k], "DecreaseReplicationFactorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicationFactorResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster, after you have decreased its replication factor.</p>
function M.DecreaseReplicationFactorResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseReplicationFactorResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertDecreaseReplicationFactorResponse(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>
-- @param Value [String] <p>The value of the tag. Tag values are case-sensitive and can be null. </p>
-- @param Key [String] <p>The key for the tag. Tag keys are case sensitive. Every DAX cluster can only have one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local DescribeParametersRequest_keys = { "Source" = true, "NextToken" = true, "ParameterGroupName" = true, "MaxResults" = true, nil }

function M.AssertDescribeParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParametersRequest_keys[k], "DescribeParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersRequest
--  
-- @param Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- Required parameter: ParameterGroupName
function M.DescribeParametersRequest(Source, NextToken, ParameterGroupName, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersRequest")
	local t = { 
		["Source"] = Source,
		["NextToken"] = NextToken,
		["ParameterGroupName"] = ParameterGroupName,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeParametersRequest(t)
	return t
end

local RebootNodeRequest_keys = { "ClusterName" = true, "NodeId" = true, nil }

function M.AssertRebootNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootNodeRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NodeId"], "Expected key NodeId to exist in table")
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["NodeId"] then M.AssertString(struct["NodeId"]) end
	for k,_ in pairs(struct) do
		assert(RebootNodeRequest_keys[k], "RebootNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootNodeRequest
--  
-- @param ClusterName [String] <p>The name of the DAX cluster containing the node to be rebooted.</p>
-- @param NodeId [String] <p>The system-assigned ID of the node to be rebooted.</p>
-- Required parameter: ClusterName
-- Required parameter: NodeId
function M.RebootNodeRequest(ClusterName, NodeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootNodeRequest")
	local t = { 
		["ClusterName"] = ClusterName,
		["NodeId"] = NodeId,
	}
	M.AssertRebootNodeRequest(t)
	return t
end

local NotificationConfiguration_keys = { "TopicStatus" = true, "TopicArn" = true, nil }

function M.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["TopicStatus"] then M.AssertString(struct["TopicStatus"]) end
	if struct["TopicArn"] then M.AssertString(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfiguration_keys[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- @param TopicStatus [String] <p>The current state of the topic.</p>
-- @param TopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
function M.NotificationConfiguration(TopicStatus, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfiguration")
	local t = { 
		["TopicStatus"] = TopicStatus,
		["TopicArn"] = TopicArn,
	}
	M.AssertNotificationConfiguration(t)
	return t
end

local Event_keys = { "SourceName" = true, "Date" = true, "Message" = true, "SourceType" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["SourceName"] then M.AssertString(struct["SourceName"]) end
	if struct["Date"] then M.AssertTStamp(struct["Date"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>
-- @param SourceName [String] <p>The source of the event. For example, if the event occurred at the node level, the source would be the node ID.</p>
-- @param Date [TStamp] <p>The date and time when the event occurred.</p>
-- @param Message [String] <p>A user-defined message associated with the event.</p>
-- @param SourceType [SourceType] <p>Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.</p>
function M.Event(SourceName, Date, Message, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["SourceName"] = SourceName,
		["Date"] = Date,
		["Message"] = Message,
		["SourceType"] = SourceType,
	}
	M.AssertEvent(t)
	return t
end

local DescribeClustersRequest_keys = { "NextToken" = true, "MaxResults" = true, "ClusterNames" = true, nil }

function M.AssertDescribeClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	if struct["ClusterNames"] then M.AssertClusterNameList(struct["ClusterNames"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClustersRequest_keys[k], "DescribeClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersRequest
--  
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @param ClusterNames [ClusterNameList] <p>The names of the DAX clusters being described.</p>
function M.DescribeClustersRequest(NextToken, MaxResults, ClusterNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["ClusterNames"] = ClusterNames,
	}
	M.AssertDescribeClustersRequest(t)
	return t
end

local InvalidSubnet_keys = { nil }

function M.AssertInvalidSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnet to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSubnet_keys[k], "InvalidSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnet
-- <p>An invalid subnet identifier was specified.</p>
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	M.AssertInvalidSubnet(t)
	return t
end

local Parameter_keys = { "ParameterType" = true, "Description" = true, "DataType" = true, "ChangeType" = true, "IsModifiable" = true, "AllowedValues" = true, "NodeTypeSpecificValues" = true, "Source" = true, "ParameterValue" = true, "ParameterName" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ParameterType"] then M.AssertParameterType(struct["ParameterType"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then M.AssertChangeType(struct["ChangeType"]) end
	if struct["IsModifiable"] then M.AssertIsModifiable(struct["IsModifiable"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["NodeTypeSpecificValues"] then M.AssertNodeTypeSpecificValueList(struct["NodeTypeSpecificValues"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then M.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>Describes an individual setting that controls some aspect of DAX behavior.</p>
-- @param ParameterType [ParameterType] <p>Determines whether the parameter can be applied to any nodes, or only nodes of a particular type.</p>
-- @param Description [String] <p>A description of the parameter</p>
-- @param DataType [String] <p>The data type of the parameter. For example, <code>integer</code>:</p>
-- @param ChangeType [ChangeType] <p>The conditions under which changes to this parameter can be applied. For example, <code>requires-reboot</code> indicates that a new value for this parameter will only take effect if a node is rebooted.</p>
-- @param IsModifiable [IsModifiable] <p>Whether the customer is allowed to modify the parameter.</p>
-- @param AllowedValues [String] <p>A range of values within which the parameter can be set.</p>
-- @param NodeTypeSpecificValues [NodeTypeSpecificValueList] <p>A list of node types, and specific parameter values for each node.</p>
-- @param Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- @param ParameterValue [String] <p>The value for the parameter.</p>
-- @param ParameterName [String] <p>The name of the parameter.</p>
function M.Parameter(ParameterType, Description, DataType, ChangeType, IsModifiable, AllowedValues, NodeTypeSpecificValues, Source, ParameterValue, ParameterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["ParameterType"] = ParameterType,
		["Description"] = Description,
		["DataType"] = DataType,
		["ChangeType"] = ChangeType,
		["IsModifiable"] = IsModifiable,
		["AllowedValues"] = AllowedValues,
		["NodeTypeSpecificValues"] = NodeTypeSpecificValues,
		["Source"] = Source,
		["ParameterValue"] = ParameterValue,
		["ParameterName"] = ParameterName,
	}
	M.AssertParameter(t)
	return t
end

local DescribeDefaultParametersResponse_keys = { "NextToken" = true, "Parameters" = true, nil }

function M.AssertDescribeDefaultParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultParametersResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Parameters"] then M.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDefaultParametersResponse_keys[k], "DescribeDefaultParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultParametersResponse
--  
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param Parameters [ParameterList] <p>A list of parameters. Each element in the list represents one parameter.</p>
function M.DescribeDefaultParametersResponse(NextToken, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultParametersResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Parameters"] = Parameters,
	}
	M.AssertDescribeDefaultParametersResponse(t)
	return t
end

local ParameterGroupQuotaExceededFault_keys = { nil }

function M.AssertParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ParameterGroupQuotaExceededFault_keys[k], "ParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupQuotaExceededFault
-- <p>You have attempted to exceed the maximum number of parameter groups.</p>
function M.ParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertParameterGroupQuotaExceededFault(t)
	return t
end

local InvalidParameterCombinationException_keys = { "message" = true, nil }

function M.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["message"] then M.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterCombinationException_keys[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Two or more incompatible parameters were specified.</p>
-- @param message [AwsQueryErrorMessage] <p>Two or more incompatible parameters were specified.</p>
function M.InvalidParameterCombinationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterCombinationException(t)
	return t
end

local ParameterGroupAlreadyExistsFault_keys = { nil }

function M.AssertParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ParameterGroupAlreadyExistsFault_keys[k], "ParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupAlreadyExistsFault
-- <p>The specified parameter group already exists.</p>
function M.ParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertParameterGroupAlreadyExistsFault(t)
	return t
end

local UpdateClusterRequest_keys = { "Description" = true, "ClusterName" = true, "SecurityGroupIds" = true, "NotificationTopicStatus" = true, "ParameterGroupName" = true, "NotificationTopicArn" = true, "PreferredMaintenanceWindow" = true, nil }

function M.AssertUpdateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdentifierList(struct["SecurityGroupIds"]) end
	if struct["NotificationTopicStatus"] then M.AssertString(struct["NotificationTopicStatus"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(UpdateClusterRequest_keys[k], "UpdateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterRequest
--  
-- @param Description [String] <p>A description of the changes being made to the cluster.</p>
-- @param ClusterName [String] <p>The name of the DAX cluster to be modified.</p>
-- @param SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- @param NotificationTopicStatus [String] <p>The current state of the topic.</p>
-- @param ParameterGroupName [String] <p>The name of a parameter group for this cluster.</p>
-- @param NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
-- @param PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
-- Required parameter: ClusterName
function M.UpdateClusterRequest(Description, ClusterName, SecurityGroupIds, NotificationTopicStatus, ParameterGroupName, NotificationTopicArn, PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterRequest")
	local t = { 
		["Description"] = Description,
		["ClusterName"] = ClusterName,
		["SecurityGroupIds"] = SecurityGroupIds,
		["NotificationTopicStatus"] = NotificationTopicStatus,
		["ParameterGroupName"] = ParameterGroupName,
		["NotificationTopicArn"] = NotificationTopicArn,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
	}
	M.AssertUpdateClusterRequest(t)
	return t
end

local RebootNodeResponse_keys = { "Cluster" = true, nil }

function M.AssertRebootNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootNodeResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(RebootNodeResponse_keys[k], "RebootNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootNodeResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster after a node has been rebooted.</p>
function M.RebootNodeResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootNodeResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertRebootNodeResponse(t)
	return t
end

local ParameterGroupNotFoundFault_keys = { nil }

function M.AssertParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ParameterGroupNotFoundFault_keys[k], "ParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupNotFoundFault
-- <p>The specified parameter group does not exist.</p>
function M.ParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupNotFoundFault")
	local t = { 
	}
	M.AssertParameterGroupNotFoundFault(t)
	return t
end

local CreateParameterGroupResponse_keys = { "ParameterGroup" = true, nil }

function M.AssertCreateParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateParameterGroupResponse to be of type 'table'")
	if struct["ParameterGroup"] then M.AssertParameterGroup(struct["ParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateParameterGroupResponse_keys[k], "CreateParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateParameterGroupResponse
--  
-- @param ParameterGroup [ParameterGroup] <p>Represents the output of a <i>CreateParameterGroup</i> action.</p>
function M.CreateParameterGroupResponse(ParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateParameterGroupResponse")
	local t = { 
		["ParameterGroup"] = ParameterGroup,
	}
	M.AssertCreateParameterGroupResponse(t)
	return t
end

local SecurityGroupMembership_keys = { "Status" = true, "SecurityGroupIdentifier" = true, nil }

function M.AssertSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["SecurityGroupIdentifier"] then M.AssertString(struct["SecurityGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(SecurityGroupMembership_keys[k], "SecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupMembership
-- <p>An individual VPC security group and its status.</p>
-- @param Status [String] <p>The status of this security group.</p>
-- @param SecurityGroupIdentifier [String] <p>The unique ID for this security group.</p>
function M.SecurityGroupMembership(Status, SecurityGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["SecurityGroupIdentifier"] = SecurityGroupIdentifier,
	}
	M.AssertSecurityGroupMembership(t)
	return t
end

local IncreaseReplicationFactorRequest_keys = { "ClusterName" = true, "AvailabilityZones" = true, "NewReplicationFactor" = true, nil }

function M.AssertIncreaseReplicationFactorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicationFactorRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NewReplicationFactor"], "Expected key NewReplicationFactor to exist in table")
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["NewReplicationFactor"] then M.AssertInteger(struct["NewReplicationFactor"]) end
	for k,_ in pairs(struct) do
		assert(IncreaseReplicationFactorRequest_keys[k], "IncreaseReplicationFactorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicationFactorRequest
--  
-- @param ClusterName [String] <p>The name of the DAX cluster that will receive additional nodes.</p>
-- @param AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- @param NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required parameter: ClusterName
-- Required parameter: NewReplicationFactor
function M.IncreaseReplicationFactorRequest(ClusterName, AvailabilityZones, NewReplicationFactor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseReplicationFactorRequest")
	local t = { 
		["ClusterName"] = ClusterName,
		["AvailabilityZones"] = AvailabilityZones,
		["NewReplicationFactor"] = NewReplicationFactor,
	}
	M.AssertIncreaseReplicationFactorRequest(t)
	return t
end

local SubnetGroup_keys = { "Subnets" = true, "SubnetGroupName" = true, "VpcId" = true, "Description" = true, nil }

function M.AssertSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroup to be of type 'table'")
	if struct["Subnets"] then M.AssertSubnetList(struct["Subnets"]) end
	if struct["SubnetGroupName"] then M.AssertString(struct["SubnetGroupName"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(SubnetGroup_keys[k], "SubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroup
-- <p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>
-- @param Subnets [SubnetList] <p>A list of subnets associated with the subnet group. </p>
-- @param SubnetGroupName [String] <p>The name of the subnet group.</p>
-- @param VpcId [String] <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
-- @param Description [String] <p>The description of the subnet group.</p>
function M.SubnetGroup(Subnets, SubnetGroupName, VpcId, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroup")
	local t = { 
		["Subnets"] = Subnets,
		["SubnetGroupName"] = SubnetGroupName,
		["VpcId"] = VpcId,
		["Description"] = Description,
	}
	M.AssertSubnetGroup(t)
	return t
end

local DescribeClustersResponse_keys = { "Clusters" = true, "NextToken" = true, nil }

function M.AssertDescribeClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersResponse to be of type 'table'")
	if struct["Clusters"] then M.AssertClusterList(struct["Clusters"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClustersResponse_keys[k], "DescribeClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersResponse
--  
-- @param Clusters [ClusterList] <p>The descriptions of your DAX clusters, in response to a <i>DescribeClusters</i> request.</p>
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
function M.DescribeClustersResponse(Clusters, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersResponse")
	local t = { 
		["Clusters"] = Clusters,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeClustersResponse(t)
	return t
end

local UntagResourceRequest_keys = { "ResourceName" = true, "TagKeys" = true, nil }

function M.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then M.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceRequest_keys[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param ResourceName [String] <p>The name of the DAX resource from which the tags should be removed.</p>
-- @param TagKeys [KeyList] <p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.UntagResourceRequest(ResourceName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceName"] = ResourceName,
		["TagKeys"] = TagKeys,
	}
	M.AssertUntagResourceRequest(t)
	return t
end

local DescribeParameterGroupsResponse_keys = { "ParameterGroups" = true, "NextToken" = true, nil }

function M.AssertDescribeParameterGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParameterGroupsResponse to be of type 'table'")
	if struct["ParameterGroups"] then M.AssertParameterGroupList(struct["ParameterGroups"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParameterGroupsResponse_keys[k], "DescribeParameterGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParameterGroupsResponse
--  
-- @param ParameterGroups [ParameterGroupList] <p>An array of parameter groups. Each element in the array represents one parameter group.</p>
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
function M.DescribeParameterGroupsResponse(ParameterGroups, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParameterGroupsResponse")
	local t = { 
		["ParameterGroups"] = ParameterGroups,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeParameterGroupsResponse(t)
	return t
end

local Subnet_keys = { "SubnetIdentifier" = true, "SubnetAvailabilityZone" = true, nil }

function M.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetIdentifier"] then M.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then M.AssertString(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(Subnet_keys[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- <p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>
-- @param SubnetIdentifier [String] <p>The system-assigned identifier for the subnet.</p>
-- @param SubnetAvailabilityZone [String] <p>The Availability Zone (AZ) for subnet subnet.</p>
function M.Subnet(SubnetIdentifier, SubnetAvailabilityZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subnet")
	local t = { 
		["SubnetIdentifier"] = SubnetIdentifier,
		["SubnetAvailabilityZone"] = SubnetAvailabilityZone,
	}
	M.AssertSubnet(t)
	return t
end

local InvalidARNFault_keys = { nil }

function M.AssertInvalidARNFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidARNFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidARNFault_keys[k], "InvalidARNFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidARNFault
-- <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
function M.InvalidARNFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidARNFault")
	local t = { 
	}
	M.AssertInvalidARNFault(t)
	return t
end

local CreateClusterResponse_keys = { "Cluster" = true, nil }

function M.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterResponse_keys[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster that you have created.</p>
function M.CreateClusterResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertCreateClusterResponse(t)
	return t
end

local Node_keys = { "Endpoint" = true, "NodeStatus" = true, "ParameterGroupStatus" = true, "NodeId" = true, "AvailabilityZone" = true, "NodeCreateTime" = true, nil }

function M.AssertNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Node to be of type 'table'")
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	if struct["NodeStatus"] then M.AssertString(struct["NodeStatus"]) end
	if struct["ParameterGroupStatus"] then M.AssertString(struct["ParameterGroupStatus"]) end
	if struct["NodeId"] then M.AssertString(struct["NodeId"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeCreateTime"] then M.AssertTStamp(struct["NodeCreateTime"]) end
	for k,_ in pairs(struct) do
		assert(Node_keys[k], "Node contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Node
-- <p>Represents an individual node within a DAX cluster.</p>
-- @param Endpoint [Endpoint] <p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- @param NodeStatus [String] <p>The current status of the node. For example: <code>available</code>.</p>
-- @param ParameterGroupStatus [String] <p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>
-- @param NodeId [String] <p>A system-generated identifier for the node.</p>
-- @param AvailabilityZone [String] <p>The Availability Zone (AZ) in which the node has been deployed.</p>
-- @param NodeCreateTime [TStamp] <p>The date and time (in UNIX epoch format) when the node was launched.</p>
function M.Node(Endpoint, NodeStatus, ParameterGroupStatus, NodeId, AvailabilityZone, NodeCreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Node")
	local t = { 
		["Endpoint"] = Endpoint,
		["NodeStatus"] = NodeStatus,
		["ParameterGroupStatus"] = ParameterGroupStatus,
		["NodeId"] = NodeId,
		["AvailabilityZone"] = AvailabilityZone,
		["NodeCreateTime"] = NodeCreateTime,
	}
	M.AssertNode(t)
	return t
end

local DescribeEventsResponse_keys = { "NextToken" = true, "Events" = true, nil }

function M.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsResponse_keys[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param Events [EventList] <p>An array of events. Each element in the array represents one event.</p>
function M.DescribeEventsResponse(NextToken, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Events"] = Events,
	}
	M.AssertDescribeEventsResponse(t)
	return t
end

local CreateClusterRequest_keys = { "ReplicationFactor" = true, "NotificationTopicArn" = true, "NodeType" = true, "Description" = true, "Tags" = true, "ClusterName" = true, "SubnetGroupName" = true, "IamRoleArn" = true, "SecurityGroupIds" = true, "ParameterGroupName" = true, "AvailabilityZones" = true, "PreferredMaintenanceWindow" = true, nil }

function M.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NodeType"], "Expected key NodeType to exist in table")
	assert(struct["ReplicationFactor"], "Expected key ReplicationFactor to exist in table")
	assert(struct["IamRoleArn"], "Expected key IamRoleArn to exist in table")
	if struct["ReplicationFactor"] then M.AssertInteger(struct["ReplicationFactor"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["SubnetGroupName"] then M.AssertString(struct["SubnetGroupName"]) end
	if struct["IamRoleArn"] then M.AssertString(struct["IamRoleArn"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdentifierList(struct["SecurityGroupIds"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterRequest_keys[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param ReplicationFactor [Integer] <p>The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set <i>ReplicationFactor</i> to 2 or more.</p> <note> <p>AWS recommends that you have at least two read replicas per cluster.</p> </note>
-- @param NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.</p> <note> <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p> </note>
-- @param NodeType [String] <p>The compute and memory capacity of the nodes in the cluster.</p>
-- @param Description [String] <p>A description of the cluster.</p>
-- @param Tags [TagList] <p>A set of tags to associate with the DAX cluster. </p>
-- @param ClusterName [String] <p>The cluster identifier. This parameter is stored as a lowercase string.</p> <p> <b>Constraints:</b> </p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param SubnetGroupName [String] <p>The name of the subnet group to be used for the replication group.</p> <important> <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.</p> </important>
-- @param IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- @param SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)</p> <p>If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- @param ParameterGroupName [String] <p>The parameter group to be associated with the DAX cluster.</p>
-- @param AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- @param PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:05:00-sun:09:00</code> </p> <note> <p>If you don't specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.</p> </note>
-- Required parameter: ClusterName
-- Required parameter: NodeType
-- Required parameter: ReplicationFactor
-- Required parameter: IamRoleArn
function M.CreateClusterRequest(ReplicationFactor, NotificationTopicArn, NodeType, Description, Tags, ClusterName, SubnetGroupName, IamRoleArn, SecurityGroupIds, ParameterGroupName, AvailabilityZones, PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["ReplicationFactor"] = ReplicationFactor,
		["NotificationTopicArn"] = NotificationTopicArn,
		["NodeType"] = NodeType,
		["Description"] = Description,
		["Tags"] = Tags,
		["ClusterName"] = ClusterName,
		["SubnetGroupName"] = SubnetGroupName,
		["IamRoleArn"] = IamRoleArn,
		["SecurityGroupIds"] = SecurityGroupIds,
		["ParameterGroupName"] = ParameterGroupName,
		["AvailabilityZones"] = AvailabilityZones,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
	}
	M.AssertCreateClusterRequest(t)
	return t
end

local DescribeSubnetGroupsResponse_keys = { "NextToken" = true, "SubnetGroups" = true, nil }

function M.AssertDescribeSubnetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubnetGroupsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["SubnetGroups"] then M.AssertSubnetGroupList(struct["SubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubnetGroupsResponse_keys[k], "DescribeSubnetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubnetGroupsResponse
--  
-- @param NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param SubnetGroups [SubnetGroupList] <p>An array of subnet groups. Each element in the array represents a single subnet group.</p>
function M.DescribeSubnetGroupsResponse(NextToken, SubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubnetGroupsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["SubnetGroups"] = SubnetGroups,
	}
	M.AssertDescribeSubnetGroupsResponse(t)
	return t
end

local SubnetGroupInUseFault_keys = { nil }

function M.AssertSubnetGroupInUseFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupInUseFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetGroupInUseFault_keys[k], "SubnetGroupInUseFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupInUseFault
-- <p>The specified subnet group is currently in use.</p>
function M.SubnetGroupInUseFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupInUseFault")
	local t = { 
	}
	M.AssertSubnetGroupInUseFault(t)
	return t
end

local ListTagsResponse_keys = { "NextToken" = true, "Tags" = true, nil }

function M.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsResponse_keys[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param NextToken [String] <p>If this value is present, there are additional results to be displayed. To retrieve them, call <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>
-- @param Tags [TagList] <p>A list of tags currently associated with the DAX cluster.</p>
function M.ListTagsResponse(NextToken, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Tags"] = Tags,
	}
	M.AssertListTagsResponse(t)
	return t
end

local UntagResourceResponse_keys = { "Tags" = true, nil }

function M.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(UntagResourceResponse_keys[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param Tags [TagList] <p>The tag keys that have been removed from the cluster.</p>
function M.UntagResourceResponse(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertUntagResourceResponse(t)
	return t
end

local UpdateClusterResponse_keys = { "Cluster" = true, nil }

function M.AssertUpdateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterResponse to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(UpdateClusterResponse_keys[k], "UpdateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterResponse
--  
-- @param Cluster [Cluster] <p>A description of the DAX cluster, after it has been modified.</p>
function M.UpdateClusterResponse(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterResponse")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertUpdateClusterResponse(t)
	return t
end

local ParameterNameValue_keys = { "ParameterName" = true, "ParameterValue" = true, nil }

function M.AssertParameterNameValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterNameValue to be of type 'table'")
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["ParameterValue"] then M.AssertString(struct["ParameterValue"]) end
	for k,_ in pairs(struct) do
		assert(ParameterNameValue_keys[k], "ParameterNameValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterNameValue
-- <p>An individual DAX parameter.</p>
-- @param ParameterName [String] <p>The name of the parameter.</p>
-- @param ParameterValue [String] <p>The value of the parameter.</p>
function M.ParameterNameValue(ParameterName, ParameterValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterNameValue")
	local t = { 
		["ParameterName"] = ParameterName,
		["ParameterValue"] = ParameterValue,
	}
	M.AssertParameterNameValue(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>The value for a parameter is invalid.</p>
-- @param message [AwsQueryErrorMessage] <p>The value for a parameter is invalid.</p>
function M.InvalidParameterValueException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local DecreaseReplicationFactorRequest_keys = { "ClusterName" = true, "NodeIdsToRemove" = true, "AvailabilityZones" = true, "NewReplicationFactor" = true, nil }

function M.AssertDecreaseReplicationFactorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicationFactorRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NewReplicationFactor"], "Expected key NewReplicationFactor to exist in table")
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["NodeIdsToRemove"] then M.AssertNodeIdentifierList(struct["NodeIdsToRemove"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["NewReplicationFactor"] then M.AssertInteger(struct["NewReplicationFactor"]) end
	for k,_ in pairs(struct) do
		assert(DecreaseReplicationFactorRequest_keys[k], "DecreaseReplicationFactorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicationFactorRequest
--  
-- @param ClusterName [String] <p>The name of the DAX cluster from which you want to remove nodes.</p>
-- @param NodeIdsToRemove [NodeIdentifierList] <p>The unique identifiers of the nodes to be removed from the cluster.</p>
-- @param AvailabilityZones [AvailabilityZoneList] <p>The Availability Zone(s) from which to remove nodes.</p>
-- @param NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required parameter: ClusterName
-- Required parameter: NewReplicationFactor
function M.DecreaseReplicationFactorRequest(ClusterName, NodeIdsToRemove, AvailabilityZones, NewReplicationFactor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseReplicationFactorRequest")
	local t = { 
		["ClusterName"] = ClusterName,
		["NodeIdsToRemove"] = NodeIdsToRemove,
		["AvailabilityZones"] = AvailabilityZones,
		["NewReplicationFactor"] = NewReplicationFactor,
	}
	M.AssertDecreaseReplicationFactorRequest(t)
	return t
end

local NodeQuotaForCustomerExceededFault_keys = { nil }

function M.AssertNodeQuotaForCustomerExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeQuotaForCustomerExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NodeQuotaForCustomerExceededFault_keys[k], "NodeQuotaForCustomerExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeQuotaForCustomerExceededFault
-- <p>You have attempted to exceed the maximum number of nodes for your AWS account.</p>
function M.NodeQuotaForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeQuotaForCustomerExceededFault")
	local t = { 
	}
	M.AssertNodeQuotaForCustomerExceededFault(t)
	return t
end

local InvalidVPCNetworkStateFault_keys = { nil }

function M.AssertInvalidVPCNetworkStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVPCNetworkStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidVPCNetworkStateFault_keys[k], "InvalidVPCNetworkStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVPCNetworkStateFault
-- <p>The VPC network is in an invalid state.</p>
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	M.AssertInvalidVPCNetworkStateFault(t)
	return t
end

local SubnetGroupNotFoundFault_keys = { nil }

function M.AssertSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetGroupNotFoundFault_keys[k], "SubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupNotFoundFault
-- <p>The requested subnet group name does not refer to an existing subnet group.</p>
function M.SubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupNotFoundFault")
	local t = { 
	}
	M.AssertSubnetGroupNotFoundFault(t)
	return t
end

local SubnetGroupAlreadyExistsFault_keys = { nil }

function M.AssertSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetGroupAlreadyExistsFault_keys[k], "SubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupAlreadyExistsFault
-- <p>The specified subnet group already exists.</p>
function M.SubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertSubnetGroupAlreadyExistsFault(t)
	return t
end

local Cluster_keys = { "Status" = true, "SubnetGroup" = true, "NodeType" = true, "Description" = true, "ClusterName" = true, "ParameterGroup" = true, "ActiveNodes" = true, "TotalNodes" = true, "IamRoleArn" = true, "NodeIdsToRemove" = true, "SecurityGroups" = true, "ClusterArn" = true, "Nodes" = true, "ClusterDiscoveryEndpoint" = true, "NotificationConfiguration" = true, "PreferredMaintenanceWindow" = true, nil }

function M.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["SubnetGroup"] then M.AssertString(struct["SubnetGroup"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["ClusterName"] then M.AssertString(struct["ClusterName"]) end
	if struct["ParameterGroup"] then M.AssertParameterGroupStatus(struct["ParameterGroup"]) end
	if struct["ActiveNodes"] then M.AssertIntegerOptional(struct["ActiveNodes"]) end
	if struct["TotalNodes"] then M.AssertIntegerOptional(struct["TotalNodes"]) end
	if struct["IamRoleArn"] then M.AssertString(struct["IamRoleArn"]) end
	if struct["NodeIdsToRemove"] then M.AssertNodeIdentifierList(struct["NodeIdsToRemove"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroupMembershipList(struct["SecurityGroups"]) end
	if struct["ClusterArn"] then M.AssertString(struct["ClusterArn"]) end
	if struct["Nodes"] then M.AssertNodeList(struct["Nodes"]) end
	if struct["ClusterDiscoveryEndpoint"] then M.AssertEndpoint(struct["ClusterDiscoveryEndpoint"]) end
	if struct["NotificationConfiguration"] then M.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(Cluster_keys[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>Contains all of the attributes of a specific DAX cluster.</p>
-- @param Status [String] <p>The current status of the cluster.</p>
-- @param SubnetGroup [String] <p>The subnet group where the DAX cluster is running.</p>
-- @param NodeType [String] <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
-- @param Description [String] <p>The description of the cluster.</p>
-- @param ClusterName [String] <p>The name of the DAX cluster.</p>
-- @param ParameterGroup [ParameterGroupStatus] <p>The parameter group being used by nodes in the cluster.</p>
-- @param ActiveNodes [IntegerOptional] <p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>
-- @param TotalNodes [IntegerOptional] <p>The total number of nodes in the cluster.</p>
-- @param IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- @param NodeIdsToRemove [NodeIdentifierList] <p>A list of nodes to be removed from the cluster.</p>
-- @param SecurityGroups [SecurityGroupMembershipList] <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
-- @param ClusterArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
-- @param Nodes [NodeList] <p>A list of nodes that are currently in the cluster.</p>
-- @param ClusterDiscoveryEndpoint [Endpoint] <p>The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- @param NotificationConfiguration [NotificationConfiguration] <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- @param PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
function M.Cluster(Status, SubnetGroup, NodeType, Description, ClusterName, ParameterGroup, ActiveNodes, TotalNodes, IamRoleArn, NodeIdsToRemove, SecurityGroups, ClusterArn, Nodes, ClusterDiscoveryEndpoint, NotificationConfiguration, PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["Status"] = Status,
		["SubnetGroup"] = SubnetGroup,
		["NodeType"] = NodeType,
		["Description"] = Description,
		["ClusterName"] = ClusterName,
		["ParameterGroup"] = ParameterGroup,
		["ActiveNodes"] = ActiveNodes,
		["TotalNodes"] = TotalNodes,
		["IamRoleArn"] = IamRoleArn,
		["NodeIdsToRemove"] = NodeIdsToRemove,
		["SecurityGroups"] = SecurityGroups,
		["ClusterArn"] = ClusterArn,
		["Nodes"] = Nodes,
		["ClusterDiscoveryEndpoint"] = ClusterDiscoveryEndpoint,
		["NotificationConfiguration"] = NotificationConfiguration,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
	}
	M.AssertCluster(t)
	return t
end

local CreateSubnetGroupRequest_keys = { "SubnetIds" = true, "SubnetGroupName" = true, "Description" = true, nil }

function M.AssertCreateSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["SubnetGroupName"] then M.AssertString(struct["SubnetGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubnetGroupRequest_keys[k], "CreateSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubnetGroupRequest
--  
-- @param SubnetIds [SubnetIdentifierList] <p>A list of VPC subnet IDs for the subnet group.</p>
-- @param SubnetGroupName [String] <p>A name for the subnet group. This value is stored as a lowercase string. </p>
-- @param Description [String] <p>A description for the subnet group</p>
-- Required parameter: SubnetGroupName
-- Required parameter: SubnetIds
function M.CreateSubnetGroupRequest(SubnetIds, SubnetGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubnetGroupRequest")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["SubnetGroupName"] = SubnetGroupName,
		["Description"] = Description,
	}
	M.AssertCreateSubnetGroupRequest(t)
	return t
end

local CreateParameterGroupRequest_keys = { "ParameterGroupName" = true, "Description" = true, nil }

function M.AssertCreateParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateParameterGroupRequest_keys[k], "CreateParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateParameterGroupRequest
--  
-- @param ParameterGroupName [String] <p>The name of the parameter group to apply to all of the clusters in this replication group.</p>
-- @param Description [String] <p>A description of the parameter group.</p>
-- Required parameter: ParameterGroupName
function M.CreateParameterGroupRequest(ParameterGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
		["Description"] = Description,
	}
	M.AssertCreateParameterGroupRequest(t)
	return t
end

local DescribeParameterGroupsRequest_keys = { "NextToken" = true, "ParameterGroupNames" = true, "MaxResults" = true, nil }

function M.AssertDescribeParameterGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParameterGroupsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ParameterGroupNames"] then M.AssertParameterGroupNameList(struct["ParameterGroupNames"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParameterGroupsRequest_keys[k], "DescribeParameterGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParameterGroupsRequest
--  
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param ParameterGroupNames [ParameterGroupNameList] <p>The names of the parameter groups.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeParameterGroupsRequest(NextToken, ParameterGroupNames, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParameterGroupsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["ParameterGroupNames"] = ParameterGroupNames,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeParameterGroupsRequest(t)
	return t
end

local TagResourceResponse_keys = { "Tags" = true, nil }

function M.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceResponse_keys[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param Tags [TagList] <p>The list of tags that are associated with the DAX resource.</p>
function M.TagResourceResponse(Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
	local t = { 
		["Tags"] = Tags,
	}
	M.AssertTagResourceResponse(t)
	return t
end

local SubnetInUse_keys = { nil }

function M.AssertSubnetInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetInUse_keys[k], "SubnetInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetInUse
-- <p>The requested subnet is being used by another subnet group.</p>
function M.SubnetInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetInUse")
	local t = { 
	}
	M.AssertSubnetInUse(t)
	return t
end

local NodeNotFoundFault_keys = { nil }

function M.AssertNodeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NodeNotFoundFault_keys[k], "NodeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeNotFoundFault
-- <p>None of the nodes in the cluster have the given node ID.</p>
function M.NodeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeNotFoundFault")
	local t = { 
	}
	M.AssertNodeNotFoundFault(t)
	return t
end

local TagNotFoundFault_keys = { nil }

function M.AssertTagNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagNotFoundFault_keys[k], "TagNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagNotFoundFault
-- <p>The tag does not exist.</p>
function M.TagNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagNotFoundFault")
	local t = { 
	}
	M.AssertTagNotFoundFault(t)
	return t
end

local UpdateSubnetGroupResponse_keys = { "SubnetGroup" = true, nil }

function M.AssertUpdateSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubnetGroupResponse to be of type 'table'")
	if struct["SubnetGroup"] then M.AssertSubnetGroup(struct["SubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSubnetGroupResponse_keys[k], "UpdateSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubnetGroupResponse
--  
-- @param SubnetGroup [SubnetGroup] <p>The subnet group that has been modified.</p>
function M.UpdateSubnetGroupResponse(SubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubnetGroupResponse")
	local t = { 
		["SubnetGroup"] = SubnetGroup,
	}
	M.AssertUpdateSubnetGroupResponse(t)
	return t
end

local TagQuotaPerResourceExceeded_keys = { nil }

function M.AssertTagQuotaPerResourceExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagQuotaPerResourceExceeded to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagQuotaPerResourceExceeded_keys[k], "TagQuotaPerResourceExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagQuotaPerResourceExceeded
-- <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
function M.TagQuotaPerResourceExceeded(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagQuotaPerResourceExceeded")
	local t = { 
	}
	M.AssertTagQuotaPerResourceExceeded(t)
	return t
end

local Endpoint_keys = { "Port" = true, "Address" = true, nil }

function M.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Port"] then M.AssertInteger(struct["Port"]) end
	if struct["Address"] then M.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(Endpoint_keys[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>
-- @param Port [Integer] <p>The port number that applications should use to connect to the endpoint.</p>
-- @param Address [String] <p>The DNS hostname of the endpoint.</p>
function M.Endpoint(Port, Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Port"] = Port,
		["Address"] = Address,
	}
	M.AssertEndpoint(t)
	return t
end

local ParameterGroupStatus_keys = { "NodeIdsToReboot" = true, "ParameterGroupName" = true, "ParameterApplyStatus" = true, nil }

function M.AssertParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupStatus to be of type 'table'")
	if struct["NodeIdsToReboot"] then M.AssertNodeIdentifierList(struct["NodeIdsToReboot"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then M.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(ParameterGroupStatus_keys[k], "ParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupStatus
-- <p>The status of a parameter group.</p>
-- @param NodeIdsToReboot [NodeIdentifierList] <p>The node IDs of one or more nodes to be rebooted.</p>
-- @param ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param ParameterApplyStatus [String] <p>The status of parameter updates. </p>
function M.ParameterGroupStatus(NodeIdsToReboot, ParameterGroupName, ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupStatus")
	local t = { 
		["NodeIdsToReboot"] = NodeIdsToReboot,
		["ParameterGroupName"] = ParameterGroupName,
		["ParameterApplyStatus"] = ParameterApplyStatus,
	}
	M.AssertParameterGroupStatus(t)
	return t
end

local NodeQuotaForClusterExceededFault_keys = { nil }

function M.AssertNodeQuotaForClusterExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeQuotaForClusterExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NodeQuotaForClusterExceededFault_keys[k], "NodeQuotaForClusterExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeQuotaForClusterExceededFault
-- <p>You have attempted to exceed the maximum number of nodes for a DAX cluster.</p>
function M.NodeQuotaForClusterExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeQuotaForClusterExceededFault")
	local t = { 
	}
	M.AssertNodeQuotaForClusterExceededFault(t)
	return t
end

local UpdateParameterGroupResponse_keys = { "ParameterGroup" = true, nil }

function M.AssertUpdateParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateParameterGroupResponse to be of type 'table'")
	if struct["ParameterGroup"] then M.AssertParameterGroup(struct["ParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(UpdateParameterGroupResponse_keys[k], "UpdateParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateParameterGroupResponse
--  
-- @param ParameterGroup [ParameterGroup] <p>The parameter group that has been modified.</p>
function M.UpdateParameterGroupResponse(ParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateParameterGroupResponse")
	local t = { 
		["ParameterGroup"] = ParameterGroup,
	}
	M.AssertUpdateParameterGroupResponse(t)
	return t
end

local TagResourceRequest_keys = { "ResourceName" = true, "Tags" = true, nil }

function M.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(TagResourceRequest_keys[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param ResourceName [String] <p>The name of the DAX resource to which tags should be added.</p>
-- @param Tags [TagList] <p>The tags to be assigned to the DAX resource. </p>
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.TagResourceRequest(ResourceName, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceName"] = ResourceName,
		["Tags"] = Tags,
	}
	M.AssertTagResourceRequest(t)
	return t
end

local DescribeEventsRequest_keys = { "NextToken" = true, "SourceType" = true, "SourceName" = true, "MaxResults" = true, "StartTime" = true, "Duration" = true, "EndTime" = true, nil }

function M.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	if struct["SourceName"] then M.AssertString(struct["SourceName"]) end
	if struct["MaxResults"] then M.AssertIntegerOptional(struct["MaxResults"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then M.AssertIntegerOptional(struct["Duration"]) end
	if struct["EndTime"] then M.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsRequest_keys[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- @param SourceName [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p>
-- @param MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @param StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>
-- @param Duration [IntegerOptional] <p>The number of minutes' worth of events to retrieve.</p>
-- @param EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>
function M.DescribeEventsRequest(NextToken, SourceType, SourceName, MaxResults, StartTime, Duration, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["SourceType"] = SourceType,
		["SourceName"] = SourceName,
		["MaxResults"] = MaxResults,
		["StartTime"] = StartTime,
		["Duration"] = Duration,
		["EndTime"] = EndTime,
	}
	M.AssertDescribeEventsRequest(t)
	return t
end

local ClusterQuotaForCustomerExceededFault_keys = { nil }

function M.AssertClusterQuotaForCustomerExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterQuotaForCustomerExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterQuotaForCustomerExceededFault_keys[k], "ClusterQuotaForCustomerExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterQuotaForCustomerExceededFault
-- <p>You have attempted to exceed the maximum number of DAX clusters for your AWS account.</p>
function M.ClusterQuotaForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterQuotaForCustomerExceededFault")
	local t = { 
	}
	M.AssertClusterQuotaForCustomerExceededFault(t)
	return t
end

local UpdateSubnetGroupRequest_keys = { "SubnetIds" = true, "SubnetGroupName" = true, "Description" = true, nil }

function M.AssertUpdateSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["SubnetGroupName"] then M.AssertString(struct["SubnetGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSubnetGroupRequest_keys[k], "UpdateSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubnetGroupRequest
--  
-- @param SubnetIds [SubnetIdentifierList] <p>A list of subnet IDs in the subnet group.</p>
-- @param SubnetGroupName [String] <p>The name of the subnet group.</p>
-- @param Description [String] <p>A description of the subnet group.</p>
-- Required parameter: SubnetGroupName
function M.UpdateSubnetGroupRequest(SubnetIds, SubnetGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubnetGroupRequest")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["SubnetGroupName"] = SubnetGroupName,
		["Description"] = Description,
	}
	M.AssertUpdateSubnetGroupRequest(t)
	return t
end

local ClusterAlreadyExistsFault_keys = { nil }

function M.AssertClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterAlreadyExistsFault_keys[k], "ClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterAlreadyExistsFault
-- <p>You already have a DAX cluster with the given identifier.</p>
function M.ClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterAlreadyExistsFault(t)
	return t
end

local NodeTypeSpecificValue_keys = { "NodeType" = true, "Value" = true, nil }

function M.AssertNodeTypeSpecificValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeTypeSpecificValue to be of type 'table'")
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(NodeTypeSpecificValue_keys[k], "NodeTypeSpecificValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeTypeSpecificValue
-- <p>Represents a parameter value that is applicable to a particular node type.</p>
-- @param NodeType [String] <p>A node type to which the parameter value applies.</p>
-- @param Value [String] <p>The parameter value for this node type.</p>
function M.NodeTypeSpecificValue(NodeType, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeTypeSpecificValue")
	local t = { 
		["NodeType"] = NodeType,
		["Value"] = Value,
	}
	M.AssertNodeTypeSpecificValue(t)
	return t
end

local SubnetQuotaExceededFault_keys = { nil }

function M.AssertSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetQuotaExceededFault_keys[k], "SubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetQuotaExceededFault
-- <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
function M.SubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetQuotaExceededFault")
	local t = { 
	}
	M.AssertSubnetQuotaExceededFault(t)
	return t
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

function M.AssertAwsQueryErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsQueryErrorMessage to be of type 'string'")
end

--  
function M.AwsQueryErrorMessage(str)
	M.AssertAwsQueryErrorMessage(str)
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

function M.AssertChangeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeType to be of type 'string'")
end

--  
function M.ChangeType(str)
	M.AssertChangeType(str)
	return str
end

function M.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	M.AssertParameterType(str)
	return str
end

function M.AssertIsModifiable(str)
	assert(str)
	assert(type(str) == "string", "Expected IsModifiable to be of type 'string'")
end

--  
function M.IsModifiable(str)
	M.AssertIsModifiable(str)
	return str
end

function M.AssertIntegerOptional(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerOptional to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerOptional(integer)
	M.AssertIntegerOptional(integer)
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

function M.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	M.AssertTStamp(timestamp)
	return timestamp
end

function M.AssertNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNode(v)
	end
end

--  
-- List of Node objects
function M.NodeList(list)
	M.AssertNodeList(list)
	return list
end

function M.AssertSubnetIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SubnetIdentifierList(list)
	M.AssertSubnetIdentifierList(list)
	return list
end

function M.AssertNodeIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.NodeIdentifierList(list)
	M.AssertNodeIdentifierList(list)
	return list
end

function M.AssertSubnetGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubnetGroup(v)
	end
end

--  
-- List of SubnetGroup objects
function M.SubnetGroupList(list)
	M.AssertSubnetGroupList(list)
	return list
end

function M.AssertParameterGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ParameterGroupNameList(list)
	M.AssertParameterGroupNameList(list)
	return list
end

function M.AssertSubnetList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubnet(v)
	end
end

--  
-- List of Subnet objects
function M.SubnetList(list)
	M.AssertSubnetList(list)
	return list
end

function M.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	M.AssertEventList(list)
	return list
end

function M.AssertSubnetGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SubnetGroupNameList(list)
	M.AssertSubnetGroupNameList(list)
	return list
end

function M.AssertNodeTypeSpecificValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeTypeSpecificValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNodeTypeSpecificValue(v)
	end
end

--  
-- List of NodeTypeSpecificValue objects
function M.NodeTypeSpecificValueList(list)
	M.AssertNodeTypeSpecificValueList(list)
	return list
end

function M.AssertSecurityGroupIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SecurityGroupIdentifierList(list)
	M.AssertSecurityGroupIdentifierList(list)
	return list
end

function M.AssertClusterNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterNameList(list)
	M.AssertClusterNameList(list)
	return list
end

function M.AssertSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSecurityGroupMembership(v)
	end
end

--  
-- List of SecurityGroupMembership objects
function M.SecurityGroupMembershipList(list)
	M.AssertSecurityGroupMembershipList(list)
	return list
end

function M.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.KeyList(list)
	M.AssertKeyList(list)
	return list
end

function M.AssertParameterNameValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterNameValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterNameValue(v)
	end
end

--  
-- List of ParameterNameValue objects
function M.ParameterNameValueList(list)
	M.AssertParameterNameValueList(list)
	return list
end

function M.AssertParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParameterList(list)
	M.AssertParameterList(list)
	return list
end

function M.AssertClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCluster(v)
	end
end

--  
-- List of Cluster objects
function M.ClusterList(list)
	M.AssertClusterList(list)
	return list
end

function M.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZoneList(list)
	M.AssertAvailabilityZoneList(list)
	return list
end

function M.AssertParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterGroup(v)
	end
end

--  
-- List of ParameterGroup objects
function M.ParameterGroupList(list)
	M.AssertParameterGroupList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
			return "dax.amazonaws.com"
		end
	end
	local ss = { "dax" }
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
--- CreateParameterGroup
-- @param CreateParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateParameterGroupAsync(CreateParameterGroupRequest, cb)
	assert(CreateParameterGroupRequest, "You must provide a CreateParameterGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateParameterGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteParameterGroup
-- @param DeleteParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParameterGroupAsync(DeleteParameterGroupRequest, cb)
	assert(DeleteParameterGroupRequest, "You must provide a DeleteParameterGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteParameterGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCluster
-- @param UpdateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateClusterAsync(UpdateClusterRequest, cb)
	assert(UpdateClusterRequest, "You must provide a UpdateClusterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateClusterRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSubnetGroups
-- @param DescribeSubnetGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubnetGroupsAsync(DescribeSubnetGroupsRequest, cb)
	assert(DescribeSubnetGroupsRequest, "You must provide a DescribeSubnetGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSubnetGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- IncreaseReplicationFactor
-- @param IncreaseReplicationFactorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IncreaseReplicationFactorAsync(IncreaseReplicationFactorRequest, cb)
	assert(IncreaseReplicationFactorRequest, "You must provide a IncreaseReplicationFactorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.IncreaseReplicationFactor",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", IncreaseReplicationFactorRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSubnetGroup
-- @param UpdateSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSubnetGroupAsync(UpdateSubnetGroupRequest, cb)
	assert(UpdateSubnetGroupRequest, "You must provide a UpdateSubnetGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSubnetGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeParameters
-- @param DescribeParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParametersAsync(DescribeParametersRequest, cb)
	assert(DescribeParametersRequest, "You must provide a DescribeParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DecreaseReplicationFactor
-- @param DecreaseReplicationFactorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DecreaseReplicationFactorAsync(DecreaseReplicationFactorRequest, cb)
	assert(DecreaseReplicationFactorRequest, "You must provide a DecreaseReplicationFactorRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DecreaseReplicationFactor",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DecreaseReplicationFactorRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootNode
-- @param RebootNodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootNodeAsync(RebootNodeRequest, cb)
	assert(RebootNodeRequest, "You must provide a RebootNodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.RebootNode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootNodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSubnetGroup
-- @param CreateSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubnetGroupAsync(CreateSubnetGroupRequest, cb)
	assert(CreateSubnetGroupRequest, "You must provide a CreateSubnetGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSubnetGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateParameterGroup
-- @param UpdateParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateParameterGroupAsync(UpdateParameterGroupRequest, cb)
	assert(UpdateParameterGroupRequest, "You must provide a UpdateParameterGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateParameterGroupRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEvents
-- @param DescribeEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSubnetGroup
-- @param DeleteSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubnetGroupAsync(DeleteSubnetGroupRequest, cb)
	assert(DeleteSubnetGroupRequest, "You must provide a DeleteSubnetGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSubnetGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDefaultParameters
-- @param DescribeDefaultParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDefaultParametersAsync(DescribeDefaultParametersRequest, cb)
	assert(DescribeDefaultParametersRequest, "You must provide a DescribeDefaultParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeDefaultParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDefaultParametersRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClustersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeParameterGroups
-- @param DescribeParameterGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParameterGroupsAsync(DescribeParameterGroupsRequest, cb)
	assert(DescribeParameterGroupsRequest, "You must provide a DescribeParameterGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeParameterGroupsRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
