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

local keys = {}
local asserts = {}

keys.ClusterNotFoundFault = { nil }

function asserts.AssertClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterNotFoundFault[k], "ClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundFault
-- <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
function M.ClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterNotFoundFault(t)
	return t
end

keys.DescribeParametersResponse = { ["NextToken"] = true, ["Parameters"] = true, nil }

function asserts.AssertDescribeParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Parameters"] then asserts.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParametersResponse[k], "DescribeParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersResponse
--  
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param _Parameters [ParameterList] <p>A list of parameters within a parameter group. Each element in the list represents one parameter.</p>
function M.DescribeParametersResponse(_NextToken, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDescribeParametersResponse(t)
	return t
end

keys.ListTagsRequest = { ["ResourceName"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param _ResourceName [String] <p>The name of the DAX resource to which the tags belong.</p>
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.</p>
-- Required parameter: ResourceName
function M.ListTagsRequest(_ResourceName, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceName"] = _ResourceName,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTagsRequest(t)
	return t
end

keys.UpdateParameterGroupRequest = { ["ParameterGroupName"] = true, ["ParameterNameValues"] = true, nil }

function asserts.AssertUpdateParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["ParameterNameValues"], "Expected key ParameterNameValues to exist in table")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterNameValues"] then asserts.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateParameterGroupRequest[k], "UpdateParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateParameterGroupRequest
--  
-- @param _ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param _ParameterNameValues [ParameterNameValueList] <p>An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.</p>
-- Required parameter: ParameterGroupName
-- Required parameter: ParameterNameValues
function M.UpdateParameterGroupRequest(_ParameterGroupName, _ParameterNameValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
		["ParameterNameValues"] = _ParameterNameValues,
	}
	asserts.AssertUpdateParameterGroupRequest(t)
	return t
end

keys.DeleteClusterResponse = { ["Cluster"] = true, nil }

function asserts.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterResponse[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster that is being deleted.</p>
function M.DeleteClusterResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertDeleteClusterResponse(t)
	return t
end

keys.DeleteParameterGroupResponse = { ["DeletionMessage"] = true, nil }

function asserts.AssertDeleteParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterGroupResponse to be of type 'table'")
	if struct["DeletionMessage"] then asserts.AssertString(struct["DeletionMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteParameterGroupResponse[k], "DeleteParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterGroupResponse
--  
-- @param _DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the parameter group).</p>
function M.DeleteParameterGroupResponse(_DeletionMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterGroupResponse")
	local t = { 
		["DeletionMessage"] = _DeletionMessage,
	}
	asserts.AssertDeleteParameterGroupResponse(t)
	return t
end

keys.InvalidClusterStateFault = { nil }

function asserts.AssertInvalidClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterStateFault[k], "InvalidClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterStateFault
-- <p>The requested DAX cluster is not in the <i>available</i> state.</p>
function M.InvalidClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterStateFault(t)
	return t
end

keys.IncreaseReplicationFactorResponse = { ["Cluster"] = true, nil }

function asserts.AssertIncreaseReplicationFactorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicationFactorResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseReplicationFactorResponse[k], "IncreaseReplicationFactorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicationFactorResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster. with its new replication factor.</p>
function M.IncreaseReplicationFactorResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseReplicationFactorResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertIncreaseReplicationFactorResponse(t)
	return t
end

keys.DeleteParameterGroupRequest = { ["ParameterGroupName"] = true, nil }

function asserts.AssertDeleteParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteParameterGroupRequest[k], "DeleteParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterGroupRequest
--  
-- @param _ParameterGroupName [String] <p>The name of the parameter group to delete.</p>
-- Required parameter: ParameterGroupName
function M.DeleteParameterGroupRequest(_ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
	}
	asserts.AssertDeleteParameterGroupRequest(t)
	return t
end

keys.ParameterGroup = { ["ParameterGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroup to be of type 'table'")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterGroup[k], "ParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroup
-- <p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>
-- @param _ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param _Description [String] <p>A description of the parameter group.</p>
function M.ParameterGroup(_ParameterGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroup")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
		["Description"] = _Description,
	}
	asserts.AssertParameterGroup(t)
	return t
end

keys.InsufficientClusterCapacityFault = { nil }

function asserts.AssertInsufficientClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientClusterCapacityFault[k], "InsufficientClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientClusterCapacityFault
-- <p>There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster). </p>
function M.InsufficientClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientClusterCapacityFault")
	local t = { 
	}
	asserts.AssertInsufficientClusterCapacityFault(t)
	return t
end

keys.DeleteClusterRequest = { ["ClusterName"] = true, nil }

function asserts.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterRequest[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param _ClusterName [String] <p>The name of the cluster to be deleted.</p>
-- Required parameter: ClusterName
function M.DeleteClusterRequest(_ClusterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterRequest")
	local t = { 
		["ClusterName"] = _ClusterName,
	}
	asserts.AssertDeleteClusterRequest(t)
	return t
end

keys.InvalidParameterGroupStateFault = { nil }

function asserts.AssertInvalidParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterGroupStateFault[k], "InvalidParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterGroupStateFault
-- <p>One or more parameters in a parameter group are in an invalid state.</p>
function M.InvalidParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidParameterGroupStateFault(t)
	return t
end

keys.DeleteSubnetGroupResponse = { ["DeletionMessage"] = true, nil }

function asserts.AssertDeleteSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubnetGroupResponse to be of type 'table'")
	if struct["DeletionMessage"] then asserts.AssertString(struct["DeletionMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubnetGroupResponse[k], "DeleteSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubnetGroupResponse
--  
-- @param _DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the subnet group).</p>
function M.DeleteSubnetGroupResponse(_DeletionMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubnetGroupResponse")
	local t = { 
		["DeletionMessage"] = _DeletionMessage,
	}
	asserts.AssertDeleteSubnetGroupResponse(t)
	return t
end

keys.CreateSubnetGroupResponse = { ["SubnetGroup"] = true, nil }

function asserts.AssertCreateSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubnetGroupResponse to be of type 'table'")
	if struct["SubnetGroup"] then asserts.AssertSubnetGroup(struct["SubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubnetGroupResponse[k], "CreateSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubnetGroupResponse
--  
-- @param _SubnetGroup [SubnetGroup] <p>Represents the output of a <i>CreateSubnetGroup</i> operation.</p>
function M.CreateSubnetGroupResponse(_SubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubnetGroupResponse")
	local t = { 
		["SubnetGroup"] = _SubnetGroup,
	}
	asserts.AssertCreateSubnetGroupResponse(t)
	return t
end

keys.DescribeDefaultParametersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeDefaultParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultParametersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDefaultParametersRequest[k], "DescribeDefaultParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultParametersRequest
--  
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeDefaultParametersRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultParametersRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeDefaultParametersRequest(t)
	return t
end

keys.DescribeSubnetGroupsRequest = { ["NextToken"] = true, ["SubnetGroupNames"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeSubnetGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubnetGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SubnetGroupNames"] then asserts.AssertSubnetGroupNameList(struct["SubnetGroupNames"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubnetGroupsRequest[k], "DescribeSubnetGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubnetGroupsRequest
--  
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _SubnetGroupNames [SubnetGroupNameList] <p>The name of the subnet group.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeSubnetGroupsRequest(_NextToken, _SubnetGroupNames, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubnetGroupsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["SubnetGroupNames"] = _SubnetGroupNames,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeSubnetGroupsRequest(t)
	return t
end

keys.DeleteSubnetGroupRequest = { ["SubnetGroupName"] = true, nil }

function asserts.AssertDeleteSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	if struct["SubnetGroupName"] then asserts.AssertString(struct["SubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubnetGroupRequest[k], "DeleteSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubnetGroupRequest
--  
-- @param _SubnetGroupName [String] <p>The name of the subnet group to delete.</p>
-- Required parameter: SubnetGroupName
function M.DeleteSubnetGroupRequest(_SubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubnetGroupRequest")
	local t = { 
		["SubnetGroupName"] = _SubnetGroupName,
	}
	asserts.AssertDeleteSubnetGroupRequest(t)
	return t
end

keys.SubnetGroupQuotaExceededFault = { nil }

function asserts.AssertSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetGroupQuotaExceededFault[k], "SubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupQuotaExceededFault
-- <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
function M.SubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertSubnetGroupQuotaExceededFault(t)
	return t
end

keys.DecreaseReplicationFactorResponse = { ["Cluster"] = true, nil }

function asserts.AssertDecreaseReplicationFactorResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicationFactorResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseReplicationFactorResponse[k], "DecreaseReplicationFactorResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicationFactorResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster, after you have decreased its replication factor.</p>
function M.DecreaseReplicationFactorResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseReplicationFactorResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertDecreaseReplicationFactorResponse(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>
-- @param _Value [String] <p>The value of the tag. Tag values are case-sensitive and can be null. </p>
-- @param _Key [String] <p>The key for the tag. Tag keys are case sensitive. Every DAX cluster can only have one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.DescribeParametersRequest = { ["Source"] = true, ["NextToken"] = true, ["ParameterGroupName"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParametersRequest[k], "DescribeParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersRequest
--  
-- @param _Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- Required parameter: ParameterGroupName
function M.DescribeParametersRequest(_Source, _NextToken, _ParameterGroupName, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersRequest")
	local t = { 
		["Source"] = _Source,
		["NextToken"] = _NextToken,
		["ParameterGroupName"] = _ParameterGroupName,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeParametersRequest(t)
	return t
end

keys.RebootNodeRequest = { ["ClusterName"] = true, ["NodeId"] = true, nil }

function asserts.AssertRebootNodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootNodeRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NodeId"], "Expected key NodeId to exist in table")
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["NodeId"] then asserts.AssertString(struct["NodeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootNodeRequest[k], "RebootNodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootNodeRequest
--  
-- @param _ClusterName [String] <p>The name of the DAX cluster containing the node to be rebooted.</p>
-- @param _NodeId [String] <p>The system-assigned ID of the node to be rebooted.</p>
-- Required parameter: ClusterName
-- Required parameter: NodeId
function M.RebootNodeRequest(_ClusterName, _NodeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootNodeRequest")
	local t = { 
		["ClusterName"] = _ClusterName,
		["NodeId"] = _NodeId,
	}
	asserts.AssertRebootNodeRequest(t)
	return t
end

keys.NotificationConfiguration = { ["TopicStatus"] = true, ["TopicArn"] = true, nil }

function asserts.AssertNotificationConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfiguration to be of type 'table'")
	if struct["TopicStatus"] then asserts.AssertString(struct["TopicStatus"]) end
	if struct["TopicArn"] then asserts.AssertString(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfiguration[k], "NotificationConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfiguration
-- <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- @param _TopicStatus [String] <p>The current state of the topic.</p>
-- @param _TopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
function M.NotificationConfiguration(_TopicStatus, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfiguration")
	local t = { 
		["TopicStatus"] = _TopicStatus,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertNotificationConfiguration(t)
	return t
end

keys.Event = { ["SourceName"] = true, ["Date"] = true, ["Message"] = true, ["SourceType"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["SourceName"] then asserts.AssertString(struct["SourceName"]) end
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>
-- @param _SourceName [String] <p>The source of the event. For example, if the event occurred at the node level, the source would be the node ID.</p>
-- @param _Date [TStamp] <p>The date and time when the event occurred.</p>
-- @param _Message [String] <p>A user-defined message associated with the event.</p>
-- @param _SourceType [SourceType] <p>Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.</p>
function M.Event(_SourceName, _Date, _Message, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["SourceName"] = _SourceName,
		["Date"] = _Date,
		["Message"] = _Message,
		["SourceType"] = _SourceType,
	}
	asserts.AssertEvent(t)
	return t
end

keys.DescribeClustersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["ClusterNames"] = true, nil }

function asserts.AssertDescribeClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	if struct["ClusterNames"] then asserts.AssertClusterNameList(struct["ClusterNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersRequest[k], "DescribeClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersRequest
--  
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @param _ClusterNames [ClusterNameList] <p>The names of the DAX clusters being described.</p>
function M.DescribeClustersRequest(_NextToken, _MaxResults, _ClusterNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["ClusterNames"] = _ClusterNames,
	}
	asserts.AssertDescribeClustersRequest(t)
	return t
end

keys.InvalidSubnet = { nil }

function asserts.AssertInvalidSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubnet to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubnet[k], "InvalidSubnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubnet
-- <p>An invalid subnet identifier was specified.</p>
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	asserts.AssertInvalidSubnet(t)
	return t
end

keys.Parameter = { ["ParameterType"] = true, ["Description"] = true, ["DataType"] = true, ["ChangeType"] = true, ["IsModifiable"] = true, ["AllowedValues"] = true, ["NodeTypeSpecificValues"] = true, ["Source"] = true, ["ParameterValue"] = true, ["ParameterName"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ParameterType"] then asserts.AssertParameterType(struct["ParameterType"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then asserts.AssertChangeType(struct["ChangeType"]) end
	if struct["IsModifiable"] then asserts.AssertIsModifiable(struct["IsModifiable"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["NodeTypeSpecificValues"] then asserts.AssertNodeTypeSpecificValueList(struct["NodeTypeSpecificValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>Describes an individual setting that controls some aspect of DAX behavior.</p>
-- @param _ParameterType [ParameterType] <p>Determines whether the parameter can be applied to any nodes, or only nodes of a particular type.</p>
-- @param _Description [String] <p>A description of the parameter</p>
-- @param _DataType [String] <p>The data type of the parameter. For example, <code>integer</code>:</p>
-- @param _ChangeType [ChangeType] <p>The conditions under which changes to this parameter can be applied. For example, <code>requires-reboot</code> indicates that a new value for this parameter will only take effect if a node is rebooted.</p>
-- @param _IsModifiable [IsModifiable] <p>Whether the customer is allowed to modify the parameter.</p>
-- @param _AllowedValues [String] <p>A range of values within which the parameter can be set.</p>
-- @param _NodeTypeSpecificValues [NodeTypeSpecificValueList] <p>A list of node types, and specific parameter values for each node.</p>
-- @param _Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- @param _ParameterValue [String] <p>The value for the parameter.</p>
-- @param _ParameterName [String] <p>The name of the parameter.</p>
function M.Parameter(_ParameterType, _Description, _DataType, _ChangeType, _IsModifiable, _AllowedValues, _NodeTypeSpecificValues, _Source, _ParameterValue, _ParameterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["ParameterType"] = _ParameterType,
		["Description"] = _Description,
		["DataType"] = _DataType,
		["ChangeType"] = _ChangeType,
		["IsModifiable"] = _IsModifiable,
		["AllowedValues"] = _AllowedValues,
		["NodeTypeSpecificValues"] = _NodeTypeSpecificValues,
		["Source"] = _Source,
		["ParameterValue"] = _ParameterValue,
		["ParameterName"] = _ParameterName,
	}
	asserts.AssertParameter(t)
	return t
end

keys.DescribeDefaultParametersResponse = { ["NextToken"] = true, ["Parameters"] = true, nil }

function asserts.AssertDescribeDefaultParametersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultParametersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Parameters"] then asserts.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDefaultParametersResponse[k], "DescribeDefaultParametersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultParametersResponse
--  
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param _Parameters [ParameterList] <p>A list of parameters. Each element in the list represents one parameter.</p>
function M.DescribeDefaultParametersResponse(_NextToken, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultParametersResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDescribeDefaultParametersResponse(t)
	return t
end

keys.ParameterGroupQuotaExceededFault = { nil }

function asserts.AssertParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ParameterGroupQuotaExceededFault[k], "ParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupQuotaExceededFault
-- <p>You have attempted to exceed the maximum number of parameter groups.</p>
function M.ParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertParameterGroupQuotaExceededFault(t)
	return t
end

keys.InvalidParameterCombinationException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["message"] then asserts.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterCombinationException[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Two or more incompatible parameters were specified.</p>
-- @param _message [AwsQueryErrorMessage] 
function M.InvalidParameterCombinationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterCombinationException(t)
	return t
end

keys.ParameterGroupAlreadyExistsFault = { nil }

function asserts.AssertParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ParameterGroupAlreadyExistsFault[k], "ParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupAlreadyExistsFault
-- <p>The specified parameter group already exists.</p>
function M.ParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertParameterGroupAlreadyExistsFault(t)
	return t
end

keys.UpdateClusterRequest = { ["Description"] = true, ["ClusterName"] = true, ["SecurityGroupIds"] = true, ["NotificationTopicStatus"] = true, ["ParameterGroupName"] = true, ["NotificationTopicArn"] = true, ["PreferredMaintenanceWindow"] = true, nil }

function asserts.AssertUpdateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdentifierList(struct["SecurityGroupIds"]) end
	if struct["NotificationTopicStatus"] then asserts.AssertString(struct["NotificationTopicStatus"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterRequest[k], "UpdateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterRequest
--  
-- @param _Description [String] <p>A description of the changes being made to the cluster.</p>
-- @param _ClusterName [String] <p>The name of the DAX cluster to be modified.</p>
-- @param _SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- @param _NotificationTopicStatus [String] <p>The current state of the topic.</p>
-- @param _ParameterGroupName [String] <p>The name of a parameter group for this cluster.</p>
-- @param _NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
-- @param _PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
-- Required parameter: ClusterName
function M.UpdateClusterRequest(_Description, _ClusterName, _SecurityGroupIds, _NotificationTopicStatus, _ParameterGroupName, _NotificationTopicArn, _PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterRequest")
	local t = { 
		["Description"] = _Description,
		["ClusterName"] = _ClusterName,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["NotificationTopicStatus"] = _NotificationTopicStatus,
		["ParameterGroupName"] = _ParameterGroupName,
		["NotificationTopicArn"] = _NotificationTopicArn,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
	}
	asserts.AssertUpdateClusterRequest(t)
	return t
end

keys.RebootNodeResponse = { ["Cluster"] = true, nil }

function asserts.AssertRebootNodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootNodeResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootNodeResponse[k], "RebootNodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootNodeResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster after a node has been rebooted.</p>
function M.RebootNodeResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootNodeResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertRebootNodeResponse(t)
	return t
end

keys.ParameterGroupNotFoundFault = { nil }

function asserts.AssertParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ParameterGroupNotFoundFault[k], "ParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupNotFoundFault
-- <p>The specified parameter group does not exist.</p>
function M.ParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertParameterGroupNotFoundFault(t)
	return t
end

keys.CreateParameterGroupResponse = { ["ParameterGroup"] = true, nil }

function asserts.AssertCreateParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateParameterGroupResponse to be of type 'table'")
	if struct["ParameterGroup"] then asserts.AssertParameterGroup(struct["ParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateParameterGroupResponse[k], "CreateParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateParameterGroupResponse
--  
-- @param _ParameterGroup [ParameterGroup] <p>Represents the output of a <i>CreateParameterGroup</i> action.</p>
function M.CreateParameterGroupResponse(_ParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateParameterGroupResponse")
	local t = { 
		["ParameterGroup"] = _ParameterGroup,
	}
	asserts.AssertCreateParameterGroupResponse(t)
	return t
end

keys.SecurityGroupMembership = { ["Status"] = true, ["SecurityGroupIdentifier"] = true, nil }

function asserts.AssertSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SecurityGroupIdentifier"] then asserts.AssertString(struct["SecurityGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroupMembership[k], "SecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupMembership
-- <p>An individual VPC security group and its status.</p>
-- @param _Status [String] <p>The status of this security group.</p>
-- @param _SecurityGroupIdentifier [String] <p>The unique ID for this security group.</p>
function M.SecurityGroupMembership(_Status, _SecurityGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["SecurityGroupIdentifier"] = _SecurityGroupIdentifier,
	}
	asserts.AssertSecurityGroupMembership(t)
	return t
end

keys.IncreaseReplicationFactorRequest = { ["ClusterName"] = true, ["AvailabilityZones"] = true, ["NewReplicationFactor"] = true, nil }

function asserts.AssertIncreaseReplicationFactorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicationFactorRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NewReplicationFactor"], "Expected key NewReplicationFactor to exist in table")
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["NewReplicationFactor"] then asserts.AssertInteger(struct["NewReplicationFactor"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseReplicationFactorRequest[k], "IncreaseReplicationFactorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicationFactorRequest
--  
-- @param _ClusterName [String] <p>The name of the DAX cluster that will receive additional nodes.</p>
-- @param _AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- @param _NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required parameter: ClusterName
-- Required parameter: NewReplicationFactor
function M.IncreaseReplicationFactorRequest(_ClusterName, _AvailabilityZones, _NewReplicationFactor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncreaseReplicationFactorRequest")
	local t = { 
		["ClusterName"] = _ClusterName,
		["AvailabilityZones"] = _AvailabilityZones,
		["NewReplicationFactor"] = _NewReplicationFactor,
	}
	asserts.AssertIncreaseReplicationFactorRequest(t)
	return t
end

keys.SubnetGroup = { ["Subnets"] = true, ["SubnetGroupName"] = true, ["VpcId"] = true, ["Description"] = true, nil }

function asserts.AssertSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroup to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["SubnetGroupName"] then asserts.AssertString(struct["SubnetGroupName"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubnetGroup[k], "SubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroup
-- <p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>
-- @param _Subnets [SubnetList] <p>A list of subnets associated with the subnet group. </p>
-- @param _SubnetGroupName [String] <p>The name of the subnet group.</p>
-- @param _VpcId [String] <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
-- @param _Description [String] <p>The description of the subnet group.</p>
function M.SubnetGroup(_Subnets, _SubnetGroupName, _VpcId, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroup")
	local t = { 
		["Subnets"] = _Subnets,
		["SubnetGroupName"] = _SubnetGroupName,
		["VpcId"] = _VpcId,
		["Description"] = _Description,
	}
	asserts.AssertSubnetGroup(t)
	return t
end

keys.DescribeClustersResponse = { ["Clusters"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersResponse to be of type 'table'")
	if struct["Clusters"] then asserts.AssertClusterList(struct["Clusters"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersResponse[k], "DescribeClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersResponse
--  
-- @param _Clusters [ClusterList] <p>The descriptions of your DAX clusters, in response to a <i>DescribeClusters</i> request.</p>
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
function M.DescribeClustersResponse(_Clusters, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersResponse")
	local t = { 
		["Clusters"] = _Clusters,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeClustersResponse(t)
	return t
end

keys.UntagResourceRequest = { ["ResourceName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then asserts.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param _ResourceName [String] <p>The name of the DAX resource from which the tags should be removed.</p>
-- @param _TagKeys [KeyList] <p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.UntagResourceRequest(_ResourceName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["ResourceName"] = _ResourceName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertUntagResourceRequest(t)
	return t
end

keys.DescribeParameterGroupsResponse = { ["ParameterGroups"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeParameterGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParameterGroupsResponse to be of type 'table'")
	if struct["ParameterGroups"] then asserts.AssertParameterGroupList(struct["ParameterGroups"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParameterGroupsResponse[k], "DescribeParameterGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParameterGroupsResponse
--  
-- @param _ParameterGroups [ParameterGroupList] <p>An array of parameter groups. Each element in the array represents one parameter group.</p>
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
function M.DescribeParameterGroupsResponse(_ParameterGroups, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParameterGroupsResponse")
	local t = { 
		["ParameterGroups"] = _ParameterGroups,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeParameterGroupsResponse(t)
	return t
end

keys.Subnet = { ["SubnetIdentifier"] = true, ["SubnetAvailabilityZone"] = true, nil }

function asserts.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetIdentifier"] then asserts.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then asserts.AssertString(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subnet[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- <p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>
-- @param _SubnetIdentifier [String] <p>The system-assigned identifier for the subnet.</p>
-- @param _SubnetAvailabilityZone [String] <p>The Availability Zone (AZ) for subnet subnet.</p>
function M.Subnet(_SubnetIdentifier, _SubnetAvailabilityZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subnet")
	local t = { 
		["SubnetIdentifier"] = _SubnetIdentifier,
		["SubnetAvailabilityZone"] = _SubnetAvailabilityZone,
	}
	asserts.AssertSubnet(t)
	return t
end

keys.InvalidARNFault = { nil }

function asserts.AssertInvalidARNFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidARNFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidARNFault[k], "InvalidARNFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidARNFault
-- <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
function M.InvalidARNFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidARNFault")
	local t = { 
	}
	asserts.AssertInvalidARNFault(t)
	return t
end

keys.CreateClusterResponse = { ["Cluster"] = true, nil }

function asserts.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResponse[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster that you have created.</p>
function M.CreateClusterResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertCreateClusterResponse(t)
	return t
end

keys.Node = { ["Endpoint"] = true, ["NodeStatus"] = true, ["ParameterGroupStatus"] = true, ["NodeId"] = true, ["AvailabilityZone"] = true, ["NodeCreateTime"] = true, nil }

function asserts.AssertNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Node to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["NodeStatus"] then asserts.AssertString(struct["NodeStatus"]) end
	if struct["ParameterGroupStatus"] then asserts.AssertString(struct["ParameterGroupStatus"]) end
	if struct["NodeId"] then asserts.AssertString(struct["NodeId"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeCreateTime"] then asserts.AssertTStamp(struct["NodeCreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Node[k], "Node contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Node
-- <p>Represents an individual node within a DAX cluster.</p>
-- @param _Endpoint [Endpoint] <p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- @param _NodeStatus [String] <p>The current status of the node. For example: <code>available</code>.</p>
-- @param _ParameterGroupStatus [String] <p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>
-- @param _NodeId [String] <p>A system-generated identifier for the node.</p>
-- @param _AvailabilityZone [String] <p>The Availability Zone (AZ) in which the node has been deployed.</p>
-- @param _NodeCreateTime [TStamp] <p>The date and time (in UNIX epoch format) when the node was launched.</p>
function M.Node(_Endpoint, _NodeStatus, _ParameterGroupStatus, _NodeId, _AvailabilityZone, _NodeCreateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Node")
	local t = { 
		["Endpoint"] = _Endpoint,
		["NodeStatus"] = _NodeStatus,
		["ParameterGroupStatus"] = _ParameterGroupStatus,
		["NodeId"] = _NodeId,
		["AvailabilityZone"] = _AvailabilityZone,
		["NodeCreateTime"] = _NodeCreateTime,
	}
	asserts.AssertNode(t)
	return t
end

keys.DescribeEventsResponse = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsResponse[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param _Events [EventList] <p>An array of events. Each element in the array represents one event.</p>
function M.DescribeEventsResponse(_NextToken, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Events"] = _Events,
	}
	asserts.AssertDescribeEventsResponse(t)
	return t
end

keys.CreateClusterRequest = { ["ReplicationFactor"] = true, ["NotificationTopicArn"] = true, ["NodeType"] = true, ["Description"] = true, ["Tags"] = true, ["ClusterName"] = true, ["SubnetGroupName"] = true, ["IamRoleArn"] = true, ["SecurityGroupIds"] = true, ["ParameterGroupName"] = true, ["AvailabilityZones"] = true, ["PreferredMaintenanceWindow"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NodeType"], "Expected key NodeType to exist in table")
	assert(struct["ReplicationFactor"], "Expected key ReplicationFactor to exist in table")
	assert(struct["IamRoleArn"], "Expected key IamRoleArn to exist in table")
	if struct["ReplicationFactor"] then asserts.AssertInteger(struct["ReplicationFactor"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["SubnetGroupName"] then asserts.AssertString(struct["SubnetGroupName"]) end
	if struct["IamRoleArn"] then asserts.AssertString(struct["IamRoleArn"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdentifierList(struct["SecurityGroupIds"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param _ReplicationFactor [Integer] <p>The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set <i>ReplicationFactor</i> to 2 or more.</p> <note> <p>AWS recommends that you have at least two read replicas per cluster.</p> </note>
-- @param _NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.</p> <note> <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p> </note>
-- @param _NodeType [String] <p>The compute and memory capacity of the nodes in the cluster.</p>
-- @param _Description [String] <p>A description of the cluster.</p>
-- @param _Tags [TagList] <p>A set of tags to associate with the DAX cluster. </p>
-- @param _ClusterName [String] <p>The cluster identifier. This parameter is stored as a lowercase string.</p> <p> <b>Constraints:</b> </p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _SubnetGroupName [String] <p>The name of the subnet group to be used for the replication group.</p> <important> <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.</p> </important>
-- @param _IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- @param _SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)</p> <p>If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- @param _ParameterGroupName [String] <p>The parameter group to be associated with the DAX cluster.</p>
-- @param _AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- @param _PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:05:00-sun:09:00</code> </p> <note> <p>If you don't specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.</p> </note>
-- Required parameter: ClusterName
-- Required parameter: NodeType
-- Required parameter: ReplicationFactor
-- Required parameter: IamRoleArn
function M.CreateClusterRequest(_ReplicationFactor, _NotificationTopicArn, _NodeType, _Description, _Tags, _ClusterName, _SubnetGroupName, _IamRoleArn, _SecurityGroupIds, _ParameterGroupName, _AvailabilityZones, _PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterRequest")
	local t = { 
		["ReplicationFactor"] = _ReplicationFactor,
		["NotificationTopicArn"] = _NotificationTopicArn,
		["NodeType"] = _NodeType,
		["Description"] = _Description,
		["Tags"] = _Tags,
		["ClusterName"] = _ClusterName,
		["SubnetGroupName"] = _SubnetGroupName,
		["IamRoleArn"] = _IamRoleArn,
		["SecurityGroupIds"] = _SecurityGroupIds,
		["ParameterGroupName"] = _ParameterGroupName,
		["AvailabilityZones"] = _AvailabilityZones,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
	}
	asserts.AssertCreateClusterRequest(t)
	return t
end

keys.DescribeSubnetGroupsResponse = { ["NextToken"] = true, ["SubnetGroups"] = true, nil }

function asserts.AssertDescribeSubnetGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubnetGroupsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SubnetGroups"] then asserts.AssertSubnetGroupList(struct["SubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubnetGroupsResponse[k], "DescribeSubnetGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubnetGroupsResponse
--  
-- @param _NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @param _SubnetGroups [SubnetGroupList] <p>An array of subnet groups. Each element in the array represents a single subnet group.</p>
function M.DescribeSubnetGroupsResponse(_NextToken, _SubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubnetGroupsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["SubnetGroups"] = _SubnetGroups,
	}
	asserts.AssertDescribeSubnetGroupsResponse(t)
	return t
end

keys.SubnetGroupInUseFault = { nil }

function asserts.AssertSubnetGroupInUseFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupInUseFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetGroupInUseFault[k], "SubnetGroupInUseFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupInUseFault
-- <p>The specified subnet group is currently in use.</p>
function M.SubnetGroupInUseFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupInUseFault")
	local t = { 
	}
	asserts.AssertSubnetGroupInUseFault(t)
	return t
end

keys.ListTagsResponse = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param _NextToken [String] <p>If this value is present, there are additional results to be displayed. To retrieve them, call <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>
-- @param _Tags [TagList] <p>A list of tags currently associated with the DAX cluster.</p>
function M.ListTagsResponse(_NextToken, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Tags"] = _Tags,
	}
	asserts.AssertListTagsResponse(t)
	return t
end

keys.UntagResourceResponse = { ["Tags"] = true, nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param _Tags [TagList] <p>The tag keys that have been removed from the cluster.</p>
function M.UntagResourceResponse(_Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceResponse")
	local t = { 
		["Tags"] = _Tags,
	}
	asserts.AssertUntagResourceResponse(t)
	return t
end

keys.UpdateClusterResponse = { ["Cluster"] = true, nil }

function asserts.AssertUpdateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterResponse[k], "UpdateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterResponse
--  
-- @param _Cluster [Cluster] <p>A description of the DAX cluster, after it has been modified.</p>
function M.UpdateClusterResponse(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateClusterResponse")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertUpdateClusterResponse(t)
	return t
end

keys.ParameterNameValue = { ["ParameterName"] = true, ["ParameterValue"] = true, nil }

function asserts.AssertParameterNameValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterNameValue to be of type 'table'")
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterNameValue[k], "ParameterNameValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterNameValue
-- <p>An individual DAX parameter.</p>
-- @param _ParameterName [String] <p>The name of the parameter.</p>
-- @param _ParameterValue [String] <p>The value of the parameter.</p>
function M.ParameterNameValue(_ParameterName, _ParameterValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterNameValue")
	local t = { 
		["ParameterName"] = _ParameterName,
		["ParameterValue"] = _ParameterValue,
	}
	asserts.AssertParameterNameValue(t)
	return t
end

keys.InvalidParameterValueException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>The value for a parameter is invalid.</p>
-- @param _message [AwsQueryErrorMessage] 
function M.InvalidParameterValueException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
end

keys.DecreaseReplicationFactorRequest = { ["ClusterName"] = true, ["NodeIdsToRemove"] = true, ["AvailabilityZones"] = true, ["NewReplicationFactor"] = true, nil }

function asserts.AssertDecreaseReplicationFactorRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicationFactorRequest to be of type 'table'")
	assert(struct["ClusterName"], "Expected key ClusterName to exist in table")
	assert(struct["NewReplicationFactor"], "Expected key NewReplicationFactor to exist in table")
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["NodeIdsToRemove"] then asserts.AssertNodeIdentifierList(struct["NodeIdsToRemove"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["NewReplicationFactor"] then asserts.AssertInteger(struct["NewReplicationFactor"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseReplicationFactorRequest[k], "DecreaseReplicationFactorRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicationFactorRequest
--  
-- @param _ClusterName [String] <p>The name of the DAX cluster from which you want to remove nodes.</p>
-- @param _NodeIdsToRemove [NodeIdentifierList] <p>The unique identifiers of the nodes to be removed from the cluster.</p>
-- @param _AvailabilityZones [AvailabilityZoneList] <p>The Availability Zone(s) from which to remove nodes.</p>
-- @param _NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required parameter: ClusterName
-- Required parameter: NewReplicationFactor
function M.DecreaseReplicationFactorRequest(_ClusterName, _NodeIdsToRemove, _AvailabilityZones, _NewReplicationFactor, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecreaseReplicationFactorRequest")
	local t = { 
		["ClusterName"] = _ClusterName,
		["NodeIdsToRemove"] = _NodeIdsToRemove,
		["AvailabilityZones"] = _AvailabilityZones,
		["NewReplicationFactor"] = _NewReplicationFactor,
	}
	asserts.AssertDecreaseReplicationFactorRequest(t)
	return t
end

keys.NodeQuotaForCustomerExceededFault = { nil }

function asserts.AssertNodeQuotaForCustomerExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeQuotaForCustomerExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NodeQuotaForCustomerExceededFault[k], "NodeQuotaForCustomerExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeQuotaForCustomerExceededFault
-- <p>You have attempted to exceed the maximum number of nodes for your AWS account.</p>
function M.NodeQuotaForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeQuotaForCustomerExceededFault")
	local t = { 
	}
	asserts.AssertNodeQuotaForCustomerExceededFault(t)
	return t
end

keys.InvalidVPCNetworkStateFault = { nil }

function asserts.AssertInvalidVPCNetworkStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVPCNetworkStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidVPCNetworkStateFault[k], "InvalidVPCNetworkStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVPCNetworkStateFault
-- <p>The VPC network is in an invalid state.</p>
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	asserts.AssertInvalidVPCNetworkStateFault(t)
	return t
end

keys.SubnetGroupNotFoundFault = { nil }

function asserts.AssertSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetGroupNotFoundFault[k], "SubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupNotFoundFault
-- <p>The requested subnet group name does not refer to an existing subnet group.</p>
function M.SubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertSubnetGroupNotFoundFault(t)
	return t
end

keys.SubnetGroupAlreadyExistsFault = { nil }

function asserts.AssertSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetGroupAlreadyExistsFault[k], "SubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetGroupAlreadyExistsFault
-- <p>The specified subnet group already exists.</p>
function M.SubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertSubnetGroupAlreadyExistsFault(t)
	return t
end

keys.Cluster = { ["Status"] = true, ["SubnetGroup"] = true, ["NodeType"] = true, ["Description"] = true, ["ClusterName"] = true, ["ParameterGroup"] = true, ["ActiveNodes"] = true, ["TotalNodes"] = true, ["IamRoleArn"] = true, ["NodeIdsToRemove"] = true, ["SecurityGroups"] = true, ["ClusterArn"] = true, ["Nodes"] = true, ["ClusterDiscoveryEndpoint"] = true, ["NotificationConfiguration"] = true, ["PreferredMaintenanceWindow"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SubnetGroup"] then asserts.AssertString(struct["SubnetGroup"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["ClusterName"] then asserts.AssertString(struct["ClusterName"]) end
	if struct["ParameterGroup"] then asserts.AssertParameterGroupStatus(struct["ParameterGroup"]) end
	if struct["ActiveNodes"] then asserts.AssertIntegerOptional(struct["ActiveNodes"]) end
	if struct["TotalNodes"] then asserts.AssertIntegerOptional(struct["TotalNodes"]) end
	if struct["IamRoleArn"] then asserts.AssertString(struct["IamRoleArn"]) end
	if struct["NodeIdsToRemove"] then asserts.AssertNodeIdentifierList(struct["NodeIdsToRemove"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroupMembershipList(struct["SecurityGroups"]) end
	if struct["ClusterArn"] then asserts.AssertString(struct["ClusterArn"]) end
	if struct["Nodes"] then asserts.AssertNodeList(struct["Nodes"]) end
	if struct["ClusterDiscoveryEndpoint"] then asserts.AssertEndpoint(struct["ClusterDiscoveryEndpoint"]) end
	if struct["NotificationConfiguration"] then asserts.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>Contains all of the attributes of a specific DAX cluster.</p>
-- @param _Status [String] <p>The current status of the cluster.</p>
-- @param _SubnetGroup [String] <p>The subnet group where the DAX cluster is running.</p>
-- @param _NodeType [String] <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
-- @param _Description [String] <p>The description of the cluster.</p>
-- @param _ClusterName [String] <p>The name of the DAX cluster.</p>
-- @param _ParameterGroup [ParameterGroupStatus] <p>The parameter group being used by nodes in the cluster.</p>
-- @param _ActiveNodes [IntegerOptional] <p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>
-- @param _TotalNodes [IntegerOptional] <p>The total number of nodes in the cluster.</p>
-- @param _IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- @param _NodeIdsToRemove [NodeIdentifierList] <p>A list of nodes to be removed from the cluster.</p>
-- @param _SecurityGroups [SecurityGroupMembershipList] <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
-- @param _ClusterArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
-- @param _Nodes [NodeList] <p>A list of nodes that are currently in the cluster.</p>
-- @param _ClusterDiscoveryEndpoint [Endpoint] <p>The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- @param _NotificationConfiguration [NotificationConfiguration] <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- @param _PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
function M.Cluster(_Status, _SubnetGroup, _NodeType, _Description, _ClusterName, _ParameterGroup, _ActiveNodes, _TotalNodes, _IamRoleArn, _NodeIdsToRemove, _SecurityGroups, _ClusterArn, _Nodes, _ClusterDiscoveryEndpoint, _NotificationConfiguration, _PreferredMaintenanceWindow, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["Status"] = _Status,
		["SubnetGroup"] = _SubnetGroup,
		["NodeType"] = _NodeType,
		["Description"] = _Description,
		["ClusterName"] = _ClusterName,
		["ParameterGroup"] = _ParameterGroup,
		["ActiveNodes"] = _ActiveNodes,
		["TotalNodes"] = _TotalNodes,
		["IamRoleArn"] = _IamRoleArn,
		["NodeIdsToRemove"] = _NodeIdsToRemove,
		["SecurityGroups"] = _SecurityGroups,
		["ClusterArn"] = _ClusterArn,
		["Nodes"] = _Nodes,
		["ClusterDiscoveryEndpoint"] = _ClusterDiscoveryEndpoint,
		["NotificationConfiguration"] = _NotificationConfiguration,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
	}
	asserts.AssertCluster(t)
	return t
end

keys.CreateSubnetGroupRequest = { ["SubnetIds"] = true, ["SubnetGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["SubnetGroupName"] then asserts.AssertString(struct["SubnetGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubnetGroupRequest[k], "CreateSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubnetGroupRequest
--  
-- @param _SubnetIds [SubnetIdentifierList] <p>A list of VPC subnet IDs for the subnet group.</p>
-- @param _SubnetGroupName [String] <p>A name for the subnet group. This value is stored as a lowercase string. </p>
-- @param _Description [String] <p>A description for the subnet group</p>
-- Required parameter: SubnetGroupName
-- Required parameter: SubnetIds
function M.CreateSubnetGroupRequest(_SubnetIds, _SubnetGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubnetGroupRequest")
	local t = { 
		["SubnetIds"] = _SubnetIds,
		["SubnetGroupName"] = _SubnetGroupName,
		["Description"] = _Description,
	}
	asserts.AssertCreateSubnetGroupRequest(t)
	return t
end

keys.CreateParameterGroupRequest = { ["ParameterGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateParameterGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateParameterGroupRequest to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateParameterGroupRequest[k], "CreateParameterGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateParameterGroupRequest
--  
-- @param _ParameterGroupName [String] <p>The name of the parameter group to apply to all of the clusters in this replication group.</p>
-- @param _Description [String] <p>A description of the parameter group.</p>
-- Required parameter: ParameterGroupName
function M.CreateParameterGroupRequest(_ParameterGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateParameterGroupRequest")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
		["Description"] = _Description,
	}
	asserts.AssertCreateParameterGroupRequest(t)
	return t
end

keys.DescribeParameterGroupsRequest = { ["NextToken"] = true, ["ParameterGroupNames"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeParameterGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParameterGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ParameterGroupNames"] then asserts.AssertParameterGroupNameList(struct["ParameterGroupNames"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParameterGroupsRequest[k], "DescribeParameterGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParameterGroupsRequest
--  
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _ParameterGroupNames [ParameterGroupNameList] <p>The names of the parameter groups.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
function M.DescribeParameterGroupsRequest(_NextToken, _ParameterGroupNames, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParameterGroupsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["ParameterGroupNames"] = _ParameterGroupNames,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeParameterGroupsRequest(t)
	return t
end

keys.TagResourceResponse = { ["Tags"] = true, nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param _Tags [TagList] <p>The list of tags that are associated with the DAX resource.</p>
function M.TagResourceResponse(_Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceResponse")
	local t = { 
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceResponse(t)
	return t
end

keys.SubnetInUse = { nil }

function asserts.AssertSubnetInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetInUse[k], "SubnetInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetInUse
-- <p>The requested subnet is being used by another subnet group.</p>
function M.SubnetInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetInUse")
	local t = { 
	}
	asserts.AssertSubnetInUse(t)
	return t
end

keys.NodeNotFoundFault = { nil }

function asserts.AssertNodeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NodeNotFoundFault[k], "NodeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeNotFoundFault
-- <p>None of the nodes in the cluster have the given node ID.</p>
function M.NodeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeNotFoundFault")
	local t = { 
	}
	asserts.AssertNodeNotFoundFault(t)
	return t
end

keys.TagNotFoundFault = { nil }

function asserts.AssertTagNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagNotFoundFault[k], "TagNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagNotFoundFault
-- <p>The tag does not exist.</p>
function M.TagNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagNotFoundFault")
	local t = { 
	}
	asserts.AssertTagNotFoundFault(t)
	return t
end

keys.UpdateSubnetGroupResponse = { ["SubnetGroup"] = true, nil }

function asserts.AssertUpdateSubnetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubnetGroupResponse to be of type 'table'")
	if struct["SubnetGroup"] then asserts.AssertSubnetGroup(struct["SubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubnetGroupResponse[k], "UpdateSubnetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubnetGroupResponse
--  
-- @param _SubnetGroup [SubnetGroup] <p>The subnet group that has been modified.</p>
function M.UpdateSubnetGroupResponse(_SubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubnetGroupResponse")
	local t = { 
		["SubnetGroup"] = _SubnetGroup,
	}
	asserts.AssertUpdateSubnetGroupResponse(t)
	return t
end

keys.TagQuotaPerResourceExceeded = { nil }

function asserts.AssertTagQuotaPerResourceExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagQuotaPerResourceExceeded to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagQuotaPerResourceExceeded[k], "TagQuotaPerResourceExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagQuotaPerResourceExceeded
-- <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
function M.TagQuotaPerResourceExceeded(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagQuotaPerResourceExceeded")
	local t = { 
	}
	asserts.AssertTagQuotaPerResourceExceeded(t)
	return t
end

keys.Endpoint = { ["Port"] = true, ["Address"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["Address"] then asserts.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>
-- @param _Port [Integer] <p>The port number that applications should use to connect to the endpoint.</p>
-- @param _Address [String] <p>The DNS hostname of the endpoint.</p>
function M.Endpoint(_Port, _Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Port"] = _Port,
		["Address"] = _Address,
	}
	asserts.AssertEndpoint(t)
	return t
end

keys.ParameterGroupStatus = { ["NodeIdsToReboot"] = true, ["ParameterGroupName"] = true, ["ParameterApplyStatus"] = true, nil }

function asserts.AssertParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterGroupStatus to be of type 'table'")
	if struct["NodeIdsToReboot"] then asserts.AssertNodeIdentifierList(struct["NodeIdsToReboot"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterGroupStatus[k], "ParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterGroupStatus
-- <p>The status of a parameter group.</p>
-- @param _NodeIdsToReboot [NodeIdentifierList] <p>The node IDs of one or more nodes to be rebooted.</p>
-- @param _ParameterGroupName [String] <p>The name of the parameter group.</p>
-- @param _ParameterApplyStatus [String] <p>The status of parameter updates. </p>
function M.ParameterGroupStatus(_NodeIdsToReboot, _ParameterGroupName, _ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterGroupStatus")
	local t = { 
		["NodeIdsToReboot"] = _NodeIdsToReboot,
		["ParameterGroupName"] = _ParameterGroupName,
		["ParameterApplyStatus"] = _ParameterApplyStatus,
	}
	asserts.AssertParameterGroupStatus(t)
	return t
end

keys.NodeQuotaForClusterExceededFault = { nil }

function asserts.AssertNodeQuotaForClusterExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeQuotaForClusterExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NodeQuotaForClusterExceededFault[k], "NodeQuotaForClusterExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeQuotaForClusterExceededFault
-- <p>You have attempted to exceed the maximum number of nodes for a DAX cluster.</p>
function M.NodeQuotaForClusterExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeQuotaForClusterExceededFault")
	local t = { 
	}
	asserts.AssertNodeQuotaForClusterExceededFault(t)
	return t
end

keys.UpdateParameterGroupResponse = { ["ParameterGroup"] = true, nil }

function asserts.AssertUpdateParameterGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateParameterGroupResponse to be of type 'table'")
	if struct["ParameterGroup"] then asserts.AssertParameterGroup(struct["ParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateParameterGroupResponse[k], "UpdateParameterGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateParameterGroupResponse
--  
-- @param _ParameterGroup [ParameterGroup] <p>The parameter group that has been modified.</p>
function M.UpdateParameterGroupResponse(_ParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateParameterGroupResponse")
	local t = { 
		["ParameterGroup"] = _ParameterGroup,
	}
	asserts.AssertUpdateParameterGroupResponse(t)
	return t
end

keys.TagResourceRequest = { ["ResourceName"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param _ResourceName [String] <p>The name of the DAX resource to which tags should be added.</p>
-- @param _Tags [TagList] <p>The tags to be assigned to the DAX resource. </p>
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.TagResourceRequest(_ResourceName, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["ResourceName"] = _ResourceName,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceRequest(t)
	return t
end

keys.DescribeEventsRequest = { ["NextToken"] = true, ["SourceType"] = true, ["SourceName"] = true, ["MaxResults"] = true, ["StartTime"] = true, ["Duration"] = true, ["EndTime"] = true, nil }

function asserts.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["SourceName"] then asserts.AssertString(struct["SourceName"]) end
	if struct["MaxResults"] then asserts.AssertIntegerOptional(struct["MaxResults"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertIntegerOptional(struct["Duration"]) end
	if struct["EndTime"] then asserts.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsRequest[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param _NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- @param _SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- @param _SourceName [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p>
-- @param _MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @param _StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>
-- @param _Duration [IntegerOptional] <p>The number of minutes' worth of events to retrieve.</p>
-- @param _EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>
function M.DescribeEventsRequest(_NextToken, _SourceType, _SourceName, _MaxResults, _StartTime, _Duration, _EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["SourceType"] = _SourceType,
		["SourceName"] = _SourceName,
		["MaxResults"] = _MaxResults,
		["StartTime"] = _StartTime,
		["Duration"] = _Duration,
		["EndTime"] = _EndTime,
	}
	asserts.AssertDescribeEventsRequest(t)
	return t
end

keys.ClusterQuotaForCustomerExceededFault = { nil }

function asserts.AssertClusterQuotaForCustomerExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterQuotaForCustomerExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterQuotaForCustomerExceededFault[k], "ClusterQuotaForCustomerExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterQuotaForCustomerExceededFault
-- <p>You have attempted to exceed the maximum number of DAX clusters for your AWS account.</p>
function M.ClusterQuotaForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterQuotaForCustomerExceededFault")
	local t = { 
	}
	asserts.AssertClusterQuotaForCustomerExceededFault(t)
	return t
end

keys.UpdateSubnetGroupRequest = { ["SubnetIds"] = true, ["SubnetGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateSubnetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubnetGroupRequest to be of type 'table'")
	assert(struct["SubnetGroupName"], "Expected key SubnetGroupName to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["SubnetGroupName"] then asserts.AssertString(struct["SubnetGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubnetGroupRequest[k], "UpdateSubnetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubnetGroupRequest
--  
-- @param _SubnetIds [SubnetIdentifierList] <p>A list of subnet IDs in the subnet group.</p>
-- @param _SubnetGroupName [String] <p>The name of the subnet group.</p>
-- @param _Description [String] <p>A description of the subnet group.</p>
-- Required parameter: SubnetGroupName
function M.UpdateSubnetGroupRequest(_SubnetIds, _SubnetGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubnetGroupRequest")
	local t = { 
		["SubnetIds"] = _SubnetIds,
		["SubnetGroupName"] = _SubnetGroupName,
		["Description"] = _Description,
	}
	asserts.AssertUpdateSubnetGroupRequest(t)
	return t
end

keys.ClusterAlreadyExistsFault = { nil }

function asserts.AssertClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterAlreadyExistsFault[k], "ClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterAlreadyExistsFault
-- <p>You already have a DAX cluster with the given identifier.</p>
function M.ClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterAlreadyExistsFault(t)
	return t
end

keys.NodeTypeSpecificValue = { ["NodeType"] = true, ["Value"] = true, nil }

function asserts.AssertNodeTypeSpecificValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeTypeSpecificValue to be of type 'table'")
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeTypeSpecificValue[k], "NodeTypeSpecificValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeTypeSpecificValue
-- <p>Represents a parameter value that is applicable to a particular node type.</p>
-- @param _NodeType [String] <p>A node type to which the parameter value applies.</p>
-- @param _Value [String] <p>The parameter value for this node type.</p>
function M.NodeTypeSpecificValue(_NodeType, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeTypeSpecificValue")
	local t = { 
		["NodeType"] = _NodeType,
		["Value"] = _Value,
	}
	asserts.AssertNodeTypeSpecificValue(t)
	return t
end

keys.SubnetQuotaExceededFault = { nil }

function asserts.AssertSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetQuotaExceededFault[k], "SubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetQuotaExceededFault
-- <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
function M.SubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetQuotaExceededFault")
	local t = { 
	}
	asserts.AssertSubnetQuotaExceededFault(t)
	return t
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

function asserts.AssertAwsQueryErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsQueryErrorMessage to be of type 'string'")
end

--  
function M.AwsQueryErrorMessage(str)
	asserts.AssertAwsQueryErrorMessage(str)
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

function asserts.AssertChangeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeType to be of type 'string'")
end

--  
function M.ChangeType(str)
	asserts.AssertChangeType(str)
	return str
end

function asserts.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	asserts.AssertParameterType(str)
	return str
end

function asserts.AssertIsModifiable(str)
	assert(str)
	assert(type(str) == "string", "Expected IsModifiable to be of type 'string'")
end

--  
function M.IsModifiable(str)
	asserts.AssertIsModifiable(str)
	return str
end

function asserts.AssertIntegerOptional(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerOptional to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerOptional(integer)
	asserts.AssertIntegerOptional(integer)
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

function asserts.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	asserts.AssertTStamp(timestamp)
	return timestamp
end

function asserts.AssertNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNode(v)
	end
end

--  
-- List of Node objects
function M.NodeList(list)
	asserts.AssertNodeList(list)
	return list
end

function asserts.AssertSubnetIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SubnetIdentifierList(list)
	asserts.AssertSubnetIdentifierList(list)
	return list
end

function asserts.AssertNodeIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.NodeIdentifierList(list)
	asserts.AssertNodeIdentifierList(list)
	return list
end

function asserts.AssertSubnetGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnetGroup(v)
	end
end

--  
-- List of SubnetGroup objects
function M.SubnetGroupList(list)
	asserts.AssertSubnetGroupList(list)
	return list
end

function asserts.AssertParameterGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ParameterGroupNameList(list)
	asserts.AssertParameterGroupNameList(list)
	return list
end

function asserts.AssertSubnetList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnet(v)
	end
end

--  
-- List of Subnet objects
function M.SubnetList(list)
	asserts.AssertSubnetList(list)
	return list
end

function asserts.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	asserts.AssertEventList(list)
	return list
end

function asserts.AssertSubnetGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SubnetGroupNameList(list)
	asserts.AssertSubnetGroupNameList(list)
	return list
end

function asserts.AssertNodeTypeSpecificValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeTypeSpecificValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNodeTypeSpecificValue(v)
	end
end

--  
-- List of NodeTypeSpecificValue objects
function M.NodeTypeSpecificValueList(list)
	asserts.AssertNodeTypeSpecificValueList(list)
	return list
end

function asserts.AssertSecurityGroupIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SecurityGroupIdentifierList(list)
	asserts.AssertSecurityGroupIdentifierList(list)
	return list
end

function asserts.AssertClusterNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterNameList(list)
	asserts.AssertClusterNameList(list)
	return list
end

function asserts.AssertSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroupMembership(v)
	end
end

--  
-- List of SecurityGroupMembership objects
function M.SecurityGroupMembershipList(list)
	asserts.AssertSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
	return list
end

function asserts.AssertParameterNameValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterNameValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterNameValue(v)
	end
end

--  
-- List of ParameterNameValue objects
function M.ParameterNameValueList(list)
	asserts.AssertParameterNameValueList(list)
	return list
end

function asserts.AssertParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParameterList(list)
	asserts.AssertParameterList(list)
	return list
end

function asserts.AssertClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCluster(v)
	end
end

--  
-- List of Cluster objects
function M.ClusterList(list)
	asserts.AssertClusterList(list)
	return list
end

function asserts.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZoneList(list)
	asserts.AssertAvailabilityZoneList(list)
	return list
end

function asserts.AssertParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterGroup(v)
	end
end

--  
-- List of ParameterGroup objects
function M.ParameterGroupList(list)
	asserts.AssertParameterGroupList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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
--- Call CreateParameterGroup asynchronously, invoking a callback when done
-- @param CreateParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateParameterGroupAsync(CreateParameterGroupRequest, cb)
	assert(CreateParameterGroupRequest, "You must provide a CreateParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateParameterGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateParameterGroupRequest
-- @return response
-- @return error_message
function M.CreateParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteParameterGroup asynchronously, invoking a callback when done
-- @param DeleteParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParameterGroupAsync(DeleteParameterGroupRequest, cb)
	assert(DeleteParameterGroupRequest, "You must provide a DeleteParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteParameterGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteParameterGroupRequest
-- @return response
-- @return error_message
function M.DeleteParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCluster asynchronously, invoking a callback when done
-- @param UpdateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateClusterAsync(UpdateClusterRequest, cb)
	assert(UpdateClusterRequest, "You must provide a UpdateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateClusterRequest
-- @return response
-- @return error_message
function M.UpdateClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClusterAsync(..., function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UntagResource",
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

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
function M.CreateClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeSubnetGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubnetGroupsAsync(DescribeSubnetGroupsRequest, cb)
	assert(DescribeSubnetGroupsRequest, "You must provide a DescribeSubnetGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSubnetGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSubnetGroupsRequest
-- @return response
-- @return error_message
function M.DescribeSubnetGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubnetGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call IncreaseReplicationFactor asynchronously, invoking a callback when done
-- @param IncreaseReplicationFactorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.IncreaseReplicationFactorAsync(IncreaseReplicationFactorRequest, cb)
	assert(IncreaseReplicationFactorRequest, "You must provide a IncreaseReplicationFactorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.IncreaseReplicationFactor",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", IncreaseReplicationFactorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IncreaseReplicationFactor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IncreaseReplicationFactorRequest
-- @return response
-- @return error_message
function M.IncreaseReplicationFactorSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IncreaseReplicationFactorAsync(..., function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.TagResource",
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

--- Call UpdateSubnetGroup asynchronously, invoking a callback when done
-- @param UpdateSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSubnetGroupAsync(UpdateSubnetGroupRequest, cb)
	assert(UpdateSubnetGroupRequest, "You must provide a UpdateSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSubnetGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubnetGroupRequest
-- @return response
-- @return error_message
function M.UpdateSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeParameters asynchronously, invoking a callback when done
-- @param DescribeParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParametersAsync(DescribeParametersRequest, cb)
	assert(DescribeParametersRequest, "You must provide a DescribeParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeParametersRequest
-- @return response
-- @return error_message
function M.DescribeParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DecreaseReplicationFactor asynchronously, invoking a callback when done
-- @param DecreaseReplicationFactorRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DecreaseReplicationFactorAsync(DecreaseReplicationFactorRequest, cb)
	assert(DecreaseReplicationFactorRequest, "You must provide a DecreaseReplicationFactorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DecreaseReplicationFactor",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DecreaseReplicationFactorRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DecreaseReplicationFactor synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecreaseReplicationFactorRequest
-- @return response
-- @return error_message
function M.DecreaseReplicationFactorSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecreaseReplicationFactorAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootNode asynchronously, invoking a callback when done
-- @param RebootNodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootNodeAsync(RebootNodeRequest, cb)
	assert(RebootNodeRequest, "You must provide a RebootNodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.RebootNode",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootNodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootNode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootNodeRequest
-- @return response
-- @return error_message
function M.RebootNodeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootNodeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubnetGroup asynchronously, invoking a callback when done
-- @param CreateSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubnetGroupAsync(CreateSubnetGroupRequest, cb)
	assert(CreateSubnetGroupRequest, "You must provide a CreateSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSubnetGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubnetGroupRequest
-- @return response
-- @return error_message
function M.CreateSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateParameterGroup asynchronously, invoking a callback when done
-- @param UpdateParameterGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateParameterGroupAsync(UpdateParameterGroupRequest, cb)
	assert(UpdateParameterGroupRequest, "You must provide a UpdateParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateParameterGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateParameterGroupRequest
-- @return response
-- @return error_message
function M.UpdateParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateParameterGroupAsync(..., function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.ListTags",
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

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsRequest
-- @return response
-- @return error_message
function M.DescribeEventsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteSubnetGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubnetGroupAsync(DeleteSubnetGroupRequest, cb)
	assert(DeleteSubnetGroupRequest, "You must provide a DeleteSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSubnetGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubnetGroupRequest
-- @return response
-- @return error_message
function M.DeleteSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDefaultParameters asynchronously, invoking a callback when done
-- @param DescribeDefaultParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDefaultParametersAsync(DescribeDefaultParametersRequest, cb)
	assert(DescribeDefaultParametersRequest, "You must provide a DescribeDefaultParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeDefaultParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDefaultParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDefaultParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDefaultParametersRequest
-- @return response
-- @return error_message
function M.DescribeDefaultParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDefaultParametersAsync(..., function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
function M.DescribeClustersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClustersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeParameterGroups asynchronously, invoking a callback when done
-- @param DescribeParameterGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParameterGroupsAsync(DescribeParameterGroupsRequest, cb)
	assert(DescribeParameterGroupsRequest, "You must provide a DescribeParameterGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeParameterGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeParameterGroupsRequest
-- @return response
-- @return error_message
function M.DescribeParameterGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeParameterGroupsAsync(..., function(response, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
function M.DeleteClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
