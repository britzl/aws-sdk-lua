--- GENERATED CODE - DO NOT MODIFY
-- Amazon ElastiCache (elasticache-2015-02-02)

local M = {}

M.metadata = {
	api_version = "2015-02-02",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "elasticache",
	service_abbreviation = "",
	service_full_name = "Amazon ElastiCache",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elasticache-2015-02-02",
}

local keys = {}
local asserts = {}

keys.NodeGroupMember = { ["CurrentRole"] = true, ["PreferredAvailabilityZone"] = true, ["CacheNodeId"] = true, ["ReadEndpoint"] = true, ["CacheClusterId"] = true, nil }

function asserts.AssertNodeGroupMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupMember to be of type 'table'")
	if struct["CurrentRole"] then asserts.AssertString(struct["CurrentRole"]) end
	if struct["PreferredAvailabilityZone"] then asserts.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["CacheNodeId"] then asserts.AssertString(struct["CacheNodeId"]) end
	if struct["ReadEndpoint"] then asserts.AssertEndpoint(struct["ReadEndpoint"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeGroupMember[k], "NodeGroupMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupMember
-- <p>Represents a single node within a node group (shard).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentRole [String] <p>The role that is currently assigned to the node - <code>primary</code> or <code>replica</code>. This member is only applicable for Redis (cluster mode disabled) replication groups.</p>
-- * PreferredAvailabilityZone [String] <p>The name of the Availability Zone in which the node is located.</p>
-- * CacheNodeId [String] <p>The ID of the node within its cluster. A node ID is a numeric identifier (0001, 0002, etc.).</p>
-- * ReadEndpoint [Endpoint] <p>The information required for client programs to connect to a node for read operations. The read endpoint is only applicable on Redis (cluster mode disabled) clusters.</p>
-- * CacheClusterId [String] <p>The ID of the cluster to which the node belongs.</p>
-- @return NodeGroupMember structure as a key-value pair table
function M.NodeGroupMember(args)
	assert(args, "You must provide an argument table when creating NodeGroupMember")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentRole"] = args["CurrentRole"],
		["PreferredAvailabilityZone"] = args["PreferredAvailabilityZone"],
		["CacheNodeId"] = args["CacheNodeId"],
		["ReadEndpoint"] = args["ReadEndpoint"],
		["CacheClusterId"] = args["CacheClusterId"],
	}
	asserts.AssertNodeGroupMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootCacheClusterResult = { ["CacheCluster"] = true, nil }

function asserts.AssertRebootCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then asserts.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootCacheClusterResult[k], "RebootCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootCacheClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheCluster [CacheCluster] 
-- @return RebootCacheClusterResult structure as a key-value pair table
function M.RebootCacheClusterResult(args)
	assert(args, "You must provide an argument table when creating RebootCacheClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheCluster"] = args["CacheCluster"],
	}
	asserts.AssertRebootCacheClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationGroupShardConfigurationMessage = { ["NodeGroupsToRemove"] = true, ["ReplicationGroupId"] = true, ["NodeGroupsToRetain"] = true, ["ReshardingConfiguration"] = true, ["ApplyImmediately"] = true, ["NodeGroupCount"] = true, nil }

function asserts.AssertModifyReplicationGroupShardConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupShardConfigurationMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["NodeGroupCount"], "Expected key NodeGroupCount to exist in table")
	assert(struct["ApplyImmediately"], "Expected key ApplyImmediately to exist in table")
	if struct["NodeGroupsToRemove"] then asserts.AssertNodeGroupsToRemoveList(struct["NodeGroupsToRemove"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["NodeGroupsToRetain"] then asserts.AssertNodeGroupsToRetainList(struct["NodeGroupsToRetain"]) end
	if struct["ReshardingConfiguration"] then asserts.AssertReshardingConfigurationList(struct["ReshardingConfiguration"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["NodeGroupCount"] then asserts.AssertInteger(struct["NodeGroupCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationGroupShardConfigurationMessage[k], "ModifyReplicationGroupShardConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupShardConfigurationMessage
-- <p>Represents the input for a <code>ModifyReplicationGroupShardConfiguration</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeGroupsToRemove [NodeGroupsToRemoveList] <p>If the value of <code>NodeGroupCount</code> is less than the current number of node groups (shards), the <code>NodeGroupsToRemove</code> or <code>NodeGroupsToRetain</code> is a required list of node group ids to remove from or retain in the cluster.</p> <p>ElastiCache for Redis will attempt to remove all node groups listed by <code>NodeGroupsToRemove</code> from the cluster.</p>
-- * ReplicationGroupId [String] <p>The name of the Redis (cluster mode enabled) cluster (replication group) on which the shards are to be configured.</p>
-- * NodeGroupsToRetain [NodeGroupsToRetainList] <p>If the value of <code>NodeGroupCount</code> is less than the current number of node groups (shards), the <code>NodeGroupsToRemove</code> or <code>NodeGroupsToRetain</code> is a required list of node group ids to remove from or retain in the cluster.</p> <p>ElastiCache for Redis will attempt to remove all node groups except those listed by <code>NodeGroupsToRetain</code> from the cluster.</p>
-- * ReshardingConfiguration [ReshardingConfigurationList] <p>Specifies the preferred availability zones for each node group in the cluster. If the value of <code>NodeGroupCount</code> is greater than the current number of node groups (shards), you can use this parameter to specify the preferred availability zones of the cluster's shards. If you omit this parameter ElastiCache selects availability zones for you.</p> <p>You can specify this parameter only if the value of <code>NodeGroupCount</code> is greater than the current number of node groups (shards).</p>
-- * ApplyImmediately [Boolean] <p>Indicates that the shard reconfiguration process begins immediately. At present, the only permitted value for this parameter is <code>true</code>.</p> <p>Value: true</p>
-- * NodeGroupCount [Integer] <p>The number of node groups (shards) that results from the modification of the shard configuration.</p>
-- Required key: ReplicationGroupId
-- Required key: NodeGroupCount
-- Required key: ApplyImmediately
-- @return ModifyReplicationGroupShardConfigurationMessage structure as a key-value pair table
function M.ModifyReplicationGroupShardConfigurationMessage(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationGroupShardConfigurationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeGroupsToRemove"] = args["NodeGroupsToRemove"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["NodeGroupsToRetain"] = args["NodeGroupsToRetain"],
		["ReshardingConfiguration"] = args["ReshardingConfiguration"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["NodeGroupCount"] = args["NodeGroupCount"],
	}
	asserts.AssertModifyReplicationGroupShardConfigurationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheSubnetGroup = { ["VpcId"] = true, ["CacheSubnetGroupDescription"] = true, ["Subnets"] = true, ["CacheSubnetGroupName"] = true, nil }

function asserts.AssertCacheSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroup to be of type 'table'")
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["CacheSubnetGroupDescription"] then asserts.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheSubnetGroup[k], "CacheSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroup
-- <p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>CreateCacheSubnetGroup</code> </p> </li> <li> <p> <code>ModifyCacheSubnetGroup</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcId [String] <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.</p>
-- * CacheSubnetGroupDescription [String] <p>The description of the cache subnet group.</p>
-- * Subnets [SubnetList] <p>A list of subnets associated with the cache subnet group.</p>
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group.</p>
-- @return CacheSubnetGroup structure as a key-value pair table
function M.CacheSubnetGroup(args)
	assert(args, "You must provide an argument table when creating CacheSubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcId"] = args["VpcId"],
		["CacheSubnetGroupDescription"] = args["CacheSubnetGroupDescription"],
		["Subnets"] = args["Subnets"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
	}
	asserts.AssertCacheSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSnapshotMessage = { ["SnapshotName"] = true, ["CacheClusterId"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertCreateSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotName"], "Expected key SnapshotName to exist in table")
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotMessage[k], "CreateSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotMessage
-- <p>Represents the input of a <code>CreateSnapshot</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotName [String] <p>A name for the snapshot being created.</p>
-- * CacheClusterId [String] <p>The identifier of an existing cluster. The snapshot is created from this cluster.</p>
-- * ReplicationGroupId [String] <p>The identifier of an existing replication group. The snapshot is created from this replication group.</p>
-- Required key: SnapshotName
-- @return CreateSnapshotMessage structure as a key-value pair table
function M.CreateSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotName"] = args["SnapshotName"],
		["CacheClusterId"] = args["CacheClusterId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertCreateSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetCacheParameterGroupMessage = { ["CacheParameterGroupName"] = true, ["ResetAllParameters"] = true, ["ParameterNameValues"] = true, nil }

function asserts.AssertResetCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["ParameterNameValues"] then asserts.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetCacheParameterGroupMessage[k], "ResetCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheParameterGroupMessage
-- <p>Represents the input of a <code>ResetCacheParameterGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group to reset.</p>
-- * ResetAllParameters [Boolean] <p>If <code>true</code>, all parameters in the cache parameter group are reset to their default values. If <code>false</code>, only the parameters listed by <code>ParameterNameValues</code> are reset to their default values.</p> <p>Valid values: <code>true</code> | <code>false</code> </p>
-- * ParameterNameValues [ParameterNameValueList] <p>An array of parameter names to reset to their default values. If <code>ResetAllParameters</code> is <code>true</code>, do not use <code>ParameterNameValues</code>. If <code>ResetAllParameters</code> is <code>false</code>, you must specify the name of at least one parameter to reset.</p>
-- Required key: CacheParameterGroupName
-- @return ResetCacheParameterGroupMessage structure as a key-value pair table
function M.ResetCacheParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetCacheParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["ResetAllParameters"] = args["ResetAllParameters"],
		["ParameterNameValues"] = args["ParameterNameValues"],
	}
	asserts.AssertResetCacheParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheSubnetGroupMessage = { ["Marker"] = true, ["CacheSubnetGroups"] = true, nil }

function asserts.AssertCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheSubnetGroups"] then asserts.AssertCacheSubnetGroups(struct["CacheSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheSubnetGroupMessage[k], "CacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupMessage
-- <p>Represents the output of a <code>DescribeCacheSubnetGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheSubnetGroups [CacheSubnetGroups] <p>A list of cache subnet groups. Each element in the list contains detailed information about one group.</p>
-- @return CacheSubnetGroupMessage structure as a key-value pair table
function M.CacheSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CacheSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheSubnetGroups"] = args["CacheSubnetGroups"],
	}
	asserts.AssertCacheSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeCacheSecurityGroupIngressResult = { ["CacheSecurityGroup"] = true, nil }

function asserts.AssertRevokeCacheSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeCacheSecurityGroupIngressResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then asserts.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeCacheSecurityGroupIngressResult[k], "RevokeCacheSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeCacheSecurityGroupIngressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroup [CacheSecurityGroup] 
-- @return RevokeCacheSecurityGroupIngressResult structure as a key-value pair table
function M.RevokeCacheSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating RevokeCacheSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroup"] = args["CacheSecurityGroup"],
	}
	asserts.AssertRevokeCacheSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestFailoverMessage = { ["NodeGroupId"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertTestFailoverMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestFailoverMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["NodeGroupId"], "Expected key NodeGroupId to exist in table")
	if struct["NodeGroupId"] then asserts.AssertAllowedNodeGroupId(struct["NodeGroupId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestFailoverMessage[k], "TestFailoverMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestFailoverMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeGroupId [AllowedNodeGroupId] <p>The name of the node group (called shard in the console) in this replication group on which automatic failover is to be tested. You may test automatic failover on up to 5 node groups in any rolling 24-hour period.</p>
-- * ReplicationGroupId [String] <p>The name of the replication group (console: cluster) whose automatic failover is being tested by this operation.</p>
-- Required key: ReplicationGroupId
-- Required key: NodeGroupId
-- @return TestFailoverMessage structure as a key-value pair table
function M.TestFailoverMessage(args)
	assert(args, "You must provide an argument table when creating TestFailoverMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeGroupId"] = args["NodeGroupId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertTestFailoverMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AllowedNodeTypeModificationsMessage = { ["ScaleUpModifications"] = true, nil }

function asserts.AssertAllowedNodeTypeModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllowedNodeTypeModificationsMessage to be of type 'table'")
	if struct["ScaleUpModifications"] then asserts.AssertNodeTypeList(struct["ScaleUpModifications"]) end
	for k,_ in pairs(struct) do
		assert(keys.AllowedNodeTypeModificationsMessage[k], "AllowedNodeTypeModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllowedNodeTypeModificationsMessage
-- <p>Represents the allowed node types you can use to modify your cluster or replication group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScaleUpModifications [NodeTypeList] <p>A string list, each element of which specifies a cache node type which you can use to scale your cluster or replication group.</p> <p>When scaling up a Redis cluster or replication group using <code>ModifyCacheCluster</code> or <code>ModifyReplicationGroup</code>, use a value from this list for the <code>CacheNodeType</code> parameter.</p>
-- @return AllowedNodeTypeModificationsMessage structure as a key-value pair table
function M.AllowedNodeTypeModificationsMessage(args)
	assert(args, "You must provide an argument table when creating AllowedNodeTypeModificationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScaleUpModifications"] = args["ScaleUpModifications"],
	}
	asserts.AssertAllowedNodeTypeModificationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheClusterMessage = { ["CacheParameterGroupName"] = true, ["CacheClusterId"] = true, ["ReplicationGroupId"] = true, ["SnapshotRetentionLimit"] = true, ["NotificationTopicArn"] = true, ["CacheNodeType"] = true, ["Engine"] = true, ["AuthToken"] = true, ["Tags"] = true, ["NumCacheNodes"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredMaintenanceWindow"] = true, ["CacheSubnetGroupName"] = true, ["CacheSecurityGroupNames"] = true, ["SnapshotName"] = true, ["SecurityGroupIds"] = true, ["PreferredAvailabilityZones"] = true, ["EngineVersion"] = true, ["AZMode"] = true, ["SnapshotArns"] = true, ["PreferredAvailabilityZone"] = true, ["SnapshotWindow"] = true, ["Port"] = true, nil }

function asserts.AssertCreateCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["AuthToken"] then asserts.AssertString(struct["AuthToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["NumCacheNodes"] then asserts.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["CacheSecurityGroupNames"] then asserts.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["PreferredAvailabilityZones"] then asserts.AssertPreferredAvailabilityZoneList(struct["PreferredAvailabilityZones"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["AZMode"] then asserts.AssertAZMode(struct["AZMode"]) end
	if struct["SnapshotArns"] then asserts.AssertSnapshotArnsList(struct["SnapshotArns"]) end
	if struct["PreferredAvailabilityZone"] then asserts.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheClusterMessage[k], "CreateCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheClusterMessage
-- <p>Represents the input of a CreateCacheCluster operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the parameter group to associate with this cluster. If this argument is omitted, the default parameter group for the specified engine is used. You cannot use any parameter group which has <code>cluster-enabled='yes'</code> when creating a cluster.</p>
-- * CacheClusterId [String] <p>The node group (shard) identifier. This parameter is stored as a lowercase string.</p> <p> <b>Constraints:</b> </p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * ReplicationGroupId [String] <p>The ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.</p> <p>If the specified replication group is Multi-AZ enabled and the Availability Zone is not specified, the cluster is created in Availability Zones that provide the best spread of read replicas across Availability Zones.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot taken today is retained for 5 days before being deleted.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note> <p>Default: 0 (i.e., automatic backups are disabled for this cache cluster).</p>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p> <note> <p>The Amazon SNS topic owner must be the same as the cluster owner.</p> </note>
-- * CacheNodeType [String] <p>The compute and memory capacity of the nodes in the node group (shard).</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- * Engine [String] <p>The name of the cache engine to be used for this cluster.</p> <p>Valid values for this parameter are: <code>memcached</code> | <code>redis</code> </p>
-- * AuthToken [String] <p> <b>Reserved parameter.</b> The password used to access a password protected server.</p> <p>Password constraints:</p> <ul> <li> <p>Must be only printable ASCII characters.</p> </li> <li> <p>Must be at least 16 characters and no more than 128 characters in length.</p> </li> <li> <p>Cannot contain any of the following characters: '/', '"', or '@'. </p> </li> </ul> <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH password</a> at http://redis.io/commands/AUTH.</p>
-- * Tags [TagList] <p>A list of cost allocation tags to be added to this resource.</p>
-- * NumCacheNodes [IntegerOptional] <p>The initial number of cache nodes that the cluster has.</p> <p>For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.</p> <p>If you need more than 20 nodes for your Memcached cluster, please fill out the ElastiCache Limit Increase Request form at <a href="http://aws.amazon.com/contact-us/elasticache-node-limit-request/">http://aws.amazon.com/contact-us/elasticache-node-limit-request/</a>.</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>This parameter is currently disabled.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * CacheSubnetGroupName [String] <p>The name of the subnet group to be used for the cluster.</p> <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p> <important> <p>If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets and Subnet Groups</a>.</p> </important>
-- * CacheSecurityGroupNames [CacheSecurityGroupNameList] <p>A list of security group names to associate with this cluster.</p> <p>Use this parameter only when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
-- * SnapshotName [String] <p>The name of a Redis snapshot from which to restore data into the new node group (shard). The snapshot status changes to <code>restoring</code> while the new node group (shard) is being created.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note>
-- * SecurityGroupIds [SecurityGroupIdsList] <p>One or more VPC security groups associated with the cluster.</p> <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>
-- * PreferredAvailabilityZones [PreferredAvailabilityZoneList] <p>A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.</p> <p>This option is only supported on Memcached.</p> <note> <p>If you are creating your cluster in an Amazon VPC (recommended) you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.</p> <p>The number of Availability Zones listed must equal the value of <code>NumCacheNodes</code>.</p> </note> <p>If you want all the nodes in the same Availability Zone, use <code>PreferredAvailabilityZone</code> instead, or repeat the Availability Zone multiple times in the list.</p> <p>Default: System chosen Availability Zones.</p>
-- * EngineVersion [String] <p>The version number of the cache engine to be used for this cluster. To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.</p> <p> <b>Important:</b> You can upgrade to a newer engine version (see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version. </p>
-- * AZMode [AZMode] <p>Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region.</p> <p>This parameter is only supported for Memcached clusters.</p> <p>If the <code>AZMode</code> and <code>PreferredAvailabilityZones</code> are not specified, ElastiCache assumes <code>single-az</code> mode.</p>
-- * SnapshotArns [SnapshotArnsList] <p>A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies a Redis RDB snapshot file stored in Amazon S3. The snapshot file is used to populate the node group (shard). The Amazon S3 object name in the ARN cannot contain any commas.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note> <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code> </p>
-- * PreferredAvailabilityZone [String] <p>The EC2 Availability Zone in which the cluster is created.</p> <p>All nodes belonging to this Memcached cluster are placed in the preferred Availability Zone. If you want to create your nodes across multiple Availability Zones, use <code>PreferredAvailabilityZones</code>.</p> <p>Default: System chosen Availability Zone.</p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p> <p>Example: <code>05:00-09:00</code> </p> <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note>
-- * Port [IntegerOptional] <p>The port number on which each of the cache nodes accepts connections.</p>
-- Required key: CacheClusterId
-- @return CreateCacheClusterMessage structure as a key-value pair table
function M.CreateCacheClusterMessage(args)
	assert(args, "You must provide an argument table when creating CreateCacheClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["CacheClusterId"] = args["CacheClusterId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["CacheNodeType"] = args["CacheNodeType"],
		["Engine"] = args["Engine"],
		["AuthToken"] = args["AuthToken"],
		["Tags"] = args["Tags"],
		["NumCacheNodes"] = args["NumCacheNodes"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
		["CacheSecurityGroupNames"] = args["CacheSecurityGroupNames"],
		["SnapshotName"] = args["SnapshotName"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["PreferredAvailabilityZones"] = args["PreferredAvailabilityZones"],
		["EngineVersion"] = args["EngineVersion"],
		["AZMode"] = args["AZMode"],
		["SnapshotArns"] = args["SnapshotArns"],
		["PreferredAvailabilityZone"] = args["PreferredAvailabilityZone"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["Port"] = args["Port"],
	}
	asserts.AssertCreateCacheClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReshardingConfiguration = { ["PreferredAvailabilityZones"] = true, ["NodeGroupId"] = true, nil }

function asserts.AssertReshardingConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReshardingConfiguration to be of type 'table'")
	if struct["PreferredAvailabilityZones"] then asserts.AssertAvailabilityZonesList(struct["PreferredAvailabilityZones"]) end
	if struct["NodeGroupId"] then asserts.AssertAllowedNodeGroupId(struct["NodeGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReshardingConfiguration[k], "ReshardingConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReshardingConfiguration
-- <p>A list of <code>PreferredAvailabilityZones</code> objects that specifies the configuration of a node group in the resharded cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PreferredAvailabilityZones [AvailabilityZonesList] <p>A list of preferred availability zones for the nodes in this cluster.</p>
-- * NodeGroupId [AllowedNodeGroupId] <p>The 4-digit id for the node group these configuration values apply to.</p>
-- @return ReshardingConfiguration structure as a key-value pair table
function M.ReshardingConfiguration(args)
	assert(args, "You must provide an argument table when creating ReshardingConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PreferredAvailabilityZones"] = args["PreferredAvailabilityZones"],
		["NodeGroupId"] = args["NodeGroupId"],
	}
	asserts.AssertReshardingConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheParameterGroupDetails = { ["Marker"] = true, ["CacheNodeTypeSpecificParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertCacheParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheNodeTypeSpecificParameters"] then asserts.AssertCacheNodeTypeSpecificParametersList(struct["CacheNodeTypeSpecificParameters"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheParameterGroupDetails[k], "CacheParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupDetails
-- <p>Represents the output of a <code>DescribeCacheParameters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheNodeTypeSpecificParameters [CacheNodeTypeSpecificParametersList] <p>A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.</p>
-- * Parameters [ParametersList] <p>A list of <a>Parameter</a> instances.</p>
-- @return CacheParameterGroupDetails structure as a key-value pair table
function M.CacheParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating CacheParameterGroupDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheNodeTypeSpecificParameters"] = args["CacheNodeTypeSpecificParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertCacheParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheSecurityGroup = { ["OwnerId"] = true, ["CacheSecurityGroupName"] = true, ["Description"] = true, ["EC2SecurityGroups"] = true, nil }

function asserts.AssertCacheSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroup to be of type 'table'")
	if struct["OwnerId"] then asserts.AssertString(struct["OwnerId"]) end
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EC2SecurityGroups"] then asserts.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheSecurityGroup[k], "CacheSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroup
-- <p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>AuthorizeCacheSecurityGroupIngress</code> </p> </li> <li> <p> <code>CreateCacheSecurityGroup</code> </p> </li> <li> <p> <code>RevokeCacheSecurityGroupIngress</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OwnerId [String] <p>The AWS account ID of the cache security group owner.</p>
-- * CacheSecurityGroupName [String] <p>The name of the cache security group.</p>
-- * Description [String] <p>The description of the cache security group.</p>
-- * EC2SecurityGroups [EC2SecurityGroupList] <p>A list of Amazon EC2 security groups that are associated with this cache security group.</p>
-- @return CacheSecurityGroup structure as a key-value pair table
function M.CacheSecurityGroup(args)
	assert(args, "You must provide an argument table when creating CacheSecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OwnerId"] = args["OwnerId"],
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
		["Description"] = args["Description"],
		["EC2SecurityGroups"] = args["EC2SecurityGroups"],
	}
	asserts.AssertCacheSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCacheClusterMessage = { ["FinalSnapshotIdentifier"] = true, ["CacheClusterId"] = true, nil }

function asserts.AssertDeleteCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["FinalSnapshotIdentifier"] then asserts.AssertString(struct["FinalSnapshotIdentifier"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCacheClusterMessage[k], "DeleteCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheClusterMessage
-- <p>Represents the input of a <code>DeleteCacheCluster</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalSnapshotIdentifier [String] <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster immediately afterward.</p>
-- * CacheClusterId [String] <p>The cluster identifier for the cluster to be deleted. This parameter is not case sensitive.</p>
-- Required key: CacheClusterId
-- @return DeleteCacheClusterMessage structure as a key-value pair table
function M.DeleteCacheClusterMessage(args)
	assert(args, "You must provide an argument table when creating DeleteCacheClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalSnapshotIdentifier"] = args["FinalSnapshotIdentifier"],
		["CacheClusterId"] = args["CacheClusterId"],
	}
	asserts.AssertDeleteCacheClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheSecurityGroupMessage = { ["CacheSecurityGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSecurityGroupMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheSecurityGroupMessage[k], "CreateCacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSecurityGroupMessage
-- <p>Represents the input of a <code>CreateCacheSecurityGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroupName [String] <p>A name for the cache security group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word "Default".</p> <p>Example: <code>mysecuritygroup</code> </p>
-- * Description [String] <p>A description for the cache security group.</p>
-- Required key: CacheSecurityGroupName
-- Required key: Description
-- @return CreateCacheSecurityGroupMessage structure as a key-value pair table
function M.CreateCacheSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateCacheSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateCacheSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheParameterGroupResult = { ["CacheParameterGroup"] = true, nil }

function asserts.AssertCreateCacheParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheParameterGroupResult to be of type 'table'")
	if struct["CacheParameterGroup"] then asserts.AssertCacheParameterGroup(struct["CacheParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheParameterGroupResult[k], "CreateCacheParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroup [CacheParameterGroup] 
-- @return CreateCacheParameterGroupResult structure as a key-value pair table
function M.CreateCacheParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateCacheParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroup"] = args["CacheParameterGroup"],
	}
	asserts.AssertCreateCacheParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheSecurityGroupResult = { ["CacheSecurityGroup"] = true, nil }

function asserts.AssertCreateCacheSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSecurityGroupResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then asserts.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheSecurityGroupResult[k], "CreateCacheSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSecurityGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroup [CacheSecurityGroup] 
-- @return CreateCacheSecurityGroupResult structure as a key-value pair table
function M.CreateCacheSecurityGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateCacheSecurityGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroup"] = args["CacheSecurityGroup"],
	}
	asserts.AssertCreateCacheSecurityGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeCacheSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["CacheSecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, nil }

function asserts.AssertRevokeCacheSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeCacheSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupName"], "Expected key EC2SecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupOwnerId"], "Expected key EC2SecurityGroupOwnerId to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeCacheSecurityGroupIngressMessage[k], "RevokeCacheSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeCacheSecurityGroupIngressMessage
-- <p>Represents the input of a <code>RevokeCacheSecurityGroupIngress</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p>The name of the Amazon EC2 security group to revoke access from.</p>
-- * CacheSecurityGroupName [String] <p>The name of the cache security group to revoke ingress from.</p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.</p>
-- Required key: CacheSecurityGroupName
-- Required key: EC2SecurityGroupName
-- Required key: EC2SecurityGroupOwnerId
-- @return RevokeCacheSecurityGroupIngressMessage structure as a key-value pair table
function M.RevokeCacheSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating RevokeCacheSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
	}
	asserts.AssertRevokeCacheSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheSubnetGroupsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["CacheSubnetGroupName"] = true, nil }

function asserts.AssertDescribeCacheSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheSubnetGroupsMessage[k], "DescribeCacheSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheSubnetGroupsMessage
-- <p>Represents the input of a <code>DescribeCacheSubnetGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group to return details for.</p>
-- @return DescribeCacheSubnetGroupsMessage structure as a key-value pair table
function M.DescribeCacheSubnetGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheSubnetGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
	}
	asserts.AssertDescribeCacheSubnetGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeCacheSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["CacheSecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, nil }

function asserts.AssertAuthorizeCacheSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeCacheSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupName"], "Expected key EC2SecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupOwnerId"], "Expected key EC2SecurityGroupOwnerId to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeCacheSecurityGroupIngressMessage[k], "AuthorizeCacheSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeCacheSecurityGroupIngressMessage
-- <p>Represents the input of an AuthorizeCacheSecurityGroupIngress operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p>The Amazon EC2 security group to be authorized for ingress to the cache security group.</p>
-- * CacheSecurityGroupName [String] <p>The cache security group that allows network ingress.</p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.</p>
-- Required key: CacheSecurityGroupName
-- Required key: EC2SecurityGroupName
-- Required key: EC2SecurityGroupOwnerId
-- @return AuthorizeCacheSecurityGroupIngressMessage structure as a key-value pair table
function M.AuthorizeCacheSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating AuthorizeCacheSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
	}
	asserts.AssertAuthorizeCacheSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventsMessage = { ["Marker"] = true, ["Events"] = true, nil }

function asserts.AssertEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Events"] then asserts.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventsMessage[k], "EventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsMessage
-- <p>Represents the output of a <code>DescribeEvents</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * Events [EventList] <p>A list of events. Each element in the list contains detailed information about one event.</p>
-- @return EventsMessage structure as a key-value pair table
function M.EventsMessage(args)
	assert(args, "You must provide an argument table when creating EventsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Events"] = args["Events"],
	}
	asserts.AssertEventsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultParametersMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["CacheParameterGroupFamily"] = true, nil }

function asserts.AssertDescribeEngineDefaultParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersMessage to be of type 'table'")
	assert(struct["CacheParameterGroupFamily"], "Expected key CacheParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultParametersMessage[k], "DescribeEngineDefaultParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersMessage
-- <p>Represents the input of a <code>DescribeEngineDefaultParameters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * CacheParameterGroupFamily [String] <p>The name of the cache parameter group family.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p>
-- Required key: CacheParameterGroupFamily
-- @return DescribeEngineDefaultParametersMessage structure as a key-value pair table
function M.DescribeEngineDefaultParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
	}
	asserts.AssertDescribeEngineDefaultParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventsMessage = { ["SourceType"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["StartTime"] = true, ["Duration"] = true, ["SourceIdentifier"] = true, ["EndTime"] = true, nil }

function asserts.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertIntegerOptional(struct["Duration"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["EndTime"] then asserts.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsMessage[k], "DescribeEventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsMessage
-- <p>Represents the input of a <code>DescribeEvents</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p> <p> <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
-- * Duration [IntegerOptional] <p>The number of minutes worth of events to retrieve.</p>
-- * SourceIdentifier [String] <p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>
-- * EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p> <p> <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
-- @return DescribeEventsMessage structure as a key-value pair table
function M.DescribeEventsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceType"] = args["SourceType"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["SourceIdentifier"] = args["SourceIdentifier"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertDescribeEventsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConfigureShard = { ["NewReplicaCount"] = true, ["PreferredAvailabilityZones"] = true, ["NodeGroupId"] = true, nil }

function asserts.AssertConfigureShard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigureShard to be of type 'table'")
	assert(struct["NodeGroupId"], "Expected key NodeGroupId to exist in table")
	assert(struct["NewReplicaCount"], "Expected key NewReplicaCount to exist in table")
	if struct["NewReplicaCount"] then asserts.AssertInteger(struct["NewReplicaCount"]) end
	if struct["PreferredAvailabilityZones"] then asserts.AssertPreferredAvailabilityZoneList(struct["PreferredAvailabilityZones"]) end
	if struct["NodeGroupId"] then asserts.AssertAllowedNodeGroupId(struct["NodeGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigureShard[k], "ConfigureShard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigureShard
-- <p>Node group (shard) configuration options when adding or removing replicas. Each node group (shard) configuration has the following members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewReplicaCount [Integer] <p>The number of replicas you want in this node group at the end of this operation. The maximum value for <code>NewReplicaCount</code> is 5. The minimum value depends upon the type of Redis replication group you are working with.</p> <p>The minimum number of replicas in a shard or replication group is:</p> <ul> <li> <p>Redis (cluster mode disabled)</p> <ul> <li> <p>If Multi-AZ with Automatic Failover is enabled: 1</p> </li> <li> <p>If Multi-AZ with Automatic Failover is not enable: 0</p> </li> </ul> </li> <li> <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p> </li> </ul>
-- * PreferredAvailabilityZones [PreferredAvailabilityZoneList] <p>A list of <code>PreferredAvailabilityZone</code> strings that specify which availability zones the replication group's nodes are to be in. The nummber of <code>PreferredAvailabilityZone</code> values must equal the value of <code>NewReplicaCount</code> plus 1 to account for the primary node. If this member of <code>ReplicaConfiguration</code> is omitted, ElastiCache for Redis selects the availability zone for each of the replicas.</p>
-- * NodeGroupId [AllowedNodeGroupId] <p>The 4-digit id for the node group you are configuring. For Redis (cluster mode disabled) replication groups, the node group id is always 0001. To find a Redis (cluster mode enabled)'s node group's (shard's) id, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/shard-find-id.html">Finding a Shard's Id</a>.</p>
-- Required key: NodeGroupId
-- Required key: NewReplicaCount
-- @return ConfigureShard structure as a key-value pair table
function M.ConfigureShard(args)
	assert(args, "You must provide an argument table when creating ConfigureShard")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewReplicaCount"] = args["NewReplicaCount"],
		["PreferredAvailabilityZones"] = args["PreferredAvailabilityZones"],
		["NodeGroupId"] = args["NodeGroupId"],
	}
	asserts.AssertConfigureShard(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncreaseReplicaCountResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertIncreaseReplicaCountResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicaCountResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseReplicaCountResult[k], "IncreaseReplicaCountResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicaCountResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return IncreaseReplicaCountResult structure as a key-value pair table
function M.IncreaseReplicaCountResult(args)
	assert(args, "You must provide an argument table when creating IncreaseReplicaCountResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertIncreaseReplicaCountResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DecreaseReplicaCountResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertDecreaseReplicaCountResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicaCountResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseReplicaCountResult[k], "DecreaseReplicaCountResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicaCountResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return DecreaseReplicaCountResult structure as a key-value pair table
function M.DecreaseReplicaCountResult(args)
	assert(args, "You must provide an argument table when creating DecreaseReplicaCountResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertDecreaseReplicaCountResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertDeleteSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotResult[k], "DeleteSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return DeleteSnapshotResult structure as a key-value pair table
function M.DeleteSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertDeleteSnapshotResult(all_args)
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
-- <p>A cost allocation Tag that can be added to an ElastiCache cluster or replication group. Tags are composed of a Key/Value pair. A tag with a null Value is permitted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The tag's value. May be null.</p>
-- * Key [String] <p>The key for the tag. May not be null.</p>
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

keys.DescribeReservedCacheNodesMessage = { ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedCacheNodesOfferingId"] = true, ["ReservedCacheNodeId"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Duration"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertDescribeReservedCacheNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedCacheNodesMessage to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedCacheNodesOfferingId"] then asserts.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["ReservedCacheNodeId"] then asserts.AssertString(struct["ReservedCacheNodeId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedCacheNodesMessage[k], "DescribeReservedCacheNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedCacheNodesMessage
-- <p>Represents the input of a <code>DescribeReservedCacheNodes</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"</code> </p>
-- * ProductDescription [String] <p>The product description filter value. Use this parameter to show only those reservations matching the specified product description.</p>
-- * ReservedCacheNodesOfferingId [String] <p>The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.</p>
-- * ReservedCacheNodeId [String] <p>The reserved cache node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.</p>
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * Duration [String] <p>The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- * CacheNodeType [String] <p>The cache node type filter value. Use this parameter to show only those reservations matching the specified cache node type.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- @return DescribeReservedCacheNodesMessage structure as a key-value pair table
function M.DescribeReservedCacheNodesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedCacheNodesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["ProductDescription"] = args["ProductDescription"],
		["ReservedCacheNodesOfferingId"] = args["ReservedCacheNodesOfferingId"],
		["ReservedCacheNodeId"] = args["ReservedCacheNodeId"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Duration"] = args["Duration"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertDescribeReservedCacheNodesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReshardingStatus = { ["SlotMigration"] = true, nil }

function asserts.AssertReshardingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReshardingStatus to be of type 'table'")
	if struct["SlotMigration"] then asserts.AssertSlotMigration(struct["SlotMigration"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReshardingStatus[k], "ReshardingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReshardingStatus
-- <p>The status of an online resharding operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SlotMigration [SlotMigration] <p>Represents the progress of an online resharding operation.</p>
-- @return ReshardingStatus structure as a key-value pair table
function M.ReshardingStatus(args)
	assert(args, "You must provide an argument table when creating ReshardingStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SlotMigration"] = args["SlotMigration"],
	}
	asserts.AssertReshardingStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsToResourceMessage = { ["ResourceName"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceMessage[k], "AddTagsToResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceMessage
-- <p>Represents the input of an AddTagsToResource operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added, for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>. ElastiCache resources are <i>cluster</i> and <i>snapshot</i>.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * Tags [TagList] <p>A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value.</p>
-- Required key: ResourceName
-- Required key: Tags
-- @return AddTagsToResourceMessage structure as a key-value pair table
function M.AddTagsToResourceMessage(args)
	assert(args, "You must provide an argument table when creating AddTagsToResourceMessage")
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
	asserts.AssertAddTagsToResourceMessage(all_args)
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
-- <p>Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicStatus [String] <p>The current state of the topic.</p>
-- * TopicArn [String] <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
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

keys.DeleteCacheSubnetGroupMessage = { ["CacheSubnetGroupName"] = true, nil }

function asserts.AssertDeleteCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCacheSubnetGroupMessage[k], "DeleteCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheSubnetGroupMessage
-- <p>Represents the input of a <code>DeleteCacheSubnetGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group to delete.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
-- Required key: CacheSubnetGroupName
-- @return DeleteCacheSubnetGroupMessage structure as a key-value pair table
function M.DeleteCacheSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteCacheSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
	}
	asserts.AssertDeleteCacheSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationGroupPendingModifiedValues = { ["Resharding"] = true, ["AutomaticFailoverStatus"] = true, ["PrimaryClusterId"] = true, nil }

function asserts.AssertReplicationGroupPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupPendingModifiedValues to be of type 'table'")
	if struct["Resharding"] then asserts.AssertReshardingStatus(struct["Resharding"]) end
	if struct["AutomaticFailoverStatus"] then asserts.AssertPendingAutomaticFailoverStatus(struct["AutomaticFailoverStatus"]) end
	if struct["PrimaryClusterId"] then asserts.AssertString(struct["PrimaryClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationGroupPendingModifiedValues[k], "ReplicationGroupPendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupPendingModifiedValues
-- <p>The settings to be applied to the Redis replication group, either immediately or during the next maintenance window.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Resharding [ReshardingStatus] <p>The status of an online resharding operation.</p>
-- * AutomaticFailoverStatus [PendingAutomaticFailoverStatus] <p>Indicates the status of Multi-AZ with automatic failover for this Redis replication group.</p> <p>Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:</p> <ul> <li> <p>Redis versions earlier than 2.8.6.</p> </li> <li> <p>Redis (cluster mode disabled): T1 and T2 cache node types.</p> </li> <li> <p>Redis (cluster mode enabled): T1 node types.</p> </li> </ul>
-- * PrimaryClusterId [String] <p>The primary cluster ID that is applied immediately (if <code>--apply-immediately</code> was specified), or during the next maintenance window.</p>
-- @return ReplicationGroupPendingModifiedValues structure as a key-value pair table
function M.ReplicationGroupPendingModifiedValues(args)
	assert(args, "You must provide an argument table when creating ReplicationGroupPendingModifiedValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Resharding"] = args["Resharding"],
		["AutomaticFailoverStatus"] = args["AutomaticFailoverStatus"],
		["PrimaryClusterId"] = args["PrimaryClusterId"],
	}
	asserts.AssertReplicationGroupPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyCacheParameterGroupMessage = { ["CacheParameterGroupName"] = true, ["ParameterNameValues"] = true, nil }

function asserts.AssertModifyCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	assert(struct["ParameterNameValues"], "Expected key ParameterNameValues to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ParameterNameValues"] then asserts.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyCacheParameterGroupMessage[k], "ModifyCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheParameterGroupMessage
-- <p>Represents the input of a <code>ModifyCacheParameterGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group to modify.</p>
-- * ParameterNameValues [ParameterNameValueList] <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be modified per request.</p>
-- Required key: CacheParameterGroupName
-- Required key: ParameterNameValues
-- @return ModifyCacheParameterGroupMessage structure as a key-value pair table
function M.ModifyCacheParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyCacheParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["ParameterNameValues"] = args["ParameterNameValues"],
	}
	asserts.AssertModifyCacheParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parameter = { ["Description"] = true, ["DataType"] = true, ["ChangeType"] = true, ["IsModifiable"] = true, ["AllowedValues"] = true, ["Source"] = true, ["ParameterValue"] = true, ["ParameterName"] = true, ["MinimumEngineVersion"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then asserts.AssertChangeType(struct["ChangeType"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then asserts.AssertString(struct["MinimumEngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>Describes an individual setting that controls some aspect of ElastiCache behavior.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description of the parameter.</p>
-- * DataType [String] <p>The valid data type for the parameter.</p>
-- * ChangeType [ChangeType] <p>Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html">Rebooting a Cluster</a>.</p>
-- * IsModifiable [Boolean] <p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.</p>
-- * AllowedValues [String] <p>The valid range of values for the parameter.</p>
-- * Source [String] <p>The source of the parameter.</p>
-- * ParameterValue [String] <p>The value of the parameter.</p>
-- * ParameterName [String] <p>The name of the parameter.</p>
-- * MinimumEngineVersion [String] <p>The earliest cache engine version to which the parameter can apply.</p>
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
		["Description"] = args["Description"],
		["DataType"] = args["DataType"],
		["ChangeType"] = args["ChangeType"],
		["IsModifiable"] = args["IsModifiable"],
		["AllowedValues"] = args["AllowedValues"],
		["Source"] = args["Source"],
		["ParameterValue"] = args["ParameterValue"],
		["ParameterName"] = args["ParameterName"],
		["MinimumEngineVersion"] = args["MinimumEngineVersion"],
	}
	asserts.AssertParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SlotMigration = { ["ProgressPercentage"] = true, nil }

function asserts.AssertSlotMigration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SlotMigration to be of type 'table'")
	if struct["ProgressPercentage"] then asserts.AssertDouble(struct["ProgressPercentage"]) end
	for k,_ in pairs(struct) do
		assert(keys.SlotMigration[k], "SlotMigration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SlotMigration
-- <p>Represents the progress of an online resharding operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressPercentage [Double] <p>The percentage of the slot migration that is complete.</p>
-- @return SlotMigration structure as a key-value pair table
function M.SlotMigration(args)
	assert(args, "You must provide an argument table when creating SlotMigration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressPercentage"] = args["ProgressPercentage"],
	}
	asserts.AssertSlotMigration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCacheSecurityGroupMessage = { ["CacheSecurityGroupName"] = true, nil }

function asserts.AssertDeleteCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheSecurityGroupMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCacheSecurityGroupMessage[k], "DeleteCacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheSecurityGroupMessage
-- <p>Represents the input of a <code>DeleteCacheSecurityGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroupName [String] <p>The name of the cache security group to delete.</p> <note> <p>You cannot delete the default security group.</p> </note>
-- Required key: CacheSecurityGroupName
-- @return DeleteCacheSecurityGroupMessage structure as a key-value pair table
function M.DeleteCacheSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteCacheSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
	}
	asserts.AssertDeleteCacheSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopySnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertCopySnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopySnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopySnapshotResult[k], "CopySnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopySnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return CopySnapshotResult structure as a key-value pair table
function M.CopySnapshotResult(args)
	assert(args, "You must provide an argument table when creating CopySnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertCopySnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationGroupMessage = { ["Marker"] = true, ["ReplicationGroups"] = true, nil }

function asserts.AssertReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReplicationGroups"] then asserts.AssertReplicationGroupList(struct["ReplicationGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationGroupMessage[k], "ReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupMessage
-- <p>Represents the output of a <code>DescribeReplicationGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * ReplicationGroups [ReplicationGroupList] <p>A list of replication groups. Each item in the list contains detailed information about one replication group.</p>
-- @return ReplicationGroupMessage structure as a key-value pair table
function M.ReplicationGroupMessage(args)
	assert(args, "You must provide an argument table when creating ReplicationGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReplicationGroups"] = args["ReplicationGroups"],
	}
	asserts.AssertReplicationGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSnapshotMessage = { ["SnapshotName"] = true, nil }

function asserts.AssertDeleteSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotName"], "Expected key SnapshotName to exist in table")
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotMessage[k], "DeleteSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotMessage
-- <p>Represents the input of a <code>DeleteSnapshot</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotName [String] <p>The name of the snapshot to be deleted.</p>
-- Required key: SnapshotName
-- @return DeleteSnapshotMessage structure as a key-value pair table
function M.DeleteSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DeleteSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotName"] = args["SnapshotName"],
	}
	asserts.AssertDeleteSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationGroupResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertDeleteReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationGroupResult[k], "DeleteReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return DeleteReplicationGroupResult structure as a key-value pair table
function M.DeleteReplicationGroupResult(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertDeleteReplicationGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DecreaseReplicaCountMessage = { ["NewReplicaCount"] = true, ["ApplyImmediately"] = true, ["ReplicasToRemove"] = true, ["ReplicaConfiguration"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertDecreaseReplicaCountMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecreaseReplicaCountMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["ApplyImmediately"], "Expected key ApplyImmediately to exist in table")
	if struct["NewReplicaCount"] then asserts.AssertIntegerOptional(struct["NewReplicaCount"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["ReplicasToRemove"] then asserts.AssertRemoveReplicasList(struct["ReplicasToRemove"]) end
	if struct["ReplicaConfiguration"] then asserts.AssertReplicaConfigurationList(struct["ReplicaConfiguration"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecreaseReplicaCountMessage[k], "DecreaseReplicaCountMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecreaseReplicaCountMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewReplicaCount [IntegerOptional] <p>The number of read replica nodes you want at the completion of this operation. For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the replication group. For Redis (cluster mode enabled) replication groups, this is the number of replica nodes in each of the replication group's node groups.</p> <p>The minimum number of replicas in a shard or replication group is:</p> <ul> <li> <p>Redis (cluster mode disabled)</p> <ul> <li> <p>If Multi-AZ with Automatic Failover is enabled: 1</p> </li> <li> <p>If Multi-AZ with Automatic Failover is not enabled: 0</p> </li> </ul> </li> <li> <p>Redis (cluster mode enabled): 0 (though you will not be able to failover to a replica if your primary node fails)</p> </li> </ul>
-- * ApplyImmediately [Boolean] <p>If <code>True</code>, the number of replica nodes is decreased immediately. If <code>False</code>, the number of replica nodes is decreased during the next maintenance window.</p>
-- * ReplicasToRemove [RemoveReplicasList] <p>A list of the node ids to remove from the replication group or node group (shard).</p>
-- * ReplicaConfiguration [ReplicaConfigurationList] <p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
-- * ReplicationGroupId [String] <p>The id of the replication group from which you want to remove replica nodes.</p>
-- Required key: ReplicationGroupId
-- Required key: ApplyImmediately
-- @return DecreaseReplicaCountMessage structure as a key-value pair table
function M.DecreaseReplicaCountMessage(args)
	assert(args, "You must provide an argument table when creating DecreaseReplicaCountMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewReplicaCount"] = args["NewReplicaCount"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["ReplicasToRemove"] = args["ReplicasToRemove"],
		["ReplicaConfiguration"] = args["ReplicaConfiguration"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertDecreaseReplicaCountMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultParametersResult = { ["EngineDefaults"] = true, nil }

function asserts.AssertDescribeEngineDefaultParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then asserts.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultParametersResult[k], "DescribeEngineDefaultParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineDefaults [EngineDefaults] 
-- @return DescribeEngineDefaultParametersResult structure as a key-value pair table
function M.DescribeEngineDefaultParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineDefaults"] = args["EngineDefaults"],
	}
	asserts.AssertDescribeEngineDefaultParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingModifiedValues = { ["NumCacheNodes"] = true, ["CacheNodeType"] = true, ["EngineVersion"] = true, ["CacheNodeIdsToRemove"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["NumCacheNodes"] then asserts.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodeIdsToRemove"] then asserts.AssertCacheNodeIdsList(struct["CacheNodeIdsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingModifiedValues[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- <p>A group of settings that are applied to the cluster in the future, or that are currently being applied.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumCacheNodes [IntegerOptional] <p>The new number of cache nodes for the cluster.</p> <p>For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.</p>
-- * CacheNodeType [String] <p>The cache node type that this cluster or replication group is scaled to.</p>
-- * EngineVersion [String] <p>The new cache engine version that the cluster runs.</p>
-- * CacheNodeIdsToRemove [CacheNodeIdsList] <p>A list of cache node IDs that are being removed (or will be removed) from the cluster. A node ID is a 4-digit numeric identifier (0001, 0002, etc.).</p>
-- @return PendingModifiedValues structure as a key-value pair table
function M.PendingModifiedValues(args)
	assert(args, "You must provide an argument table when creating PendingModifiedValues")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumCacheNodes"] = args["NumCacheNodes"],
		["CacheNodeType"] = args["CacheNodeType"],
		["EngineVersion"] = args["EngineVersion"],
		["CacheNodeIdsToRemove"] = args["CacheNodeIdsToRemove"],
	}
	asserts.AssertPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NodeGroup = { ["Status"] = true, ["NodeGroupMembers"] = true, ["Slots"] = true, ["NodeGroupId"] = true, ["PrimaryEndpoint"] = true, nil }

function asserts.AssertNodeGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["NodeGroupMembers"] then asserts.AssertNodeGroupMemberList(struct["NodeGroupMembers"]) end
	if struct["Slots"] then asserts.AssertString(struct["Slots"]) end
	if struct["NodeGroupId"] then asserts.AssertString(struct["NodeGroupId"]) end
	if struct["PrimaryEndpoint"] then asserts.AssertEndpoint(struct["PrimaryEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeGroup[k], "NodeGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroup
-- <p>Represents a collection of cache nodes in a replication group. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The current state of this replication group - <code>creating</code>, <code>available</code>, etc.</p>
-- * NodeGroupMembers [NodeGroupMemberList] <p>A list containing information about individual nodes within the node group (shard).</p>
-- * Slots [String] <p>The keyspace for this node group (shard).</p>
-- * NodeGroupId [String] <p>The identifier for the node group (shard). A Redis (cluster mode disabled) replication group contains only 1 node group; therefore, the node group ID is 0001. A Redis (cluster mode enabled) replication group contains 1 to 15 node groups numbered 0001 to 0015. </p>
-- * PrimaryEndpoint [Endpoint] <p>The endpoint of the primary node in this node group (shard).</p>
-- @return NodeGroup structure as a key-value pair table
function M.NodeGroup(args)
	assert(args, "You must provide an argument table when creating NodeGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NodeGroupMembers"] = args["NodeGroupMembers"],
		["Slots"] = args["Slots"],
		["NodeGroupId"] = args["NodeGroupId"],
		["PrimaryEndpoint"] = args["PrimaryEndpoint"],
	}
	asserts.AssertNodeGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecurringCharge = { ["RecurringChargeAmount"] = true, ["RecurringChargeFrequency"] = true, nil }

function asserts.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["RecurringChargeAmount"] then asserts.AssertDouble(struct["RecurringChargeAmount"]) end
	if struct["RecurringChargeFrequency"] then asserts.AssertString(struct["RecurringChargeFrequency"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecurringCharge[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- <p>Contains the specific price and frequency of a recurring charges for a reserved cache node, or for a reserved cache node offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurringChargeAmount [Double] <p>The monetary amount of the recurring charge.</p>
-- * RecurringChargeFrequency [String] <p>The frequency of the recurring charge.</p>
-- @return RecurringCharge structure as a key-value pair table
function M.RecurringCharge(args)
	assert(args, "You must provide an argument table when creating RecurringCharge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecurringChargeAmount"] = args["RecurringChargeAmount"],
		["RecurringChargeFrequency"] = args["RecurringChargeFrequency"],
	}
	asserts.AssertRecurringCharge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationGroupResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertModifyReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationGroupResult[k], "ModifyReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return ModifyReplicationGroupResult structure as a key-value pair table
function M.ModifyReplicationGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertModifyReplicationGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsFromResourceMessage = { ["ResourceName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then asserts.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceMessage[k], "RemoveTagsFromResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceMessage
-- <p>Represents the input of a <code>RemoveTagsFromResource</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) of the resource from which you want the tags removed, for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- * TagKeys [KeyList] <p>A list of <code>TagKeys</code> identifying the tags you want removed from the named resource.</p>
-- Required key: ResourceName
-- Required key: TagKeys
-- @return RemoveTagsFromResourceMessage structure as a key-value pair table
function M.RemoveTagsFromResourceMessage(args)
	assert(args, "You must provide an argument table when creating RemoveTagsFromResourceMessage")
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
	asserts.AssertRemoveTagsFromResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSnapshotsListMessage = { ["Marker"] = true, ["Snapshots"] = true, nil }

function asserts.AssertDescribeSnapshotsListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsListMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Snapshots"] then asserts.AssertSnapshotList(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotsListMessage[k], "DescribeSnapshotsListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsListMessage
-- <p>Represents the output of a <code>DescribeSnapshots</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * Snapshots [SnapshotList] <p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>
-- @return DescribeSnapshotsListMessage structure as a key-value pair table
function M.DescribeSnapshotsListMessage(args)
	assert(args, "You must provide an argument table when creating DescribeSnapshotsListMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Snapshots"] = args["Snapshots"],
	}
	asserts.AssertDescribeSnapshotsListMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheClusterResult = { ["CacheCluster"] = true, nil }

function asserts.AssertCreateCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then asserts.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheClusterResult[k], "CreateCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheCluster [CacheCluster] 
-- @return CreateCacheClusterResult structure as a key-value pair table
function M.CreateCacheClusterResult(args)
	assert(args, "You must provide an argument table when creating CreateCacheClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheCluster"] = args["CacheCluster"],
	}
	asserts.AssertCreateCacheClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAllowedNodeTypeModificationsMessage = { ["CacheClusterId"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertListAllowedNodeTypeModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAllowedNodeTypeModificationsMessage to be of type 'table'")
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAllowedNodeTypeModificationsMessage[k], "ListAllowedNodeTypeModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAllowedNodeTypeModificationsMessage
-- <p>The input parameters for the <code>ListAllowedNodeTypeModifications</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheClusterId [String] <p>The name of the cluster you want to scale up to a larger node instanced type. ElastiCache uses the cluster id to identify the current node type of this cluster and from that to create a list of node types you can scale up to.</p> <important> <p>You must provide a value for either the <code>CacheClusterId</code> or the <code>ReplicationGroupId</code>.</p> </important>
-- * ReplicationGroupId [String] <p>The name of the replication group want to scale up to a larger node type. ElastiCache uses the replication group id to identify the current node type being used by this replication group, and from that to create a list of node types you can scale up to.</p> <important> <p>You must provide a value for either the <code>CacheClusterId</code> or the <code>ReplicationGroupId</code>.</p> </important>
-- @return ListAllowedNodeTypeModificationsMessage structure as a key-value pair table
function M.ListAllowedNodeTypeModificationsMessage(args)
	assert(args, "You must provide an argument table when creating ListAllowedNodeTypeModificationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheClusterId"] = args["CacheClusterId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertListAllowedNodeTypeModificationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheCluster = { ["CacheClusterId"] = true, ["ReplicationGroupId"] = true, ["CacheClusterStatus"] = true, ["SnapshotRetentionLimit"] = true, ["ClientDownloadLandingPage"] = true, ["PendingModifiedValues"] = true, ["Engine"] = true, ["CacheSecurityGroups"] = true, ["NumCacheNodes"] = true, ["AutoMinorVersionUpgrade"] = true, ["TransitEncryptionEnabled"] = true, ["SecurityGroups"] = true, ["CacheNodeType"] = true, ["PreferredMaintenanceWindow"] = true, ["CacheSubnetGroupName"] = true, ["AuthTokenEnabled"] = true, ["AtRestEncryptionEnabled"] = true, ["EngineVersion"] = true, ["CacheNodes"] = true, ["ConfigurationEndpoint"] = true, ["CacheClusterCreateTime"] = true, ["PreferredAvailabilityZone"] = true, ["SnapshotWindow"] = true, ["NotificationConfiguration"] = true, ["CacheParameterGroup"] = true, nil }

function asserts.AssertCacheCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheCluster to be of type 'table'")
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["CacheClusterStatus"] then asserts.AssertString(struct["CacheClusterStatus"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["ClientDownloadLandingPage"] then asserts.AssertString(struct["ClientDownloadLandingPage"]) end
	if struct["PendingModifiedValues"] then asserts.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["CacheSecurityGroups"] then asserts.AssertCacheSecurityGroupMembershipList(struct["CacheSecurityGroups"]) end
	if struct["NumCacheNodes"] then asserts.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["TransitEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["TransitEncryptionEnabled"]) end
	if struct["SecurityGroups"] then asserts.AssertSecurityGroupMembershipList(struct["SecurityGroups"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["AuthTokenEnabled"] then asserts.AssertBooleanOptional(struct["AuthTokenEnabled"]) end
	if struct["AtRestEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["AtRestEncryptionEnabled"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodes"] then asserts.AssertCacheNodeList(struct["CacheNodes"]) end
	if struct["ConfigurationEndpoint"] then asserts.AssertEndpoint(struct["ConfigurationEndpoint"]) end
	if struct["CacheClusterCreateTime"] then asserts.AssertTStamp(struct["CacheClusterCreateTime"]) end
	if struct["PreferredAvailabilityZone"] then asserts.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["NotificationConfiguration"] then asserts.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["CacheParameterGroup"] then asserts.AssertCacheParameterGroupStatus(struct["CacheParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheCluster[k], "CacheCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheCluster
-- <p>Contains all of the attributes of a specific cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheClusterId [String] <p>The user-supplied identifier of the cluster. This identifier is a unique key that identifies a cluster.</p>
-- * ReplicationGroupId [String] <p>The replication group to which this cluster belongs. If this field is empty, the cluster is not associated with any replication group.</p>
-- * CacheClusterStatus [String] <p>The current state of this cluster, one of the following values: <code>available</code>, <code>creating</code>, <code>deleted</code>, <code>deleting</code>, <code>incompatible-network</code>, <code>modifying</code>, <code>rebooting cluster nodes</code>, <code>restore-failed</code>, or <code>snapshotting</code>.</p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p> <important> <p> If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.</p> </important>
-- * ClientDownloadLandingPage [String] <p>The URL of the web page where you can download the latest ElastiCache client library.</p>
-- * PendingModifiedValues [PendingModifiedValues] 
-- * Engine [String] <p>The name of the cache engine (<code>memcached</code> or <code>redis</code>) to be used for this cluster.</p>
-- * CacheSecurityGroups [CacheSecurityGroupMembershipList] <p>A list of cache security group elements, composed of name and status sub-elements.</p>
-- * NumCacheNodes [IntegerOptional] <p>The number of cache nodes in the cluster.</p> <p>For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.</p>
-- * AutoMinorVersionUpgrade [Boolean] <p>This parameter is currently disabled.</p>
-- * TransitEncryptionEnabled [BooleanOptional] <p>A flag that enables in-transit encryption when set to <code>true</code>.</p> <p>You cannot modify the value of <code>TransitEncryptionEnabled</code> after the cluster is created. To enable in-transit encryption on a cluster you must set <code>TransitEncryptionEnabled</code> to <code>true</code> when you create a cluster.</p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p>
-- * SecurityGroups [SecurityGroupMembershipList] <p>A list of VPC Security Groups associated with the cluster.</p>
-- * CacheNodeType [String] <p>The name of the compute and memory capacity node type for the cluster.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group associated with the cluster.</p>
-- * AuthTokenEnabled [BooleanOptional] <p>A flag that enables using an <code>AuthToken</code> (password) when issuing Redis commands.</p> <p>Default: <code>false</code> </p>
-- * AtRestEncryptionEnabled [BooleanOptional] <p>A flag that enables encryption at-rest when set to <code>true</code>.</p> <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the cluster is created. To enable at-rest encryption on a cluster you must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create a cluster.</p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p>
-- * EngineVersion [String] <p>The version of the cache engine that is used in this cluster.</p>
-- * CacheNodes [CacheNodeList] <p>A list of cache nodes that are members of the cluster.</p>
-- * ConfigurationEndpoint [Endpoint] <p>Represents a Memcached cluster endpoint which, if Automatic Discovery is enabled on the cluster, can be used by an application to connect to any node in the cluster. The configuration endpoint will always have <code>.cfg</code> in it.</p> <p>Example: <code>mem-3.9dvc4r<u>.cfg</u>.usw2.cache.amazonaws.com:11211</code> </p>
-- * CacheClusterCreateTime [TStamp] <p>The date and time when the cluster was created.</p>
-- * PreferredAvailabilityZone [String] <p>The name of the Availability Zone in which the cluster is located or "Multiple" if the cache nodes are located in different Availability Zones.</p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cluster.</p> <p>Example: <code>05:00-09:00</code> </p>
-- * NotificationConfiguration [NotificationConfiguration] <p>Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS). </p>
-- * CacheParameterGroup [CacheParameterGroupStatus] <p>Status of the cache parameter group.</p>
-- @return CacheCluster structure as a key-value pair table
function M.CacheCluster(args)
	assert(args, "You must provide an argument table when creating CacheCluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheClusterId"] = args["CacheClusterId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["CacheClusterStatus"] = args["CacheClusterStatus"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["ClientDownloadLandingPage"] = args["ClientDownloadLandingPage"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
		["Engine"] = args["Engine"],
		["CacheSecurityGroups"] = args["CacheSecurityGroups"],
		["NumCacheNodes"] = args["NumCacheNodes"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["TransitEncryptionEnabled"] = args["TransitEncryptionEnabled"],
		["SecurityGroups"] = args["SecurityGroups"],
		["CacheNodeType"] = args["CacheNodeType"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
		["AuthTokenEnabled"] = args["AuthTokenEnabled"],
		["AtRestEncryptionEnabled"] = args["AtRestEncryptionEnabled"],
		["EngineVersion"] = args["EngineVersion"],
		["CacheNodes"] = args["CacheNodes"],
		["ConfigurationEndpoint"] = args["ConfigurationEndpoint"],
		["CacheClusterCreateTime"] = args["CacheClusterCreateTime"],
		["PreferredAvailabilityZone"] = args["PreferredAvailabilityZone"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["NotificationConfiguration"] = args["NotificationConfiguration"],
		["CacheParameterGroup"] = args["CacheParameterGroup"],
	}
	asserts.AssertCacheCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheNode = { ["CacheNodeId"] = true, ["Endpoint"] = true, ["CacheNodeStatus"] = true, ["ParameterGroupStatus"] = true, ["CacheNodeCreateTime"] = true, ["CustomerAvailabilityZone"] = true, ["SourceCacheNodeId"] = true, nil }

function asserts.AssertCacheNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNode to be of type 'table'")
	if struct["CacheNodeId"] then asserts.AssertString(struct["CacheNodeId"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["CacheNodeStatus"] then asserts.AssertString(struct["CacheNodeStatus"]) end
	if struct["ParameterGroupStatus"] then asserts.AssertString(struct["ParameterGroupStatus"]) end
	if struct["CacheNodeCreateTime"] then asserts.AssertTStamp(struct["CacheNodeCreateTime"]) end
	if struct["CustomerAvailabilityZone"] then asserts.AssertString(struct["CustomerAvailabilityZone"]) end
	if struct["SourceCacheNodeId"] then asserts.AssertString(struct["SourceCacheNodeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheNode[k], "CacheNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNode
-- <p>Represents an individual cache node within a cluster. Each cache node runs its own instance of the cluster's protocol-compliant caching software - either Memcached or Redis.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheNodeId [String] <p>The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The combination of cluster ID and node ID uniquely identifies every cache node used in a customer's AWS account.</p>
-- * Endpoint [Endpoint] <p>The hostname for connecting to this cache node.</p>
-- * CacheNodeStatus [String] <p>The current state of this cache node.</p>
-- * ParameterGroupStatus [String] <p>The status of the parameter group applied to this cache node.</p>
-- * CacheNodeCreateTime [TStamp] <p>The date and time when the cache node was created.</p>
-- * CustomerAvailabilityZone [String] <p>The Availability Zone where this node was created and now resides.</p>
-- * SourceCacheNodeId [String] <p>The ID of the primary node to which this read replica node is synchronized. If this field is empty, this node is not associated with a primary cluster.</p>
-- @return CacheNode structure as a key-value pair table
function M.CacheNode(args)
	assert(args, "You must provide an argument table when creating CacheNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheNodeId"] = args["CacheNodeId"],
		["Endpoint"] = args["Endpoint"],
		["CacheNodeStatus"] = args["CacheNodeStatus"],
		["ParameterGroupStatus"] = args["ParameterGroupStatus"],
		["CacheNodeCreateTime"] = args["CacheNodeCreateTime"],
		["CustomerAvailabilityZone"] = args["CustomerAvailabilityZone"],
		["SourceCacheNodeId"] = args["SourceCacheNodeId"],
	}
	asserts.AssertCacheNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Event = { ["Date"] = true, ["Message"] = true, ["SourceIdentifier"] = true, ["SourceType"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster, adding or removing a cache node, or rebooting a node.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Date [TStamp] <p>The date and time when the event occurred.</p>
-- * Message [String] <p>The text of the event.</p>
-- * SourceIdentifier [String] <p>The identifier for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.</p>
-- * SourceType [SourceType] <p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>
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
		["Date"] = args["Date"],
		["Message"] = args["Message"],
		["SourceIdentifier"] = args["SourceIdentifier"],
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

keys.ModifyCacheSubnetGroupResult = { ["CacheSubnetGroup"] = true, nil }

function asserts.AssertModifyCacheSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheSubnetGroupResult to be of type 'table'")
	if struct["CacheSubnetGroup"] then asserts.AssertCacheSubnetGroup(struct["CacheSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyCacheSubnetGroupResult[k], "ModifyCacheSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSubnetGroup [CacheSubnetGroup] 
-- @return ModifyCacheSubnetGroupResult structure as a key-value pair table
function M.ModifyCacheSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyCacheSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSubnetGroup"] = args["CacheSubnetGroup"],
	}
	asserts.AssertModifyCacheSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheEngineVersionMessage = { ["Marker"] = true, ["CacheEngineVersions"] = true, nil }

function asserts.AssertCacheEngineVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheEngineVersionMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheEngineVersions"] then asserts.AssertCacheEngineVersionList(struct["CacheEngineVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheEngineVersionMessage[k], "CacheEngineVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheEngineVersionMessage
-- <p>Represents the output of a <a>DescribeCacheEngineVersions</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheEngineVersions [CacheEngineVersionList] <p>A list of cache engine version details. Each element in the list contains detailed information about one cache engine version.</p>
-- @return CacheEngineVersionMessage structure as a key-value pair table
function M.CacheEngineVersionMessage(args)
	assert(args, "You must provide an argument table when creating CacheEngineVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheEngineVersions"] = args["CacheEngineVersions"],
	}
	asserts.AssertCacheEngineVersionMessage(all_args)
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
	if struct["SubnetAvailabilityZone"] then asserts.AssertAvailabilityZone(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subnet[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- <p>Represents the subnet associated with a cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIdentifier [String] <p>The unique identifier for the subnet.</p>
-- * SubnetAvailabilityZone [AvailabilityZone] <p>The Availability Zone associated with the subnet.</p>
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

keys.ModifyReplicationGroupMessage = { ["CacheSecurityGroupNames"] = true, ["CacheParameterGroupName"] = true, ["NodeGroupId"] = true, ["PrimaryClusterId"] = true, ["AutoMinorVersionUpgrade"] = true, ["ReplicationGroupId"] = true, ["SecurityGroupIds"] = true, ["SnapshotRetentionLimit"] = true, ["NotificationTopicStatus"] = true, ["PreferredMaintenanceWindow"] = true, ["SnapshotWindow"] = true, ["EngineVersion"] = true, ["SnapshottingClusterId"] = true, ["NotificationTopicArn"] = true, ["ReplicationGroupDescription"] = true, ["ApplyImmediately"] = true, ["AutomaticFailoverEnabled"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertModifyReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	if struct["CacheSecurityGroupNames"] then asserts.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["NodeGroupId"] then asserts.AssertString(struct["NodeGroupId"]) end
	if struct["PrimaryClusterId"] then asserts.AssertString(struct["PrimaryClusterId"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicStatus"] then asserts.AssertString(struct["NotificationTopicStatus"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["SnapshottingClusterId"] then asserts.AssertString(struct["SnapshottingClusterId"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["ReplicationGroupDescription"] then asserts.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["AutomaticFailoverEnabled"] then asserts.AssertBooleanOptional(struct["AutomaticFailoverEnabled"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationGroupMessage[k], "ModifyReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupMessage
-- <p>Represents the input of a <code>ModifyReplicationGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroupNames [CacheSecurityGroupNameList] <p>A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible.</p> <p>This parameter can be used only with replication group containing clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC).</p> <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be <code>Default</code>.</p>
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group to apply to all of the clusters in this replication group. This change is asynchronously applied as soon as possible for parameters when the <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>
-- * NodeGroupId [String] <p>Deprecated. This parameter is not used.</p>
-- * PrimaryClusterId [String] <p>For replication groups with a single primary, if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. The nodes of all other clusters in the replication group are read replicas.</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>This parameter is currently disabled.</p>
-- * ReplicationGroupId [String] <p>The identifier of the replication group to modify.</p>
-- * SecurityGroupIds [SecurityGroupIdsList] <p>Specifies the VPC Security Groups associated with the clusters in the replication group.</p> <p>This parameter can be used only with replication group containing clusters running in an Amazon Virtual Private Cloud (Amazon VPC).</p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic node group (shard) snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p> <p> <b>Important</b> If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.</p>
-- * NotificationTopicStatus [String] <p>The status of the Amazon SNS notification topic for the replication group. Notifications are sent only if the status is <code>active</code>.</p> <p>Valid values: <code>active</code> | <code>inactive</code> </p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of the node group (shard) specified by <code>SnapshottingClusterId</code>.</p> <p>Example: <code>05:00-09:00</code> </p> <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.</p>
-- * EngineVersion [String] <p>The upgraded version of the cache engine to be run on the clusters in the replication group.</p> <p> <b>Important:</b> You can upgrade to a newer engine version (see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing replication group and create it anew with the earlier engine version. </p>
-- * SnapshottingClusterId [String] <p>The cluster ID that is used as the daily snapshot source for the replication group. This parameter cannot be set for Redis (cluster mode enabled) replication groups.</p>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p> <note> <p>The Amazon SNS topic owner must be same as the replication group owner. </p> </note>
-- * ReplicationGroupDescription [String] <p>A description for the replication group. Maximum length is 255 characters.</p>
-- * ApplyImmediately [Boolean] <p>If <code>true</code>, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the replication group.</p> <p>If <code>false</code>, changes to the nodes in the replication group are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.</p> <p>Valid values: <code>true</code> | <code>false</code> </p> <p>Default: <code>false</code> </p>
-- * AutomaticFailoverEnabled [BooleanOptional] <p>Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.</p> <p>Valid values: <code>true</code> | <code>false</code> </p> <p>Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:</p> <ul> <li> <p>Redis versions earlier than 2.8.6.</p> </li> <li> <p>Redis (cluster mode disabled): T1 and T2 cache node types.</p> </li> <li> <p>Redis (cluster mode enabled): T1 node types.</p> </li> </ul>
-- * CacheNodeType [String] <p>A valid cache node type that you want to scale this replication group to.</p>
-- Required key: ReplicationGroupId
-- @return ModifyReplicationGroupMessage structure as a key-value pair table
function M.ModifyReplicationGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroupNames"] = args["CacheSecurityGroupNames"],
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["NodeGroupId"] = args["NodeGroupId"],
		["PrimaryClusterId"] = args["PrimaryClusterId"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["NotificationTopicStatus"] = args["NotificationTopicStatus"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["EngineVersion"] = args["EngineVersion"],
		["SnapshottingClusterId"] = args["SnapshottingClusterId"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["ReplicationGroupDescription"] = args["ReplicationGroupDescription"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["AutomaticFailoverEnabled"] = args["AutomaticFailoverEnabled"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertModifyReplicationGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReplicationGroupsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertDescribeReplicationGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReplicationGroupsMessage[k], "DescribeReplicationGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationGroupsMessage
-- <p>Represents the input of a <code>DescribeReplicationGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * ReplicationGroupId [String] <p>The identifier for the replication group to be described. This parameter is not case sensitive.</p> <p>If you do not specify this parameter, information about all replication groups is returned.</p>
-- @return DescribeReplicationGroupsMessage structure as a key-value pair table
function M.DescribeReplicationGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReplicationGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertDescribeReplicationGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheSubnetGroupMessage = { ["SubnetIds"] = true, ["CacheSubnetGroupDescription"] = true, ["CacheSubnetGroupName"] = true, nil }

function asserts.AssertCreateCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	assert(struct["CacheSubnetGroupDescription"], "Expected key CacheSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["CacheSubnetGroupDescription"] then asserts.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheSubnetGroupMessage[k], "CreateCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSubnetGroupMessage
-- <p>Represents the input of a <code>CreateCacheSubnetGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>A list of VPC subnet IDs for the cache subnet group.</p>
-- * CacheSubnetGroupDescription [String] <p>A description for the cache subnet group.</p>
-- * CacheSubnetGroupName [String] <p>A name for the cache subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p> <p>Example: <code>mysubnetgroup</code> </p>
-- Required key: CacheSubnetGroupName
-- Required key: CacheSubnetGroupDescription
-- Required key: SubnetIds
-- @return CreateCacheSubnetGroupMessage structure as a key-value pair table
function M.CreateCacheSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateCacheSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["CacheSubnetGroupDescription"] = args["CacheSubnetGroupDescription"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
	}
	asserts.AssertCreateCacheSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheParameterGroupStatus = { ["CacheNodeIdsToReboot"] = true, ["CacheParameterGroupName"] = true, ["ParameterApplyStatus"] = true, nil }

function asserts.AssertCacheParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupStatus to be of type 'table'")
	if struct["CacheNodeIdsToReboot"] then asserts.AssertCacheNodeIdsList(struct["CacheNodeIdsToReboot"]) end
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheParameterGroupStatus[k], "CacheParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupStatus
-- <p>Status of the cache parameter group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheNodeIdsToReboot [CacheNodeIdsList] <p>A list of the cache node IDs which need to be rebooted for parameter changes to be applied. A node ID is a numeric identifier (0001, 0002, etc.).</p>
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group.</p>
-- * ParameterApplyStatus [String] <p>The status of parameter updates.</p>
-- @return CacheParameterGroupStatus structure as a key-value pair table
function M.CacheParameterGroupStatus(args)
	assert(args, "You must provide an argument table when creating CacheParameterGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheNodeIdsToReboot"] = args["CacheNodeIdsToReboot"],
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
	}
	asserts.AssertCacheParameterGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagListMessage = { ["TagList"] = true, nil }

function asserts.AssertTagListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagListMessage to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagListMessage[k], "TagListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagListMessage
-- <p>Represents the output from the <code>AddTagsToResource</code>, <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code> operations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>A list of cost allocation tags as key-value pairs.</p>
-- @return TagListMessage structure as a key-value pair table
function M.TagListMessage(args)
	assert(args, "You must provide an argument table when creating TagListMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertTagListMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationGroupResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertCreateReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationGroupResult[k], "CreateReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return CreateReplicationGroupResult structure as a key-value pair table
function M.CreateReplicationGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateReplicationGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertCreateReplicationGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootCacheClusterMessage = { ["CacheNodeIdsToReboot"] = true, ["CacheClusterId"] = true, nil }

function asserts.AssertRebootCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	assert(struct["CacheNodeIdsToReboot"], "Expected key CacheNodeIdsToReboot to exist in table")
	if struct["CacheNodeIdsToReboot"] then asserts.AssertCacheNodeIdsList(struct["CacheNodeIdsToReboot"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootCacheClusterMessage[k], "RebootCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootCacheClusterMessage
-- <p>Represents the input of a <code>RebootCacheCluster</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheNodeIdsToReboot [CacheNodeIdsList] <p>A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002, etc.). To reboot an entire cluster, specify all of the cache node IDs.</p>
-- * CacheClusterId [String] <p>The cluster identifier. This parameter is stored as a lowercase string.</p>
-- Required key: CacheClusterId
-- Required key: CacheNodeIdsToReboot
-- @return RebootCacheClusterMessage structure as a key-value pair table
function M.RebootCacheClusterMessage(args)
	assert(args, "You must provide an argument table when creating RebootCacheClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheNodeIdsToReboot"] = args["CacheNodeIdsToReboot"],
		["CacheClusterId"] = args["CacheClusterId"],
	}
	asserts.AssertRebootCacheClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheParameterGroupNameMessage = { ["CacheParameterGroupName"] = true, nil }

function asserts.AssertCacheParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupNameMessage to be of type 'table'")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheParameterGroupNameMessage[k], "CacheParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupNameMessage
-- <p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>ModifyCacheParameterGroup</code> </p> </li> <li> <p> <code>ResetCacheParameterGroup</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group.</p>
-- @return CacheParameterGroupNameMessage structure as a key-value pair table
function M.CacheParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating CacheParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
	}
	asserts.AssertCacheParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedCacheNodesOfferingMessage = { ["Marker"] = true, ["ReservedCacheNodesOfferings"] = true, nil }

function asserts.AssertReservedCacheNodesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodesOfferingMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedCacheNodesOfferings"] then asserts.AssertReservedCacheNodesOfferingList(struct["ReservedCacheNodesOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedCacheNodesOfferingMessage[k], "ReservedCacheNodesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodesOfferingMessage
-- <p>Represents the output of a <code>DescribeReservedCacheNodesOfferings</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * ReservedCacheNodesOfferings [ReservedCacheNodesOfferingList] <p>A list of reserved cache node offerings. Each element in the list contains detailed information about one offering.</p>
-- @return ReservedCacheNodesOfferingMessage structure as a key-value pair table
function M.ReservedCacheNodesOfferingMessage(args)
	assert(args, "You must provide an argument table when creating ReservedCacheNodesOfferingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedCacheNodesOfferings"] = args["ReservedCacheNodesOfferings"],
	}
	asserts.AssertReservedCacheNodesOfferingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservedCacheNodesOfferingsMessage = { ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedCacheNodesOfferingId"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Duration"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertDescribeReservedCacheNodesOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedCacheNodesOfferingsMessage to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedCacheNodesOfferingId"] then asserts.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedCacheNodesOfferingsMessage[k], "DescribeReservedCacheNodesOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedCacheNodesOfferingsMessage
-- <p>Represents the input of a <code>DescribeReservedCacheNodesOfferings</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"</code> </p>
-- * ProductDescription [String] <p>The product description filter value. Use this parameter to show only the available offerings matching the specified product description.</p>
-- * ReservedCacheNodesOfferingId [String] <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * Duration [String] <p>Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- * CacheNodeType [String] <p>The cache node type filter value. Use this parameter to show only the available offerings matching the specified cache node type.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- @return DescribeReservedCacheNodesOfferingsMessage structure as a key-value pair table
function M.DescribeReservedCacheNodesOfferingsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedCacheNodesOfferingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["ProductDescription"] = args["ProductDescription"],
		["ReservedCacheNodesOfferingId"] = args["ReservedCacheNodesOfferingId"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Duration"] = args["Duration"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertDescribeReservedCacheNodesOfferingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheClustersMessage = { ["Marker"] = true, ["ShowCacheNodeInfo"] = true, ["MaxRecords"] = true, ["CacheClusterId"] = true, ["ShowCacheClustersNotInReplicationGroups"] = true, nil }

function asserts.AssertDescribeCacheClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheClustersMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ShowCacheNodeInfo"] then asserts.AssertBooleanOptional(struct["ShowCacheNodeInfo"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ShowCacheClustersNotInReplicationGroups"] then asserts.AssertBooleanOptional(struct["ShowCacheClustersNotInReplicationGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheClustersMessage[k], "DescribeCacheClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheClustersMessage
-- <p>Represents the input of a <code>DescribeCacheClusters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * ShowCacheNodeInfo [BooleanOptional] <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request to retrieve information about the individual cache nodes.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * CacheClusterId [String] <p>The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.</p>
-- * ShowCacheClustersNotInReplicationGroups [BooleanOptional] <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.</p>
-- @return DescribeCacheClustersMessage structure as a key-value pair table
function M.DescribeCacheClustersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheClustersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ShowCacheNodeInfo"] = args["ShowCacheNodeInfo"],
		["MaxRecords"] = args["MaxRecords"],
		["CacheClusterId"] = args["CacheClusterId"],
		["ShowCacheClustersNotInReplicationGroups"] = args["ShowCacheClustersNotInReplicationGroups"],
	}
	asserts.AssertDescribeCacheClustersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceMessage = { ["ResourceName"] = true, nil }

function asserts.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceMessage[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- <p>The input parameters for the <code>ListTagsForResource</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags, for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>
-- Required key: ResourceName
-- @return ListTagsForResourceMessage structure as a key-value pair table
function M.ListTagsForResourceMessage(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceName"] = args["ResourceName"],
	}
	asserts.AssertListTagsForResourceMessage(all_args)
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
-- <p>Describes a name-value pair that is used to update the value of a parameter.</p>
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

keys.CacheParameterGroupsMessage = { ["Marker"] = true, ["CacheParameterGroups"] = true, nil }

function asserts.AssertCacheParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroups"] then asserts.AssertCacheParameterGroupList(struct["CacheParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheParameterGroupsMessage[k], "CacheParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupsMessage
-- <p>Represents the output of a <code>DescribeCacheParameterGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheParameterGroups [CacheParameterGroupList] <p>A list of cache parameter groups. Each element in the list contains detailed information about one cache parameter group.</p>
-- @return CacheParameterGroupsMessage structure as a key-value pair table
function M.CacheParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating CacheParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheParameterGroups"] = args["CacheParameterGroups"],
	}
	asserts.AssertCacheParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IncreaseReplicaCountMessage = { ["NewReplicaCount"] = true, ["ApplyImmediately"] = true, ["ReplicaConfiguration"] = true, ["ReplicationGroupId"] = true, nil }

function asserts.AssertIncreaseReplicaCountMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncreaseReplicaCountMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["ApplyImmediately"], "Expected key ApplyImmediately to exist in table")
	if struct["NewReplicaCount"] then asserts.AssertIntegerOptional(struct["NewReplicaCount"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["ReplicaConfiguration"] then asserts.AssertReplicaConfigurationList(struct["ReplicaConfiguration"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncreaseReplicaCountMessage[k], "IncreaseReplicaCountMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncreaseReplicaCountMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewReplicaCount [IntegerOptional] <p>The number of read replica nodes you want at the completion of this operation. For Redis (cluster mode disabled) replication groups, this is the number of replica nodes in the replication group. For Redis (cluster mode enabled) replication groups, this is the number of replica nodes in each of the replication group's node groups.</p>
-- * ApplyImmediately [Boolean] <p>If <code>True</code>, the number of replica nodes is increased immediately. If <code>False</code>, the number of replica nodes is increased during the next maintenance window.</p>
-- * ReplicaConfiguration [ReplicaConfigurationList] <p>A list of <code>ConfigureShard</code> objects that can be used to configure each shard in a Redis (cluster mode enabled) replication group. The <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>, <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
-- * ReplicationGroupId [String] <p>The id of the replication group to which you want to add replica nodes.</p>
-- Required key: ReplicationGroupId
-- Required key: ApplyImmediately
-- @return IncreaseReplicaCountMessage structure as a key-value pair table
function M.IncreaseReplicaCountMessage(args)
	assert(args, "You must provide an argument table when creating IncreaseReplicaCountMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewReplicaCount"] = args["NewReplicaCount"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["ReplicaConfiguration"] = args["ReplicaConfiguration"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
	}
	asserts.AssertIncreaseReplicaCountMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedCacheNode = { ["OfferingType"] = true, ["FixedPrice"] = true, ["ReservationARN"] = true, ["ReservedCacheNodesOfferingId"] = true, ["CacheNodeCount"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["ReservedCacheNodeId"] = true, ["State"] = true, ["ProductDescription"] = true, ["StartTime"] = true, ["Duration"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertReservedCacheNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNode to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservationARN"] then asserts.AssertString(struct["ReservationARN"]) end
	if struct["ReservedCacheNodesOfferingId"] then asserts.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["CacheNodeCount"] then asserts.AssertInteger(struct["CacheNodeCount"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedCacheNodeId"] then asserts.AssertString(struct["ReservedCacheNodeId"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedCacheNode[k], "ReservedCacheNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNode
-- <p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The offering type of this reserved cache node.</p>
-- * FixedPrice [Double] <p>The fixed price charged for this reserved cache node.</p>
-- * ReservationARN [String] <p>The Amazon Resource Name (ARN) of the reserved cache node.</p> <p>Example: <code>arn:aws:elasticache:us-east-1:123456789012:reserved-instance:ri-2017-03-27-08-33-25-582</code> </p>
-- * ReservedCacheNodesOfferingId [String] <p>The offering identifier.</p>
-- * CacheNodeCount [Integer] <p>The number of cache nodes that have been reserved.</p>
-- * UsagePrice [Double] <p>The hourly price charged for this reserved cache node.</p>
-- * RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved cache node.</p>
-- * ReservedCacheNodeId [String] <p>The unique identifier for the reservation.</p>
-- * State [String] <p>The state of the reserved cache node.</p>
-- * ProductDescription [String] <p>The description of the reserved cache node.</p>
-- * StartTime [TStamp] <p>The time the reservation started.</p>
-- * Duration [Integer] <p>The duration of the reservation in seconds.</p>
-- * CacheNodeType [String] <p>The cache node type for the reserved cache nodes.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- @return ReservedCacheNode structure as a key-value pair table
function M.ReservedCacheNode(args)
	assert(args, "You must provide an argument table when creating ReservedCacheNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["ReservationARN"] = args["ReservationARN"],
		["ReservedCacheNodesOfferingId"] = args["ReservedCacheNodesOfferingId"],
		["CacheNodeCount"] = args["CacheNodeCount"],
		["UsagePrice"] = args["UsagePrice"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ReservedCacheNodeId"] = args["ReservedCacheNodeId"],
		["State"] = args["State"],
		["ProductDescription"] = args["ProductDescription"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertReservedCacheNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheSubnetGroupResult = { ["CacheSubnetGroup"] = true, nil }

function asserts.AssertCreateCacheSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSubnetGroupResult to be of type 'table'")
	if struct["CacheSubnetGroup"] then asserts.AssertCacheSubnetGroup(struct["CacheSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheSubnetGroupResult[k], "CreateCacheSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSubnetGroup [CacheSubnetGroup] 
-- @return CreateCacheSubnetGroupResult structure as a key-value pair table
function M.CreateCacheSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateCacheSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSubnetGroup"] = args["CacheSubnetGroup"],
	}
	asserts.AssertCreateCacheSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailabilityZone = { ["Name"] = true, nil }

function asserts.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZone[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Describes an Availability Zone in which the cluster is launched.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the Availability Zone.</p>
-- @return AvailabilityZone structure as a key-value pair table
function M.AvailabilityZone(args)
	assert(args, "You must provide an argument table when creating AvailabilityZone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertAvailabilityZone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Snapshot = { ["CacheParameterGroupName"] = true, ["CacheClusterId"] = true, ["ReplicationGroupId"] = true, ["SnapshotRetentionLimit"] = true, ["NodeSnapshots"] = true, ["CacheNodeType"] = true, ["Engine"] = true, ["VpcId"] = true, ["NumCacheNodes"] = true, ["AutoMinorVersionUpgrade"] = true, ["AutomaticFailover"] = true, ["PreferredMaintenanceWindow"] = true, ["CacheSubnetGroupName"] = true, ["SnapshotName"] = true, ["SnapshotStatus"] = true, ["EngineVersion"] = true, ["ReplicationGroupDescription"] = true, ["TopicArn"] = true, ["NumNodeGroups"] = true, ["CacheClusterCreateTime"] = true, ["PreferredAvailabilityZone"] = true, ["SnapshotSource"] = true, ["SnapshotWindow"] = true, ["Port"] = true, nil }

function asserts.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NodeSnapshots"] then asserts.AssertNodeSnapshotList(struct["NodeSnapshots"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["NumCacheNodes"] then asserts.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["AutomaticFailover"] then asserts.AssertAutomaticFailoverStatus(struct["AutomaticFailover"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	if struct["SnapshotStatus"] then asserts.AssertString(struct["SnapshotStatus"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationGroupDescription"] then asserts.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["TopicArn"] then asserts.AssertString(struct["TopicArn"]) end
	if struct["NumNodeGroups"] then asserts.AssertIntegerOptional(struct["NumNodeGroups"]) end
	if struct["CacheClusterCreateTime"] then asserts.AssertTStamp(struct["CacheClusterCreateTime"]) end
	if struct["PreferredAvailabilityZone"] then asserts.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotSource"] then asserts.AssertString(struct["SnapshotSource"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.Snapshot[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- <p>Represents a copy of an entire Redis cluster as of the time when the snapshot was taken.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The cache parameter group that is associated with the source cluster.</p>
-- * CacheClusterId [String] <p>The user-supplied identifier of the source cluster.</p>
-- * ReplicationGroupId [String] <p>The unique identifier of the source replication group.</p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>For an automatic snapshot, the number of days for which ElastiCache retains the snapshot before deleting it.</p> <p>For manual snapshots, this field reflects the <code>SnapshotRetentionLimit</code> for the source cluster when the snapshot was created. This field is otherwise ignored: Manual snapshots do not expire, and can only be deleted using the <code>DeleteSnapshot</code> operation. </p> <p> <b>Important</b> If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.</p>
-- * NodeSnapshots [NodeSnapshotList] <p>A list of the cache nodes in the source cluster.</p>
-- * CacheNodeType [String] <p>The name of the compute and memory capacity node type for the source cluster.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- * Engine [String] <p>The name of the cache engine (<code>memcached</code> or <code>redis</code>) used by the source cluster.</p>
-- * VpcId [String] <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group for the source cluster.</p>
-- * NumCacheNodes [IntegerOptional] <p>The number of cache nodes in the source cluster.</p> <p>For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.</p>
-- * AutoMinorVersionUpgrade [Boolean] <p>This parameter is currently disabled.</p>
-- * AutomaticFailover [AutomaticFailoverStatus] <p>Indicates the status of Multi-AZ with automatic failover for the source Redis replication group.</p> <p>Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:</p> <ul> <li> <p>Redis versions earlier than 2.8.6.</p> </li> <li> <p>Redis (cluster mode disabled): T1 and T2 cache node types.</p> </li> <li> <p>Redis (cluster mode enabled): T1 node types.</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group associated with the source cluster.</p>
-- * SnapshotName [String] <p>The name of a snapshot. For an automatic snapshot, the name is system-generated. For a manual snapshot, this is the user-provided name.</p>
-- * SnapshotStatus [String] <p>The status of the snapshot. Valid values: <code>creating</code> | <code>available</code> | <code>restoring</code> | <code>copying</code> | <code>deleting</code>.</p>
-- * EngineVersion [String] <p>The version of the cache engine version that is used by the source cluster.</p>
-- * ReplicationGroupDescription [String] <p>A description of the source replication group.</p>
-- * TopicArn [String] <p>The Amazon Resource Name (ARN) for the topic used by the source cluster for publishing notifications.</p>
-- * NumNodeGroups [IntegerOptional] <p>The number of node groups (shards) in this snapshot. When restoring from a snapshot, the number of node groups (shards) in the snapshot and in the restored replication group must be the same.</p>
-- * CacheClusterCreateTime [TStamp] <p>The date and time when the source cluster was created.</p>
-- * PreferredAvailabilityZone [String] <p>The name of the Availability Zone in which the source cluster is located.</p>
-- * SnapshotSource [String] <p>Indicates whether the snapshot is from an automatic backup (<code>automated</code>) or was created manually (<code>manual</code>).</p>
-- * SnapshotWindow [String] <p>The daily time range during which ElastiCache takes daily snapshots of the source cluster.</p>
-- * Port [IntegerOptional] <p>The port number used by each cache nodes in the source cluster.</p>
-- @return Snapshot structure as a key-value pair table
function M.Snapshot(args)
	assert(args, "You must provide an argument table when creating Snapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["CacheClusterId"] = args["CacheClusterId"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["NodeSnapshots"] = args["NodeSnapshots"],
		["CacheNodeType"] = args["CacheNodeType"],
		["Engine"] = args["Engine"],
		["VpcId"] = args["VpcId"],
		["NumCacheNodes"] = args["NumCacheNodes"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["AutomaticFailover"] = args["AutomaticFailover"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
		["SnapshotName"] = args["SnapshotName"],
		["SnapshotStatus"] = args["SnapshotStatus"],
		["EngineVersion"] = args["EngineVersion"],
		["ReplicationGroupDescription"] = args["ReplicationGroupDescription"],
		["TopicArn"] = args["TopicArn"],
		["NumNodeGroups"] = args["NumNodeGroups"],
		["CacheClusterCreateTime"] = args["CacheClusterCreateTime"],
		["PreferredAvailabilityZone"] = args["PreferredAvailabilityZone"],
		["SnapshotSource"] = args["SnapshotSource"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["Port"] = args["Port"],
	}
	asserts.AssertSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedCacheNodesOfferingResult = { ["ReservedCacheNode"] = true, nil }

function asserts.AssertPurchaseReservedCacheNodesOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedCacheNodesOfferingResult to be of type 'table'")
	if struct["ReservedCacheNode"] then asserts.AssertReservedCacheNode(struct["ReservedCacheNode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedCacheNodesOfferingResult[k], "PurchaseReservedCacheNodesOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedCacheNodesOfferingResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedCacheNode [ReservedCacheNode] 
-- @return PurchaseReservedCacheNodesOfferingResult structure as a key-value pair table
function M.PurchaseReservedCacheNodesOfferingResult(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedCacheNodesOfferingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedCacheNode"] = args["ReservedCacheNode"],
	}
	asserts.AssertPurchaseReservedCacheNodesOfferingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheNodeTypeSpecificValue = { ["Value"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertCacheNodeTypeSpecificValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNodeTypeSpecificValue to be of type 'table'")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheNodeTypeSpecificValue[k], "CacheNodeTypeSpecificValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNodeTypeSpecificValue
-- <p>A value that applies only to a certain cache node type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The value for the cache node type.</p>
-- * CacheNodeType [String] <p>The cache node type for which this value applies.</p>
-- @return CacheNodeTypeSpecificValue structure as a key-value pair table
function M.CacheNodeTypeSpecificValue(args)
	assert(args, "You must provide an argument table when creating CacheNodeTypeSpecificValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertCacheNodeTypeSpecificValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheSecurityGroupsMessage = { ["Marker"] = true, ["CacheSecurityGroupName"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeCacheSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheSecurityGroupsMessage[k], "DescribeCacheSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheSecurityGroupsMessage
-- <p>Represents the input of a <code>DescribeCacheSecurityGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * CacheSecurityGroupName [String] <p>The name of the cache security group to return details for.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- @return DescribeCacheSecurityGroupsMessage structure as a key-value pair table
function M.DescribeCacheSecurityGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheSecurityGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeCacheSecurityGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityGroupMembership = { ["Status"] = true, ["SecurityGroupId"] = true, nil }

function asserts.AssertSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SecurityGroupId"] then asserts.AssertString(struct["SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroupMembership[k], "SecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupMembership
-- <p>Represents a single cache security group and its status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the cache security group membership. The status changes whenever a cache security group is modified, or when the cache security groups assigned to a cluster are modified.</p>
-- * SecurityGroupId [String] <p>The identifier of the cache security group.</p>
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
		["SecurityGroupId"] = args["SecurityGroupId"],
	}
	asserts.AssertSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EngineDefaults = { ["Marker"] = true, ["CacheParameterGroupFamily"] = true, ["Parameters"] = true, ["CacheNodeTypeSpecificParameters"] = true, nil }

function asserts.AssertEngineDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineDefaults to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	if struct["CacheNodeTypeSpecificParameters"] then asserts.AssertCacheNodeTypeSpecificParametersList(struct["CacheNodeTypeSpecificParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.EngineDefaults[k], "EngineDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineDefaults
-- <p>Represents the output of a <code>DescribeEngineDefaultParameters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheParameterGroupFamily [String] <p>Specifies the name of the cache parameter group family to which the engine default parameters apply.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p>
-- * Parameters [ParametersList] <p>Contains a list of engine default parameters.</p>
-- * CacheNodeTypeSpecificParameters [CacheNodeTypeSpecificParametersList] <p>A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.</p>
-- @return EngineDefaults structure as a key-value pair table
function M.EngineDefaults(args)
	assert(args, "You must provide an argument table when creating EngineDefaults")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
		["Parameters"] = args["Parameters"],
		["CacheNodeTypeSpecificParameters"] = args["CacheNodeTypeSpecificParameters"],
	}
	asserts.AssertEngineDefaults(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NodeSnapshot = { ["SnapshotCreateTime"] = true, ["CacheNodeId"] = true, ["NodeGroupConfiguration"] = true, ["CacheClusterId"] = true, ["NodeGroupId"] = true, ["CacheNodeCreateTime"] = true, ["CacheSize"] = true, nil }

function asserts.AssertNodeSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeSnapshot to be of type 'table'")
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["CacheNodeId"] then asserts.AssertString(struct["CacheNodeId"]) end
	if struct["NodeGroupConfiguration"] then asserts.AssertNodeGroupConfiguration(struct["NodeGroupConfiguration"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["NodeGroupId"] then asserts.AssertString(struct["NodeGroupId"]) end
	if struct["CacheNodeCreateTime"] then asserts.AssertTStamp(struct["CacheNodeCreateTime"]) end
	if struct["CacheSize"] then asserts.AssertString(struct["CacheSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeSnapshot[k], "NodeSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeSnapshot
-- <p>Represents an individual cache node in a snapshot of a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotCreateTime [TStamp] <p>The date and time when the source node's metadata and cache data set was obtained for the snapshot.</p>
-- * CacheNodeId [String] <p>The cache node identifier for the node in the source cluster.</p>
-- * NodeGroupConfiguration [NodeGroupConfiguration] <p>The configuration for the source node group (shard).</p>
-- * CacheClusterId [String] <p>A unique identifier for the source cluster.</p>
-- * NodeGroupId [String] <p>A unique identifier for the source node group (shard).</p>
-- * CacheNodeCreateTime [TStamp] <p>The date and time when the cache node was created in the source cluster.</p>
-- * CacheSize [String] <p>The size of the cache on the source cache node.</p>
-- @return NodeSnapshot structure as a key-value pair table
function M.NodeSnapshot(args)
	assert(args, "You must provide an argument table when creating NodeSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotCreateTime"] = args["SnapshotCreateTime"],
		["CacheNodeId"] = args["CacheNodeId"],
		["NodeGroupConfiguration"] = args["NodeGroupConfiguration"],
		["CacheClusterId"] = args["CacheClusterId"],
		["NodeGroupId"] = args["NodeGroupId"],
		["CacheNodeCreateTime"] = args["CacheNodeCreateTime"],
		["CacheSize"] = args["CacheSize"],
	}
	asserts.AssertNodeSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheEngineVersion = { ["Engine"] = true, ["CacheEngineDescription"] = true, ["CacheEngineVersionDescription"] = true, ["CacheParameterGroupFamily"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertCacheEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheEngineVersion to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["CacheEngineDescription"] then asserts.AssertString(struct["CacheEngineDescription"]) end
	if struct["CacheEngineVersionDescription"] then asserts.AssertString(struct["CacheEngineVersionDescription"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheEngineVersion[k], "CacheEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheEngineVersion
-- <p>Provides all of the details about a particular cache engine version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the cache engine.</p>
-- * CacheEngineDescription [String] <p>The description of the cache engine.</p>
-- * CacheEngineVersionDescription [String] <p>The description of the cache engine version.</p>
-- * CacheParameterGroupFamily [String] <p>The name of the cache parameter group family associated with this cache engine.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p>
-- * EngineVersion [String] <p>The version number of the cache engine.</p>
-- @return CacheEngineVersion structure as a key-value pair table
function M.CacheEngineVersion(args)
	assert(args, "You must provide an argument table when creating CacheEngineVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["CacheEngineDescription"] = args["CacheEngineDescription"],
		["CacheEngineVersionDescription"] = args["CacheEngineVersionDescription"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
		["EngineVersion"] = args["EngineVersion"],
	}
	asserts.AssertCacheEngineVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertCreateSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotResult[k], "CreateSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return CreateSnapshotResult structure as a key-value pair table
function M.CreateSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertCreateSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopySnapshotMessage = { ["SourceSnapshotName"] = true, ["TargetSnapshotName"] = true, ["TargetBucket"] = true, nil }

function asserts.AssertCopySnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopySnapshotMessage to be of type 'table'")
	assert(struct["SourceSnapshotName"], "Expected key SourceSnapshotName to exist in table")
	assert(struct["TargetSnapshotName"], "Expected key TargetSnapshotName to exist in table")
	if struct["SourceSnapshotName"] then asserts.AssertString(struct["SourceSnapshotName"]) end
	if struct["TargetSnapshotName"] then asserts.AssertString(struct["TargetSnapshotName"]) end
	if struct["TargetBucket"] then asserts.AssertString(struct["TargetBucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopySnapshotMessage[k], "CopySnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopySnapshotMessage
-- <p>Represents the input of a <code>CopySnapshotMessage</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceSnapshotName [String] <p>The name of an existing snapshot from which to make a copy.</p>
-- * TargetSnapshotName [String] <p>A name for the snapshot copy. ElastiCache does not permit overwriting a snapshot, therefore this name must be unique within its context - ElastiCache or an Amazon S3 bucket if exporting.</p>
-- * TargetBucket [String] <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.</p> <p>When using this parameter to export a snapshot, be sure Amazon ElastiCache has the needed permissions to this S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the <i>Amazon ElastiCache User Guide</i>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html">Exporting a Snapshot</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
-- Required key: SourceSnapshotName
-- Required key: TargetSnapshotName
-- @return CopySnapshotMessage structure as a key-value pair table
function M.CopySnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CopySnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceSnapshotName"] = args["SourceSnapshotName"],
		["TargetSnapshotName"] = args["TargetSnapshotName"],
		["TargetBucket"] = args["TargetBucket"],
	}
	asserts.AssertCopySnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCacheParameterGroupMessage = { ["CacheParameterGroupName"] = true, ["CacheParameterGroupFamily"] = true, ["Description"] = true, nil }

function asserts.AssertCreateCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	assert(struct["CacheParameterGroupFamily"], "Expected key CacheParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCacheParameterGroupMessage[k], "CreateCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheParameterGroupMessage
-- <p>Represents the input of a <code>CreateCacheParameterGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>A user-specified name for the cache parameter group.</p>
-- * CacheParameterGroupFamily [String] <p>The name of the cache parameter group family that the cache parameter group can be used with.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p>
-- * Description [String] <p>A user-specified description for the cache parameter group.</p>
-- Required key: CacheParameterGroupName
-- Required key: CacheParameterGroupFamily
-- Required key: Description
-- @return CreateCacheParameterGroupMessage structure as a key-value pair table
function M.CreateCacheParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateCacheParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateCacheParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheParameterGroup = { ["CacheParameterGroupName"] = true, ["CacheParameterGroupFamily"] = true, ["Description"] = true, nil }

function asserts.AssertCacheParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroup to be of type 'table'")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheParameterGroup[k], "CacheParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroup
-- <p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group.</p>
-- * CacheParameterGroupFamily [String] <p>The name of the cache parameter group family that this cache parameter group is compatible with.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p>
-- * Description [String] <p>The description for this cache parameter group.</p>
-- @return CacheParameterGroup structure as a key-value pair table
function M.CacheParameterGroup(args)
	assert(args, "You must provide an argument table when creating CacheParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
		["Description"] = args["Description"],
	}
	asserts.AssertCacheParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NodeGroupConfiguration = { ["Slots"] = true, ["ReplicaAvailabilityZones"] = true, ["NodeGroupId"] = true, ["PrimaryAvailabilityZone"] = true, ["ReplicaCount"] = true, nil }

function asserts.AssertNodeGroupConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupConfiguration to be of type 'table'")
	if struct["Slots"] then asserts.AssertString(struct["Slots"]) end
	if struct["ReplicaAvailabilityZones"] then asserts.AssertAvailabilityZonesList(struct["ReplicaAvailabilityZones"]) end
	if struct["NodeGroupId"] then asserts.AssertAllowedNodeGroupId(struct["NodeGroupId"]) end
	if struct["PrimaryAvailabilityZone"] then asserts.AssertString(struct["PrimaryAvailabilityZone"]) end
	if struct["ReplicaCount"] then asserts.AssertIntegerOptional(struct["ReplicaCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.NodeGroupConfiguration[k], "NodeGroupConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupConfiguration
-- <p>Node group (shard) configuration options. Each node group (shard) configuration has the following: <code>Slots</code>, <code>PrimaryAvailabilityZone</code>, <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Slots [String] <p>A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format <code>startkey-endkey</code>.</p> <p>Example: <code>"0-3999"</code> </p>
-- * ReplicaAvailabilityZones [AvailabilityZonesList] <p>A list of Availability Zones to be used for the read replicas. The number of Availability Zones in this list must match the value of <code>ReplicaCount</code> or <code>ReplicasPerNodeGroup</code> if not specified.</p>
-- * NodeGroupId [AllowedNodeGroupId] <p>The 4-digit id for the node group these configuration values apply to.</p>
-- * PrimaryAvailabilityZone [String] <p>The Availability Zone where the primary node of this node group (shard) is launched.</p>
-- * ReplicaCount [IntegerOptional] <p>The number of read replica nodes in this node group (shard).</p>
-- @return NodeGroupConfiguration structure as a key-value pair table
function M.NodeGroupConfiguration(args)
	assert(args, "You must provide an argument table when creating NodeGroupConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Slots"] = args["Slots"],
		["ReplicaAvailabilityZones"] = args["ReplicaAvailabilityZones"],
		["NodeGroupId"] = args["NodeGroupId"],
		["PrimaryAvailabilityZone"] = args["PrimaryAvailabilityZone"],
		["ReplicaCount"] = args["ReplicaCount"],
	}
	asserts.AssertNodeGroupConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheClusterMessage = { ["Marker"] = true, ["CacheClusters"] = true, nil }

function asserts.AssertCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheClusterMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheClusters"] then asserts.AssertCacheClusterList(struct["CacheClusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheClusterMessage[k], "CacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheClusterMessage
-- <p>Represents the output of a <code>DescribeCacheClusters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheClusters [CacheClusterList] <p>A list of clusters. Each item in the list contains detailed information about one cluster.</p>
-- @return CacheClusterMessage structure as a key-value pair table
function M.CacheClusterMessage(args)
	assert(args, "You must provide an argument table when creating CacheClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheClusters"] = args["CacheClusters"],
	}
	asserts.AssertCacheClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyCacheClusterMessage = { ["CacheSecurityGroupNames"] = true, ["CacheParameterGroupName"] = true, ["CacheClusterId"] = true, ["NumCacheNodes"] = true, ["AutoMinorVersionUpgrade"] = true, ["ApplyImmediately"] = true, ["SecurityGroupIds"] = true, ["SnapshotRetentionLimit"] = true, ["NotificationTopicStatus"] = true, ["SnapshotWindow"] = true, ["EngineVersion"] = true, ["CacheNodeType"] = true, ["AZMode"] = true, ["NotificationTopicArn"] = true, ["NewAvailabilityZones"] = true, ["PreferredMaintenanceWindow"] = true, ["CacheNodeIdsToRemove"] = true, nil }

function asserts.AssertModifyCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["CacheSecurityGroupNames"] then asserts.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["NumCacheNodes"] then asserts.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicStatus"] then asserts.AssertString(struct["NotificationTopicStatus"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["AZMode"] then asserts.AssertAZMode(struct["AZMode"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["NewAvailabilityZones"] then asserts.AssertPreferredAvailabilityZoneList(struct["NewAvailabilityZones"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheNodeIdsToRemove"] then asserts.AssertCacheNodeIdsList(struct["CacheNodeIdsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyCacheClusterMessage[k], "ModifyCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheClusterMessage
-- <p>Represents the input of a <code>ModifyCacheCluster</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroupNames [CacheSecurityGroupNameList] <p>A list of cache security group names to authorize on this cluster. This change is asynchronously applied as soon as possible.</p> <p>You can use this parameter only with clusters that are created outside of an Amazon Virtual Private Cloud (Amazon VPC).</p> <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be "Default".</p>
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group to apply to this cluster. This change is asynchronously applied as soon as possible for parameters when the <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this request.</p>
-- * CacheClusterId [String] <p>The cluster identifier. This value is stored as a lowercase string.</p>
-- * NumCacheNodes [IntegerOptional] <p>The number of cache nodes that the cluster should have. If the value for <code>NumCacheNodes</code> is greater than the sum of the number of current cache nodes and the number of cache nodes pending creation (which may be zero), more nodes are added. If the value is less than the number of existing cache nodes, nodes are removed. If the value is equal to the number of current cache nodes, any pending add or remove requests are canceled.</p> <p>If you are removing cache nodes, you must use the <code>CacheNodeIdsToRemove</code> parameter to provide the IDs of the specific cache nodes to remove.</p> <p>For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.</p> <note> <p>Adding or removing Memcached cache nodes can be applied immediately or as a pending operation (see <code>ApplyImmediately</code>).</p> <p>A pending operation to modify the number of cache nodes in a cluster during its maintenance window, whether by adding or removing nodes in accordance with the scale out architecture, is not queued. The customer's latest request to add or remove nodes to the cluster overrides any previous pending operations to modify the number of cache nodes in the cluster. For example, a request to remove 2 nodes would override a previous pending operation to remove 3 nodes. Similarly, a request to add 2 nodes would override a previous pending operation to remove 3 nodes and vice versa. As Memcached cache nodes may now be provisioned in different Availability Zones with flexible cache node placement, a request to add nodes does not automatically override a previous pending operation to add nodes. The customer can modify the previous pending operation to add more nodes or explicitly cancel the pending request and retry the new request. To cancel pending operations to modify the number of cache nodes in a cluster, use the <code>ModifyCacheCluster</code> request and set <code>NumCacheNodes</code> equal to the number of cache nodes currently in the cluster.</p> </note>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>This parameter is currently disabled.</p>
-- * ApplyImmediately [Boolean] <p>If <code>true</code>, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the cluster.</p> <p>If <code>false</code>, changes to the cluster are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.</p> <important> <p>If you perform a <code>ModifyCacheCluster</code> before a pending modification is applied, the pending modification is replaced by the newer modification.</p> </important> <p>Valid values: <code>true</code> | <code>false</code> </p> <p>Default: <code>false</code> </p>
-- * SecurityGroupIds [SecurityGroupIdsList] <p>Specifies the VPC Security Groups associated with the cluster.</p> <p>This parameter can be used only with clusters that are created in an Amazon Virtual Private Cloud (Amazon VPC).</p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p> <note> <p>If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups are turned off.</p> </note>
-- * NotificationTopicStatus [String] <p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is <code>active</code>.</p> <p>Valid values: <code>active</code> | <code>inactive</code> </p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cluster. </p>
-- * EngineVersion [String] <p>The upgraded version of the cache engine to be run on the cache nodes.</p> <p> <b>Important:</b> You can upgrade to a newer engine version (see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version. </p>
-- * CacheNodeType [String] <p>A valid cache node type that you want to scale this cluster up to.</p>
-- * AZMode [AZMode] <p>Specifies whether the new nodes in this Memcached cluster are all created in a single Availability Zone or created across multiple Availability Zones.</p> <p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p> <p>This option is only supported for Memcached clusters.</p> <note> <p>You cannot specify <code>single-az</code> if the Memcached cluster already has cache nodes in different Availability Zones. If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone.</p> <p>Only newly created nodes are located in different Availability Zones. For instructions on how to move existing Memcached nodes to different Availability Zones, see the <b>Availability Zone Considerations</b> section of <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html">Cache Node Considerations for Memcached</a>.</p> </note>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.</p> <note> <p>The Amazon SNS topic owner must be same as the cluster owner.</p> </note>
-- * NewAvailabilityZones [PreferredAvailabilityZoneList] <p>The list of Availability Zones where the new Memcached cache nodes are created.</p> <p>This parameter is only valid when <code>NumCacheNodes</code> in the request is greater than the sum of the number of active cache nodes and the number of cache nodes pending creation (which may be zero). The number of Availability Zones supplied in this list must match the cache nodes being added in this request.</p> <p>This option is only supported on Memcached clusters.</p> <p>Scenarios:</p> <ul> <li> <p> <b>Scenario 1:</b> You have 3 active nodes and wish to add 2 nodes. Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally specify two Availability Zones for the two new nodes.</p> </li> <li> <p> <b>Scenario 2:</b> You have 3 active nodes and 2 nodes pending creation (from the scenario 1 call) and want to add 1 more node. Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and optionally specify an Availability Zone for the new node.</p> </li> <li> <p> <b>Scenario 3:</b> You want to cancel all pending operations. Specify <code>NumCacheNodes=3</code> to cancel all pending operations.</p> </li> </ul> <p>The Availability Zone placement of nodes pending creation cannot be modified. If you wish to cancel any nodes pending creation, add 0 nodes by setting <code>NumCacheNodes</code> to the number of current nodes.</p> <p>If <code>cross-az</code> is specified, existing Memcached nodes remain in their current Availability Zone. Only newly created nodes can be located in different Availability Zones. For guidance on how to move existing Memcached nodes to different Availability Zones, see the <b>Availability Zone Considerations</b> section of <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html">Cache Node Considerations for Memcached</a>.</p> <p> <b>Impact of new add/remove requests upon pending requests</b> </p> <ul> <li> <p>Scenario-1</p> <ul> <li> <p>Pending Action: Delete</p> </li> <li> <p>New Request: Delete</p> </li> <li> <p>Result: The new delete, pending or immediate, replaces the pending delete.</p> </li> </ul> </li> <li> <p>Scenario-2</p> <ul> <li> <p>Pending Action: Delete</p> </li> <li> <p>New Request: Create</p> </li> <li> <p>Result: The new create, pending or immediate, replaces the pending delete.</p> </li> </ul> </li> <li> <p>Scenario-3</p> <ul> <li> <p>Pending Action: Create</p> </li> <li> <p>New Request: Delete</p> </li> <li> <p>Result: The new delete, pending or immediate, replaces the pending create.</p> </li> </ul> </li> <li> <p>Scenario-4</p> <ul> <li> <p>Pending Action: Create</p> </li> <li> <p>New Request: Create</p> </li> <li> <p>Result: The new create is added to the pending create.</p> <important> <p> <b>Important:</b> If the new create request is <b>Apply Immediately - Yes</b>, all creates are performed immediately. If the new create request is <b>Apply Immediately - No</b>, all creates are pending.</p> </important> </li> </ul> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * CacheNodeIdsToRemove [CacheNodeIdsList] <p>A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002, etc.). This parameter is only valid when <code>NumCacheNodes</code> is less than the existing number of cache nodes. The number of cache node IDs supplied in this parameter must match the difference between the existing number of cache nodes in the cluster or pending cache nodes, whichever is greater, and the value of <code>NumCacheNodes</code> in the request.</p> <p>For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number of cache nodes in this <code>ModifyCacheCluster</code> call is 5, you must list 2 (7 - 5) cache node IDs to remove.</p>
-- Required key: CacheClusterId
-- @return ModifyCacheClusterMessage structure as a key-value pair table
function M.ModifyCacheClusterMessage(args)
	assert(args, "You must provide an argument table when creating ModifyCacheClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroupNames"] = args["CacheSecurityGroupNames"],
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["CacheClusterId"] = args["CacheClusterId"],
		["NumCacheNodes"] = args["NumCacheNodes"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["NotificationTopicStatus"] = args["NotificationTopicStatus"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["EngineVersion"] = args["EngineVersion"],
		["CacheNodeType"] = args["CacheNodeType"],
		["AZMode"] = args["AZMode"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["NewAvailabilityZones"] = args["NewAvailabilityZones"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["CacheNodeIdsToRemove"] = args["CacheNodeIdsToRemove"],
	}
	asserts.AssertModifyCacheClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyCacheSubnetGroupMessage = { ["SubnetIds"] = true, ["CacheSubnetGroupDescription"] = true, ["CacheSubnetGroupName"] = true, nil }

function asserts.AssertModifyCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["CacheSubnetGroupDescription"] then asserts.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyCacheSubnetGroupMessage[k], "ModifyCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheSubnetGroupMessage
-- <p>Represents the input of a <code>ModifyCacheSubnetGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the cache subnet group.</p>
-- * CacheSubnetGroupDescription [String] <p>A description of the cache subnet group.</p>
-- * CacheSubnetGroupName [String] <p>The name for the cache subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p> <p>Example: <code>mysubnetgroup</code> </p>
-- Required key: CacheSubnetGroupName
-- @return ModifyCacheSubnetGroupMessage structure as a key-value pair table
function M.ModifyCacheSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyCacheSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["CacheSubnetGroupDescription"] = args["CacheSubnetGroupDescription"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
	}
	asserts.AssertModifyCacheSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReplicationGroup = { ["Status"] = true, ["AuthTokenEnabled"] = true, ["Description"] = true, ["NodeGroups"] = true, ["ConfigurationEndpoint"] = true, ["AtRestEncryptionEnabled"] = true, ["ClusterEnabled"] = true, ["ReplicationGroupId"] = true, ["SnapshotRetentionLimit"] = true, ["AutomaticFailover"] = true, ["TransitEncryptionEnabled"] = true, ["SnapshotWindow"] = true, ["SnapshottingClusterId"] = true, ["MemberClusters"] = true, ["CacheNodeType"] = true, ["PendingModifiedValues"] = true, nil }

function asserts.AssertReplicationGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["AuthTokenEnabled"] then asserts.AssertBooleanOptional(struct["AuthTokenEnabled"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["NodeGroups"] then asserts.AssertNodeGroupList(struct["NodeGroups"]) end
	if struct["ConfigurationEndpoint"] then asserts.AssertEndpoint(struct["ConfigurationEndpoint"]) end
	if struct["AtRestEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["AtRestEncryptionEnabled"]) end
	if struct["ClusterEnabled"] then asserts.AssertBooleanOptional(struct["ClusterEnabled"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["AutomaticFailover"] then asserts.AssertAutomaticFailoverStatus(struct["AutomaticFailover"]) end
	if struct["TransitEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["TransitEncryptionEnabled"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["SnapshottingClusterId"] then asserts.AssertString(struct["SnapshottingClusterId"]) end
	if struct["MemberClusters"] then asserts.AssertClusterIdList(struct["MemberClusters"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["PendingModifiedValues"] then asserts.AssertReplicationGroupPendingModifiedValues(struct["PendingModifiedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplicationGroup[k], "ReplicationGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroup
-- <p>Contains all of the attributes of a specific Redis replication group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The current state of this replication group - <code>creating</code>, <code>available</code>, <code>modifying</code>, <code>deleting</code>, <code>create-failed</code>, <code>snapshotting</code>.</p>
-- * AuthTokenEnabled [BooleanOptional] <p>A flag that enables using an <code>AuthToken</code> (password) when issuing Redis commands.</p> <p>Default: <code>false</code> </p>
-- * Description [String] <p>The user supplied description of the replication group.</p>
-- * NodeGroups [NodeGroupList] <p>A list of node groups in this replication group. For Redis (cluster mode disabled) replication groups, this is a single-element list. For Redis (cluster mode enabled) replication groups, the list contains an entry for each node group (shard).</p>
-- * ConfigurationEndpoint [Endpoint] <p>The configuration endpoint for this replication group. Use the configuration endpoint to connect to this replication group.</p>
-- * AtRestEncryptionEnabled [BooleanOptional] <p>A flag that enables encryption at-rest when set to <code>true</code>.</p> <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the cluster is created. To enable encryption at-rest on a cluster you must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create a cluster.</p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p>
-- * ClusterEnabled [BooleanOptional] <p>A flag indicating whether or not this replication group is cluster enabled; i.e., whether its data can be partitioned across multiple shards (API/CLI: node groups).</p> <p>Valid values: <code>true</code> | <code>false</code> </p>
-- * ReplicationGroupId [String] <p>The identifier for the replication group.</p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic cluster snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p> <important> <p> If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups are turned off.</p> </important>
-- * AutomaticFailover [AutomaticFailoverStatus] <p>Indicates the status of Multi-AZ with automatic failover for this Redis replication group.</p> <p>Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:</p> <ul> <li> <p>Redis versions earlier than 2.8.6.</p> </li> <li> <p>Redis (cluster mode disabled): T1 and T2 cache node types.</p> </li> <li> <p>Redis (cluster mode enabled): T1 node types.</p> </li> </ul>
-- * TransitEncryptionEnabled [BooleanOptional] <p>A flag that enables in-transit encryption when set to <code>true</code>.</p> <p>You cannot modify the value of <code>TransitEncryptionEnabled</code> after the cluster is created. To enable in-transit encryption on a cluster you must set <code>TransitEncryptionEnabled</code> to <code>true</code> when you create a cluster.</p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p> <p>Example: <code>05:00-09:00</code> </p> <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.</p> <note> <p>This parameter is only valid if the <code>Engine</code> parameter is <code>redis</code>.</p> </note>
-- * SnapshottingClusterId [String] <p>The cluster ID that is used as the daily snapshot source for the replication group.</p>
-- * MemberClusters [ClusterIdList] <p>The names of all the cache clusters that are part of this replication group.</p>
-- * CacheNodeType [String] <p>The name of the compute and memory capacity node type for each node in the replication group.</p>
-- * PendingModifiedValues [ReplicationGroupPendingModifiedValues] <p>A group of settings to be applied to the replication group, either immediately or during the next maintenance window.</p>
-- @return ReplicationGroup structure as a key-value pair table
function M.ReplicationGroup(args)
	assert(args, "You must provide an argument table when creating ReplicationGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["AuthTokenEnabled"] = args["AuthTokenEnabled"],
		["Description"] = args["Description"],
		["NodeGroups"] = args["NodeGroups"],
		["ConfigurationEndpoint"] = args["ConfigurationEndpoint"],
		["AtRestEncryptionEnabled"] = args["AtRestEncryptionEnabled"],
		["ClusterEnabled"] = args["ClusterEnabled"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["AutomaticFailover"] = args["AutomaticFailover"],
		["TransitEncryptionEnabled"] = args["TransitEncryptionEnabled"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["SnapshottingClusterId"] = args["SnapshottingClusterId"],
		["MemberClusters"] = args["MemberClusters"],
		["CacheNodeType"] = args["CacheNodeType"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
	}
	asserts.AssertReplicationGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EC2SecurityGroup = { ["Status"] = true, ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, nil }

function asserts.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2SecurityGroup[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- <p>Provides ownership and status information for an Amazon EC2 security group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the Amazon EC2 security group.</p>
-- * EC2SecurityGroupName [String] <p>The name of the Amazon EC2 security group.</p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS account ID of the Amazon EC2 security group owner.</p>
-- @return EC2SecurityGroup structure as a key-value pair table
function M.EC2SecurityGroup(args)
	assert(args, "You must provide an argument table when creating EC2SecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
	}
	asserts.AssertEC2SecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheSecurityGroupMessage = { ["Marker"] = true, ["CacheSecurityGroups"] = true, nil }

function asserts.AssertCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheSecurityGroups"] then asserts.AssertCacheSecurityGroups(struct["CacheSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheSecurityGroupMessage[k], "CacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupMessage
-- <p>Represents the output of a <code>DescribeCacheSecurityGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * CacheSecurityGroups [CacheSecurityGroups] <p>A list of cache security groups. Each element in the list contains detailed information about one group.</p>
-- @return CacheSecurityGroupMessage structure as a key-value pair table
function M.CacheSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating CacheSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheSecurityGroups"] = args["CacheSecurityGroups"],
	}
	asserts.AssertCacheSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateReplicationGroupMessage = { ["CacheParameterGroupName"] = true, ["NodeGroupConfiguration"] = true, ["TransitEncryptionEnabled"] = true, ["ReplicationGroupId"] = true, ["NumNodeGroups"] = true, ["NotificationTopicArn"] = true, ["CacheNodeType"] = true, ["Engine"] = true, ["AuthToken"] = true, ["PrimaryClusterId"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredMaintenanceWindow"] = true, ["CacheSubnetGroupName"] = true, ["CacheSecurityGroupNames"] = true, ["SnapshotName"] = true, ["AtRestEncryptionEnabled"] = true, ["ReplicasPerNodeGroup"] = true, ["SecurityGroupIds"] = true, ["PreferredCacheClusterAZs"] = true, ["EngineVersion"] = true, ["ReplicationGroupDescription"] = true, ["NumCacheClusters"] = true, ["SnapshotArns"] = true, ["SnapshotRetentionLimit"] = true, ["Tags"] = true, ["SnapshotWindow"] = true, ["Port"] = true, ["AutomaticFailoverEnabled"] = true, nil }

function asserts.AssertCreateReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["ReplicationGroupDescription"], "Expected key ReplicationGroupDescription to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["NodeGroupConfiguration"] then asserts.AssertNodeGroupConfigurationList(struct["NodeGroupConfiguration"]) end
	if struct["TransitEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["TransitEncryptionEnabled"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["NumNodeGroups"] then asserts.AssertIntegerOptional(struct["NumNodeGroups"]) end
	if struct["NotificationTopicArn"] then asserts.AssertString(struct["NotificationTopicArn"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["AuthToken"] then asserts.AssertString(struct["AuthToken"]) end
	if struct["PrimaryClusterId"] then asserts.AssertString(struct["PrimaryClusterId"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then asserts.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["CacheSecurityGroupNames"] then asserts.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	if struct["AtRestEncryptionEnabled"] then asserts.AssertBooleanOptional(struct["AtRestEncryptionEnabled"]) end
	if struct["ReplicasPerNodeGroup"] then asserts.AssertIntegerOptional(struct["ReplicasPerNodeGroup"]) end
	if struct["SecurityGroupIds"] then asserts.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["PreferredCacheClusterAZs"] then asserts.AssertAvailabilityZonesList(struct["PreferredCacheClusterAZs"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationGroupDescription"] then asserts.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["NumCacheClusters"] then asserts.AssertIntegerOptional(struct["NumCacheClusters"]) end
	if struct["SnapshotArns"] then asserts.AssertSnapshotArnsList(struct["SnapshotArns"]) end
	if struct["SnapshotRetentionLimit"] then asserts.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SnapshotWindow"] then asserts.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["AutomaticFailoverEnabled"] then asserts.AssertBooleanOptional(struct["AutomaticFailoverEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReplicationGroupMessage[k], "CreateReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationGroupMessage
-- <p>Represents the input of a <code>CreateReplicationGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used.</p> <p>If you are running Redis version 3.2.4 or later, only one node group (shard), and want to use a default parameter group, we recommend that you specify the parameter group by name. </p> <ul> <li> <p>To create a Redis (cluster mode disabled) replication group, use <code>CacheParameterGroupName=default.redis3.2</code>.</p> </li> <li> <p>To create a Redis (cluster mode enabled) replication group, use <code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p> </li> </ul>
-- * NodeGroupConfiguration [NodeGroupConfigurationList] <p>A list of node group (shard) configuration options. Each node group (shard) configuration has the following members: <code>PrimaryAvailabilityZone</code>, <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>, and <code>Slots</code>.</p> <p>If you're creating a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group, you can use this parameter to individually configure each node group (shard), or you can omit this parameter. However, when seeding a Redis (cluster mode enabled) cluster from a S3 rdb file, you must configure each node group (shard) using this parameter because you must specify the slots for each node group.</p>
-- * TransitEncryptionEnabled [BooleanOptional] <p>A flag that enables in-transit encryption when set to <code>true</code>.</p> <p>You cannot modify the value of <code>TransitEncryptionEnabled</code> after the cluster is created. To enable in-transit encryption on a cluster you must set <code>TransitEncryptionEnabled</code> to <code>true</code> when you create a cluster.</p> <p>This parameter is valid only if the <code>Engine</code> parameter is <code>redis</code>, the <code>EngineVersion</code> parameter is <code>3.2.6</code> or <code>4.x</code>, and the cluster is being created in an Amazon VPC.</p> <p>If you enable in-transit encryption, you must also specify a value for <code>CacheSubnetGroup</code>.</p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p> <important> <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>, an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p> </important>
-- * ReplicationGroupId [String] <p>The replication group identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * NumNodeGroups [IntegerOptional] <p>An optional parameter that specifies the number of node groups (shards) for this Redis (cluster mode enabled) replication group. For Redis (cluster mode disabled) either omit this parameter or set it to 1.</p> <p>Default: 1</p>
-- * NotificationTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p> <note> <p>The Amazon SNS topic owner must be the same as the cluster owner.</p> </note>
-- * CacheNodeType [String] <p>The compute and memory capacity of the nodes in the node group (shard).</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- * Engine [String] <p>The name of the cache engine to be used for the clusters in this replication group.</p>
-- * AuthToken [String] <p> <b>Reserved parameter.</b> The password used to access a password protected server.</p> <p> <code>AuthToken</code> can be specified only on replication groups where <code>TransitEncryptionEnabled</code> is <code>true</code>.</p> <important> <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as <code>true</code>, an <code>AuthToken</code>, and a <code>CacheSubnetGroup</code>.</p> </important> <p>Password constraints:</p> <ul> <li> <p>Must be only printable ASCII characters.</p> </li> <li> <p>Must be at least 16 characters and no more than 128 characters in length.</p> </li> <li> <p>Cannot contain any of the following characters: '/', '"', or '@'. </p> </li> </ul> <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH password</a> at http://redis.io/commands/AUTH.</p>
-- * PrimaryClusterId [String] <p>The identifier of the cluster that serves as the primary for this replication group. This cluster must already exist and have a status of <code>available</code>.</p> <p>This parameter is not required if <code>NumCacheClusters</code>, <code>NumNodeGroups</code>, or <code>ReplicasPerNodeGroup</code> is specified.</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>This parameter is currently disabled.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.</p> <p>Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:23:00-mon:01:30</code> </p>
-- * CacheSubnetGroupName [String] <p>The name of the cache subnet group to be used for the replication group.</p> <important> <p>If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html">Subnets and Subnet Groups</a>.</p> </important>
-- * CacheSecurityGroupNames [CacheSecurityGroupNameList] <p>A list of cache security group names to associate with this replication group.</p>
-- * SnapshotName [String] <p>The name of a snapshot from which to restore data into the new replication group. The snapshot status changes to <code>restoring</code> while the new replication group is being created.</p>
-- * AtRestEncryptionEnabled [BooleanOptional] <p>A flag that enables encryption at rest when set to <code>true</code>.</p> <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the replication group is created. To enable encryption at rest on a replication group you must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create the replication group. </p> <p> <b>Required:</b> Only available when creating a replication group in an Amazon VPC using redis version <code>3.2.6</code> or <code>4.x</code>.</p> <p>Default: <code>false</code> </p>
-- * ReplicasPerNodeGroup [IntegerOptional] <p>An optional parameter that specifies the number of replica nodes in each node group (shard). Valid values are 0 to 5.</p>
-- * SecurityGroupIds [SecurityGroupIdsList] <p>One or more Amazon VPC security groups associated with this replication group.</p> <p>Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud (Amazon VPC).</p>
-- * PreferredCacheClusterAZs [AvailabilityZonesList] <p>A list of EC2 Availability Zones in which the replication group's clusters are created. The order of the Availability Zones in the list is the order in which clusters are allocated. The primary cluster is created in the first AZ in the list.</p> <p>This parameter is not used if there is more than one node group (shard). You should use <code>NodeGroupConfiguration</code> instead.</p> <note> <p>If you are creating your replication group in an Amazon VPC (recommended), you can only locate clusters in Availability Zones associated with the subnets in the selected subnet group.</p> <p>The number of Availability Zones listed must equal the value of <code>NumCacheClusters</code>.</p> </note> <p>Default: system chosen Availability Zones.</p>
-- * EngineVersion [String] <p>The version number of the cache engine to be used for the clusters in this replication group. To view the supported cache engine versions, use the <code>DescribeCacheEngineVersions</code> operation.</p> <p> <b>Important:</b> You can upgrade to a newer engine version (see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement">Selecting a Cache Engine and Version</a>) in the <i>ElastiCache User Guide</i>, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster or replication group and create it anew with the earlier engine version. </p>
-- * ReplicationGroupDescription [String] <p>A user-created description for the replication group.</p>
-- * NumCacheClusters [IntegerOptional] <p>The number of clusters this replication group initially has.</p> <p>This parameter is not used if there is more than one node group (shard). You should use <code>ReplicasPerNodeGroup</code> instead.</p> <p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the value of this parameter must be at least 2. If <code>AutomaticFailoverEnabled</code> is <code>false</code> you can omit this parameter (it will default to 1), or you can explicitly set it to a value between 2 and 6.</p> <p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1 primary plus 5 replicas).</p>
-- * SnapshotArns [SnapshotArnsList] <p>A list of Amazon Resource Names (ARN) that uniquely identify the Redis RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new replication group. The Amazon S3 object name in the ARN cannot contain any commas. The new replication group will have the number of node groups (console: shards) specified by the parameter <i>NumNodeGroups</i> or the number of node groups configured by <i>NodeGroupConfiguration</i> regardless of the number of ARNs specified here.</p> <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code> </p>
-- * SnapshotRetentionLimit [IntegerOptional] <p>The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p> <p>Default: 0 (i.e., automatic backups are disabled for this cluster).</p>
-- * Tags [TagList] <p>A list of cost allocation tags to be added to this resource. A tag is a key-value pair.</p>
-- * SnapshotWindow [String] <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).</p> <p>Example: <code>05:00-09:00</code> </p> <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.</p>
-- * Port [IntegerOptional] <p>The port number on which each member of the replication group accepts connections.</p>
-- * AutomaticFailoverEnabled [BooleanOptional] <p>Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.</p> <p>If <code>true</code>, Multi-AZ is enabled for this replication group. If <code>false</code>, Multi-AZ is disabled for this replication group.</p> <p> <code>AutomaticFailoverEnabled</code> must be enabled for Redis (cluster mode enabled) replication groups.</p> <p>Default: false</p> <p>Amazon ElastiCache for Redis does not support Multi-AZ with automatic failover on:</p> <ul> <li> <p>Redis versions earlier than 2.8.6.</p> </li> <li> <p>Redis (cluster mode disabled): T1 and T2 cache node types.</p> </li> <li> <p>Redis (cluster mode enabled): T1 node types.</p> </li> </ul>
-- Required key: ReplicationGroupId
-- Required key: ReplicationGroupDescription
-- @return CreateReplicationGroupMessage structure as a key-value pair table
function M.CreateReplicationGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateReplicationGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["NodeGroupConfiguration"] = args["NodeGroupConfiguration"],
		["TransitEncryptionEnabled"] = args["TransitEncryptionEnabled"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["NumNodeGroups"] = args["NumNodeGroups"],
		["NotificationTopicArn"] = args["NotificationTopicArn"],
		["CacheNodeType"] = args["CacheNodeType"],
		["Engine"] = args["Engine"],
		["AuthToken"] = args["AuthToken"],
		["PrimaryClusterId"] = args["PrimaryClusterId"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["CacheSubnetGroupName"] = args["CacheSubnetGroupName"],
		["CacheSecurityGroupNames"] = args["CacheSecurityGroupNames"],
		["SnapshotName"] = args["SnapshotName"],
		["AtRestEncryptionEnabled"] = args["AtRestEncryptionEnabled"],
		["ReplicasPerNodeGroup"] = args["ReplicasPerNodeGroup"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["PreferredCacheClusterAZs"] = args["PreferredCacheClusterAZs"],
		["EngineVersion"] = args["EngineVersion"],
		["ReplicationGroupDescription"] = args["ReplicationGroupDescription"],
		["NumCacheClusters"] = args["NumCacheClusters"],
		["SnapshotArns"] = args["SnapshotArns"],
		["SnapshotRetentionLimit"] = args["SnapshotRetentionLimit"],
		["Tags"] = args["Tags"],
		["SnapshotWindow"] = args["SnapshotWindow"],
		["Port"] = args["Port"],
		["AutomaticFailoverEnabled"] = args["AutomaticFailoverEnabled"],
	}
	asserts.AssertCreateReplicationGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedCacheNodeMessage = { ["Marker"] = true, ["ReservedCacheNodes"] = true, nil }

function asserts.AssertReservedCacheNodeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodeMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedCacheNodes"] then asserts.AssertReservedCacheNodeList(struct["ReservedCacheNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedCacheNodeMessage[k], "ReservedCacheNodeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodeMessage
-- <p>Represents the output of a <code>DescribeReservedCacheNodes</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>Provides an identifier to allow retrieval of paginated results.</p>
-- * ReservedCacheNodes [ReservedCacheNodeList] <p>A list of reserved cache nodes. Each element in the list contains detailed information about one node.</p>
-- @return ReservedCacheNodeMessage structure as a key-value pair table
function M.ReservedCacheNodeMessage(args)
	assert(args, "You must provide an argument table when creating ReservedCacheNodeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedCacheNodes"] = args["ReservedCacheNodes"],
	}
	asserts.AssertReservedCacheNodeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyCacheClusterResult = { ["CacheCluster"] = true, nil }

function asserts.AssertModifyCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then asserts.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyCacheClusterResult[k], "ModifyCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheCluster [CacheCluster] 
-- @return ModifyCacheClusterResult structure as a key-value pair table
function M.ModifyCacheClusterResult(args)
	assert(args, "You must provide an argument table when creating ModifyCacheClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheCluster"] = args["CacheCluster"],
	}
	asserts.AssertModifyCacheClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReplicationGroupMessage = { ["FinalSnapshotIdentifier"] = true, ["ReplicationGroupId"] = true, ["RetainPrimaryCluster"] = true, nil }

function asserts.AssertDeleteReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	if struct["FinalSnapshotIdentifier"] then asserts.AssertString(struct["FinalSnapshotIdentifier"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["RetainPrimaryCluster"] then asserts.AssertBooleanOptional(struct["RetainPrimaryCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReplicationGroupMessage[k], "DeleteReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationGroupMessage
-- <p>Represents the input of a <code>DeleteReplicationGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalSnapshotIdentifier [String] <p>The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster, rather than one of the replicas; this is to ensure that it captures the freshest data. After the final snapshot is taken, the replication group is immediately deleted.</p>
-- * ReplicationGroupId [String] <p>The identifier for the cluster to be deleted. This parameter is not case sensitive.</p>
-- * RetainPrimaryCluster [BooleanOptional] <p>If set to <code>true</code>, all of the read replicas are deleted, but the primary node is retained.</p>
-- Required key: ReplicationGroupId
-- @return DeleteReplicationGroupMessage structure as a key-value pair table
function M.DeleteReplicationGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteReplicationGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalSnapshotIdentifier"] = args["FinalSnapshotIdentifier"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["RetainPrimaryCluster"] = args["RetainPrimaryCluster"],
	}
	asserts.AssertDeleteReplicationGroupMessage(all_args)
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
-- <p>Represents the information required for client programs to connect to a cache node.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Port [Integer] <p>The port number that the cache engine is listening on.</p>
-- * Address [String] <p>The DNS hostname of the cache node.</p>
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

keys.DescribeSnapshotsMessage = { ["ShowNodeGroupConfig"] = true, ["CacheClusterId"] = true, ["SnapshotName"] = true, ["ReplicationGroupId"] = true, ["MaxRecords"] = true, ["SnapshotSource"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsMessage to be of type 'table'")
	if struct["ShowNodeGroupConfig"] then asserts.AssertBooleanOptional(struct["ShowNodeGroupConfig"]) end
	if struct["CacheClusterId"] then asserts.AssertString(struct["CacheClusterId"]) end
	if struct["SnapshotName"] then asserts.AssertString(struct["SnapshotName"]) end
	if struct["ReplicationGroupId"] then asserts.AssertString(struct["ReplicationGroupId"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SnapshotSource"] then asserts.AssertString(struct["SnapshotSource"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotsMessage[k], "DescribeSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsMessage
-- <p>Represents the input of a <code>DescribeSnapshotsMessage</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShowNodeGroupConfig [BooleanOptional] <p>A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.</p>
-- * CacheClusterId [String] <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
-- * SnapshotName [String] <p>A user-supplied name of the snapshot. If this parameter is specified, only this snapshot are described.</p>
-- * ReplicationGroupId [String] <p>A user-supplied replication group identifier. If this parameter is specified, only snapshots associated with that specific replication group are described.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 50</p> <p>Constraints: minimum 20; maximum 50.</p>
-- * SnapshotSource [String] <p>If set to <code>system</code>, the output shows snapshots that were automatically created by ElastiCache. If set to <code>user</code> the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @return DescribeSnapshotsMessage structure as a key-value pair table
function M.DescribeSnapshotsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeSnapshotsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShowNodeGroupConfig"] = args["ShowNodeGroupConfig"],
		["CacheClusterId"] = args["CacheClusterId"],
		["SnapshotName"] = args["SnapshotName"],
		["ReplicationGroupId"] = args["ReplicationGroupId"],
		["MaxRecords"] = args["MaxRecords"],
		["SnapshotSource"] = args["SnapshotSource"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeSnapshotsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestFailoverResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertTestFailoverResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestFailoverResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestFailoverResult[k], "TestFailoverResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestFailoverResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return TestFailoverResult structure as a key-value pair table
function M.TestFailoverResult(args)
	assert(args, "You must provide an argument table when creating TestFailoverResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertTestFailoverResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheNodeTypeSpecificParameter = { ["Description"] = true, ["DataType"] = true, ["ChangeType"] = true, ["AllowedValues"] = true, ["Source"] = true, ["IsModifiable"] = true, ["CacheNodeTypeSpecificValues"] = true, ["ParameterName"] = true, ["MinimumEngineVersion"] = true, nil }

function asserts.AssertCacheNodeTypeSpecificParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNodeTypeSpecificParameter to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then asserts.AssertChangeType(struct["ChangeType"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["CacheNodeTypeSpecificValues"] then asserts.AssertCacheNodeTypeSpecificValueList(struct["CacheNodeTypeSpecificValues"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then asserts.AssertString(struct["MinimumEngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheNodeTypeSpecificParameter[k], "CacheNodeTypeSpecificParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNodeTypeSpecificParameter
-- <p>A parameter that has a different value for each cache node type it is applied to. For example, in a Redis cluster, a <code>cache.m1.large</code> cache node type would have a larger <code>maxmemory</code> value than a <code>cache.m1.small</code> type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description of the parameter.</p>
-- * DataType [String] <p>The valid data type for the parameter.</p>
-- * ChangeType [ChangeType] <p>Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html">Rebooting a Cluster</a>.</p>
-- * AllowedValues [String] <p>The valid range of values for the parameter.</p>
-- * Source [String] <p>The source of the parameter value.</p>
-- * IsModifiable [Boolean] <p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.</p>
-- * CacheNodeTypeSpecificValues [CacheNodeTypeSpecificValueList] <p>A list of cache node types and their corresponding values for this parameter.</p>
-- * ParameterName [String] <p>The name of the parameter.</p>
-- * MinimumEngineVersion [String] <p>The earliest cache engine version to which the parameter can apply.</p>
-- @return CacheNodeTypeSpecificParameter structure as a key-value pair table
function M.CacheNodeTypeSpecificParameter(args)
	assert(args, "You must provide an argument table when creating CacheNodeTypeSpecificParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["DataType"] = args["DataType"],
		["ChangeType"] = args["ChangeType"],
		["AllowedValues"] = args["AllowedValues"],
		["Source"] = args["Source"],
		["IsModifiable"] = args["IsModifiable"],
		["CacheNodeTypeSpecificValues"] = args["CacheNodeTypeSpecificValues"],
		["ParameterName"] = args["ParameterName"],
		["MinimumEngineVersion"] = args["MinimumEngineVersion"],
	}
	asserts.AssertCacheNodeTypeSpecificParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCacheClusterResult = { ["CacheCluster"] = true, nil }

function asserts.AssertDeleteCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then asserts.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCacheClusterResult[k], "DeleteCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheCluster [CacheCluster] 
-- @return DeleteCacheClusterResult structure as a key-value pair table
function M.DeleteCacheClusterResult(args)
	assert(args, "You must provide an argument table when creating DeleteCacheClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheCluster"] = args["CacheCluster"],
	}
	asserts.AssertDeleteCacheClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyReplicationGroupShardConfigurationResult = { ["ReplicationGroup"] = true, nil }

function asserts.AssertModifyReplicationGroupShardConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupShardConfigurationResult to be of type 'table'")
	if struct["ReplicationGroup"] then asserts.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyReplicationGroupShardConfigurationResult[k], "ModifyReplicationGroupShardConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupShardConfigurationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplicationGroup [ReplicationGroup] 
-- @return ModifyReplicationGroupShardConfigurationResult structure as a key-value pair table
function M.ModifyReplicationGroupShardConfigurationResult(args)
	assert(args, "You must provide an argument table when creating ModifyReplicationGroupShardConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplicationGroup"] = args["ReplicationGroup"],
	}
	asserts.AssertModifyReplicationGroupShardConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCacheParameterGroupMessage = { ["CacheParameterGroupName"] = true, nil }

function asserts.AssertDeleteCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCacheParameterGroupMessage[k], "DeleteCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheParameterGroupMessage
-- <p>Represents the input of a <code>DeleteCacheParameterGroup</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheParameterGroupName [String] <p>The name of the cache parameter group to delete.</p> <note> <p>The specified cache security group must not be associated with any clusters.</p> </note>
-- Required key: CacheParameterGroupName
-- @return DeleteCacheParameterGroupMessage structure as a key-value pair table
function M.DeleteCacheParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteCacheParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
	}
	asserts.AssertDeleteCacheParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedCacheNodesOffering = { ["OfferingType"] = true, ["FixedPrice"] = true, ["ReservedCacheNodesOfferingId"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["ProductDescription"] = true, ["Duration"] = true, ["CacheNodeType"] = true, nil }

function asserts.AssertReservedCacheNodesOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodesOffering to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservedCacheNodesOfferingId"] then asserts.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["CacheNodeType"] then asserts.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedCacheNodesOffering[k], "ReservedCacheNodesOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodesOffering
-- <p>Describes all of the attributes of a reserved cache node offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The offering type.</p>
-- * FixedPrice [Double] <p>The fixed price charged for this offering.</p>
-- * ReservedCacheNodesOfferingId [String] <p>A unique identifier for the reserved cache node offering.</p>
-- * UsagePrice [Double] <p>The hourly price charged for this offering.</p>
-- * RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved cache node.</p>
-- * ProductDescription [String] <p>The cache engine used by the offering.</p>
-- * Duration [Integer] <p>The duration of the offering. in seconds.</p>
-- * CacheNodeType [String] <p>The cache node type for the reserved cache node.</p> <p>The following node types are supported by ElastiCache. Generally speaking, the current generation types provide more memory and computational power at lower cost when compared to their equivalent previous generation counterparts.</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: </p> <p> <b>T2 node types:</b> <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code> </p> <p> <b>M3 node types:</b> <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code> </p> <p> <b>M4 node types:</b> <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>T1 node types:</b> <code>cache.t1.micro</code> </p> <p> <b>M1 node types:</b> <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized:</p> <ul> <li> <p>Previous generation: (not recommended)</p> <p> <b>C1 node types:</b> <code>cache.c1.xlarge</code> </p> </li> </ul> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: </p> <p> <b>R3 node types:</b> <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> <p> <b>R4 node types;</b> <code>cache.r4.large</code>, <code>cache.r4.xlarge</code>, <code>cache.r4.2xlarge</code>, <code>cache.r4.4xlarge</code>, <code>cache.r4.8xlarge</code>, <code>cache.r4.16xlarge</code> </p> </li> <li> <p>Previous generation: (not recommended)</p> <p> <b>M2 node types:</b> <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis (cluster mode disabled): Redis backup/restore is not supported on T1 and T2 instances. </p> </li> <li> <p>Redis (cluster mode enabled): Backup/restore is not supported on T1 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see:</p> <ul> <li> <p> <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a> </p> </li> </ul>
-- @return ReservedCacheNodesOffering structure as a key-value pair table
function M.ReservedCacheNodesOffering(args)
	assert(args, "You must provide an argument table when creating ReservedCacheNodesOffering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["ReservedCacheNodesOfferingId"] = args["ReservedCacheNodesOfferingId"],
		["UsagePrice"] = args["UsagePrice"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ProductDescription"] = args["ProductDescription"],
		["Duration"] = args["Duration"],
		["CacheNodeType"] = args["CacheNodeType"],
	}
	asserts.AssertReservedCacheNodesOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheParametersMessage = { ["Marker"] = true, ["Source"] = true, ["CacheParameterGroupName"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeCacheParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheParametersMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheParametersMessage[k], "DescribeCacheParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheParametersMessage
-- <p>Represents the input of a <code>DescribeCacheParameters</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * Source [String] <p>The parameter types to return.</p> <p>Valid values: <code>user</code> | <code>system</code> | <code>engine-default</code> </p>
-- * CacheParameterGroupName [String] <p>The name of a specific cache parameter group to return details for.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- Required key: CacheParameterGroupName
-- @return DescribeCacheParametersMessage structure as a key-value pair table
function M.DescribeCacheParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Source"] = args["Source"],
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeCacheParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheEngineVersionsMessage = { ["Engine"] = true, ["CacheParameterGroupFamily"] = true, ["DefaultOnly"] = true, ["MaxRecords"] = true, ["EngineVersion"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeCacheEngineVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheEngineVersionsMessage to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["CacheParameterGroupFamily"] then asserts.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["DefaultOnly"] then asserts.AssertBoolean(struct["DefaultOnly"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheEngineVersionsMessage[k], "DescribeCacheEngineVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheEngineVersionsMessage
-- <p>Represents the input of a <code>DescribeCacheEngineVersions</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The cache engine to return. Valid values: <code>memcached</code> | <code>redis</code> </p>
-- * CacheParameterGroupFamily [String] <p>The name of a specific cache parameter group family to return details for.</p> <p>Valid values are: <code>memcached1.4</code> | <code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> | <code>redis4.0</code> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * DefaultOnly [Boolean] <p>If <code>true</code>, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- * EngineVersion [String] <p>The cache engine version to return.</p> <p>Example: <code>1.4.14</code> </p>
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @return DescribeCacheEngineVersionsMessage structure as a key-value pair table
function M.DescribeCacheEngineVersionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheEngineVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["CacheParameterGroupFamily"] = args["CacheParameterGroupFamily"],
		["DefaultOnly"] = args["DefaultOnly"],
		["MaxRecords"] = args["MaxRecords"],
		["EngineVersion"] = args["EngineVersion"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeCacheEngineVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCacheParameterGroupsMessage = { ["Marker"] = true, ["CacheParameterGroupName"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeCacheParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroupName"] then asserts.AssertString(struct["CacheParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCacheParameterGroupsMessage[k], "DescribeCacheParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheParameterGroupsMessage
-- <p>Represents the input of a <code>DescribeCacheParameterGroups</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- * CacheParameterGroupName [String] <p>The name of a specific cache parameter group to return details for.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: minimum 20; maximum 100.</p>
-- @return DescribeCacheParameterGroupsMessage structure as a key-value pair table
function M.DescribeCacheParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeCacheParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["CacheParameterGroupName"] = args["CacheParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeCacheParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseReservedCacheNodesOfferingMessage = { ["ReservedCacheNodesOfferingId"] = true, ["CacheNodeCount"] = true, ["ReservedCacheNodeId"] = true, nil }

function asserts.AssertPurchaseReservedCacheNodesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedCacheNodesOfferingMessage to be of type 'table'")
	assert(struct["ReservedCacheNodesOfferingId"], "Expected key ReservedCacheNodesOfferingId to exist in table")
	if struct["ReservedCacheNodesOfferingId"] then asserts.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["CacheNodeCount"] then asserts.AssertIntegerOptional(struct["CacheNodeCount"]) end
	if struct["ReservedCacheNodeId"] then asserts.AssertString(struct["ReservedCacheNodeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedCacheNodesOfferingMessage[k], "PurchaseReservedCacheNodesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedCacheNodesOfferingMessage
-- <p>Represents the input of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedCacheNodesOfferingId [String] <p>The ID of the reserved cache node offering to purchase.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>
-- * CacheNodeCount [IntegerOptional] <p>The number of cache node instances to reserve.</p> <p>Default: <code>1</code> </p>
-- * ReservedCacheNodeId [String] <p>A customer-specified identifier to track this reservation.</p> <note> <p>The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation. If this parameter is not specified, ElastiCache automatically generates an identifier for the reservation.</p> </note> <p>Example: myreservationID</p>
-- Required key: ReservedCacheNodesOfferingId
-- @return PurchaseReservedCacheNodesOfferingMessage structure as a key-value pair table
function M.PurchaseReservedCacheNodesOfferingMessage(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedCacheNodesOfferingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedCacheNodesOfferingId"] = args["ReservedCacheNodesOfferingId"],
		["CacheNodeCount"] = args["CacheNodeCount"],
		["ReservedCacheNodeId"] = args["ReservedCacheNodeId"],
	}
	asserts.AssertPurchaseReservedCacheNodesOfferingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CacheSecurityGroupMembership = { ["Status"] = true, ["CacheSecurityGroupName"] = true, nil }

function asserts.AssertCacheSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["CacheSecurityGroupName"] then asserts.AssertString(struct["CacheSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CacheSecurityGroupMembership[k], "CacheSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupMembership
-- <p>Represents a cluster's status within a particular cache security group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The membership status in the cache security group. The status changes when a cache security group is modified, or when the cache security groups assigned to a cluster are modified.</p>
-- * CacheSecurityGroupName [String] <p>The name of the cache security group.</p>
-- @return CacheSecurityGroupMembership structure as a key-value pair table
function M.CacheSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating CacheSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["CacheSecurityGroupName"] = args["CacheSecurityGroupName"],
	}
	asserts.AssertCacheSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeCacheSecurityGroupIngressResult = { ["CacheSecurityGroup"] = true, nil }

function asserts.AssertAuthorizeCacheSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeCacheSecurityGroupIngressResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then asserts.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeCacheSecurityGroupIngressResult[k], "AuthorizeCacheSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeCacheSecurityGroupIngressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheSecurityGroup [CacheSecurityGroup] 
-- @return AuthorizeCacheSecurityGroupIngressResult structure as a key-value pair table
function M.AuthorizeCacheSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating AuthorizeCacheSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheSecurityGroup"] = args["CacheSecurityGroup"],
	}
	asserts.AssertAuthorizeCacheSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertAllowedNodeGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedNodeGroupId to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AllowedNodeGroupId(str)
	asserts.AssertAllowedNodeGroupId(str)
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

function asserts.AssertAutomaticFailoverStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomaticFailoverStatus to be of type 'string'")
end

--  
function M.AutomaticFailoverStatus(str)
	asserts.AssertAutomaticFailoverStatus(str)
	return str
end

function asserts.AssertAZMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AZMode to be of type 'string'")
end

--  
function M.AZMode(str)
	asserts.AssertAZMode(str)
	return str
end

function asserts.AssertPendingAutomaticFailoverStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PendingAutomaticFailoverStatus to be of type 'string'")
end

--  
function M.PendingAutomaticFailoverStatus(str)
	asserts.AssertPendingAutomaticFailoverStatus(str)
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

function asserts.AssertBooleanOptional(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanOptional to be of type 'boolean'")
end

function M.BooleanOptional(boolean)
	asserts.AssertBooleanOptional(boolean)
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

function asserts.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	asserts.AssertTStamp(timestamp)
	return timestamp
end

function asserts.AssertNodeGroupsToRemoveList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupsToRemoveList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedNodeGroupId(v)
	end
end

--  
-- List of AllowedNodeGroupId objects
function M.NodeGroupsToRemoveList(list)
	asserts.AssertNodeGroupsToRemoveList(list)
	return list
end

function asserts.AssertSecurityGroupIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SecurityGroupIdsList(list)
	asserts.AssertSecurityGroupIdsList(list)
	return list
end

function asserts.AssertCacheNodeTypeSpecificValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeTypeSpecificValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheNodeTypeSpecificValue(v)
	end
end

--  
-- List of CacheNodeTypeSpecificValue objects
function M.CacheNodeTypeSpecificValueList(list)
	asserts.AssertCacheNodeTypeSpecificValueList(list)
	return list
end

function asserts.AssertParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParametersList(list)
	asserts.AssertParametersList(list)
	return list
end

function asserts.AssertReshardingConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReshardingConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReshardingConfiguration(v)
	end
end

--  
-- List of ReshardingConfiguration objects
function M.ReshardingConfigurationList(list)
	asserts.AssertReshardingConfigurationList(list)
	return list
end

function asserts.AssertReservedCacheNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedCacheNodeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedCacheNode(v)
	end
end

--  
-- List of ReservedCacheNode objects
function M.ReservedCacheNodeList(list)
	asserts.AssertReservedCacheNodeList(list)
	return list
end

function asserts.AssertCacheEngineVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheEngineVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheEngineVersion(v)
	end
end

--  
-- List of CacheEngineVersion objects
function M.CacheEngineVersionList(list)
	asserts.AssertCacheEngineVersionList(list)
	return list
end

function asserts.AssertCacheNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheNode(v)
	end
end

--  
-- List of CacheNode objects
function M.CacheNodeList(list)
	asserts.AssertCacheNodeList(list)
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

function asserts.AssertEC2SecurityGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2SecurityGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEC2SecurityGroup(v)
	end
end

--  
-- List of EC2SecurityGroup objects
function M.EC2SecurityGroupList(list)
	asserts.AssertEC2SecurityGroupList(list)
	return list
end

function asserts.AssertPreferredAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected PreferredAvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.PreferredAvailabilityZoneList(list)
	asserts.AssertPreferredAvailabilityZoneList(list)
	return list
end

function asserts.AssertNodeGroupConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNodeGroupConfiguration(v)
	end
end

--  
-- List of NodeGroupConfiguration objects
function M.NodeGroupConfigurationList(list)
	asserts.AssertNodeGroupConfigurationList(list)
	return list
end

function asserts.AssertNodeGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNodeGroup(v)
	end
end

--  
-- List of NodeGroup objects
function M.NodeGroupList(list)
	asserts.AssertNodeGroupList(list)
	return list
end

function asserts.AssertCacheNodeIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.CacheNodeIdsList(list)
	asserts.AssertCacheNodeIdsList(list)
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

function asserts.AssertCacheParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheParameterGroup(v)
	end
end

--  
-- List of CacheParameterGroup objects
function M.CacheParameterGroupList(list)
	asserts.AssertCacheParameterGroupList(list)
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

function asserts.AssertCacheSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.CacheSecurityGroupNameList(list)
	asserts.AssertCacheSecurityGroupNameList(list)
	return list
end

function asserts.AssertNodeTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.NodeTypeList(list)
	asserts.AssertNodeTypeList(list)
	return list
end

function asserts.AssertRecurringChargeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringChargeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringChargeList(list)
	asserts.AssertRecurringChargeList(list)
	return list
end

function asserts.AssertReservedCacheNodesOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedCacheNodesOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedCacheNodesOffering(v)
	end
end

--  
-- List of ReservedCacheNodesOffering objects
function M.ReservedCacheNodesOfferingList(list)
	asserts.AssertReservedCacheNodesOfferingList(list)
	return list
end

function asserts.AssertCacheSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheSecurityGroupMembership(v)
	end
end

--  
-- List of CacheSecurityGroupMembership objects
function M.CacheSecurityGroupMembershipList(list)
	asserts.AssertCacheSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertReplicationGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReplicationGroup(v)
	end
end

--  
-- List of ReplicationGroup objects
function M.ReplicationGroupList(list)
	asserts.AssertReplicationGroupList(list)
	return list
end

function asserts.AssertSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSnapshot(v)
	end
end

--  
-- List of Snapshot objects
function M.SnapshotList(list)
	asserts.AssertSnapshotList(list)
	return list
end

function asserts.AssertAvailabilityZonesList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZonesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZonesList(list)
	asserts.AssertAvailabilityZonesList(list)
	return list
end

function asserts.AssertCacheNodeTypeSpecificParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeTypeSpecificParametersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheNodeTypeSpecificParameter(v)
	end
end

--  
-- List of CacheNodeTypeSpecificParameter objects
function M.CacheNodeTypeSpecificParametersList(list)
	asserts.AssertCacheNodeTypeSpecificParametersList(list)
	return list
end

function asserts.AssertSnapshotArnsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotArnsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SnapshotArnsList(list)
	asserts.AssertSnapshotArnsList(list)
	return list
end

function asserts.AssertRemoveReplicasList(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoveReplicasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.RemoveReplicasList(list)
	asserts.AssertRemoveReplicasList(list)
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

function asserts.AssertNodeGroupMemberList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupMemberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNodeGroupMember(v)
	end
end

--  
-- List of NodeGroupMember objects
function M.NodeGroupMemberList(list)
	asserts.AssertNodeGroupMemberList(list)
	return list
end

function asserts.AssertCacheSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheSecurityGroup(v)
	end
end

--  
-- List of CacheSecurityGroup objects
function M.CacheSecurityGroups(list)
	asserts.AssertCacheSecurityGroups(list)
	return list
end

function asserts.AssertNodeGroupsToRetainList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupsToRetainList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedNodeGroupId(v)
	end
end

--  
-- List of AllowedNodeGroupId objects
function M.NodeGroupsToRetainList(list)
	asserts.AssertNodeGroupsToRetainList(list)
	return list
end

function asserts.AssertNodeSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNodeSnapshot(v)
	end
end

--  
-- List of NodeSnapshot objects
function M.NodeSnapshotList(list)
	asserts.AssertNodeSnapshotList(list)
	return list
end

function asserts.AssertCacheSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheSubnetGroup(v)
	end
end

--  
-- List of CacheSubnetGroup objects
function M.CacheSubnetGroups(list)
	asserts.AssertCacheSubnetGroups(list)
	return list
end

function asserts.AssertCacheClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheClusterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCacheCluster(v)
	end
end

--  
-- List of CacheCluster objects
function M.CacheClusterList(list)
	asserts.AssertCacheClusterList(list)
	return list
end

function asserts.AssertClusterIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterIdList(list)
	asserts.AssertClusterIdList(list)
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

function asserts.AssertReplicaConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicaConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigureShard(v)
	end
end

--  
-- List of ConfigureShard objects
function M.ReplicaConfigurationList(list)
	asserts.AssertReplicaConfigurationList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "elasticache.amazonaws.com"
		end
	end
	local ss = { "elasticache" }
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
--- Call DescribeCacheEngineVersions asynchronously, invoking a callback when done
-- @param DescribeCacheEngineVersionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheEngineVersionsAsync(DescribeCacheEngineVersionsMessage, cb)
	assert(DescribeCacheEngineVersionsMessage, "You must provide a DescribeCacheEngineVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheEngineVersions",
	}
	for header,value in pairs(DescribeCacheEngineVersionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheEngineVersionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheEngineVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheEngineVersionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheEngineVersionsSync(DescribeCacheEngineVersionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheEngineVersionsAsync(DescribeCacheEngineVersionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCacheSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteCacheSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCacheSubnetGroupAsync(DeleteCacheSubnetGroupMessage, cb)
	assert(DeleteCacheSubnetGroupMessage, "You must provide a DeleteCacheSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCacheSubnetGroup",
	}
	for header,value in pairs(DeleteCacheSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCacheSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCacheSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCacheSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCacheSubnetGroupSync(DeleteCacheSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCacheSubnetGroupAsync(DeleteCacheSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetCacheParameterGroup asynchronously, invoking a callback when done
-- @param ResetCacheParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetCacheParameterGroupAsync(ResetCacheParameterGroupMessage, cb)
	assert(ResetCacheParameterGroupMessage, "You must provide a ResetCacheParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetCacheParameterGroup",
	}
	for header,value in pairs(ResetCacheParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetCacheParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetCacheParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetCacheParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ResetCacheParameterGroupSync(ResetCacheParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetCacheParameterGroupAsync(ResetCacheParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCacheSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteCacheSecurityGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCacheSecurityGroupAsync(DeleteCacheSecurityGroupMessage, cb)
	assert(DeleteCacheSecurityGroupMessage, "You must provide a DeleteCacheSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCacheSecurityGroup",
	}
	for header,value in pairs(DeleteCacheSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCacheSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCacheSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCacheSecurityGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCacheSecurityGroupSync(DeleteCacheSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCacheSecurityGroupAsync(DeleteCacheSecurityGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventsAsync(DescribeEventsMessage, cb)
	assert(DescribeEventsMessage, "You must provide a DescribeEventsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEvents",
	}
	for header,value in pairs(DescribeEventsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEventsSync(DescribeEventsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(DescribeEventsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, cb)
	assert(DescribeEngineDefaultParametersMessage, "You must provide a DescribeEngineDefaultParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultParameters",
	}
	for header,value in pairs(DescribeEngineDefaultParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEngineDefaultParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEngineDefaultParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEngineDefaultParametersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEngineDefaultParametersSync(DescribeEngineDefaultParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCacheSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeCacheSubnetGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheSubnetGroupsAsync(DescribeCacheSubnetGroupsMessage, cb)
	assert(DescribeCacheSubnetGroupsMessage, "You must provide a DescribeCacheSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheSubnetGroups",
	}
	for header,value in pairs(DescribeCacheSubnetGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheSubnetGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheSubnetGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheSubnetGroupsSync(DescribeCacheSubnetGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheSubnetGroupsAsync(DescribeCacheSubnetGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCacheSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeCacheSecurityGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheSecurityGroupsAsync(DescribeCacheSecurityGroupsMessage, cb)
	assert(DescribeCacheSecurityGroupsMessage, "You must provide a DescribeCacheSecurityGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheSecurityGroups",
	}
	for header,value in pairs(DescribeCacheSecurityGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheSecurityGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheSecurityGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheSecurityGroupsSync(DescribeCacheSecurityGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheSecurityGroupsAsync(DescribeCacheSecurityGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootCacheCluster asynchronously, invoking a callback when done
-- @param RebootCacheClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootCacheClusterAsync(RebootCacheClusterMessage, cb)
	assert(RebootCacheClusterMessage, "You must provide a RebootCacheClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootCacheCluster",
	}
	for header,value in pairs(RebootCacheClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootCacheClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootCacheCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootCacheClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RebootCacheClusterSync(RebootCacheClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootCacheClusterAsync(RebootCacheClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DecreaseReplicaCount asynchronously, invoking a callback when done
-- @param DecreaseReplicaCountMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DecreaseReplicaCountAsync(DecreaseReplicaCountMessage, cb)
	assert(DecreaseReplicaCountMessage, "You must provide a DecreaseReplicaCountMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DecreaseReplicaCount",
	}
	for header,value in pairs(DecreaseReplicaCountMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DecreaseReplicaCountMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DecreaseReplicaCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DecreaseReplicaCountMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DecreaseReplicaCountSync(DecreaseReplicaCountMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DecreaseReplicaCountAsync(DecreaseReplicaCountMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyCacheSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyCacheSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyCacheSubnetGroupAsync(ModifyCacheSubnetGroupMessage, cb)
	assert(ModifyCacheSubnetGroupMessage, "You must provide a ModifyCacheSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyCacheSubnetGroup",
	}
	for header,value in pairs(ModifyCacheSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyCacheSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyCacheSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyCacheSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyCacheSubnetGroupSync(ModifyCacheSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyCacheSubnetGroupAsync(ModifyCacheSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCacheParameterGroups asynchronously, invoking a callback when done
-- @param DescribeCacheParameterGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheParameterGroupsAsync(DescribeCacheParameterGroupsMessage, cb)
	assert(DescribeCacheParameterGroupsMessage, "You must provide a DescribeCacheParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheParameterGroups",
	}
	for header,value in pairs(DescribeCacheParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheParameterGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheParameterGroupsSync(DescribeCacheParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheParameterGroupsAsync(DescribeCacheParameterGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCacheParameterGroup asynchronously, invoking a callback when done
-- @param DeleteCacheParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCacheParameterGroupAsync(DeleteCacheParameterGroupMessage, cb)
	assert(DeleteCacheParameterGroupMessage, "You must provide a DeleteCacheParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCacheParameterGroup",
	}
	for header,value in pairs(DeleteCacheParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCacheParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCacheParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCacheParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCacheParameterGroupSync(DeleteCacheParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCacheParameterGroupAsync(DeleteCacheParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeCacheSecurityGroupIngress asynchronously, invoking a callback when done
-- @param AuthorizeCacheSecurityGroupIngressMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AuthorizeCacheSecurityGroupIngressAsync(AuthorizeCacheSecurityGroupIngressMessage, cb)
	assert(AuthorizeCacheSecurityGroupIngressMessage, "You must provide a AuthorizeCacheSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeCacheSecurityGroupIngress",
	}
	for header,value in pairs(AuthorizeCacheSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeCacheSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeCacheSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeCacheSecurityGroupIngressMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AuthorizeCacheSecurityGroupIngressSync(AuthorizeCacheSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeCacheSecurityGroupIngressAsync(AuthorizeCacheSecurityGroupIngressMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopySnapshot asynchronously, invoking a callback when done
-- @param CopySnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopySnapshotAsync(CopySnapshotMessage, cb)
	assert(CopySnapshotMessage, "You must provide a CopySnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopySnapshot",
	}
	for header,value in pairs(CopySnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopySnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopySnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopySnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CopySnapshotSync(CopySnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopySnapshotAsync(CopySnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceMessage, cb)
	assert(AddTagsToResourceMessage, "You must provide a AddTagsToResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTagsToResource",
	}
	for header,value in pairs(AddTagsToResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsToResourceSync(AddTagsToResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(AddTagsToResourceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call IncreaseReplicaCount asynchronously, invoking a callback when done
-- @param IncreaseReplicaCountMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.IncreaseReplicaCountAsync(IncreaseReplicaCountMessage, cb)
	assert(IncreaseReplicaCountMessage, "You must provide a IncreaseReplicaCountMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".IncreaseReplicaCount",
	}
	for header,value in pairs(IncreaseReplicaCountMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", IncreaseReplicaCountMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call IncreaseReplicaCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IncreaseReplicaCountMessage
-- @return response
-- @return error_type
-- @return error_message
function M.IncreaseReplicaCountSync(IncreaseReplicaCountMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.IncreaseReplicaCountAsync(IncreaseReplicaCountMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCacheClusters asynchronously, invoking a callback when done
-- @param DescribeCacheClustersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheClustersAsync(DescribeCacheClustersMessage, cb)
	assert(DescribeCacheClustersMessage, "You must provide a DescribeCacheClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheClusters",
	}
	for header,value in pairs(DescribeCacheClustersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheClustersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheClustersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheClustersSync(DescribeCacheClustersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheClustersAsync(DescribeCacheClustersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyCacheCluster asynchronously, invoking a callback when done
-- @param ModifyCacheClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyCacheClusterAsync(ModifyCacheClusterMessage, cb)
	assert(ModifyCacheClusterMessage, "You must provide a ModifyCacheClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyCacheCluster",
	}
	for header,value in pairs(ModifyCacheClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyCacheClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyCacheCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyCacheClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyCacheClusterSync(ModifyCacheClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyCacheClusterAsync(ModifyCacheClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReplicationGroup asynchronously, invoking a callback when done
-- @param CreateReplicationGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReplicationGroupAsync(CreateReplicationGroupMessage, cb)
	assert(CreateReplicationGroupMessage, "You must provide a CreateReplicationGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateReplicationGroup",
	}
	for header,value in pairs(CreateReplicationGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReplicationGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReplicationGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReplicationGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReplicationGroupSync(CreateReplicationGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReplicationGroupAsync(CreateReplicationGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, cb)
	assert(RemoveTagsFromResourceMessage, "You must provide a RemoveTagsFromResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromResource",
	}
	for header,value in pairs(RemoveTagsFromResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsFromResourceSync(RemoveTagsFromResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCacheParameters asynchronously, invoking a callback when done
-- @param DescribeCacheParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCacheParametersAsync(DescribeCacheParametersMessage, cb)
	assert(DescribeCacheParametersMessage, "You must provide a DescribeCacheParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCacheParameters",
	}
	for header,value in pairs(DescribeCacheParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCacheParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCacheParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCacheParametersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCacheParametersSync(DescribeCacheParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCacheParametersAsync(DescribeCacheParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCacheParameterGroup asynchronously, invoking a callback when done
-- @param CreateCacheParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCacheParameterGroupAsync(CreateCacheParameterGroupMessage, cb)
	assert(CreateCacheParameterGroupMessage, "You must provide a CreateCacheParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCacheParameterGroup",
	}
	for header,value in pairs(CreateCacheParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCacheParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCacheParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCacheParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCacheParameterGroupSync(CreateCacheParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCacheParameterGroupAsync(CreateCacheParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestFailover asynchronously, invoking a callback when done
-- @param TestFailoverMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestFailoverAsync(TestFailoverMessage, cb)
	assert(TestFailoverMessage, "You must provide a TestFailoverMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestFailover",
	}
	for header,value in pairs(TestFailoverMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestFailoverMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestFailover synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestFailoverMessage
-- @return response
-- @return error_type
-- @return error_message
function M.TestFailoverSync(TestFailoverMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestFailoverAsync(TestFailoverMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReplicationGroups asynchronously, invoking a callback when done
-- @param DescribeReplicationGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReplicationGroupsAsync(DescribeReplicationGroupsMessage, cb)
	assert(DescribeReplicationGroupsMessage, "You must provide a DescribeReplicationGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReplicationGroups",
	}
	for header,value in pairs(DescribeReplicationGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReplicationGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReplicationGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReplicationGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReplicationGroupsSync(DescribeReplicationGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReplicationGroupsAsync(DescribeReplicationGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReplicationGroup asynchronously, invoking a callback when done
-- @param DeleteReplicationGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReplicationGroupAsync(DeleteReplicationGroupMessage, cb)
	assert(DeleteReplicationGroupMessage, "You must provide a DeleteReplicationGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReplicationGroup",
	}
	for header,value in pairs(DeleteReplicationGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReplicationGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReplicationGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReplicationGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReplicationGroupSync(DeleteReplicationGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReplicationGroupAsync(DeleteReplicationGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedCacheNodesOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedCacheNodesOfferingsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedCacheNodesOfferingsAsync(DescribeReservedCacheNodesOfferingsMessage, cb)
	assert(DescribeReservedCacheNodesOfferingsMessage, "You must provide a DescribeReservedCacheNodesOfferingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedCacheNodesOfferings",
	}
	for header,value in pairs(DescribeReservedCacheNodesOfferingsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedCacheNodesOfferingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedCacheNodesOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedCacheNodesOfferingsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReservedCacheNodesOfferingsSync(DescribeReservedCacheNodesOfferingsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedCacheNodesOfferingsAsync(DescribeReservedCacheNodesOfferingsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCacheCluster asynchronously, invoking a callback when done
-- @param CreateCacheClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCacheClusterAsync(CreateCacheClusterMessage, cb)
	assert(CreateCacheClusterMessage, "You must provide a CreateCacheClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCacheCluster",
	}
	for header,value in pairs(CreateCacheClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCacheClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCacheCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCacheClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCacheClusterSync(CreateCacheClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCacheClusterAsync(CreateCacheClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCacheSubnetGroup asynchronously, invoking a callback when done
-- @param CreateCacheSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCacheSubnetGroupAsync(CreateCacheSubnetGroupMessage, cb)
	assert(CreateCacheSubnetGroupMessage, "You must provide a CreateCacheSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCacheSubnetGroup",
	}
	for header,value in pairs(CreateCacheSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCacheSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCacheSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCacheSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCacheSubnetGroupSync(CreateCacheSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCacheSubnetGroupAsync(CreateCacheSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationGroup asynchronously, invoking a callback when done
-- @param ModifyReplicationGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyReplicationGroupAsync(ModifyReplicationGroupMessage, cb)
	assert(ModifyReplicationGroupMessage, "You must provide a ModifyReplicationGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyReplicationGroup",
	}
	for header,value in pairs(ModifyReplicationGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyReplicationGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyReplicationGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyReplicationGroupSync(ModifyReplicationGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationGroupAsync(ModifyReplicationGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyCacheParameterGroup asynchronously, invoking a callback when done
-- @param ModifyCacheParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyCacheParameterGroupAsync(ModifyCacheParameterGroupMessage, cb)
	assert(ModifyCacheParameterGroupMessage, "You must provide a ModifyCacheParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyCacheParameterGroup",
	}
	for header,value in pairs(ModifyCacheParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyCacheParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyCacheParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyCacheParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyCacheParameterGroupSync(ModifyCacheParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyCacheParameterGroupAsync(ModifyCacheParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshots asynchronously, invoking a callback when done
-- @param DescribeSnapshotsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSnapshotsAsync(DescribeSnapshotsMessage, cb)
	assert(DescribeSnapshotsMessage, "You must provide a DescribeSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSnapshots",
	}
	for header,value in pairs(DescribeSnapshotsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSnapshotsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSnapshotsSync(DescribeSnapshotsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotsAsync(DescribeSnapshotsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyReplicationGroupShardConfiguration asynchronously, invoking a callback when done
-- @param ModifyReplicationGroupShardConfigurationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyReplicationGroupShardConfigurationAsync(ModifyReplicationGroupShardConfigurationMessage, cb)
	assert(ModifyReplicationGroupShardConfigurationMessage, "You must provide a ModifyReplicationGroupShardConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyReplicationGroupShardConfiguration",
	}
	for header,value in pairs(ModifyReplicationGroupShardConfigurationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyReplicationGroupShardConfigurationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyReplicationGroupShardConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyReplicationGroupShardConfigurationMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyReplicationGroupShardConfigurationSync(ModifyReplicationGroupShardConfigurationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyReplicationGroupShardConfigurationAsync(ModifyReplicationGroupShardConfigurationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCacheCluster asynchronously, invoking a callback when done
-- @param DeleteCacheClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCacheClusterAsync(DeleteCacheClusterMessage, cb)
	assert(DeleteCacheClusterMessage, "You must provide a DeleteCacheClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCacheCluster",
	}
	for header,value in pairs(DeleteCacheClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCacheClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCacheCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCacheClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCacheClusterSync(DeleteCacheClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCacheClusterAsync(DeleteCacheClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedCacheNodesOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedCacheNodesOfferingMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseReservedCacheNodesOfferingAsync(PurchaseReservedCacheNodesOfferingMessage, cb)
	assert(PurchaseReservedCacheNodesOfferingMessage, "You must provide a PurchaseReservedCacheNodesOfferingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedCacheNodesOffering",
	}
	for header,value in pairs(PurchaseReservedCacheNodesOfferingMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PurchaseReservedCacheNodesOfferingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseReservedCacheNodesOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseReservedCacheNodesOfferingMessage
-- @return response
-- @return error_type
-- @return error_message
function M.PurchaseReservedCacheNodesOfferingSync(PurchaseReservedCacheNodesOfferingMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedCacheNodesOfferingAsync(PurchaseReservedCacheNodesOfferingMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshot asynchronously, invoking a callback when done
-- @param DeleteSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSnapshotAsync(DeleteSnapshotMessage, cb)
	assert(DeleteSnapshotMessage, "You must provide a DeleteSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSnapshot",
	}
	for header,value in pairs(DeleteSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSnapshotSync(DeleteSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotAsync(DeleteSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeCacheSecurityGroupIngress asynchronously, invoking a callback when done
-- @param RevokeCacheSecurityGroupIngressMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeCacheSecurityGroupIngressAsync(RevokeCacheSecurityGroupIngressMessage, cb)
	assert(RevokeCacheSecurityGroupIngressMessage, "You must provide a RevokeCacheSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeCacheSecurityGroupIngress",
	}
	for header,value in pairs(RevokeCacheSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeCacheSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeCacheSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeCacheSecurityGroupIngressMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RevokeCacheSecurityGroupIngressSync(RevokeCacheSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeCacheSecurityGroupIngressAsync(RevokeCacheSecurityGroupIngressMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAllowedNodeTypeModifications asynchronously, invoking a callback when done
-- @param ListAllowedNodeTypeModificationsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAllowedNodeTypeModificationsAsync(ListAllowedNodeTypeModificationsMessage, cb)
	assert(ListAllowedNodeTypeModificationsMessage, "You must provide a ListAllowedNodeTypeModificationsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAllowedNodeTypeModifications",
	}
	for header,value in pairs(ListAllowedNodeTypeModificationsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAllowedNodeTypeModificationsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAllowedNodeTypeModifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAllowedNodeTypeModificationsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ListAllowedNodeTypeModificationsSync(ListAllowedNodeTypeModificationsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAllowedNodeTypeModificationsAsync(ListAllowedNodeTypeModificationsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedCacheNodes asynchronously, invoking a callback when done
-- @param DescribeReservedCacheNodesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedCacheNodesAsync(DescribeReservedCacheNodesMessage, cb)
	assert(DescribeReservedCacheNodesMessage, "You must provide a DescribeReservedCacheNodesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedCacheNodes",
	}
	for header,value in pairs(DescribeReservedCacheNodesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedCacheNodesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedCacheNodes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedCacheNodesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReservedCacheNodesSync(DescribeReservedCacheNodesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedCacheNodesAsync(DescribeReservedCacheNodesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCacheSecurityGroup asynchronously, invoking a callback when done
-- @param CreateCacheSecurityGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCacheSecurityGroupAsync(CreateCacheSecurityGroupMessage, cb)
	assert(CreateCacheSecurityGroupMessage, "You must provide a CreateCacheSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCacheSecurityGroup",
	}
	for header,value in pairs(CreateCacheSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCacheSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCacheSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCacheSecurityGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCacheSecurityGroupSync(CreateCacheSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCacheSecurityGroupAsync(CreateCacheSecurityGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceMessage, cb)
	assert(ListTagsForResourceMessage, "You must provide a ListTagsForResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshot asynchronously, invoking a callback when done
-- @param CreateSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSnapshotAsync(CreateSnapshotMessage, cb)
	assert(CreateSnapshotMessage, "You must provide a CreateSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSnapshot",
	}
	for header,value in pairs(CreateSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSnapshotSync(CreateSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotAsync(CreateSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
