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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * Parameters [ParameterList] <p>A list of parameters within a parameter group. Each element in the list represents one parameter.</p>
-- @return DescribeParametersResponse structure as a key-value pair table
function M.DescribeParametersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeParametersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDescribeParametersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The name of the DAX resource to which the tags belong.</p>
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.</p>
-- Required key: ResourceName
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
		["ResourceName"] = args["ResourceName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster that is being deleted.</p>
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
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDeleteClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the parameter group).</p>
-- @return DeleteParameterGroupResponse structure as a key-value pair table
function M.DeleteParameterGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteParameterGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletionMessage"] = args["DeletionMessage"],
	}
	asserts.AssertDeleteParameterGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSEDescription = { ["Status"] = true, nil }

function asserts.AssertSSEDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSEDescription to be of type 'table'")
	if struct["Status"] then asserts.AssertSSEStatus(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSEDescription[k], "SSEDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSEDescription
-- <p>The description of the server-side encryption status on the specified DAX cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [SSEStatus] <p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>
-- @return SSEDescription structure as a key-value pair table
function M.SSEDescription(args)
	assert(args, "You must provide an argument table when creating SSEDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertSSEDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster. with its new replication factor.</p>
-- @return IncreaseReplicationFactorResponse structure as a key-value pair table
function M.IncreaseReplicationFactorResponse(args)
	assert(args, "You must provide an argument table when creating IncreaseReplicationFactorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertIncreaseReplicationFactorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group to delete.</p>
-- Required key: ParameterGroupName
-- @return DeleteParameterGroupRequest structure as a key-value pair table
function M.DeleteParameterGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteParameterGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
	}
	asserts.AssertDeleteParameterGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group.</p>
-- * Description [String] <p>A description of the parameter group.</p>
-- @return ParameterGroup structure as a key-value pair table
function M.ParameterGroup(args)
	assert(args, "You must provide an argument table when creating ParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterName [String] <p>The name of the cluster to be deleted.</p>
-- Required key: ClusterName
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
		["ClusterName"] = args["ClusterName"],
	}
	asserts.AssertDeleteClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletionMessage [String] <p>A user-specified message for this action (i.e., a reason for deleting the subnet group).</p>
-- @return DeleteSubnetGroupResponse structure as a key-value pair table
function M.DeleteSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletionMessage"] = args["DeletionMessage"],
	}
	asserts.AssertDeleteSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetGroup [SubnetGroup] <p>Represents the output of a <i>CreateSubnetGroup</i> operation.</p>
-- @return CreateSubnetGroupResponse structure as a key-value pair table
function M.CreateSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetGroup"] = args["SubnetGroup"],
	}
	asserts.AssertCreateSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @return DescribeDefaultParametersRequest structure as a key-value pair table
function M.DescribeDefaultParametersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDefaultParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeDefaultParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * SubnetGroupNames [SubnetGroupNameList] <p>The name of the subnet group.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @return DescribeSubnetGroupsRequest structure as a key-value pair table
function M.DescribeSubnetGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSubnetGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SubnetGroupNames"] = args["SubnetGroupNames"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeSubnetGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster, after you have decreased its replication factor.</p>
-- @return DecreaseReplicationFactorResponse structure as a key-value pair table
function M.DecreaseReplicationFactorResponse(args)
	assert(args, "You must provide an argument table when creating DecreaseReplicationFactorResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDecreaseReplicationFactorResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The value of the tag. Tag values are case-sensitive and can be null. </p>
-- * Key [String] <p>The key for the tag. Tag keys are case sensitive. Every DAX cluster can only have one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * ParameterGroupName [String] <p>The name of the parameter group.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- Required key: ParameterGroupName
-- @return DescribeParametersRequest structure as a key-value pair table
function M.DescribeParametersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeParametersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["NextToken"] = args["NextToken"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeParametersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterName [String] <p>The name of the DAX cluster containing the node to be rebooted.</p>
-- * NodeId [String] <p>The system-assigned ID of the node to be rebooted.</p>
-- Required key: ClusterName
-- Required key: NodeId
-- @return RebootNodeRequest structure as a key-value pair table
function M.RebootNodeRequest(args)
	assert(args, "You must provide an argument table when creating RebootNodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterName"] = args["ClusterName"],
		["NodeId"] = args["NodeId"],
	}
	asserts.AssertRebootNodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicStatus [String] <p>The current state of the topic.</p>
-- * TopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
-- @return NotificationConfiguration structure as a key-value pair table
function M.NotificationConfiguration(args)
	assert(args, "You must provide an argument table when creating NotificationConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicStatus"] = args["TopicStatus"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertNotificationConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceName [String] <p>The source of the event. For example, if the event occurred at the node level, the source would be the node ID.</p>
-- * Date [TStamp] <p>The date and time when the event occurred.</p>
-- * Message [String] <p>A user-defined message associated with the event.</p>
-- * SourceType [SourceType] <p>Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.</p>
-- @return Event structure as a key-value pair table
function M.Event(args)
	assert(args, "You must provide an argument table when creating Event")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceName"] = args["SourceName"],
		["Date"] = args["Date"],
		["Message"] = args["Message"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- * ClusterNames [ClusterNameList] <p>The names of the DAX clusters being described.</p>
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
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ClusterNames"] = args["ClusterNames"],
	}
	asserts.AssertDescribeClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster, after it has been modified.</p>
-- @return UpdateClusterResponse structure as a key-value pair table
function M.UpdateClusterResponse(args)
	assert(args, "You must provide an argument table when creating UpdateClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertUpdateClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Port [Integer] <p>The port number that applications should use to connect to the endpoint.</p>
-- * Address [String] <p>The DNS hostname of the endpoint.</p>
-- @return Endpoint structure as a key-value pair table
function M.Endpoint(args)
	assert(args, "You must provide an argument table when creating Endpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Port"] = args["Port"],
		["Address"] = args["Address"],
	}
	asserts.AssertEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterType [ParameterType] <p>Determines whether the parameter can be applied to any nodes, or only nodes of a particular type.</p>
-- * Description [String] <p>A description of the parameter</p>
-- * DataType [String] <p>The data type of the parameter. For example, <code>integer</code>:</p>
-- * ChangeType [ChangeType] <p>The conditions under which changes to this parameter can be applied. For example, <code>requires-reboot</code> indicates that a new value for this parameter will only take effect if a node is rebooted.</p>
-- * IsModifiable [IsModifiable] <p>Whether the customer is allowed to modify the parameter.</p>
-- * AllowedValues [String] <p>A range of values within which the parameter can be set.</p>
-- * NodeTypeSpecificValues [NodeTypeSpecificValueList] <p>A list of node types, and specific parameter values for each node.</p>
-- * Source [String] <p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>
-- * ParameterValue [String] <p>The value for the parameter.</p>
-- * ParameterName [String] <p>The name of the parameter.</p>
-- @return Parameter structure as a key-value pair table
function M.Parameter(args)
	assert(args, "You must provide an argument table when creating Parameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterType"] = args["ParameterType"],
		["Description"] = args["Description"],
		["DataType"] = args["DataType"],
		["ChangeType"] = args["ChangeType"],
		["IsModifiable"] = args["IsModifiable"],
		["AllowedValues"] = args["AllowedValues"],
		["NodeTypeSpecificValues"] = args["NodeTypeSpecificValues"],
		["Source"] = args["Source"],
		["ParameterValue"] = args["ParameterValue"],
		["ParameterName"] = args["ParameterName"],
	}
	asserts.AssertParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * Parameters [ParameterList] <p>A list of parameters. Each element in the list represents one parameter.</p>
-- @return DescribeDefaultParametersResponse structure as a key-value pair table
function M.DescribeDefaultParametersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDefaultParametersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDescribeDefaultParametersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>A list of VPC subnet IDs for the subnet group.</p>
-- * SubnetGroupName [String] <p>A name for the subnet group. This value is stored as a lowercase string. </p>
-- * Description [String] <p>A description for the subnet group</p>
-- Required key: SubnetGroupName
-- Required key: SubnetIds
-- @return CreateSubnetGroupRequest structure as a key-value pair table
function M.CreateSubnetGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateSubnetGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SubnetGroupName"] = args["SubnetGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateSubnetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description of the changes being made to the cluster.</p>
-- * ClusterName [String] <p>The name of the DAX cluster to be modified.</p>
-- * SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- * NotificationTopicStatus [String] <p>The current state of the topic.</p>
-- * ParameterGroupName [String] <p>The name of a parameter group for this cluster.</p>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
-- * PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
-- Required key: ClusterName
-- @return UpdateClusterRequest structure as a key-value pair table
function M.UpdateClusterRequest(args)
	assert(args, "You must provide an argument table when creating UpdateClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["ClusterName"] = args["ClusterName"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["NotificationTopicStatus"] = args["NotificationTopicStatus"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
	}
	asserts.AssertUpdateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster after a node has been rebooted.</p>
-- @return RebootNodeResponse structure as a key-value pair table
function M.RebootNodeResponse(args)
	assert(args, "You must provide an argument table when creating RebootNodeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertRebootNodeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroup [ParameterGroup] <p>Represents the output of a <i>CreateParameterGroup</i> action.</p>
-- @return CreateParameterGroupResponse structure as a key-value pair table
function M.CreateParameterGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateParameterGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroup"] = args["ParameterGroup"],
	}
	asserts.AssertCreateParameterGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of this security group.</p>
-- * SecurityGroupIdentifier [String] <p>The unique ID for this security group.</p>
-- @return SecurityGroupMembership structure as a key-value pair table
function M.SecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating SecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["SecurityGroupIdentifier"] = args["SecurityGroupIdentifier"],
	}
	asserts.AssertSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [SubnetList] <p>A list of subnets associated with the subnet group. </p>
-- * SubnetGroupName [String] <p>The name of the subnet group.</p>
-- * VpcId [String] <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
-- * Description [String] <p>The description of the subnet group.</p>
-- @return SubnetGroup structure as a key-value pair table
function M.SubnetGroup(args)
	assert(args, "You must provide an argument table when creating SubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["SubnetGroupName"] = args["SubnetGroupName"],
		["VpcId"] = args["VpcId"],
		["Description"] = args["Description"],
	}
	asserts.AssertSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Clusters [ClusterList] <p>The descriptions of your DAX clusters, in response to a <i>DescribeClusters</i> request.</p>
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
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
		["Clusters"] = args["Clusters"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeClustersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The name of the DAX resource from which the tags should be removed.</p>
-- * TagKeys [KeyList] <p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>
-- Required key: ResourceName
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
		["ResourceName"] = args["ResourceName"],
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroups [ParameterGroupList] <p>An array of parameter groups. Each element in the array represents one parameter group.</p>
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- @return DescribeParameterGroupsResponse structure as a key-value pair table
function M.DescribeParameterGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeParameterGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroups"] = args["ParameterGroups"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeParameterGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIdentifier [String] <p>The system-assigned identifier for the subnet.</p>
-- * SubnetAvailabilityZone [String] <p>The Availability Zone (AZ) for subnet subnet.</p>
-- @return Subnet structure as a key-value pair table
function M.Subnet(args)
	assert(args, "You must provide an argument table when creating Subnet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIdentifier"] = args["SubnetIdentifier"],
		["SubnetAvailabilityZone"] = args["SubnetAvailabilityZone"],
	}
	asserts.AssertSubnet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>A description of the DAX cluster that you have created.</p>
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
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertCreateClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [Endpoint] <p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- * NodeStatus [String] <p>The current status of the node. For example: <code>available</code>.</p>
-- * ParameterGroupStatus [String] <p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>
-- * NodeId [String] <p>A system-generated identifier for the node.</p>
-- * AvailabilityZone [String] <p>The Availability Zone (AZ) in which the node has been deployed.</p>
-- * NodeCreateTime [TStamp] <p>The date and time (in UNIX epoch format) when the node was launched.</p>
-- @return Node structure as a key-value pair table
function M.Node(args)
	assert(args, "You must provide an argument table when creating Node")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
		["NodeStatus"] = args["NodeStatus"],
		["ParameterGroupStatus"] = args["ParameterGroupStatus"],
		["NodeId"] = args["NodeId"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["NodeCreateTime"] = args["NodeCreateTime"],
	}
	asserts.AssertNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * Events [EventList] <p>An array of events. Each element in the array represents one event.</p>
-- @return DescribeEventsResponse structure as a key-value pair table
function M.DescribeEventsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Events"] = args["Events"],
	}
	asserts.AssertDescribeEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterRequest = { ["ReplicationFactor"] = true, ["NotificationTopicArn"] = true, ["NodeType"] = true, ["Description"] = true, ["Tags"] = true, ["ClusterName"] = true, ["SubnetGroupName"] = true, ["IamRoleArn"] = true, ["SecurityGroupIds"] = true, ["ParameterGroupName"] = true, ["SSESpecification"] = true, ["AvailabilityZones"] = true, ["PreferredMaintenanceWindow"] = true, nil }

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
	if struct["SSESpecification"] then asserts.AssertSSESpecification(struct["SSESpecification"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationFactor [Integer] <p>The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set <i>ReplicationFactor</i> to 2 or more.</p> <note> <p>AWS recommends that you have at least two read replicas per cluster.</p> </note>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.</p> <note> <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p> </note>
-- * NodeType [String] <p>The compute and memory capacity of the nodes in the cluster.</p>
-- * Description [String] <p>A description of the cluster.</p>
-- * Tags [TagList] <p>A set of tags to associate with the DAX cluster. </p>
-- * ClusterName [String] <p>The cluster identifier. This parameter is stored as a lowercase string.</p> <p> <b>Constraints:</b> </p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * SubnetGroupName [String] <p>The name of the subnet group to be used for the replication group.</p> <important> <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.</p> </important>
-- * IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- * SecurityGroupIds [SecurityGroupIdentifierList] <p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)</p> <p>If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>
-- * ParameterGroupName [String] <p>The parameter group to be associated with the DAX cluster.</p>
-- * SSESpecification [SSESpecification] <p>Represents the settings used to enable server-side encryption on the cluster.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:05:00-sun:09:00</code> </p> <note> <p>If you don't specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.</p> </note>
-- Required key: ClusterName
-- Required key: NodeType
-- Required key: ReplicationFactor
-- Required key: IamRoleArn
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
		["ReplicationFactor"] = args["ReplicationFactor"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["NodeType"] = args["NodeType"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["ClusterName"] = args["ClusterName"],
		["SubnetGroupName"] = args["SubnetGroupName"],
		["IamRoleArn"] = args["IamRoleArn"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["SSESpecification"] = args["SSESpecification"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
	}
	asserts.AssertCreateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * SubnetGroups [SubnetGroupList] <p>An array of subnet groups. Each element in the array represents a single subnet group.</p>
-- @return DescribeSubnetGroupsResponse structure as a key-value pair table
function M.DescribeSubnetGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSubnetGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SubnetGroups"] = args["SubnetGroups"],
	}
	asserts.AssertDescribeSubnetGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetGroupName [String] <p>The name of the subnet group to delete.</p>
-- Required key: SubnetGroupName
-- @return DeleteSubnetGroupRequest structure as a key-value pair table
function M.DeleteSubnetGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSubnetGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetGroupName"] = args["SubnetGroupName"],
	}
	asserts.AssertDeleteSubnetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The tag keys that have been removed from the cluster.</p>
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterName [String] <p>The name of the parameter.</p>
-- * ParameterValue [String] <p>The value of the parameter.</p>
-- @return ParameterNameValue structure as a key-value pair table
function M.ParameterNameValue(args)
	assert(args, "You must provide an argument table when creating ParameterNameValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterName"] = args["ParameterName"],
		["ParameterValue"] = args["ParameterValue"],
	}
	asserts.AssertParameterNameValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterName [String] <p>The name of the DAX cluster from which you want to remove nodes.</p>
-- * NodeIdsToRemove [NodeIdentifierList] <p>The unique identifiers of the nodes to be removed from the cluster.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>The Availability Zone(s) from which to remove nodes.</p>
-- * NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required key: ClusterName
-- Required key: NewReplicationFactor
-- @return DecreaseReplicationFactorRequest structure as a key-value pair table
function M.DecreaseReplicationFactorRequest(args)
	assert(args, "You must provide an argument table when creating DecreaseReplicationFactorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterName"] = args["ClusterName"],
		["NodeIdsToRemove"] = args["NodeIdsToRemove"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["NewReplicationFactor"] = args["NewReplicationFactor"],
	}
	asserts.AssertDecreaseReplicationFactorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["Status"] = true, ["SubnetGroup"] = true, ["NodeType"] = true, ["Description"] = true, ["ClusterName"] = true, ["ParameterGroup"] = true, ["ActiveNodes"] = true, ["TotalNodes"] = true, ["IamRoleArn"] = true, ["NodeIdsToRemove"] = true, ["SecurityGroups"] = true, ["ClusterArn"] = true, ["SSEDescription"] = true, ["Nodes"] = true, ["ClusterDiscoveryEndpoint"] = true, ["NotificationConfiguration"] = true, ["PreferredMaintenanceWindow"] = true, nil }

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
	if struct["SSEDescription"] then asserts.AssertSSEDescription(struct["SSEDescription"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The current status of the cluster.</p>
-- * SubnetGroup [String] <p>The subnet group where the DAX cluster is running.</p>
-- * NodeType [String] <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
-- * Description [String] <p>The description of the cluster.</p>
-- * ClusterName [String] <p>The name of the DAX cluster.</p>
-- * ParameterGroup [ParameterGroupStatus] <p>The parameter group being used by nodes in the cluster.</p>
-- * ActiveNodes [IntegerOptional] <p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>
-- * TotalNodes [IntegerOptional] <p>The total number of nodes in the cluster.</p>
-- * IamRoleArn [String] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
-- * NodeIdsToRemove [NodeIdentifierList] <p>A list of nodes to be removed from the cluster.</p>
-- * SecurityGroups [SecurityGroupMembershipList] <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
-- * ClusterArn [String] <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
-- * SSEDescription [SSEDescription] <p>The description of the server-side encryption status on the specified DAX cluster.</p>
-- * Nodes [NodeList] <p>A list of nodes that are currently in the cluster.</p>
-- * ClusterDiscoveryEndpoint [Endpoint] <p>The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
-- * NotificationConfiguration [NotificationConfiguration] <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- * PreferredMaintenanceWindow [String] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
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
		["Status"] = args["Status"],
		["SubnetGroup"] = args["SubnetGroup"],
		["NodeType"] = args["NodeType"],
		["Description"] = args["Description"],
		["ClusterName"] = args["ClusterName"],
		["ParameterGroup"] = args["ParameterGroup"],
		["ActiveNodes"] = args["ActiveNodes"],
		["TotalNodes"] = args["TotalNodes"],
		["IamRoleArn"] = args["IamRoleArn"],
		["NodeIdsToRemove"] = args["NodeIdsToRemove"],
		["SecurityGroups"] = args["SecurityGroups"],
		["ClusterArn"] = args["ClusterArn"],
		["SSEDescription"] = args["SSEDescription"],
		["Nodes"] = args["Nodes"],
		["ClusterDiscoveryEndpoint"] = args["ClusterDiscoveryEndpoint"],
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group.</p>
-- * ParameterNameValues [ParameterNameValueList] <p>An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.</p>
-- Required key: ParameterGroupName
-- Required key: ParameterNameValues
-- @return UpdateParameterGroupRequest structure as a key-value pair table
function M.UpdateParameterGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateParameterGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
		["ParameterNameValues"] = args["ParameterNameValues"],
	}
	asserts.AssertUpdateParameterGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group to apply to all of the clusters in this replication group.</p>
-- * Description [String] <p>A description of the parameter group.</p>
-- Required key: ParameterGroupName
-- @return CreateParameterGroupRequest structure as a key-value pair table
function M.CreateParameterGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateParameterGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateParameterGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * ParameterGroupNames [ParameterGroupNameList] <p>The names of the parameter groups.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- @return DescribeParameterGroupsRequest structure as a key-value pair table
function M.DescribeParameterGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeParameterGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ParameterGroupNames"] = args["ParameterGroupNames"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeParameterGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The list of tags that are associated with the DAX resource.</p>
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetGroup [SubnetGroup] <p>The subnet group that has been modified.</p>
-- @return UpdateSubnetGroupResponse structure as a key-value pair table
function M.UpdateSubnetGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSubnetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetGroup"] = args["SubnetGroup"],
	}
	asserts.AssertUpdateSubnetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SSESpecification = { ["Enabled"] = true, nil }

function asserts.AssertSSESpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSESpecification to be of type 'table'")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertSSEEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSESpecification[k], "SSESpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSESpecification
-- <p>Represents the settings used to enable server-side encryption.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [SSEEnabled] <p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the cluster.</p>
-- Required key: Enabled
-- @return SSESpecification structure as a key-value pair table
function M.SSESpecification(args)
	assert(args, "You must provide an argument table when creating SSESpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertSSESpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeIdsToReboot [NodeIdentifierList] <p>The node IDs of one or more nodes to be rebooted.</p>
-- * ParameterGroupName [String] <p>The name of the parameter group.</p>
-- * ParameterApplyStatus [String] <p>The status of parameter updates. </p>
-- @return ParameterGroupStatus structure as a key-value pair table
function M.ParameterGroupStatus(args)
	assert(args, "You must provide an argument table when creating ParameterGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeIdsToReboot"] = args["NodeIdsToReboot"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
	}
	asserts.AssertParameterGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroup [ParameterGroup] <p>The parameter group that has been modified.</p>
-- @return UpdateParameterGroupResponse structure as a key-value pair table
function M.UpdateParameterGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateParameterGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroup"] = args["ParameterGroup"],
	}
	asserts.AssertUpdateParameterGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterName [String] <p>The name of the DAX cluster that will receive additional nodes.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>
-- * NewReplicationFactor [Integer] <p>The new number of nodes for the DAX cluster.</p>
-- Required key: ClusterName
-- Required key: NewReplicationFactor
-- @return IncreaseReplicationFactorRequest structure as a key-value pair table
function M.IncreaseReplicationFactorRequest(args)
	assert(args, "You must provide an argument table when creating IncreaseReplicationFactorRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterName"] = args["ClusterName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["NewReplicationFactor"] = args["NewReplicationFactor"],
	}
	asserts.AssertIncreaseReplicationFactorRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- * SourceName [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p>
-- * MaxResults [IntegerOptional] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
-- * StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>
-- * Duration [IntegerOptional] <p>The number of minutes' worth of events to retrieve.</p>
-- * EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>
-- @return DescribeEventsRequest structure as a key-value pair table
function M.DescribeEventsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SourceType"] = args["SourceType"],
		["SourceName"] = args["SourceName"],
		["MaxResults"] = args["MaxResults"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertDescribeEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The name of the DAX resource to which tags should be added.</p>
-- * Tags [TagList] <p>The tags to be assigned to the DAX resource. </p>
-- Required key: ResourceName
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
		["ResourceName"] = args["ResourceName"],
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>If this value is present, there are additional results to be displayed. To retrieve them, call <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>
-- * Tags [TagList] <p>A list of tags currently associated with the DAX cluster.</p>
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
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
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>A list of subnet IDs in the subnet group.</p>
-- * SubnetGroupName [String] <p>The name of the subnet group.</p>
-- * Description [String] <p>A description of the subnet group.</p>
-- Required key: SubnetGroupName
-- @return UpdateSubnetGroupRequest structure as a key-value pair table
function M.UpdateSubnetGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSubnetGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["SubnetGroupName"] = args["SubnetGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateSubnetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeType [String] <p>A node type to which the parameter value applies.</p>
-- * Value [String] <p>The parameter value for this node type.</p>
-- @return NodeTypeSpecificValue structure as a key-value pair table
function M.NodeTypeSpecificValue(args)
	assert(args, "You must provide an argument table when creating NodeTypeSpecificValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeType"] = args["NodeType"],
		["Value"] = args["Value"],
	}
	asserts.AssertNodeTypeSpecificValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSSEStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SSEStatus to be of type 'string'")
end

--  
function M.SSEStatus(str)
	asserts.AssertSSEStatus(str)
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

function asserts.AssertIsModifiable(str)
	assert(str)
	assert(type(str) == "string", "Expected IsModifiable to be of type 'string'")
end

--  
function M.IsModifiable(str)
	asserts.AssertIsModifiable(str)
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

function asserts.AssertSSEEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SSEEnabled to be of type 'boolean'")
end

function M.SSEEnabled(boolean)
	asserts.AssertSSEEnabled(boolean)
	return boolean
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call CreateParameterGroup asynchronously, invoking a callback when done
-- @param CreateParameterGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateParameterGroupAsync(CreateParameterGroupRequest, cb)
	assert(CreateParameterGroupRequest, "You must provide a CreateParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateParameterGroup",
	}
	for header,value in pairs(CreateParameterGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateParameterGroupSync(CreateParameterGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateParameterGroupAsync(CreateParameterGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteParameterGroup asynchronously, invoking a callback when done
-- @param DeleteParameterGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteParameterGroupAsync(DeleteParameterGroupRequest, cb)
	assert(DeleteParameterGroupRequest, "You must provide a DeleteParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteParameterGroup",
	}
	for header,value in pairs(DeleteParameterGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteParameterGroupSync(DeleteParameterGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteParameterGroupAsync(DeleteParameterGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCluster asynchronously, invoking a callback when done
-- @param UpdateClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateClusterAsync(UpdateClusterRequest, cb)
	assert(UpdateClusterRequest, "You must provide a UpdateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateCluster",
	}
	for header,value in pairs(UpdateClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateClusterSync(UpdateClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClusterAsync(UpdateClusterRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UntagResource",
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

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateCluster",
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
-- @return error_type
-- @return error_message
function M.CreateClusterSync(CreateClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(CreateClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeSubnetGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSubnetGroupsAsync(DescribeSubnetGroupsRequest, cb)
	assert(DescribeSubnetGroupsRequest, "You must provide a DescribeSubnetGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeSubnetGroups",
	}
	for header,value in pairs(DescribeSubnetGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeSubnetGroupsSync(DescribeSubnetGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubnetGroupsAsync(DescribeSubnetGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IncreaseReplicationFactor asynchronously, invoking a callback when done
-- @param IncreaseReplicationFactorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IncreaseReplicationFactorAsync(IncreaseReplicationFactorRequest, cb)
	assert(IncreaseReplicationFactorRequest, "You must provide a IncreaseReplicationFactorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.IncreaseReplicationFactor",
	}
	for header,value in pairs(IncreaseReplicationFactorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.IncreaseReplicationFactorSync(IncreaseReplicationFactorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IncreaseReplicationFactorAsync(IncreaseReplicationFactorRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.TagResource",
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

--- Call UpdateSubnetGroup asynchronously, invoking a callback when done
-- @param UpdateSubnetGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSubnetGroupAsync(UpdateSubnetGroupRequest, cb)
	assert(UpdateSubnetGroupRequest, "You must provide a UpdateSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateSubnetGroup",
	}
	for header,value in pairs(UpdateSubnetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateSubnetGroupSync(UpdateSubnetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubnetGroupAsync(UpdateSubnetGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeParameters asynchronously, invoking a callback when done
-- @param DescribeParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeParametersAsync(DescribeParametersRequest, cb)
	assert(DescribeParametersRequest, "You must provide a DescribeParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameters",
	}
	for header,value in pairs(DescribeParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeParametersSync(DescribeParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeParametersAsync(DescribeParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DecreaseReplicationFactor asynchronously, invoking a callback when done
-- @param DecreaseReplicationFactorRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DecreaseReplicationFactorAsync(DecreaseReplicationFactorRequest, cb)
	assert(DecreaseReplicationFactorRequest, "You must provide a DecreaseReplicationFactorRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DecreaseReplicationFactor",
	}
	for header,value in pairs(DecreaseReplicationFactorRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DecreaseReplicationFactorSync(DecreaseReplicationFactorRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecreaseReplicationFactorAsync(DecreaseReplicationFactorRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootNode asynchronously, invoking a callback when done
-- @param RebootNodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootNodeAsync(RebootNodeRequest, cb)
	assert(RebootNodeRequest, "You must provide a RebootNodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.RebootNode",
	}
	for header,value in pairs(RebootNodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RebootNodeSync(RebootNodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootNodeAsync(RebootNodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubnetGroup asynchronously, invoking a callback when done
-- @param CreateSubnetGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSubnetGroupAsync(CreateSubnetGroupRequest, cb)
	assert(CreateSubnetGroupRequest, "You must provide a CreateSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.CreateSubnetGroup",
	}
	for header,value in pairs(CreateSubnetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateSubnetGroupSync(CreateSubnetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubnetGroupAsync(CreateSubnetGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateParameterGroup asynchronously, invoking a callback when done
-- @param UpdateParameterGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateParameterGroupAsync(UpdateParameterGroupRequest, cb)
	assert(UpdateParameterGroupRequest, "You must provide a UpdateParameterGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.UpdateParameterGroup",
	}
	for header,value in pairs(UpdateParameterGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateParameterGroupSync(UpdateParameterGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateParameterGroupAsync(UpdateParameterGroupRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.ListTags",
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

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeEvents",
	}
	for header,value in pairs(DescribeEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeEventsSync(DescribeEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(DescribeEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteSubnetGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSubnetGroupAsync(DeleteSubnetGroupRequest, cb)
	assert(DeleteSubnetGroupRequest, "You must provide a DeleteSubnetGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteSubnetGroup",
	}
	for header,value in pairs(DeleteSubnetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteSubnetGroupSync(DeleteSubnetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubnetGroupAsync(DeleteSubnetGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDefaultParameters asynchronously, invoking a callback when done
-- @param DescribeDefaultParametersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDefaultParametersAsync(DescribeDefaultParametersRequest, cb)
	assert(DescribeDefaultParametersRequest, "You must provide a DescribeDefaultParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeDefaultParameters",
	}
	for header,value in pairs(DescribeDefaultParametersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeDefaultParametersSync(DescribeDefaultParametersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDefaultParametersAsync(DescribeDefaultParametersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusters asynchronously, invoking a callback when done
-- @param DescribeClustersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClustersAsync(DescribeClustersRequest, cb)
	assert(DescribeClustersRequest, "You must provide a DescribeClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeClusters",
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
-- @return error_type
-- @return error_message
function M.DescribeClustersSync(DescribeClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClustersAsync(DescribeClustersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeParameterGroups asynchronously, invoking a callback when done
-- @param DescribeParameterGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeParameterGroupsAsync(DescribeParameterGroupsRequest, cb)
	assert(DescribeParameterGroupsRequest, "You must provide a DescribeParameterGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DescribeParameterGroups",
	}
	for header,value in pairs(DescribeParameterGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeParameterGroupsSync(DescribeParameterGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeParameterGroupsAsync(DescribeParameterGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCluster asynchronously, invoking a callback when done
-- @param DeleteClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterAsync(DeleteClusterRequest, cb)
	assert(DeleteClusterRequest, "You must provide a DeleteClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonDAXV3.DeleteCluster",
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
-- @return error_type
-- @return error_message
function M.DeleteClusterSync(DeleteClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterAsync(DeleteClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
