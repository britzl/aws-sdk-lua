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

local NodeGroupMember_keys = { "CurrentRole" = true, "PreferredAvailabilityZone" = true, "CacheNodeId" = true, "ReadEndpoint" = true, "CacheClusterId" = true, nil }

function M.AssertNodeGroupMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupMember to be of type 'table'")
	if struct["CurrentRole"] then M.AssertString(struct["CurrentRole"]) end
	if struct["PreferredAvailabilityZone"] then M.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["CacheNodeId"] then M.AssertString(struct["CacheNodeId"]) end
	if struct["ReadEndpoint"] then M.AssertEndpoint(struct["ReadEndpoint"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(NodeGroupMember_keys[k], "NodeGroupMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupMember
-- &lt;p&gt;Represents a single node within a node group (shard).&lt;/p&gt;
-- @param CurrentRole [String] &lt;p&gt;The role that is currently assigned to the node - &lt;code&gt;primary&lt;/code&gt; or &lt;code&gt;replica&lt;/code&gt;.&lt;/p&gt;
-- @param PreferredAvailabilityZone [String] &lt;p&gt;The name of the Availability Zone in which the node is located.&lt;/p&gt;
-- @param CacheNodeId [String] &lt;p&gt;The ID of the node within its cache cluster. A node ID is a numeric identifier (0001, 0002, etc.).&lt;/p&gt;
-- @param ReadEndpoint [Endpoint] &lt;p&gt;Represents a single node within a node group (shard).&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The ID of the cache cluster to which the node belongs.&lt;/p&gt;
function M.NodeGroupMember(CurrentRole, PreferredAvailabilityZone, CacheNodeId, ReadEndpoint, CacheClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeGroupMember")
	local t = { 
		["CurrentRole"] = CurrentRole,
		["PreferredAvailabilityZone"] = PreferredAvailabilityZone,
		["CacheNodeId"] = CacheNodeId,
		["ReadEndpoint"] = ReadEndpoint,
		["CacheClusterId"] = CacheClusterId,
	}
	M.AssertNodeGroupMember(t)
	return t
end

local RebootCacheClusterResult_keys = { "CacheCluster" = true, nil }

function M.AssertRebootCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then M.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(RebootCacheClusterResult_keys[k], "RebootCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootCacheClusterResult
--  
-- @param CacheCluster [CacheCluster]  
function M.RebootCacheClusterResult(CacheCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootCacheClusterResult")
	local t = { 
		["CacheCluster"] = CacheCluster,
	}
	M.AssertRebootCacheClusterResult(t)
	return t
end

local CacheSubnetGroup_keys = { "VpcId" = true, "CacheSubnetGroupDescription" = true, "Subnets" = true, "CacheSubnetGroupName" = true, nil }

function M.AssertCacheSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroup to be of type 'table'")
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["CacheSubnetGroupDescription"] then M.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["Subnets"] then M.AssertSubnetList(struct["Subnets"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroup_keys[k], "CacheSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroup
-- &lt;p&gt;Represents the output of one of the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreateCacheSubnetGroup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ModifyCacheSubnetGroup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param VpcId [String] &lt;p&gt;The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupDescription [String] &lt;p&gt;The description of the cache subnet group.&lt;/p&gt;
-- @param Subnets [SubnetList] &lt;p&gt;A list of subnets associated with the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group.&lt;/p&gt;
function M.CacheSubnetGroup(VpcId, CacheSubnetGroupDescription, Subnets, CacheSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroup")
	local t = { 
		["VpcId"] = VpcId,
		["CacheSubnetGroupDescription"] = CacheSubnetGroupDescription,
		["Subnets"] = Subnets,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
	}
	M.AssertCacheSubnetGroup(t)
	return t
end

local CreateSnapshotMessage_keys = { "SnapshotName" = true, "CacheClusterId" = true, "ReplicationGroupId" = true, nil }

function M.AssertCreateSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotName"], "Expected key SnapshotName to exist in table")
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotMessage_keys[k], "CreateSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CreateSnapshot&lt;/code&gt; operation.&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;A name for the snapshot being created.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The identifier of an existing cache cluster. The snapshot is created from this cache cluster.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The identifier of an existing replication group. The snapshot is created from this replication group.&lt;/p&gt;
-- Required parameter: SnapshotName
function M.CreateSnapshotMessage(SnapshotName, CacheClusterId, ReplicationGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotMessage")
	local t = { 
		["SnapshotName"] = SnapshotName,
		["CacheClusterId"] = CacheClusterId,
		["ReplicationGroupId"] = ReplicationGroupId,
	}
	M.AssertCreateSnapshotMessage(t)
	return t
end

local ResetCacheParameterGroupMessage_keys = { "CacheParameterGroupName" = true, "ResetAllParameters" = true, "ParameterNameValues" = true, nil }

function M.AssertResetCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ResetAllParameters"] then M.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["ParameterNameValues"] then M.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(ResetCacheParameterGroupMessage_keys[k], "ResetCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetCacheParameterGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;ResetCacheParameterGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group to reset.&lt;/p&gt;
-- @param ResetAllParameters [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, all parameters in the cache parameter group are reset to their default values. If &lt;code&gt;false&lt;/code&gt;, only the parameters listed by &lt;code&gt;ParameterNameValues&lt;/code&gt; are reset to their default values.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;true&lt;/code&gt; | &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- @param ParameterNameValues [ParameterNameValueList] &lt;p&gt;An array of parameter names to reset to their default values. If &lt;code&gt;ResetAllParameters&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, do not use &lt;code&gt;ParameterNameValues&lt;/code&gt;. If &lt;code&gt;ResetAllParameters&lt;/code&gt; is &lt;code&gt;false&lt;/code&gt;, you must specify the name of at least one parameter to reset.&lt;/p&gt;
-- Required parameter: CacheParameterGroupName
function M.ResetCacheParameterGroupMessage(CacheParameterGroupName, ResetAllParameters, ParameterNameValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetCacheParameterGroupMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["ResetAllParameters"] = ResetAllParameters,
		["ParameterNameValues"] = ParameterNameValues,
	}
	M.AssertResetCacheParameterGroupMessage(t)
	return t
end

local CacheSubnetGroupMessage_keys = { "Marker" = true, "CacheSubnetGroups" = true, nil }

function M.AssertCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheSubnetGroups"] then M.AssertCacheSubnetGroups(struct["CacheSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroupMessage_keys[k], "CacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeCacheSubnetGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheSubnetGroups [CacheSubnetGroups] &lt;p&gt;A list of cache subnet groups. Each element in the list contains detailed information about one group.&lt;/p&gt;
function M.CacheSubnetGroupMessage(Marker, CacheSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheSubnetGroups"] = CacheSubnetGroups,
	}
	M.AssertCacheSubnetGroupMessage(t)
	return t
end

local RevokeCacheSecurityGroupIngressResult_keys = { "CacheSecurityGroup" = true, nil }

function M.AssertRevokeCacheSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeCacheSecurityGroupIngressResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then M.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(RevokeCacheSecurityGroupIngressResult_keys[k], "RevokeCacheSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeCacheSecurityGroupIngressResult
--  
-- @param CacheSecurityGroup [CacheSecurityGroup]  
function M.RevokeCacheSecurityGroupIngressResult(CacheSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeCacheSecurityGroupIngressResult")
	local t = { 
		["CacheSecurityGroup"] = CacheSecurityGroup,
	}
	M.AssertRevokeCacheSecurityGroupIngressResult(t)
	return t
end

local TestFailoverMessage_keys = { "NodeGroupId" = true, "ReplicationGroupId" = true, nil }

function M.AssertTestFailoverMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestFailoverMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["NodeGroupId"], "Expected key NodeGroupId to exist in table")
	if struct["NodeGroupId"] then M.AssertString(struct["NodeGroupId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(TestFailoverMessage_keys[k], "TestFailoverMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestFailoverMessage
--  
-- @param NodeGroupId [String] &lt;p&gt;The name of the node group (called shard in the console) in this replication group on which automatic failover is to be tested. You may test automatic failover on up to 5 node groups in any rolling 24-hour period.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The name of the replication group (console: cluster) whose automatic failover is being tested by this operation.&lt;/p&gt;
-- Required parameter: ReplicationGroupId
-- Required parameter: NodeGroupId
function M.TestFailoverMessage(NodeGroupId, ReplicationGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestFailoverMessage")
	local t = { 
		["NodeGroupId"] = NodeGroupId,
		["ReplicationGroupId"] = ReplicationGroupId,
	}
	M.AssertTestFailoverMessage(t)
	return t
end

local SnapshotNotFoundFault_keys = { nil }

function M.AssertSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotNotFoundFault_keys[k], "SnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotNotFoundFault
-- &lt;p&gt;The requested snapshot name does not refer to an existing snapshot.&lt;/p&gt;
function M.SnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotNotFoundFault")
	local t = { 
	}
	M.AssertSnapshotNotFoundFault(t)
	return t
end

local InvalidSnapshotStateFault_keys = { nil }

function M.AssertInvalidSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSnapshotStateFault_keys[k], "InvalidSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnapshotStateFault
-- &lt;p&gt;The current state of the snapshot does not allow the requested operation to occur.&lt;/p&gt;
function M.InvalidSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnapshotStateFault")
	local t = { 
	}
	M.AssertInvalidSnapshotStateFault(t)
	return t
end

local AllowedNodeTypeModificationsMessage_keys = { "ScaleUpModifications" = true, nil }

function M.AssertAllowedNodeTypeModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AllowedNodeTypeModificationsMessage to be of type 'table'")
	if struct["ScaleUpModifications"] then M.AssertNodeTypeList(struct["ScaleUpModifications"]) end
	for k,_ in pairs(struct) do
		assert(AllowedNodeTypeModificationsMessage_keys[k], "AllowedNodeTypeModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AllowedNodeTypeModificationsMessage
-- &lt;p&gt;Represents the allowed node types you can use to modify your cache cluster or replication group.&lt;/p&gt;
-- @param ScaleUpModifications [NodeTypeList] &lt;p&gt;A string list, each element of which specifies a cache node type which you can use to scale your cache cluster or replication group.&lt;/p&gt; &lt;p&gt;When scaling up a Redis cluster or replication group using &lt;code&gt;ModifyCacheCluster&lt;/code&gt; or &lt;code&gt;ModifyReplicationGroup&lt;/code&gt;, use a value from this list for the &lt;code&gt;CacheNodeType&lt;/code&gt; parameter.&lt;/p&gt;
function M.AllowedNodeTypeModificationsMessage(ScaleUpModifications, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AllowedNodeTypeModificationsMessage")
	local t = { 
		["ScaleUpModifications"] = ScaleUpModifications,
	}
	M.AssertAllowedNodeTypeModificationsMessage(t)
	return t
end

local CreateCacheClusterMessage_keys = { "CacheParameterGroupName" = true, "CacheClusterId" = true, "ReplicationGroupId" = true, "SnapshotRetentionLimit" = true, "NotificationTopicArn" = true, "CacheNodeType" = true, "Engine" = true, "AuthToken" = true, "Tags" = true, "NumCacheNodes" = true, "AutoMinorVersionUpgrade" = true, "PreferredMaintenanceWindow" = true, "CacheSubnetGroupName" = true, "CacheSecurityGroupNames" = true, "SnapshotName" = true, "SecurityGroupIds" = true, "PreferredAvailabilityZones" = true, "EngineVersion" = true, "AZMode" = true, "SnapshotArns" = true, "PreferredAvailabilityZone" = true, "SnapshotWindow" = true, "Port" = true, nil }

function M.AssertCreateCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["AuthToken"] then M.AssertString(struct["AuthToken"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["NumCacheNodes"] then M.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["CacheSecurityGroupNames"] then M.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["PreferredAvailabilityZones"] then M.AssertPreferredAvailabilityZoneList(struct["PreferredAvailabilityZones"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["AZMode"] then M.AssertAZMode(struct["AZMode"]) end
	if struct["SnapshotArns"] then M.AssertSnapshotArnsList(struct["SnapshotArns"]) end
	if struct["PreferredAvailabilityZone"] then M.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheClusterMessage_keys[k], "CreateCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheClusterMessage
-- &lt;p&gt;Represents the input of a CreateCacheCluster operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the parameter group to associate with this cache cluster. If this argument is omitted, the default parameter group for the specified engine is used. You cannot use any parameter group which has &lt;code&gt;cluster-enabled='yes'&lt;/code&gt; when creating a cluster.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The node group (shard) identifier. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Constraints:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A name must contain from 1 to 20 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The first character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A name cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ReplicationGroupId [String] &lt;important&gt; &lt;p&gt;Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;The ID of the replication group to which this cache cluster should belong. If this parameter is specified, the cache cluster is added to the specified replication group as a read replica; otherwise, the cache cluster is a standalone primary that is not part of any replication group.&lt;/p&gt; &lt;p&gt;If the specified replication group is Multi-AZ enabled and the Availability Zone is not specified, the cache cluster is created in Availability Zones that provide the best spread of read replicas across Availability Zones.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Default: 0 (i.e., automatic backups are disabled for this cache cluster).&lt;/p&gt;
-- @param NotificationTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The Amazon SNS topic owner must be the same as the cache cluster owner.&lt;/p&gt; &lt;/note&gt;
-- @param CacheNodeType [String] &lt;p&gt;The compute and memory capacity of the nodes in the node group (shard).&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The name of the cache engine to be used for this cache cluster.&lt;/p&gt; &lt;p&gt;Valid values for this parameter are: &lt;code&gt;memcached&lt;/code&gt; | &lt;code&gt;redis&lt;/code&gt; &lt;/p&gt;
-- @param AuthToken [String] &lt;p&gt; &lt;b&gt;Reserved parameter.&lt;/b&gt; The password used to access a password protected server.&lt;/p&gt; &lt;p&gt;Password constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be only printable ASCII characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be at least 16 characters and no more than 128 characters in length.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot contain any of the following characters: '/', '&quot;', or &quot;@&quot;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://redis.io/commands/AUTH&quot;&gt;AUTH password&lt;/a&gt; at Redis.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value.&lt;/p&gt;
-- @param NumCacheNodes [IntegerOptional] &lt;p&gt;The initial number of cache nodes that the cache cluster has.&lt;/p&gt; &lt;p&gt;For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.&lt;/p&gt; &lt;p&gt;If you need more than 20 nodes for your Memcached cluster, please fill out the ElastiCache Limit Increase Request form at &lt;a href=&quot;http://aws.amazon.com/contact-us/elasticache-node-limit-request/&quot;&gt;http://aws.amazon.com/contact-us/elasticache-node-limit-request/&lt;/a&gt;.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cache cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the subnet group to be used for the cache cluster.&lt;/p&gt; &lt;p&gt;Use this parameter only when you are creating a cache cluster in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SubnetGroups.html&quot;&gt;Subnets and Subnet Groups&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param CacheSecurityGroupNames [CacheSecurityGroupNameList] &lt;p&gt;A list of security group names to associate with this cache cluster.&lt;/p&gt; &lt;p&gt;Use this parameter only when you are creating a cache cluster outside of an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;The name of a Redis snapshot from which to restore data into the new node group (shard). The snapshot status changes to &lt;code&gt;restoring&lt;/code&gt; while the new node group (shard) is being created.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param SecurityGroupIds [SecurityGroupIdsList] &lt;p&gt;One or more VPC security groups associated with the cache cluster.&lt;/p&gt; &lt;p&gt;Use this parameter only when you are creating a cache cluster in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt;
-- @param PreferredAvailabilityZones [PreferredAvailabilityZoneList] &lt;p&gt;A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.&lt;/p&gt; &lt;p&gt;This option is only supported on Memcached.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you are creating your cache cluster in an Amazon VPC (recommended) you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group.&lt;/p&gt; &lt;p&gt;The number of Availability Zones listed must equal the value of &lt;code&gt;NumCacheNodes&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;If you want all the nodes in the same Availability Zone, use &lt;code&gt;PreferredAvailabilityZone&lt;/code&gt; instead, or repeat the Availability Zone multiple times in the list.&lt;/p&gt; &lt;p&gt;Default: System chosen Availability Zones.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version number of the cache engine to be used for this cache cluster. To view the supported cache engine versions, use the DescribeCacheEngineVersions operation.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Important:&lt;/b&gt; You can upgrade to a newer engine version (see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement&quot;&gt;Selecting a Cache Engine and Version&lt;/a&gt;), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cache cluster or replication group and create it anew with the earlier engine version. &lt;/p&gt;
-- @param AZMode [AZMode] &lt;p&gt;Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region.&lt;/p&gt; &lt;p&gt;This parameter is only supported for Memcached cache clusters.&lt;/p&gt; &lt;p&gt;If the &lt;code&gt;AZMode&lt;/code&gt; and &lt;code&gt;PreferredAvailabilityZones&lt;/code&gt; are not specified, ElastiCache assumes &lt;code&gt;single-az&lt;/code&gt; mode.&lt;/p&gt;
-- @param SnapshotArns [SnapshotArnsList] &lt;p&gt;A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies a Redis RDB snapshot file stored in Amazon S3. The snapshot file is used to populate the node group (shard). The Amazon S3 object name in the ARN cannot contain any commas.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Example of an Amazon S3 ARN: &lt;code&gt;arn:aws:s3:::my_bucket/snapshot1.rdb&lt;/code&gt; &lt;/p&gt;
-- @param PreferredAvailabilityZone [String] &lt;p&gt;The EC2 Availability Zone in which the cache cluster is created.&lt;/p&gt; &lt;p&gt;All nodes belonging to this Memcached cache cluster are placed in the preferred Availability Zone. If you want to create your nodes across multiple Availability Zones, use &lt;code&gt;PreferredAvailabilityZones&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Default: System chosen Availability Zone.&lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;05:00-09:00&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port number on which each of the cache nodes accepts connections.&lt;/p&gt;
-- Required parameter: CacheClusterId
function M.CreateCacheClusterMessage(CacheParameterGroupName, CacheClusterId, ReplicationGroupId, SnapshotRetentionLimit, NotificationTopicArn, CacheNodeType, Engine, AuthToken, Tags, NumCacheNodes, AutoMinorVersionUpgrade, PreferredMaintenanceWindow, CacheSubnetGroupName, CacheSecurityGroupNames, SnapshotName, SecurityGroupIds, PreferredAvailabilityZones, EngineVersion, AZMode, SnapshotArns, PreferredAvailabilityZone, SnapshotWindow, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheClusterMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["CacheClusterId"] = CacheClusterId,
		["ReplicationGroupId"] = ReplicationGroupId,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["NotificationTopicArn"] = NotificationTopicArn,
		["CacheNodeType"] = CacheNodeType,
		["Engine"] = Engine,
		["AuthToken"] = AuthToken,
		["Tags"] = Tags,
		["NumCacheNodes"] = NumCacheNodes,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
		["CacheSecurityGroupNames"] = CacheSecurityGroupNames,
		["SnapshotName"] = SnapshotName,
		["SecurityGroupIds"] = SecurityGroupIds,
		["PreferredAvailabilityZones"] = PreferredAvailabilityZones,
		["EngineVersion"] = EngineVersion,
		["AZMode"] = AZMode,
		["SnapshotArns"] = SnapshotArns,
		["PreferredAvailabilityZone"] = PreferredAvailabilityZone,
		["SnapshotWindow"] = SnapshotWindow,
		["Port"] = Port,
	}
	M.AssertCreateCacheClusterMessage(t)
	return t
end

local InvalidCacheClusterStateFault_keys = { nil }

function M.AssertInvalidCacheClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCacheClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCacheClusterStateFault_keys[k], "InvalidCacheClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCacheClusterStateFault
-- &lt;p&gt;The requested cache cluster is not in the &lt;code&gt;available&lt;/code&gt; state.&lt;/p&gt;
function M.InvalidCacheClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCacheClusterStateFault")
	local t = { 
	}
	M.AssertInvalidCacheClusterStateFault(t)
	return t
end

local CacheParameterGroupDetails_keys = { "Marker" = true, "CacheNodeTypeSpecificParameters" = true, "Parameters" = true, nil }

function M.AssertCacheParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheNodeTypeSpecificParameters"] then M.AssertCacheNodeTypeSpecificParametersList(struct["CacheNodeTypeSpecificParameters"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupDetails_keys[k], "CacheParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupDetails
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeCacheParameters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheNodeTypeSpecificParameters [CacheNodeTypeSpecificParametersList] &lt;p&gt;A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.&lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;A list of &lt;a&gt;Parameter&lt;/a&gt; instances.&lt;/p&gt;
function M.CacheParameterGroupDetails(Marker, CacheNodeTypeSpecificParameters, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupDetails")
	local t = { 
		["Marker"] = Marker,
		["CacheNodeTypeSpecificParameters"] = CacheNodeTypeSpecificParameters,
		["Parameters"] = Parameters,
	}
	M.AssertCacheParameterGroupDetails(t)
	return t
end

local CacheSecurityGroup_keys = { "OwnerId" = true, "CacheSecurityGroupName" = true, "Description" = true, "EC2SecurityGroups" = true, nil }

function M.AssertCacheSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroup to be of type 'table'")
	if struct["OwnerId"] then M.AssertString(struct["OwnerId"]) end
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["EC2SecurityGroups"] then M.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroup_keys[k], "CacheSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroup
-- &lt;p&gt;Represents the output of one of the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AuthorizeCacheSecurityGroupIngress&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreateCacheSecurityGroup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;RevokeCacheSecurityGroupIngress&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param OwnerId [String] &lt;p&gt;The AWS account ID of the cache security group owner.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The name of the cache security group.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description of the cache security group.&lt;/p&gt;
-- @param EC2SecurityGroups [EC2SecurityGroupList] &lt;p&gt;A list of Amazon EC2 security groups that are associated with this cache security group.&lt;/p&gt;
function M.CacheSecurityGroup(OwnerId, CacheSecurityGroupName, Description, EC2SecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroup")
	local t = { 
		["OwnerId"] = OwnerId,
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
		["Description"] = Description,
		["EC2SecurityGroups"] = EC2SecurityGroups,
	}
	M.AssertCacheSecurityGroup(t)
	return t
end

local DeleteCacheClusterMessage_keys = { "FinalSnapshotIdentifier" = true, "CacheClusterId" = true, nil }

function M.AssertDeleteCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["FinalSnapshotIdentifier"] then M.AssertString(struct["FinalSnapshotIdentifier"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCacheClusterMessage_keys[k], "DeleteCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheClusterMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteCacheCluster&lt;/code&gt; operation.&lt;/p&gt;
-- @param FinalSnapshotIdentifier [String] &lt;p&gt;The user-supplied name of a final cache cluster snapshot. This is the unique name that identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cache cluster immediately afterward.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The cache cluster identifier for the cluster to be deleted. This parameter is not case sensitive.&lt;/p&gt;
-- Required parameter: CacheClusterId
function M.DeleteCacheClusterMessage(FinalSnapshotIdentifier, CacheClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCacheClusterMessage")
	local t = { 
		["FinalSnapshotIdentifier"] = FinalSnapshotIdentifier,
		["CacheClusterId"] = CacheClusterId,
	}
	M.AssertDeleteCacheClusterMessage(t)
	return t
end

local DescribeCacheSubnetGroupsMessage_keys = { "Marker" = true, "MaxRecords" = true, "CacheSubnetGroupName" = true, nil }

function M.AssertDescribeCacheSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheSubnetGroupsMessage_keys[k], "DescribeCacheSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheSubnetGroupsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheSubnetGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group to return details for.&lt;/p&gt;
function M.DescribeCacheSubnetGroupsMessage(Marker, MaxRecords, CacheSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheSubnetGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
	}
	M.AssertDescribeCacheSubnetGroupsMessage(t)
	return t
end

local CreateCacheParameterGroupResult_keys = { "CacheParameterGroup" = true, nil }

function M.AssertCreateCacheParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheParameterGroupResult to be of type 'table'")
	if struct["CacheParameterGroup"] then M.AssertCacheParameterGroup(struct["CacheParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheParameterGroupResult_keys[k], "CreateCacheParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheParameterGroupResult
--  
-- @param CacheParameterGroup [CacheParameterGroup]  
function M.CreateCacheParameterGroupResult(CacheParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheParameterGroupResult")
	local t = { 
		["CacheParameterGroup"] = CacheParameterGroup,
	}
	M.AssertCreateCacheParameterGroupResult(t)
	return t
end

local CreateCacheSecurityGroupResult_keys = { "CacheSecurityGroup" = true, nil }

function M.AssertCreateCacheSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSecurityGroupResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then M.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheSecurityGroupResult_keys[k], "CreateCacheSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSecurityGroupResult
--  
-- @param CacheSecurityGroup [CacheSecurityGroup]  
function M.CreateCacheSecurityGroupResult(CacheSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheSecurityGroupResult")
	local t = { 
		["CacheSecurityGroup"] = CacheSecurityGroup,
	}
	M.AssertCreateCacheSecurityGroupResult(t)
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
-- &lt;p&gt;A cost allocation Tag that can be added to an ElastiCache cluster or replication group. Tags are composed of a Key/Value pair. A tag with a null Value is permitted.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;The tag's value. May be null.&lt;/p&gt;
-- @param Key [String] &lt;p&gt;The key for the tag. May not be null.&lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local RevokeCacheSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "CacheSecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, nil }

function M.AssertRevokeCacheSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeCacheSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupName"], "Expected key EC2SecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupOwnerId"], "Expected key EC2SecurityGroupOwnerId to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(RevokeCacheSecurityGroupIngressMessage_keys[k], "RevokeCacheSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeCacheSecurityGroupIngressMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;RevokeCacheSecurityGroupIngress&lt;/code&gt; operation.&lt;/p&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The name of the Amazon EC2 security group to revoke access from.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The name of the cache security group to revoke ingress from.&lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.&lt;/p&gt;
-- Required parameter: CacheSecurityGroupName
-- Required parameter: EC2SecurityGroupName
-- Required parameter: EC2SecurityGroupOwnerId
function M.RevokeCacheSecurityGroupIngressMessage(EC2SecurityGroupName, CacheSecurityGroupName, EC2SecurityGroupOwnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeCacheSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
	}
	M.AssertRevokeCacheSecurityGroupIngressMessage(t)
	return t
end

local DescribeEngineDefaultParametersResult_keys = { "EngineDefaults" = true, nil }

function M.AssertDescribeEngineDefaultParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then M.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEngineDefaultParametersResult_keys[k], "DescribeEngineDefaultParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersResult
--  
-- @param EngineDefaults [EngineDefaults]  
function M.DescribeEngineDefaultParametersResult(EngineDefaults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultParametersResult")
	local t = { 
		["EngineDefaults"] = EngineDefaults,
	}
	M.AssertDescribeEngineDefaultParametersResult(t)
	return t
end

local CreateCacheSecurityGroupMessage_keys = { "CacheSecurityGroupName" = true, "Description" = true, nil }

function M.AssertCreateCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSecurityGroupMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheSecurityGroupMessage_keys[k], "CreateCacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSecurityGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CreateCacheSecurityGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;A name for the cache security group. This value is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word &quot;Default&quot;.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;mysecuritygroup&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description for the cache security group.&lt;/p&gt;
-- Required parameter: CacheSecurityGroupName
-- Required parameter: Description
function M.CreateCacheSecurityGroupMessage(CacheSecurityGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheSecurityGroupMessage")
	local t = { 
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
		["Description"] = Description,
	}
	M.AssertCreateCacheSecurityGroupMessage(t)
	return t
end

local AuthorizeCacheSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "CacheSecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, nil }

function M.AssertAuthorizeCacheSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeCacheSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupName"], "Expected key EC2SecurityGroupName to exist in table")
	assert(struct["EC2SecurityGroupOwnerId"], "Expected key EC2SecurityGroupOwnerId to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeCacheSecurityGroupIngressMessage_keys[k], "AuthorizeCacheSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeCacheSecurityGroupIngressMessage
-- &lt;p&gt;Represents the input of an AuthorizeCacheSecurityGroupIngress operation.&lt;/p&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The Amazon EC2 security group to be authorized for ingress to the cache security group.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The cache security group that allows network ingress.&lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS account number of the Amazon EC2 security group owner. Note that this is not the same thing as an AWS access key ID - you must provide a valid AWS account number for this parameter.&lt;/p&gt;
-- Required parameter: CacheSecurityGroupName
-- Required parameter: EC2SecurityGroupName
-- Required parameter: EC2SecurityGroupOwnerId
function M.AuthorizeCacheSecurityGroupIngressMessage(EC2SecurityGroupName, CacheSecurityGroupName, EC2SecurityGroupOwnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeCacheSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
	}
	M.AssertAuthorizeCacheSecurityGroupIngressMessage(t)
	return t
end

local EventsMessage_keys = { "Marker" = true, "Events" = true, nil }

function M.AssertEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Events"] then M.AssertEventList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(EventsMessage_keys[k], "EventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeEvents&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param Events [EventList] &lt;p&gt;A list of events. Each element in the list contains detailed information about one event.&lt;/p&gt;
function M.EventsMessage(Marker, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventsMessage")
	local t = { 
		["Marker"] = Marker,
		["Events"] = Events,
	}
	M.AssertEventsMessage(t)
	return t
end

local InsufficientCacheClusterCapacityFault_keys = { nil }

function M.AssertInsufficientCacheClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientCacheClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientCacheClusterCapacityFault_keys[k], "InsufficientCacheClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientCacheClusterCapacityFault
-- &lt;p&gt;The requested cache node type is not available in the specified Availability Zone.&lt;/p&gt;
function M.InsufficientCacheClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientCacheClusterCapacityFault")
	local t = { 
	}
	M.AssertInsufficientCacheClusterCapacityFault(t)
	return t
end

local CacheSecurityGroupNotFoundFault_keys = { nil }

function M.AssertCacheSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroupNotFoundFault_keys[k], "CacheSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupNotFoundFault
-- &lt;p&gt;The requested cache security group name does not refer to an existing cache security group.&lt;/p&gt;
function M.CacheSecurityGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroupNotFoundFault")
	local t = { 
	}
	M.AssertCacheSecurityGroupNotFoundFault(t)
	return t
end

local DescribeEventsMessage_keys = { "SourceType" = true, "Marker" = true, "MaxRecords" = true, "StartTime" = true, "Duration" = true, "SourceIdentifier" = true, "EndTime" = true, nil }

function M.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then M.AssertIntegerOptional(struct["Duration"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["EndTime"] then M.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsMessage_keys[k], "DescribeEventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeEvents&lt;/code&gt; operation.&lt;/p&gt;
-- @param SourceType [SourceType] &lt;p&gt;The event source to retrieve events for. If no value is specified, all events are returned.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param StartTime [TStamp] &lt;p&gt;The beginning of the time interval to retrieve events for, specified in ISO 8601 format.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Example:&lt;/b&gt; 2017-03-30T07:03:49.555Z&lt;/p&gt;
-- @param Duration [IntegerOptional] &lt;p&gt;The number of minutes worth of events to retrieve.&lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt;The identifier of the event source for which events are returned. If not specified, all sources are included in the response.&lt;/p&gt;
-- @param EndTime [TStamp] &lt;p&gt;The end of the time interval for which to retrieve events, specified in ISO 8601 format.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Example:&lt;/b&gt; 2017-03-30T07:03:49.555Z&lt;/p&gt;
function M.DescribeEventsMessage(SourceType, Marker, MaxRecords, StartTime, Duration, SourceIdentifier, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsMessage")
	local t = { 
		["SourceType"] = SourceType,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["StartTime"] = StartTime,
		["Duration"] = Duration,
		["SourceIdentifier"] = SourceIdentifier,
		["EndTime"] = EndTime,
	}
	M.AssertDescribeEventsMessage(t)
	return t
end

local CacheSubnetQuotaExceededFault_keys = { nil }

function M.AssertCacheSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSubnetQuotaExceededFault_keys[k], "CacheSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of subnets in a cache subnet group.&lt;/p&gt;
function M.CacheSubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetQuotaExceededFault")
	local t = { 
	}
	M.AssertCacheSubnetQuotaExceededFault(t)
	return t
end

local DescribeEngineDefaultParametersMessage_keys = { "Marker" = true, "MaxRecords" = true, "CacheParameterGroupFamily" = true, nil }

function M.AssertDescribeEngineDefaultParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersMessage to be of type 'table'")
	assert(struct["CacheParameterGroupFamily"], "Expected key CacheParameterGroupFamily to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEngineDefaultParametersMessage_keys[k], "DescribeEngineDefaultParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeEngineDefaultParameters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;The name of the cache parameter group family.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt;
-- Required parameter: CacheParameterGroupFamily
function M.DescribeEngineDefaultParametersMessage(Marker, MaxRecords, CacheParameterGroupFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
	}
	M.AssertDescribeEngineDefaultParametersMessage(t)
	return t
end

local SnapshotFeatureNotSupportedFault_keys = { nil }

function M.AssertSnapshotFeatureNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotFeatureNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotFeatureNotSupportedFault_keys[k], "SnapshotFeatureNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotFeatureNotSupportedFault
-- &lt;p&gt;You attempted one of the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Creating a snapshot of a Redis cache cluster running on a &lt;code&gt;cache.t1.micro&lt;/code&gt; cache node.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Creating a snapshot of a cache cluster that is running Memcached rather than Redis.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Neither of these are supported by ElastiCache.&lt;/p&gt;
function M.SnapshotFeatureNotSupportedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotFeatureNotSupportedFault")
	local t = { 
	}
	M.AssertSnapshotFeatureNotSupportedFault(t)
	return t
end

local DeleteSnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertDeleteSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotResult_keys[k], "DeleteSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.DeleteSnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertDeleteSnapshotResult(t)
	return t
end

local SnapshotQuotaExceededFault_keys = { nil }

function M.AssertSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotQuotaExceededFault_keys[k], "SnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the maximum number of snapshots.&lt;/p&gt;
function M.SnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotQuotaExceededFault")
	local t = { 
	}
	M.AssertSnapshotQuotaExceededFault(t)
	return t
end

local DescribeReservedCacheNodesMessage_keys = { "OfferingType" = true, "ProductDescription" = true, "ReservedCacheNodesOfferingId" = true, "ReservedCacheNodeId" = true, "Marker" = true, "MaxRecords" = true, "Duration" = true, "CacheNodeType" = true, nil }

function M.AssertDescribeReservedCacheNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedCacheNodesMessage to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["ReservedCacheNodesOfferingId"] then M.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["ReservedCacheNodeId"] then M.AssertString(struct["ReservedCacheNodeId"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Duration"] then M.AssertString(struct["Duration"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedCacheNodesMessage_keys[k], "DescribeReservedCacheNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedCacheNodesMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeReservedCacheNodes&lt;/code&gt; operation.&lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;&quot;Light Utilization&quot;|&quot;Medium Utilization&quot;|&quot;Heavy Utilization&quot;&lt;/code&gt; &lt;/p&gt;
-- @param ProductDescription [String] &lt;p&gt;The product description filter value. Use this parameter to show only those reservations matching the specified product description.&lt;/p&gt;
-- @param ReservedCacheNodesOfferingId [String] &lt;p&gt;The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.&lt;/p&gt;
-- @param ReservedCacheNodeId [String] &lt;p&gt;The reserved cache node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param Duration [String] &lt;p&gt;The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;1 | 3 | 31536000 | 94608000&lt;/code&gt; &lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type filter value. Use this parameter to show only those reservations matching the specified cache node type.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
function M.DescribeReservedCacheNodesMessage(OfferingType, ProductDescription, ReservedCacheNodesOfferingId, ReservedCacheNodeId, Marker, MaxRecords, Duration, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedCacheNodesMessage")
	local t = { 
		["OfferingType"] = OfferingType,
		["ProductDescription"] = ProductDescription,
		["ReservedCacheNodesOfferingId"] = ReservedCacheNodesOfferingId,
		["ReservedCacheNodeId"] = ReservedCacheNodeId,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Duration"] = Duration,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertDescribeReservedCacheNodesMessage(t)
	return t
end

local NodeGroupsPerReplicationGroupQuotaExceededFault_keys = { nil }

function M.AssertNodeGroupsPerReplicationGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupsPerReplicationGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NodeGroupsPerReplicationGroupQuotaExceededFault_keys[k], "NodeGroupsPerReplicationGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupsPerReplicationGroupQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the maximum of 15 node groups (shards) in a single replication group.&lt;/p&gt;
function M.NodeGroupsPerReplicationGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeGroupsPerReplicationGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertNodeGroupsPerReplicationGroupQuotaExceededFault(t)
	return t
end

local AddTagsToResourceMessage_keys = { "ResourceName" = true, "Tags" = true, nil }

function M.AssertAddTagsToResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceMessage_keys[k], "AddTagsToResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceMessage
-- &lt;p&gt;Represents the input of an AddTagsToResource operation.&lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) of the resource to which the tags are to be added, for example &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster&lt;/code&gt; or &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt;.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value.&lt;/p&gt;
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.AddTagsToResourceMessage(ResourceName, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceMessage")
	local t = { 
		["ResourceName"] = ResourceName,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToResourceMessage(t)
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
-- &lt;p&gt;Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).&lt;/p&gt;
-- @param TopicStatus [String] &lt;p&gt;The current state of the topic.&lt;/p&gt;
-- @param TopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the topic.&lt;/p&gt;
function M.NotificationConfiguration(TopicStatus, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfiguration")
	local t = { 
		["TopicStatus"] = TopicStatus,
		["TopicArn"] = TopicArn,
	}
	M.AssertNotificationConfiguration(t)
	return t
end

local DeleteCacheSubnetGroupMessage_keys = { "CacheSubnetGroupName" = true, nil }

function M.AssertDeleteCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCacheSubnetGroupMessage_keys[k], "DeleteCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheSubnetGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteCacheSubnetGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group to delete.&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters or hyphens.&lt;/p&gt;
-- Required parameter: CacheSubnetGroupName
function M.DeleteCacheSubnetGroupMessage(CacheSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCacheSubnetGroupMessage")
	local t = { 
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
	}
	M.AssertDeleteCacheSubnetGroupMessage(t)
	return t
end

local CacheSubnetGroupAlreadyExistsFault_keys = { nil }

function M.AssertCacheSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroupAlreadyExistsFault_keys[k], "CacheSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupAlreadyExistsFault
-- &lt;p&gt;The requested cache subnet group name is already in use by an existing cache subnet group.&lt;/p&gt;
function M.CacheSubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertCacheSubnetGroupAlreadyExistsFault(t)
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
-- &lt;p&gt;An invalid subnet identifier was specified.&lt;/p&gt;
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	M.AssertInvalidSubnet(t)
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
-- &lt;p&gt;Represents the information required for client programs to connect to a cache node.&lt;/p&gt;
-- @param Port [Integer] &lt;p&gt;The port number that the cache engine is listening on.&lt;/p&gt;
-- @param Address [String] &lt;p&gt;The DNS hostname of the cache node.&lt;/p&gt;
function M.Endpoint(Port, Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Port"] = Port,
		["Address"] = Address,
	}
	M.AssertEndpoint(t)
	return t
end

local ReplicationGroupPendingModifiedValues_keys = { "AutomaticFailoverStatus" = true, "PrimaryClusterId" = true, nil }

function M.AssertReplicationGroupPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupPendingModifiedValues to be of type 'table'")
	if struct["AutomaticFailoverStatus"] then M.AssertPendingAutomaticFailoverStatus(struct["AutomaticFailoverStatus"]) end
	if struct["PrimaryClusterId"] then M.AssertString(struct["PrimaryClusterId"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationGroupPendingModifiedValues_keys[k], "ReplicationGroupPendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupPendingModifiedValues
-- &lt;p&gt;The settings to be applied to the Redis replication group, either immediately or during the next maintenance window.&lt;/p&gt;
-- @param AutomaticFailoverStatus [PendingAutomaticFailoverStatus] &lt;p&gt;Indicates the status of Multi-AZ for this Redis replication group.&lt;/p&gt; &lt;note&gt; &lt;p&gt;ElastiCache Multi-AZ replication groups are not supported on:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Redis versions earlier than 2.8.6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis (cluster mode disabled):T1 and T2 cache node types.&lt;/p&gt; &lt;p&gt;Redis (cluster mode enabled): T1 node types.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/note&gt;
-- @param PrimaryClusterId [String] &lt;p&gt;The primary cluster ID that is applied immediately (if &lt;code&gt;--apply-immediately&lt;/code&gt; was specified), or during the next maintenance window.&lt;/p&gt;
function M.ReplicationGroupPendingModifiedValues(AutomaticFailoverStatus, PrimaryClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationGroupPendingModifiedValues")
	local t = { 
		["AutomaticFailoverStatus"] = AutomaticFailoverStatus,
		["PrimaryClusterId"] = PrimaryClusterId,
	}
	M.AssertReplicationGroupPendingModifiedValues(t)
	return t
end

local ModifyCacheParameterGroupMessage_keys = { "CacheParameterGroupName" = true, "ParameterNameValues" = true, nil }

function M.AssertModifyCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	assert(struct["ParameterNameValues"], "Expected key ParameterNameValues to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ParameterNameValues"] then M.AssertParameterNameValueList(struct["ParameterNameValues"]) end
	for k,_ in pairs(struct) do
		assert(ModifyCacheParameterGroupMessage_keys[k], "ModifyCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheParameterGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;ModifyCacheParameterGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group to modify.&lt;/p&gt;
-- @param ParameterNameValues [ParameterNameValueList] &lt;p&gt;An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be modified per request.&lt;/p&gt;
-- Required parameter: CacheParameterGroupName
-- Required parameter: ParameterNameValues
function M.ModifyCacheParameterGroupMessage(CacheParameterGroupName, ParameterNameValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyCacheParameterGroupMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["ParameterNameValues"] = ParameterNameValues,
	}
	M.AssertModifyCacheParameterGroupMessage(t)
	return t
end

local Parameter_keys = { "Description" = true, "DataType" = true, "ChangeType" = true, "IsModifiable" = true, "AllowedValues" = true, "Source" = true, "ParameterValue" = true, "ParameterName" = true, "MinimumEngineVersion" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then M.AssertChangeType(struct["ChangeType"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then M.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then M.AssertString(struct["MinimumEngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- &lt;p&gt;Describes an individual setting that controls some aspect of ElastiCache behavior.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the parameter.&lt;/p&gt;
-- @param DataType [String] &lt;p&gt;The valid data type for the parameter.&lt;/p&gt;
-- @param ChangeType [ChangeType] &lt;p&gt;Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Clusters.Rebooting.html&quot;&gt;Rebooting a Cluster&lt;/a&gt;.&lt;/p&gt;
-- @param IsModifiable [Boolean] &lt;p&gt;Indicates whether (&lt;code&gt;true&lt;/code&gt;) or not (&lt;code&gt;false&lt;/code&gt;) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.&lt;/p&gt;
-- @param AllowedValues [String] &lt;p&gt;The valid range of values for the parameter.&lt;/p&gt;
-- @param Source [String] &lt;p&gt;The source of the parameter.&lt;/p&gt;
-- @param ParameterValue [String] &lt;p&gt;The value of the parameter.&lt;/p&gt;
-- @param ParameterName [String] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param MinimumEngineVersion [String] &lt;p&gt;The earliest cache engine version to which the parameter can apply.&lt;/p&gt;
function M.Parameter(Description, DataType, ChangeType, IsModifiable, AllowedValues, Source, ParameterValue, ParameterName, MinimumEngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["Description"] = Description,
		["DataType"] = DataType,
		["ChangeType"] = ChangeType,
		["IsModifiable"] = IsModifiable,
		["AllowedValues"] = AllowedValues,
		["Source"] = Source,
		["ParameterValue"] = ParameterValue,
		["ParameterName"] = ParameterName,
		["MinimumEngineVersion"] = MinimumEngineVersion,
	}
	M.AssertParameter(t)
	return t
end

local CacheSubnetGroupQuotaExceededFault_keys = { nil }

function M.AssertCacheSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroupQuotaExceededFault_keys[k], "CacheSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of cache subnet groups.&lt;/p&gt;
function M.CacheSubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertCacheSubnetGroupQuotaExceededFault(t)
	return t
end

local CopySnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertCopySnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopySnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(CopySnapshotResult_keys[k], "CopySnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopySnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.CopySnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopySnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertCopySnapshotResult(t)
	return t
end

local ReplicationGroupMessage_keys = { "Marker" = true, "ReplicationGroups" = true, nil }

function M.AssertReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReplicationGroups"] then M.AssertReplicationGroupList(struct["ReplicationGroups"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationGroupMessage_keys[k], "ReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeReplicationGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param ReplicationGroups [ReplicationGroupList] &lt;p&gt;A list of replication groups. Each item in the list contains detailed information about one replication group.&lt;/p&gt;
function M.ReplicationGroupMessage(Marker, ReplicationGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["ReplicationGroups"] = ReplicationGroups,
	}
	M.AssertReplicationGroupMessage(t)
	return t
end

local DeleteSnapshotMessage_keys = { "SnapshotName" = true, nil }

function M.AssertDeleteSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotName"], "Expected key SnapshotName to exist in table")
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotMessage_keys[k], "DeleteSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteSnapshot&lt;/code&gt; operation.&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;The name of the snapshot to be deleted.&lt;/p&gt;
-- Required parameter: SnapshotName
function M.DeleteSnapshotMessage(SnapshotName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotMessage")
	local t = { 
		["SnapshotName"] = SnapshotName,
	}
	M.AssertDeleteSnapshotMessage(t)
	return t
end

local DeleteReplicationGroupResult_keys = { "ReplicationGroup" = true, nil }

function M.AssertDeleteReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then M.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationGroupResult_keys[k], "DeleteReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationGroupResult
--  
-- @param ReplicationGroup [ReplicationGroup]  
function M.DeleteReplicationGroupResult(ReplicationGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationGroupResult")
	local t = { 
		["ReplicationGroup"] = ReplicationGroup,
	}
	M.AssertDeleteReplicationGroupResult(t)
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
-- &lt;p&gt;Two or more incompatible parameters were specified.&lt;/p&gt;
-- @param message [AwsQueryErrorMessage] &lt;p&gt;Two or more parameters that must not be used together were used together.&lt;/p&gt;
function M.InvalidParameterCombinationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterCombinationException(t)
	return t
end

local PendingModifiedValues_keys = { "NumCacheNodes" = true, "CacheNodeType" = true, "EngineVersion" = true, "CacheNodeIdsToRemove" = true, nil }

function M.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["NumCacheNodes"] then M.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodeIdsToRemove"] then M.AssertCacheNodeIdsList(struct["CacheNodeIdsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(PendingModifiedValues_keys[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- &lt;p&gt;A group of settings that are applied to the cache cluster in the future, or that are currently being applied.&lt;/p&gt;
-- @param NumCacheNodes [IntegerOptional] &lt;p&gt;The new number of cache nodes for the cache cluster.&lt;/p&gt; &lt;p&gt;For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type that this cache cluster or replication group is scaled to.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The new cache engine version that the cache cluster runs.&lt;/p&gt;
-- @param CacheNodeIdsToRemove [CacheNodeIdsList] &lt;p&gt;A list of cache node IDs that are being removed (or will be removed) from the cache cluster. A node ID is a numeric identifier (0001, 0002, etc.).&lt;/p&gt;
function M.PendingModifiedValues(NumCacheNodes, CacheNodeType, EngineVersion, CacheNodeIdsToRemove, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingModifiedValues")
	local t = { 
		["NumCacheNodes"] = NumCacheNodes,
		["CacheNodeType"] = CacheNodeType,
		["EngineVersion"] = EngineVersion,
		["CacheNodeIdsToRemove"] = CacheNodeIdsToRemove,
	}
	M.AssertPendingModifiedValues(t)
	return t
end

local NodeGroup_keys = { "Status" = true, "NodeGroupMembers" = true, "Slots" = true, "NodeGroupId" = true, "PrimaryEndpoint" = true, nil }

function M.AssertNodeGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroup to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["NodeGroupMembers"] then M.AssertNodeGroupMemberList(struct["NodeGroupMembers"]) end
	if struct["Slots"] then M.AssertString(struct["Slots"]) end
	if struct["NodeGroupId"] then M.AssertString(struct["NodeGroupId"]) end
	if struct["PrimaryEndpoint"] then M.AssertEndpoint(struct["PrimaryEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(NodeGroup_keys[k], "NodeGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroup
-- &lt;p&gt;Represents a collection of cache nodes in a replication group. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The current state of this replication group - &lt;code&gt;creating&lt;/code&gt;, &lt;code&gt;available&lt;/code&gt;, etc.&lt;/p&gt;
-- @param NodeGroupMembers [NodeGroupMemberList] &lt;p&gt;A list containing information about individual nodes within the node group (shard).&lt;/p&gt;
-- @param Slots [String] &lt;p&gt;The keyspace for this node group (shard).&lt;/p&gt;
-- @param NodeGroupId [String] &lt;p&gt;The identifier for the node group (shard). A Redis (cluster mode disabled) replication group contains only 1 node group; therefore, the node group ID is 0001. A Redis (cluster mode enabled) replication group contains 1 to 15 node groups numbered 0001 to 0015. &lt;/p&gt;
-- @param PrimaryEndpoint [Endpoint] &lt;p&gt;The endpoint of the primary node in this node group (shard).&lt;/p&gt;
function M.NodeGroup(Status, NodeGroupMembers, Slots, NodeGroupId, PrimaryEndpoint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeGroup")
	local t = { 
		["Status"] = Status,
		["NodeGroupMembers"] = NodeGroupMembers,
		["Slots"] = Slots,
		["NodeGroupId"] = NodeGroupId,
		["PrimaryEndpoint"] = PrimaryEndpoint,
	}
	M.AssertNodeGroup(t)
	return t
end

local RecurringCharge_keys = { "RecurringChargeAmount" = true, "RecurringChargeFrequency" = true, nil }

function M.AssertRecurringCharge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecurringCharge to be of type 'table'")
	if struct["RecurringChargeAmount"] then M.AssertDouble(struct["RecurringChargeAmount"]) end
	if struct["RecurringChargeFrequency"] then M.AssertString(struct["RecurringChargeFrequency"]) end
	for k,_ in pairs(struct) do
		assert(RecurringCharge_keys[k], "RecurringCharge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecurringCharge
-- &lt;p&gt;Contains the specific price and frequency of a recurring charges for a reserved cache node, or for a reserved cache node offering.&lt;/p&gt;
-- @param RecurringChargeAmount [Double] &lt;p&gt;The monetary amount of the recurring charge.&lt;/p&gt;
-- @param RecurringChargeFrequency [String] &lt;p&gt;The frequency of the recurring charge.&lt;/p&gt;
function M.RecurringCharge(RecurringChargeAmount, RecurringChargeFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["RecurringChargeAmount"] = RecurringChargeAmount,
		["RecurringChargeFrequency"] = RecurringChargeFrequency,
	}
	M.AssertRecurringCharge(t)
	return t
end

local NodeGroupNotFoundFault_keys = { nil }

function M.AssertNodeGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NodeGroupNotFoundFault_keys[k], "NodeGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupNotFoundFault
-- &lt;p&gt;The node group specified by the &lt;code&gt;NodeGroupId&lt;/code&gt; parameter could not be found. Please verify that the node group exists and that you spelled the &lt;code&gt;NodeGroupId&lt;/code&gt; value correctly.&lt;/p&gt;
function M.NodeGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeGroupNotFoundFault")
	local t = { 
	}
	M.AssertNodeGroupNotFoundFault(t)
	return t
end

local SnapshotAlreadyExistsFault_keys = { nil }

function M.AssertSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotAlreadyExistsFault_keys[k], "SnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotAlreadyExistsFault
-- &lt;p&gt;You already have a snapshot with the given name.&lt;/p&gt;
function M.SnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotAlreadyExistsFault")
	local t = { 
	}
	M.AssertSnapshotAlreadyExistsFault(t)
	return t
end

local ModifyReplicationGroupResult_keys = { "ReplicationGroup" = true, nil }

function M.AssertModifyReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then M.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationGroupResult_keys[k], "ModifyReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupResult
--  
-- @param ReplicationGroup [ReplicationGroup]  
function M.ModifyReplicationGroupResult(ReplicationGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationGroupResult")
	local t = { 
		["ReplicationGroup"] = ReplicationGroup,
	}
	M.AssertModifyReplicationGroupResult(t)
	return t
end

local RemoveTagsFromResourceMessage_keys = { "ResourceName" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then M.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceMessage_keys[k], "RemoveTagsFromResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;RemoveTagsFromResource&lt;/code&gt; operation.&lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) of the resource from which you want the tags removed, for example &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster&lt;/code&gt; or &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt;.&lt;/p&gt;
-- @param TagKeys [KeyList] &lt;p&gt;A list of &lt;code&gt;TagKeys&lt;/code&gt; identifying the tags you want removed from the named resource.&lt;/p&gt;
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceMessage(ResourceName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceMessage")
	local t = { 
		["ResourceName"] = ResourceName,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromResourceMessage(t)
	return t
end

local DescribeSnapshotsListMessage_keys = { "Marker" = true, "Snapshots" = true, nil }

function M.AssertDescribeSnapshotsListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsListMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Snapshots"] then M.AssertSnapshotList(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotsListMessage_keys[k], "DescribeSnapshotsListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsListMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeSnapshots&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param Snapshots [SnapshotList] &lt;p&gt;A list of snapshots. Each item in the list contains detailed information about one snapshot.&lt;/p&gt;
function M.DescribeSnapshotsListMessage(Marker, Snapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotsListMessage")
	local t = { 
		["Marker"] = Marker,
		["Snapshots"] = Snapshots,
	}
	M.AssertDescribeSnapshotsListMessage(t)
	return t
end

local CacheSubnetGroupInUse_keys = { nil }

function M.AssertCacheSubnetGroupInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroupInUse_keys[k], "CacheSubnetGroupInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupInUse
-- &lt;p&gt;The requested cache subnet group is currently in use.&lt;/p&gt;
function M.CacheSubnetGroupInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroupInUse")
	local t = { 
	}
	M.AssertCacheSubnetGroupInUse(t)
	return t
end

local CreateCacheClusterResult_keys = { "CacheCluster" = true, nil }

function M.AssertCreateCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then M.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheClusterResult_keys[k], "CreateCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheClusterResult
--  
-- @param CacheCluster [CacheCluster]  
function M.CreateCacheClusterResult(CacheCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheClusterResult")
	local t = { 
		["CacheCluster"] = CacheCluster,
	}
	M.AssertCreateCacheClusterResult(t)
	return t
end

local ListAllowedNodeTypeModificationsMessage_keys = { "CacheClusterId" = true, "ReplicationGroupId" = true, nil }

function M.AssertListAllowedNodeTypeModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAllowedNodeTypeModificationsMessage to be of type 'table'")
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(ListAllowedNodeTypeModificationsMessage_keys[k], "ListAllowedNodeTypeModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAllowedNodeTypeModificationsMessage
-- &lt;p&gt;The input parameters for the &lt;code&gt;ListAllowedNodeTypeModifications&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The name of the cache cluster you want to scale up to a larger node instanced type. ElastiCache uses the cluster id to identify the current node type of this cluster and from that to create a list of node types you can scale up to.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You must provide a value for either the &lt;code&gt;CacheClusterId&lt;/code&gt; or the &lt;code&gt;ReplicationGroupId&lt;/code&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The name of the replication group want to scale up to a larger node type. ElastiCache uses the replication group id to identify the current node type being used by this replication group, and from that to create a list of node types you can scale up to.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You must provide a value for either the &lt;code&gt;CacheClusterId&lt;/code&gt; or the &lt;code&gt;ReplicationGroupId&lt;/code&gt;.&lt;/p&gt; &lt;/important&gt;
function M.ListAllowedNodeTypeModificationsMessage(CacheClusterId, ReplicationGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAllowedNodeTypeModificationsMessage")
	local t = { 
		["CacheClusterId"] = CacheClusterId,
		["ReplicationGroupId"] = ReplicationGroupId,
	}
	M.AssertListAllowedNodeTypeModificationsMessage(t)
	return t
end

local CacheCluster_keys = { "CacheClusterId" = true, "ReplicationGroupId" = true, "CacheClusterStatus" = true, "SnapshotRetentionLimit" = true, "ClientDownloadLandingPage" = true, "PendingModifiedValues" = true, "Engine" = true, "CacheSecurityGroups" = true, "NumCacheNodes" = true, "AutoMinorVersionUpgrade" = true, "SecurityGroups" = true, "CacheNodeType" = true, "PreferredMaintenanceWindow" = true, "CacheSubnetGroupName" = true, "EngineVersion" = true, "CacheNodes" = true, "ConfigurationEndpoint" = true, "CacheClusterCreateTime" = true, "PreferredAvailabilityZone" = true, "SnapshotWindow" = true, "NotificationConfiguration" = true, "CacheParameterGroup" = true, nil }

function M.AssertCacheCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheCluster to be of type 'table'")
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["CacheClusterStatus"] then M.AssertString(struct["CacheClusterStatus"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["ClientDownloadLandingPage"] then M.AssertString(struct["ClientDownloadLandingPage"]) end
	if struct["PendingModifiedValues"] then M.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["CacheSecurityGroups"] then M.AssertCacheSecurityGroupMembershipList(struct["CacheSecurityGroups"]) end
	if struct["NumCacheNodes"] then M.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["SecurityGroups"] then M.AssertSecurityGroupMembershipList(struct["SecurityGroups"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodes"] then M.AssertCacheNodeList(struct["CacheNodes"]) end
	if struct["ConfigurationEndpoint"] then M.AssertEndpoint(struct["ConfigurationEndpoint"]) end
	if struct["CacheClusterCreateTime"] then M.AssertTStamp(struct["CacheClusterCreateTime"]) end
	if struct["PreferredAvailabilityZone"] then M.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["NotificationConfiguration"] then M.AssertNotificationConfiguration(struct["NotificationConfiguration"]) end
	if struct["CacheParameterGroup"] then M.AssertCacheParameterGroupStatus(struct["CacheParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CacheCluster_keys[k], "CacheCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheCluster
-- &lt;p&gt;Contains all of the attributes of a specific cache cluster.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The user-supplied identifier of the cache cluster. This identifier is a unique key that identifies a cache cluster.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The replication group to which this cache cluster belongs. If this field is empty, the cache cluster is not associated with any replication group.&lt;/p&gt;
-- @param CacheClusterStatus [String] &lt;p&gt;The current state of this cache cluster, one of the following values: &lt;code&gt;available&lt;/code&gt;, &lt;code&gt;creating&lt;/code&gt;, &lt;code&gt;deleted&lt;/code&gt;, &lt;code&gt;deleting&lt;/code&gt;, &lt;code&gt;incompatible-network&lt;/code&gt;, &lt;code&gt;modifying&lt;/code&gt;, &lt;code&gt;rebooting cache cluster nodes&lt;/code&gt;, &lt;code&gt;restore-failed&lt;/code&gt;, or &lt;code&gt;snapshotting&lt;/code&gt;.&lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot that was taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;important&gt; &lt;p&gt; If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.&lt;/p&gt; &lt;/important&gt;
-- @param ClientDownloadLandingPage [String] &lt;p&gt;The URL of the web page where you can download the latest ElastiCache client library.&lt;/p&gt;
-- @param PendingModifiedValues [PendingModifiedValues] &lt;p&gt;Contains all of the attributes of a specific cache cluster.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The name of the cache engine (&lt;code&gt;memcached&lt;/code&gt; or &lt;code&gt;redis&lt;/code&gt;) to be used for this cache cluster.&lt;/p&gt;
-- @param CacheSecurityGroups [CacheSecurityGroupMembershipList] &lt;p&gt;A list of cache security group elements, composed of name and status sub-elements.&lt;/p&gt;
-- @param NumCacheNodes [IntegerOptional] &lt;p&gt;The number of cache nodes in the cache cluster.&lt;/p&gt; &lt;p&gt;For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [Boolean] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param SecurityGroups [SecurityGroupMembershipList] &lt;p&gt;A list of VPC Security Groups associated with the cache cluster.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The name of the compute and memory capacity node type for the cache cluster.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group associated with the cache cluster.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version of the cache engine that is used in this cache cluster.&lt;/p&gt;
-- @param CacheNodes [CacheNodeList] &lt;p&gt;A list of cache nodes that are members of the cache cluster.&lt;/p&gt;
-- @param ConfigurationEndpoint [Endpoint] &lt;p&gt;Represents a Memcached cluster endpoint which, if Automatic Discovery is enabled on the cluster, can be used by an application to connect to any node in the cluster. The configuration endpoint will always have &lt;code&gt;.cfg&lt;/code&gt; in it.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;mem-3.9dvc4r&lt;u&gt;.cfg&lt;/u&gt;.usw2.cache.amazonaws.com:11211&lt;/code&gt; &lt;/p&gt;
-- @param CacheClusterCreateTime [TStamp] &lt;p&gt;The date and time when the cache cluster was created.&lt;/p&gt;
-- @param PreferredAvailabilityZone [String] &lt;p&gt;The name of the Availability Zone in which the cache cluster is located or &quot;Multiple&quot; if the cache nodes are located in different Availability Zones.&lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cache cluster.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;05:00-09:00&lt;/code&gt; &lt;/p&gt;
-- @param NotificationConfiguration [NotificationConfiguration] &lt;p&gt;Contains all of the attributes of a specific cache cluster.&lt;/p&gt;
-- @param CacheParameterGroup [CacheParameterGroupStatus] &lt;p&gt;Contains all of the attributes of a specific cache cluster.&lt;/p&gt;
function M.CacheCluster(CacheClusterId, ReplicationGroupId, CacheClusterStatus, SnapshotRetentionLimit, ClientDownloadLandingPage, PendingModifiedValues, Engine, CacheSecurityGroups, NumCacheNodes, AutoMinorVersionUpgrade, SecurityGroups, CacheNodeType, PreferredMaintenanceWindow, CacheSubnetGroupName, EngineVersion, CacheNodes, ConfigurationEndpoint, CacheClusterCreateTime, PreferredAvailabilityZone, SnapshotWindow, NotificationConfiguration, CacheParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheCluster")
	local t = { 
		["CacheClusterId"] = CacheClusterId,
		["ReplicationGroupId"] = ReplicationGroupId,
		["CacheClusterStatus"] = CacheClusterStatus,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["ClientDownloadLandingPage"] = ClientDownloadLandingPage,
		["PendingModifiedValues"] = PendingModifiedValues,
		["Engine"] = Engine,
		["CacheSecurityGroups"] = CacheSecurityGroups,
		["NumCacheNodes"] = NumCacheNodes,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["SecurityGroups"] = SecurityGroups,
		["CacheNodeType"] = CacheNodeType,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
		["EngineVersion"] = EngineVersion,
		["CacheNodes"] = CacheNodes,
		["ConfigurationEndpoint"] = ConfigurationEndpoint,
		["CacheClusterCreateTime"] = CacheClusterCreateTime,
		["PreferredAvailabilityZone"] = PreferredAvailabilityZone,
		["SnapshotWindow"] = SnapshotWindow,
		["NotificationConfiguration"] = NotificationConfiguration,
		["CacheParameterGroup"] = CacheParameterGroup,
	}
	M.AssertCacheCluster(t)
	return t
end

local CacheNode_keys = { "CacheNodeId" = true, "Endpoint" = true, "CacheNodeStatus" = true, "ParameterGroupStatus" = true, "CacheNodeCreateTime" = true, "CustomerAvailabilityZone" = true, "SourceCacheNodeId" = true, nil }

function M.AssertCacheNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNode to be of type 'table'")
	if struct["CacheNodeId"] then M.AssertString(struct["CacheNodeId"]) end
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	if struct["CacheNodeStatus"] then M.AssertString(struct["CacheNodeStatus"]) end
	if struct["ParameterGroupStatus"] then M.AssertString(struct["ParameterGroupStatus"]) end
	if struct["CacheNodeCreateTime"] then M.AssertTStamp(struct["CacheNodeCreateTime"]) end
	if struct["CustomerAvailabilityZone"] then M.AssertString(struct["CustomerAvailabilityZone"]) end
	if struct["SourceCacheNodeId"] then M.AssertString(struct["SourceCacheNodeId"]) end
	for k,_ in pairs(struct) do
		assert(CacheNode_keys[k], "CacheNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNode
-- &lt;p&gt;Represents an individual cache node within a cache cluster. Each cache node runs its own instance of the cluster's protocol-compliant caching software - either Memcached or Redis.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
-- @param CacheNodeId [String] &lt;p&gt;The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The combination of cluster ID and node ID uniquely identifies every cache node used in a customer's AWS account.&lt;/p&gt;
-- @param Endpoint [Endpoint] &lt;p&gt;The hostname for connecting to this cache node.&lt;/p&gt;
-- @param CacheNodeStatus [String] &lt;p&gt;The current state of this cache node.&lt;/p&gt;
-- @param ParameterGroupStatus [String] &lt;p&gt;The status of the parameter group applied to this cache node.&lt;/p&gt;
-- @param CacheNodeCreateTime [TStamp] &lt;p&gt;The date and time when the cache node was created.&lt;/p&gt;
-- @param CustomerAvailabilityZone [String] &lt;p&gt;The Availability Zone where this node was created and now resides.&lt;/p&gt;
-- @param SourceCacheNodeId [String] &lt;p&gt;The ID of the primary node to which this read replica node is synchronized. If this field is empty, this node is not associated with a primary cache cluster.&lt;/p&gt;
function M.CacheNode(CacheNodeId, Endpoint, CacheNodeStatus, ParameterGroupStatus, CacheNodeCreateTime, CustomerAvailabilityZone, SourceCacheNodeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheNode")
	local t = { 
		["CacheNodeId"] = CacheNodeId,
		["Endpoint"] = Endpoint,
		["CacheNodeStatus"] = CacheNodeStatus,
		["ParameterGroupStatus"] = ParameterGroupStatus,
		["CacheNodeCreateTime"] = CacheNodeCreateTime,
		["CustomerAvailabilityZone"] = CustomerAvailabilityZone,
		["SourceCacheNodeId"] = SourceCacheNodeId,
	}
	M.AssertCacheNode(t)
	return t
end

local Event_keys = { "Date" = true, "Message" = true, "SourceIdentifier" = true, "SourceType" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["Date"] then M.AssertTStamp(struct["Date"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p&gt;Represents a single occurrence of something interesting within the system. Some examples of events are creating a cache cluster, adding or removing a cache node, or rebooting a node.&lt;/p&gt;
-- @param Date [TStamp] &lt;p&gt;The date and time when the event occurred.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The text of the event.&lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt;The identifier for the source of the event. For example, if the event occurred at the cache cluster level, the identifier would be the name of the cache cluster.&lt;/p&gt;
-- @param SourceType [SourceType] &lt;p&gt;Specifies the origin of this event - a cache cluster, a parameter group, a security group, etc.&lt;/p&gt;
function M.Event(Date, Message, SourceIdentifier, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["Date"] = Date,
		["Message"] = Message,
		["SourceIdentifier"] = SourceIdentifier,
		["SourceType"] = SourceType,
	}
	M.AssertEvent(t)
	return t
end

local ModifyCacheSubnetGroupResult_keys = { "CacheSubnetGroup" = true, nil }

function M.AssertModifyCacheSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheSubnetGroupResult to be of type 'table'")
	if struct["CacheSubnetGroup"] then M.AssertCacheSubnetGroup(struct["CacheSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyCacheSubnetGroupResult_keys[k], "ModifyCacheSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheSubnetGroupResult
--  
-- @param CacheSubnetGroup [CacheSubnetGroup]  
function M.ModifyCacheSubnetGroupResult(CacheSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyCacheSubnetGroupResult")
	local t = { 
		["CacheSubnetGroup"] = CacheSubnetGroup,
	}
	M.AssertModifyCacheSubnetGroupResult(t)
	return t
end

local CacheParameterGroupQuotaExceededFault_keys = { nil }

function M.AssertCacheParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupQuotaExceededFault_keys[k], "CacheParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the maximum number of cache security groups.&lt;/p&gt;
function M.CacheParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertCacheParameterGroupQuotaExceededFault(t)
	return t
end

local CacheEngineVersionMessage_keys = { "Marker" = true, "CacheEngineVersions" = true, nil }

function M.AssertCacheEngineVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheEngineVersionMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheEngineVersions"] then M.AssertCacheEngineVersionList(struct["CacheEngineVersions"]) end
	for k,_ in pairs(struct) do
		assert(CacheEngineVersionMessage_keys[k], "CacheEngineVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheEngineVersionMessage
-- &lt;p&gt;Represents the output of a &lt;a&gt;DescribeCacheEngineVersions&lt;/a&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheEngineVersions [CacheEngineVersionList] &lt;p&gt;A list of cache engine version details. Each element in the list contains detailed information about one cache engine version.&lt;/p&gt;
function M.CacheEngineVersionMessage(Marker, CacheEngineVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheEngineVersionMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheEngineVersions"] = CacheEngineVersions,
	}
	M.AssertCacheEngineVersionMessage(t)
	return t
end

local Subnet_keys = { "SubnetIdentifier" = true, "SubnetAvailabilityZone" = true, nil }

function M.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetIdentifier"] then M.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then M.AssertAvailabilityZone(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(Subnet_keys[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- &lt;p&gt;Represents the subnet associated with a cache cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.&lt;/p&gt;
-- @param SubnetIdentifier [String] &lt;p&gt;The unique identifier for the subnet.&lt;/p&gt;
-- @param SubnetAvailabilityZone [AvailabilityZone] &lt;p&gt;The Availability Zone associated with the subnet.&lt;/p&gt;
function M.Subnet(SubnetIdentifier, SubnetAvailabilityZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subnet")
	local t = { 
		["SubnetIdentifier"] = SubnetIdentifier,
		["SubnetAvailabilityZone"] = SubnetAvailabilityZone,
	}
	M.AssertSubnet(t)
	return t
end

local ModifyReplicationGroupMessage_keys = { "CacheSecurityGroupNames" = true, "CacheParameterGroupName" = true, "NodeGroupId" = true, "PrimaryClusterId" = true, "AutoMinorVersionUpgrade" = true, "ReplicationGroupId" = true, "SecurityGroupIds" = true, "SnapshotRetentionLimit" = true, "NotificationTopicStatus" = true, "PreferredMaintenanceWindow" = true, "SnapshotWindow" = true, "EngineVersion" = true, "SnapshottingClusterId" = true, "NotificationTopicArn" = true, "ReplicationGroupDescription" = true, "ApplyImmediately" = true, "AutomaticFailoverEnabled" = true, "CacheNodeType" = true, nil }

function M.AssertModifyReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	if struct["CacheSecurityGroupNames"] then M.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["NodeGroupId"] then M.AssertString(struct["NodeGroupId"]) end
	if struct["PrimaryClusterId"] then M.AssertString(struct["PrimaryClusterId"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicStatus"] then M.AssertString(struct["NotificationTopicStatus"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["SnapshottingClusterId"] then M.AssertString(struct["SnapshottingClusterId"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["ReplicationGroupDescription"] then M.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["AutomaticFailoverEnabled"] then M.AssertBooleanOptional(struct["AutomaticFailoverEnabled"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(ModifyReplicationGroupMessage_keys[k], "ModifyReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyReplicationGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;ModifyReplicationGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheSecurityGroupNames [CacheSecurityGroupNameList] &lt;p&gt;A list of cache security group names to authorize for the clusters in this replication group. This change is asynchronously applied as soon as possible.&lt;/p&gt; &lt;p&gt;This parameter can be used only with replication group containing cache clusters running outside of an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters. Must not be &lt;code&gt;Default&lt;/code&gt;.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group to apply to all of the clusters in this replication group. This change is asynchronously applied as soon as possible for parameters when the &lt;code&gt;ApplyImmediately&lt;/code&gt; parameter is specified as &lt;code&gt;true&lt;/code&gt; for this request.&lt;/p&gt;
-- @param NodeGroupId [String] &lt;p&gt;The name of the Node Group (called shard in the console).&lt;/p&gt;
-- @param PrimaryClusterId [String] &lt;p&gt;For replication groups with a single primary, if this parameter is specified, ElastiCache promotes the specified cluster in the specified replication group to the primary role. The nodes of all other clusters in the replication group are read replicas.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The identifier of the replication group to modify.&lt;/p&gt;
-- @param SecurityGroupIds [SecurityGroupIdsList] &lt;p&gt;Specifies the VPC Security Groups associated with the cache clusters in the replication group.&lt;/p&gt; &lt;p&gt;This parameter can be used only with replication group containing cache clusters running in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic node group (shard) snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot that was taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Important&lt;/b&gt; If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.&lt;/p&gt;
-- @param NotificationTopicStatus [String] &lt;p&gt;The status of the Amazon SNS notification topic for the replication group. Notifications are sent only if the status is &lt;code&gt;active&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;active&lt;/code&gt; | &lt;code&gt;inactive&lt;/code&gt; &lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of the node group (shard) specified by &lt;code&gt;SnapshottingClusterId&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;05:00-09:00&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The upgraded version of the cache engine to be run on the cache clusters in the replication group.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Important:&lt;/b&gt; You can upgrade to a newer engine version (see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement&quot;&gt;Selecting a Cache Engine and Version&lt;/a&gt;), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing replication group and create it anew with the earlier engine version. &lt;/p&gt;
-- @param SnapshottingClusterId [String] &lt;p&gt;The cache cluster ID that is used as the daily snapshot source for the replication group. This parameter cannot be set for Redis (cluster mode enabled) replication groups.&lt;/p&gt;
-- @param NotificationTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The Amazon SNS topic owner must be same as the replication group owner. &lt;/p&gt; &lt;/note&gt;
-- @param ReplicationGroupDescription [String] &lt;p&gt;A description for the replication group. Maximum length is 255 characters.&lt;/p&gt;
-- @param ApplyImmediately [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the &lt;code&gt;PreferredMaintenanceWindow&lt;/code&gt; setting for the replication group.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;false&lt;/code&gt;, changes to the nodes in the replication group are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;true&lt;/code&gt; | &lt;code&gt;false&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- @param AutomaticFailoverEnabled [BooleanOptional] &lt;p&gt;Determines whether a read replica is automatically promoted to read/write primary if the existing primary encounters a failure.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;true&lt;/code&gt; | &lt;code&gt;false&lt;/code&gt; &lt;/p&gt; &lt;note&gt; &lt;p&gt;ElastiCache Multi-AZ replication groups are not supported on:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Redis versions earlier than 2.8.6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis (cluster mode disabled):T1 and T2 cache node types.&lt;/p&gt; &lt;p&gt;Redis (cluster mode enabled): T1 node types.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/note&gt;
-- @param CacheNodeType [String] &lt;p&gt;A valid cache node type that you want to scale this replication group to.&lt;/p&gt;
-- Required parameter: ReplicationGroupId
function M.ModifyReplicationGroupMessage(CacheSecurityGroupNames, CacheParameterGroupName, NodeGroupId, PrimaryClusterId, AutoMinorVersionUpgrade, ReplicationGroupId, SecurityGroupIds, SnapshotRetentionLimit, NotificationTopicStatus, PreferredMaintenanceWindow, SnapshotWindow, EngineVersion, SnapshottingClusterId, NotificationTopicArn, ReplicationGroupDescription, ApplyImmediately, AutomaticFailoverEnabled, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyReplicationGroupMessage")
	local t = { 
		["CacheSecurityGroupNames"] = CacheSecurityGroupNames,
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["NodeGroupId"] = NodeGroupId,
		["PrimaryClusterId"] = PrimaryClusterId,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["ReplicationGroupId"] = ReplicationGroupId,
		["SecurityGroupIds"] = SecurityGroupIds,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["NotificationTopicStatus"] = NotificationTopicStatus,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["SnapshotWindow"] = SnapshotWindow,
		["EngineVersion"] = EngineVersion,
		["SnapshottingClusterId"] = SnapshottingClusterId,
		["NotificationTopicArn"] = NotificationTopicArn,
		["ReplicationGroupDescription"] = ReplicationGroupDescription,
		["ApplyImmediately"] = ApplyImmediately,
		["AutomaticFailoverEnabled"] = AutomaticFailoverEnabled,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertModifyReplicationGroupMessage(t)
	return t
end

local AuthorizationNotFoundFault_keys = { nil }

function M.AssertAuthorizationNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AuthorizationNotFoundFault_keys[k], "AuthorizationNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationNotFoundFault
-- &lt;p&gt;The specified Amazon EC2 security group is not authorized for the specified cache security group.&lt;/p&gt;
function M.AuthorizationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationNotFoundFault")
	local t = { 
	}
	M.AssertAuthorizationNotFoundFault(t)
	return t
end

local CacheParameterGroupAlreadyExistsFault_keys = { nil }

function M.AssertCacheParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupAlreadyExistsFault_keys[k], "CacheParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupAlreadyExistsFault
-- &lt;p&gt;A cache parameter group with the requested name already exists.&lt;/p&gt;
function M.CacheParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertCacheParameterGroupAlreadyExistsFault(t)
	return t
end

local DescribeReplicationGroupsMessage_keys = { "Marker" = true, "MaxRecords" = true, "ReplicationGroupId" = true, nil }

function M.AssertDescribeReplicationGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReplicationGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReplicationGroupsMessage_keys[k], "DescribeReplicationGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReplicationGroupsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeReplicationGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The identifier for the replication group to be described. This parameter is not case sensitive.&lt;/p&gt; &lt;p&gt;If you do not specify this parameter, information about all replication groups is returned.&lt;/p&gt;
function M.DescribeReplicationGroupsMessage(Marker, MaxRecords, ReplicationGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReplicationGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["ReplicationGroupId"] = ReplicationGroupId,
	}
	M.AssertDescribeReplicationGroupsMessage(t)
	return t
end

local CacheSecurityGroupAlreadyExistsFault_keys = { nil }

function M.AssertCacheSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroupAlreadyExistsFault_keys[k], "CacheSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupAlreadyExistsFault
-- &lt;p&gt;A cache security group with the specified name already exists.&lt;/p&gt;
function M.CacheSecurityGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertCacheSecurityGroupAlreadyExistsFault(t)
	return t
end

local CreateCacheSubnetGroupMessage_keys = { "SubnetIds" = true, "CacheSubnetGroupDescription" = true, "CacheSubnetGroupName" = true, nil }

function M.AssertCreateCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	assert(struct["CacheSubnetGroupDescription"], "Expected key CacheSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["CacheSubnetGroupDescription"] then M.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheSubnetGroupMessage_keys[k], "CreateCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSubnetGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CreateCacheSubnetGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;A list of VPC subnet IDs for the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupDescription [String] &lt;p&gt;A description for the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;A name for the cache subnet group. This value is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;mysubnetgroup&lt;/code&gt; &lt;/p&gt;
-- Required parameter: CacheSubnetGroupName
-- Required parameter: CacheSubnetGroupDescription
-- Required parameter: SubnetIds
function M.CreateCacheSubnetGroupMessage(SubnetIds, CacheSubnetGroupDescription, CacheSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["CacheSubnetGroupDescription"] = CacheSubnetGroupDescription,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
	}
	M.AssertCreateCacheSubnetGroupMessage(t)
	return t
end

local CacheParameterGroupStatus_keys = { "CacheNodeIdsToReboot" = true, "CacheParameterGroupName" = true, "ParameterApplyStatus" = true, nil }

function M.AssertCacheParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupStatus to be of type 'table'")
	if struct["CacheNodeIdsToReboot"] then M.AssertCacheNodeIdsList(struct["CacheNodeIdsToReboot"]) end
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then M.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupStatus_keys[k], "CacheParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupStatus
-- &lt;p&gt;Status of the cache parameter group.&lt;/p&gt;
-- @param CacheNodeIdsToReboot [CacheNodeIdsList] &lt;p&gt;A list of the cache node IDs which need to be rebooted for parameter changes to be applied. A node ID is a numeric identifier (0001, 0002, etc.).&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group.&lt;/p&gt;
-- @param ParameterApplyStatus [String] &lt;p&gt;The status of parameter updates.&lt;/p&gt;
function M.CacheParameterGroupStatus(CacheNodeIdsToReboot, CacheParameterGroupName, ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupStatus")
	local t = { 
		["CacheNodeIdsToReboot"] = CacheNodeIdsToReboot,
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["ParameterApplyStatus"] = ParameterApplyStatus,
	}
	M.AssertCacheParameterGroupStatus(t)
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
-- &lt;p&gt;The requested Amazon Resource Name (ARN) does not refer to an existing resource.&lt;/p&gt;
function M.InvalidARNFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidARNFault")
	local t = { 
	}
	M.AssertInvalidARNFault(t)
	return t
end

local TagListMessage_keys = { "TagList" = true, nil }

function M.AssertTagListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagListMessage to be of type 'table'")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(TagListMessage_keys[k], "TagListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagListMessage
-- &lt;p&gt;Represents the output from the &lt;code&gt;AddTagsToResource&lt;/code&gt;, &lt;code&gt;ListTagsForResource&lt;/code&gt;, and &lt;code&gt;RemoveTagsFromResource&lt;/code&gt; operations.&lt;/p&gt;
-- @param TagList [TagList] &lt;p&gt;A list of cost allocation tags as key-value pairs.&lt;/p&gt;
function M.TagListMessage(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagListMessage")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertTagListMessage(t)
	return t
end

local EngineDefaults_keys = { "Marker" = true, "CacheParameterGroupFamily" = true, "Parameters" = true, "CacheNodeTypeSpecificParameters" = true, nil }

function M.AssertEngineDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineDefaults to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	if struct["CacheNodeTypeSpecificParameters"] then M.AssertCacheNodeTypeSpecificParametersList(struct["CacheNodeTypeSpecificParameters"]) end
	for k,_ in pairs(struct) do
		assert(EngineDefaults_keys[k], "EngineDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineDefaults
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeEngineDefaultParameters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;Specifies the name of the cache parameter group family to which the engine default parameters apply.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;Contains a list of engine default parameters.&lt;/p&gt;
-- @param CacheNodeTypeSpecificParameters [CacheNodeTypeSpecificParametersList] &lt;p&gt;A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.&lt;/p&gt;
function M.EngineDefaults(Marker, CacheParameterGroupFamily, Parameters, CacheNodeTypeSpecificParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EngineDefaults")
	local t = { 
		["Marker"] = Marker,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
		["Parameters"] = Parameters,
		["CacheNodeTypeSpecificParameters"] = CacheNodeTypeSpecificParameters,
	}
	M.AssertEngineDefaults(t)
	return t
end

local CreateReplicationGroupResult_keys = { "ReplicationGroup" = true, nil }

function M.AssertCreateReplicationGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationGroupResult to be of type 'table'")
	if struct["ReplicationGroup"] then M.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationGroupResult_keys[k], "CreateReplicationGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationGroupResult
--  
-- @param ReplicationGroup [ReplicationGroup]  
function M.CreateReplicationGroupResult(ReplicationGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationGroupResult")
	local t = { 
		["ReplicationGroup"] = ReplicationGroup,
	}
	M.AssertCreateReplicationGroupResult(t)
	return t
end

local RebootCacheClusterMessage_keys = { "CacheNodeIdsToReboot" = true, "CacheClusterId" = true, nil }

function M.AssertRebootCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	assert(struct["CacheNodeIdsToReboot"], "Expected key CacheNodeIdsToReboot to exist in table")
	if struct["CacheNodeIdsToReboot"] then M.AssertCacheNodeIdsList(struct["CacheNodeIdsToReboot"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	for k,_ in pairs(struct) do
		assert(RebootCacheClusterMessage_keys[k], "RebootCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootCacheClusterMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;RebootCacheCluster&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheNodeIdsToReboot [CacheNodeIdsList] &lt;p&gt;A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002, etc.). To reboot an entire cache cluster, specify all of the cache node IDs.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The cache cluster identifier. This parameter is stored as a lowercase string.&lt;/p&gt;
-- Required parameter: CacheClusterId
-- Required parameter: CacheNodeIdsToReboot
function M.RebootCacheClusterMessage(CacheNodeIdsToReboot, CacheClusterId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootCacheClusterMessage")
	local t = { 
		["CacheNodeIdsToReboot"] = CacheNodeIdsToReboot,
		["CacheClusterId"] = CacheClusterId,
	}
	M.AssertRebootCacheClusterMessage(t)
	return t
end

local CacheParameterGroupNameMessage_keys = { "CacheParameterGroupName" = true, nil }

function M.AssertCacheParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupNameMessage to be of type 'table'")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupNameMessage_keys[k], "CacheParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupNameMessage
-- &lt;p&gt;Represents the output of one of the following operations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ModifyCacheParameterGroup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ResetCacheParameterGroup&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group.&lt;/p&gt;
function M.CacheParameterGroupNameMessage(CacheParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupNameMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
	}
	M.AssertCacheParameterGroupNameMessage(t)
	return t
end

local ReservedCacheNodesOfferingMessage_keys = { "Marker" = true, "ReservedCacheNodesOfferings" = true, nil }

function M.AssertReservedCacheNodesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodesOfferingMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedCacheNodesOfferings"] then M.AssertReservedCacheNodesOfferingList(struct["ReservedCacheNodesOfferings"]) end
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodesOfferingMessage_keys[k], "ReservedCacheNodesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodesOfferingMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeReservedCacheNodesOfferings&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param ReservedCacheNodesOfferings [ReservedCacheNodesOfferingList] &lt;p&gt;A list of reserved cache node offerings. Each element in the list contains detailed information about one offering.&lt;/p&gt;
function M.ReservedCacheNodesOfferingMessage(Marker, ReservedCacheNodesOfferings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodesOfferingMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedCacheNodesOfferings"] = ReservedCacheNodesOfferings,
	}
	M.AssertReservedCacheNodesOfferingMessage(t)
	return t
end

local DescribeReservedCacheNodesOfferingsMessage_keys = { "OfferingType" = true, "ProductDescription" = true, "ReservedCacheNodesOfferingId" = true, "Marker" = true, "MaxRecords" = true, "Duration" = true, "CacheNodeType" = true, nil }

function M.AssertDescribeReservedCacheNodesOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedCacheNodesOfferingsMessage to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["ReservedCacheNodesOfferingId"] then M.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Duration"] then M.AssertString(struct["Duration"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedCacheNodesOfferingsMessage_keys[k], "DescribeReservedCacheNodesOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedCacheNodesOfferingsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeReservedCacheNodesOfferings&lt;/code&gt; operation.&lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;&quot;Light Utilization&quot;|&quot;Medium Utilization&quot;|&quot;Heavy Utilization&quot;&lt;/code&gt; &lt;/p&gt;
-- @param ProductDescription [String] &lt;p&gt;The product description filter value. Use this parameter to show only the available offerings matching the specified product description.&lt;/p&gt;
-- @param ReservedCacheNodesOfferingId [String] &lt;p&gt;The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;438012d3-4052-4cc7-b2e3-8d3372e0e706&lt;/code&gt; &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param Duration [String] &lt;p&gt;Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;1 | 3 | 31536000 | 94608000&lt;/code&gt; &lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type filter value. Use this parameter to show only the available offerings matching the specified cache node type.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
function M.DescribeReservedCacheNodesOfferingsMessage(OfferingType, ProductDescription, ReservedCacheNodesOfferingId, Marker, MaxRecords, Duration, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedCacheNodesOfferingsMessage")
	local t = { 
		["OfferingType"] = OfferingType,
		["ProductDescription"] = ProductDescription,
		["ReservedCacheNodesOfferingId"] = ReservedCacheNodesOfferingId,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Duration"] = Duration,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertDescribeReservedCacheNodesOfferingsMessage(t)
	return t
end

local DescribeCacheClustersMessage_keys = { "Marker" = true, "ShowCacheNodeInfo" = true, "MaxRecords" = true, "CacheClusterId" = true, "ShowCacheClustersNotInReplicationGroups" = true, nil }

function M.AssertDescribeCacheClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheClustersMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ShowCacheNodeInfo"] then M.AssertBooleanOptional(struct["ShowCacheNodeInfo"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ShowCacheClustersNotInReplicationGroups"] then M.AssertBooleanOptional(struct["ShowCacheClustersNotInReplicationGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheClustersMessage_keys[k], "DescribeCacheClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheClustersMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheClusters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param ShowCacheNodeInfo [BooleanOptional] &lt;p&gt;An optional flag that can be included in the &lt;code&gt;DescribeCacheCluster&lt;/code&gt; request to retrieve information about the individual cache nodes.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The user-supplied cluster identifier. If this parameter is specified, only information about that specific cache cluster is returned. This parameter isn't case sensitive.&lt;/p&gt;
-- @param ShowCacheClustersNotInReplicationGroups [BooleanOptional] &lt;p&gt;An optional flag that can be included in the &lt;code&gt;DescribeCacheCluster&lt;/code&gt; request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.&lt;/p&gt;
function M.DescribeCacheClustersMessage(Marker, ShowCacheNodeInfo, MaxRecords, CacheClusterId, ShowCacheClustersNotInReplicationGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheClustersMessage")
	local t = { 
		["Marker"] = Marker,
		["ShowCacheNodeInfo"] = ShowCacheNodeInfo,
		["MaxRecords"] = MaxRecords,
		["CacheClusterId"] = CacheClusterId,
		["ShowCacheClustersNotInReplicationGroups"] = ShowCacheClustersNotInReplicationGroups,
	}
	M.AssertDescribeCacheClustersMessage(t)
	return t
end

local InvalidReplicationGroupStateFault_keys = { nil }

function M.AssertInvalidReplicationGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidReplicationGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidReplicationGroupStateFault_keys[k], "InvalidReplicationGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidReplicationGroupStateFault
-- &lt;p&gt;The requested replication group is not in the &lt;code&gt;available&lt;/code&gt; state.&lt;/p&gt;
function M.InvalidReplicationGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidReplicationGroupStateFault")
	local t = { 
	}
	M.AssertInvalidReplicationGroupStateFault(t)
	return t
end

local ListTagsForResourceMessage_keys = { "ResourceName" = true, nil }

function M.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceMessage_keys[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- &lt;p&gt;The input parameters for the &lt;code&gt;ListTagsForResource&lt;/code&gt; operation.&lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) of the resource for which you want the list of tags, for example &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster&lt;/code&gt; or &lt;code&gt;arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: ResourceName
function M.ListTagsForResourceMessage(ResourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceMessage")
	local t = { 
		["ResourceName"] = ResourceName,
	}
	M.AssertListTagsForResourceMessage(t)
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
-- &lt;p&gt;Describes a name-value pair that is used to update the value of a parameter.&lt;/p&gt;
-- @param ParameterName [String] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param ParameterValue [String] &lt;p&gt;The value of the parameter.&lt;/p&gt;
function M.ParameterNameValue(ParameterName, ParameterValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterNameValue")
	local t = { 
		["ParameterName"] = ParameterName,
		["ParameterValue"] = ParameterValue,
	}
	M.AssertParameterNameValue(t)
	return t
end

local CacheParameterGroupsMessage_keys = { "Marker" = true, "CacheParameterGroups" = true, nil }

function M.AssertCacheParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroups"] then M.AssertCacheParameterGroupList(struct["CacheParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupsMessage_keys[k], "CacheParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupsMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeCacheParameterGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheParameterGroups [CacheParameterGroupList] &lt;p&gt;A list of cache parameter groups. Each element in the list contains detailed information about one cache parameter group.&lt;/p&gt;
function M.CacheParameterGroupsMessage(Marker, CacheParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheParameterGroups"] = CacheParameterGroups,
	}
	M.AssertCacheParameterGroupsMessage(t)
	return t
end

local ReservedCacheNode_keys = { "OfferingType" = true, "FixedPrice" = true, "ReservedCacheNodesOfferingId" = true, "CacheNodeCount" = true, "UsagePrice" = true, "RecurringCharges" = true, "ReservedCacheNodeId" = true, "State" = true, "ProductDescription" = true, "StartTime" = true, "Duration" = true, "CacheNodeType" = true, nil }

function M.AssertReservedCacheNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNode to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservedCacheNodesOfferingId"] then M.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["CacheNodeCount"] then M.AssertInteger(struct["CacheNodeCount"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedCacheNodeId"] then M.AssertString(struct["ReservedCacheNodeId"]) end
	if struct["State"] then M.AssertString(struct["State"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(ReservedCacheNode_keys[k], "ReservedCacheNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNode
-- &lt;p&gt;Represents the output of a &lt;code&gt;PurchaseReservedCacheNodesOffering&lt;/code&gt; operation.&lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The offering type of this reserved cache node.&lt;/p&gt;
-- @param FixedPrice [Double] &lt;p&gt;The fixed price charged for this reserved cache node.&lt;/p&gt;
-- @param ReservedCacheNodesOfferingId [String] &lt;p&gt;The offering identifier.&lt;/p&gt;
-- @param CacheNodeCount [Integer] &lt;p&gt;The number of cache nodes that have been reserved.&lt;/p&gt;
-- @param UsagePrice [Double] &lt;p&gt;The hourly price charged for this reserved cache node.&lt;/p&gt;
-- @param RecurringCharges [RecurringChargeList] &lt;p&gt;The recurring price charged to run this reserved cache node.&lt;/p&gt;
-- @param ReservedCacheNodeId [String] &lt;p&gt;The unique identifier for the reservation.&lt;/p&gt;
-- @param State [String] &lt;p&gt;The state of the reserved cache node.&lt;/p&gt;
-- @param ProductDescription [String] &lt;p&gt;The description of the reserved cache node.&lt;/p&gt;
-- @param StartTime [TStamp] &lt;p&gt;The time the reservation started.&lt;/p&gt;
-- @param Duration [Integer] &lt;p&gt;The duration of the reservation in seconds.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type for the reserved cache nodes.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
function M.ReservedCacheNode(OfferingType, FixedPrice, ReservedCacheNodesOfferingId, CacheNodeCount, UsagePrice, RecurringCharges, ReservedCacheNodeId, State, ProductDescription, StartTime, Duration, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNode")
	local t = { 
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["ReservedCacheNodesOfferingId"] = ReservedCacheNodesOfferingId,
		["CacheNodeCount"] = CacheNodeCount,
		["UsagePrice"] = UsagePrice,
		["RecurringCharges"] = RecurringCharges,
		["ReservedCacheNodeId"] = ReservedCacheNodeId,
		["State"] = State,
		["ProductDescription"] = ProductDescription,
		["StartTime"] = StartTime,
		["Duration"] = Duration,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertReservedCacheNode(t)
	return t
end

local CreateCacheSubnetGroupResult_keys = { "CacheSubnetGroup" = true, nil }

function M.AssertCreateCacheSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheSubnetGroupResult to be of type 'table'")
	if struct["CacheSubnetGroup"] then M.AssertCacheSubnetGroup(struct["CacheSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheSubnetGroupResult_keys[k], "CreateCacheSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheSubnetGroupResult
--  
-- @param CacheSubnetGroup [CacheSubnetGroup]  
function M.CreateCacheSubnetGroupResult(CacheSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheSubnetGroupResult")
	local t = { 
		["CacheSubnetGroup"] = CacheSubnetGroup,
	}
	M.AssertCreateCacheSubnetGroupResult(t)
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
-- &lt;p&gt;The value for a parameter is invalid.&lt;/p&gt;
-- @param message [AwsQueryErrorMessage] &lt;p&gt;A parameter value is invalid.&lt;/p&gt;
function M.InvalidParameterValueException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local AvailabilityZone_keys = { "Name" = true, nil }

function M.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(AvailabilityZone_keys[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- &lt;p&gt;Describes an Availability Zone in which the cache cluster is launched.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the Availability Zone.&lt;/p&gt;
function M.AvailabilityZone(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = Name,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local Snapshot_keys = { "CacheParameterGroupName" = true, "CacheClusterId" = true, "ReplicationGroupId" = true, "SnapshotRetentionLimit" = true, "NodeSnapshots" = true, "CacheNodeType" = true, "Engine" = true, "VpcId" = true, "NumCacheNodes" = true, "AutoMinorVersionUpgrade" = true, "AutomaticFailover" = true, "PreferredMaintenanceWindow" = true, "CacheSubnetGroupName" = true, "SnapshotName" = true, "SnapshotStatus" = true, "EngineVersion" = true, "ReplicationGroupDescription" = true, "TopicArn" = true, "NumNodeGroups" = true, "CacheClusterCreateTime" = true, "PreferredAvailabilityZone" = true, "SnapshotSource" = true, "SnapshotWindow" = true, "Port" = true, nil }

function M.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NodeSnapshots"] then M.AssertNodeSnapshotList(struct["NodeSnapshots"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["NumCacheNodes"] then M.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["AutomaticFailover"] then M.AssertAutomaticFailoverStatus(struct["AutomaticFailover"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	if struct["SnapshotStatus"] then M.AssertString(struct["SnapshotStatus"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationGroupDescription"] then M.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["TopicArn"] then M.AssertString(struct["TopicArn"]) end
	if struct["NumNodeGroups"] then M.AssertIntegerOptional(struct["NumNodeGroups"]) end
	if struct["CacheClusterCreateTime"] then M.AssertTStamp(struct["CacheClusterCreateTime"]) end
	if struct["PreferredAvailabilityZone"] then M.AssertString(struct["PreferredAvailabilityZone"]) end
	if struct["SnapshotSource"] then M.AssertString(struct["SnapshotSource"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(Snapshot_keys[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- &lt;p&gt;Represents a copy of an entire Redis cache cluster as of the time when the snapshot was taken.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The cache parameter group that is associated with the source cache cluster.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The user-supplied identifier of the source cache cluster.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The unique identifier of the source replication group.&lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;For an automatic snapshot, the number of days for which ElastiCache retains the snapshot before deleting it.&lt;/p&gt; &lt;p&gt;For manual snapshots, this field reflects the &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; for the source cache cluster when the snapshot was created. This field is otherwise ignored: Manual snapshots do not expire, and can only be deleted using the &lt;code&gt;DeleteSnapshot&lt;/code&gt; operation. &lt;/p&gt; &lt;p&gt; &lt;b&gt;Important&lt;/b&gt; If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off.&lt;/p&gt;
-- @param NodeSnapshots [NodeSnapshotList] &lt;p&gt;A list of the cache nodes in the source cache cluster.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The name of the compute and memory capacity node type for the source cache cluster.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The name of the cache engine (&lt;code&gt;memcached&lt;/code&gt; or &lt;code&gt;redis&lt;/code&gt;) used by the source cache cluster.&lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group for the source cache cluster.&lt;/p&gt;
-- @param NumCacheNodes [IntegerOptional] &lt;p&gt;The number of cache nodes in the source cache cluster.&lt;/p&gt; &lt;p&gt;For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [Boolean] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param AutomaticFailover [AutomaticFailoverStatus] &lt;p&gt;Indicates the status of Multi-AZ for the source replication group.&lt;/p&gt; &lt;note&gt; &lt;p&gt;ElastiCache Multi-AZ replication groups are not supported on:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Redis versions earlier than 2.8.6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis (cluster mode disabled):T1 and T2 cache node types.&lt;/p&gt; &lt;p&gt;Redis (cluster mode enabled): T1 node types.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/note&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group associated with the source cache cluster.&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;The name of a snapshot. For an automatic snapshot, the name is system-generated. For a manual snapshot, this is the user-provided name.&lt;/p&gt;
-- @param SnapshotStatus [String] &lt;p&gt;The status of the snapshot. Valid values: &lt;code&gt;creating&lt;/code&gt; | &lt;code&gt;available&lt;/code&gt; | &lt;code&gt;restoring&lt;/code&gt; | &lt;code&gt;copying&lt;/code&gt; | &lt;code&gt;deleting&lt;/code&gt;.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version of the cache engine version that is used by the source cache cluster.&lt;/p&gt;
-- @param ReplicationGroupDescription [String] &lt;p&gt;A description of the source replication group.&lt;/p&gt;
-- @param TopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the topic used by the source cache cluster for publishing notifications.&lt;/p&gt;
-- @param NumNodeGroups [IntegerOptional] &lt;p&gt;The number of node groups (shards) in this snapshot. When restoring from a snapshot, the number of node groups (shards) in the snapshot and in the restored replication group must be the same.&lt;/p&gt;
-- @param CacheClusterCreateTime [TStamp] &lt;p&gt;The date and time when the source cache cluster was created.&lt;/p&gt;
-- @param PreferredAvailabilityZone [String] &lt;p&gt;The name of the Availability Zone in which the source cache cluster is located.&lt;/p&gt;
-- @param SnapshotSource [String] &lt;p&gt;Indicates whether the snapshot is from an automatic backup (&lt;code&gt;automated&lt;/code&gt;) or was created manually (&lt;code&gt;manual&lt;/code&gt;).&lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range during which ElastiCache takes daily snapshots of the source cache cluster.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port number used by each cache nodes in the source cache cluster.&lt;/p&gt;
function M.Snapshot(CacheParameterGroupName, CacheClusterId, ReplicationGroupId, SnapshotRetentionLimit, NodeSnapshots, CacheNodeType, Engine, VpcId, NumCacheNodes, AutoMinorVersionUpgrade, AutomaticFailover, PreferredMaintenanceWindow, CacheSubnetGroupName, SnapshotName, SnapshotStatus, EngineVersion, ReplicationGroupDescription, TopicArn, NumNodeGroups, CacheClusterCreateTime, PreferredAvailabilityZone, SnapshotSource, SnapshotWindow, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Snapshot")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["CacheClusterId"] = CacheClusterId,
		["ReplicationGroupId"] = ReplicationGroupId,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["NodeSnapshots"] = NodeSnapshots,
		["CacheNodeType"] = CacheNodeType,
		["Engine"] = Engine,
		["VpcId"] = VpcId,
		["NumCacheNodes"] = NumCacheNodes,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["AutomaticFailover"] = AutomaticFailover,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
		["SnapshotName"] = SnapshotName,
		["SnapshotStatus"] = SnapshotStatus,
		["EngineVersion"] = EngineVersion,
		["ReplicationGroupDescription"] = ReplicationGroupDescription,
		["TopicArn"] = TopicArn,
		["NumNodeGroups"] = NumNodeGroups,
		["CacheClusterCreateTime"] = CacheClusterCreateTime,
		["PreferredAvailabilityZone"] = PreferredAvailabilityZone,
		["SnapshotSource"] = SnapshotSource,
		["SnapshotWindow"] = SnapshotWindow,
		["Port"] = Port,
	}
	M.AssertSnapshot(t)
	return t
end

local PurchaseReservedCacheNodesOfferingResult_keys = { "ReservedCacheNode" = true, nil }

function M.AssertPurchaseReservedCacheNodesOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedCacheNodesOfferingResult to be of type 'table'")
	if struct["ReservedCacheNode"] then M.AssertReservedCacheNode(struct["ReservedCacheNode"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedCacheNodesOfferingResult_keys[k], "PurchaseReservedCacheNodesOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedCacheNodesOfferingResult
--  
-- @param ReservedCacheNode [ReservedCacheNode]  
function M.PurchaseReservedCacheNodesOfferingResult(ReservedCacheNode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedCacheNodesOfferingResult")
	local t = { 
		["ReservedCacheNode"] = ReservedCacheNode,
	}
	M.AssertPurchaseReservedCacheNodesOfferingResult(t)
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
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of cache nodes per customer.&lt;/p&gt;
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
-- &lt;p&gt;The VPC network is in an invalid state.&lt;/p&gt;
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	M.AssertInvalidVPCNetworkStateFault(t)
	return t
end

local CacheClusterNotFoundFault_keys = { nil }

function M.AssertCacheClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheClusterNotFoundFault_keys[k], "CacheClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheClusterNotFoundFault
-- &lt;p&gt;The requested cache cluster ID does not refer to an existing cache cluster.&lt;/p&gt;
function M.CacheClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheClusterNotFoundFault")
	local t = { 
	}
	M.AssertCacheClusterNotFoundFault(t)
	return t
end

local CacheClusterAlreadyExistsFault_keys = { nil }

function M.AssertCacheClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheClusterAlreadyExistsFault_keys[k], "CacheClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheClusterAlreadyExistsFault
-- &lt;p&gt;You already have a cache cluster with the given identifier.&lt;/p&gt;
function M.CacheClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheClusterAlreadyExistsFault")
	local t = { 
	}
	M.AssertCacheClusterAlreadyExistsFault(t)
	return t
end

local CacheNodeTypeSpecificValue_keys = { "Value" = true, "CacheNodeType" = true, nil }

function M.AssertCacheNodeTypeSpecificValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNodeTypeSpecificValue to be of type 'table'")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(CacheNodeTypeSpecificValue_keys[k], "CacheNodeTypeSpecificValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNodeTypeSpecificValue
-- &lt;p&gt;A value that applies only to a certain cache node type.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;The value for the cache node type.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type for which this value applies.&lt;/p&gt;
function M.CacheNodeTypeSpecificValue(Value, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheNodeTypeSpecificValue")
	local t = { 
		["Value"] = Value,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertCacheNodeTypeSpecificValue(t)
	return t
end

local DescribeCacheSecurityGroupsMessage_keys = { "Marker" = true, "CacheSecurityGroupName" = true, "MaxRecords" = true, nil }

function M.AssertDescribeCacheSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheSecurityGroupsMessage_keys[k], "DescribeCacheSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheSecurityGroupsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheSecurityGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The name of the cache security group to return details for.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
function M.DescribeCacheSecurityGroupsMessage(Marker, CacheSecurityGroupName, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheSecurityGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeCacheSecurityGroupsMessage(t)
	return t
end

local SecurityGroupMembership_keys = { "Status" = true, "SecurityGroupId" = true, nil }

function M.AssertSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["SecurityGroupId"] then M.AssertString(struct["SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(SecurityGroupMembership_keys[k], "SecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroupMembership
-- &lt;p&gt;Represents a single cache security group and its status.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the cache security group membership. The status changes whenever a cache security group is modified, or when the cache security groups assigned to a cache cluster are modified.&lt;/p&gt;
-- @param SecurityGroupId [String] &lt;p&gt;The identifier of the cache security group.&lt;/p&gt;
function M.SecurityGroupMembership(Status, SecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["SecurityGroupId"] = SecurityGroupId,
	}
	M.AssertSecurityGroupMembership(t)
	return t
end

local DeleteCacheSecurityGroupMessage_keys = { "CacheSecurityGroupName" = true, nil }

function M.AssertDeleteCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheSecurityGroupMessage to be of type 'table'")
	assert(struct["CacheSecurityGroupName"], "Expected key CacheSecurityGroupName to exist in table")
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCacheSecurityGroupMessage_keys[k], "DeleteCacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheSecurityGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteCacheSecurityGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The name of the cache security group to delete.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You cannot delete the default security group.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: CacheSecurityGroupName
function M.DeleteCacheSecurityGroupMessage(CacheSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCacheSecurityGroupMessage")
	local t = { 
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
	}
	M.AssertDeleteCacheSecurityGroupMessage(t)
	return t
end

local NodeSnapshot_keys = { "SnapshotCreateTime" = true, "CacheNodeId" = true, "NodeGroupConfiguration" = true, "CacheClusterId" = true, "NodeGroupId" = true, "CacheNodeCreateTime" = true, "CacheSize" = true, nil }

function M.AssertNodeSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeSnapshot to be of type 'table'")
	if struct["SnapshotCreateTime"] then M.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["CacheNodeId"] then M.AssertString(struct["CacheNodeId"]) end
	if struct["NodeGroupConfiguration"] then M.AssertNodeGroupConfiguration(struct["NodeGroupConfiguration"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["NodeGroupId"] then M.AssertString(struct["NodeGroupId"]) end
	if struct["CacheNodeCreateTime"] then M.AssertTStamp(struct["CacheNodeCreateTime"]) end
	if struct["CacheSize"] then M.AssertString(struct["CacheSize"]) end
	for k,_ in pairs(struct) do
		assert(NodeSnapshot_keys[k], "NodeSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeSnapshot
-- &lt;p&gt;Represents an individual cache node in a snapshot of a cache cluster.&lt;/p&gt;
-- @param SnapshotCreateTime [TStamp] &lt;p&gt;The date and time when the source node's metadata and cache data set was obtained for the snapshot.&lt;/p&gt;
-- @param CacheNodeId [String] &lt;p&gt;The cache node identifier for the node in the source cache cluster.&lt;/p&gt;
-- @param NodeGroupConfiguration [NodeGroupConfiguration] &lt;p&gt;The configuration for the source node group (shard).&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;A unique identifier for the source cache cluster.&lt;/p&gt;
-- @param NodeGroupId [String] &lt;p&gt;A unique identifier for the source node group (shard).&lt;/p&gt;
-- @param CacheNodeCreateTime [TStamp] &lt;p&gt;The date and time when the cache node was created in the source cache cluster.&lt;/p&gt;
-- @param CacheSize [String] &lt;p&gt;The size of the cache on the source cache node.&lt;/p&gt;
function M.NodeSnapshot(SnapshotCreateTime, CacheNodeId, NodeGroupConfiguration, CacheClusterId, NodeGroupId, CacheNodeCreateTime, CacheSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeSnapshot")
	local t = { 
		["SnapshotCreateTime"] = SnapshotCreateTime,
		["CacheNodeId"] = CacheNodeId,
		["NodeGroupConfiguration"] = NodeGroupConfiguration,
		["CacheClusterId"] = CacheClusterId,
		["NodeGroupId"] = NodeGroupId,
		["CacheNodeCreateTime"] = CacheNodeCreateTime,
		["CacheSize"] = CacheSize,
	}
	M.AssertNodeSnapshot(t)
	return t
end

local CacheEngineVersion_keys = { "Engine" = true, "CacheEngineDescription" = true, "CacheEngineVersionDescription" = true, "CacheParameterGroupFamily" = true, "EngineVersion" = true, nil }

function M.AssertCacheEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheEngineVersion to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["CacheEngineDescription"] then M.AssertString(struct["CacheEngineDescription"]) end
	if struct["CacheEngineVersionDescription"] then M.AssertString(struct["CacheEngineVersionDescription"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(CacheEngineVersion_keys[k], "CacheEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheEngineVersion
-- &lt;p&gt;Provides all of the details about a particular cache engine version.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The name of the cache engine.&lt;/p&gt;
-- @param CacheEngineDescription [String] &lt;p&gt;The description of the cache engine.&lt;/p&gt;
-- @param CacheEngineVersionDescription [String] &lt;p&gt;The description of the cache engine version.&lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;The name of the cache parameter group family associated with this cache engine.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version number of the cache engine.&lt;/p&gt;
function M.CacheEngineVersion(Engine, CacheEngineDescription, CacheEngineVersionDescription, CacheParameterGroupFamily, EngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheEngineVersion")
	local t = { 
		["Engine"] = Engine,
		["CacheEngineDescription"] = CacheEngineDescription,
		["CacheEngineVersionDescription"] = CacheEngineVersionDescription,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
		["EngineVersion"] = EngineVersion,
	}
	M.AssertCacheEngineVersion(t)
	return t
end

local CreateSnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertCreateSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotResult_keys[k], "CreateSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.CreateSnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertCreateSnapshotResult(t)
	return t
end

local CopySnapshotMessage_keys = { "SourceSnapshotName" = true, "TargetSnapshotName" = true, "TargetBucket" = true, nil }

function M.AssertCopySnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopySnapshotMessage to be of type 'table'")
	assert(struct["SourceSnapshotName"], "Expected key SourceSnapshotName to exist in table")
	assert(struct["TargetSnapshotName"], "Expected key TargetSnapshotName to exist in table")
	if struct["SourceSnapshotName"] then M.AssertString(struct["SourceSnapshotName"]) end
	if struct["TargetSnapshotName"] then M.AssertString(struct["TargetSnapshotName"]) end
	if struct["TargetBucket"] then M.AssertString(struct["TargetBucket"]) end
	for k,_ in pairs(struct) do
		assert(CopySnapshotMessage_keys[k], "CopySnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopySnapshotMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CopySnapshotMessage&lt;/code&gt; operation.&lt;/p&gt;
-- @param SourceSnapshotName [String] &lt;p&gt;The name of an existing snapshot from which to make a copy.&lt;/p&gt;
-- @param TargetSnapshotName [String] &lt;p&gt;A name for the snapshot copy. ElastiCache does not permit overwriting a snapshot, therefore this name must be unique within its context - ElastiCache or an Amazon S3 bucket if exporting.&lt;/p&gt;
-- @param TargetBucket [String] &lt;p&gt;The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.&lt;/p&gt; &lt;p&gt;When using this parameter to export a snapshot, be sure Amazon ElastiCache has the needed permissions to this S3 bucket. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess&quot;&gt;Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket&lt;/a&gt; in the &lt;i&gt;Amazon ElastiCache User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html&quot;&gt;Exporting a Snapshot&lt;/a&gt; in the &lt;i&gt;Amazon ElastiCache User Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: SourceSnapshotName
-- Required parameter: TargetSnapshotName
function M.CopySnapshotMessage(SourceSnapshotName, TargetSnapshotName, TargetBucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopySnapshotMessage")
	local t = { 
		["SourceSnapshotName"] = SourceSnapshotName,
		["TargetSnapshotName"] = TargetSnapshotName,
		["TargetBucket"] = TargetBucket,
	}
	M.AssertCopySnapshotMessage(t)
	return t
end

local CreateCacheParameterGroupMessage_keys = { "CacheParameterGroupName" = true, "CacheParameterGroupFamily" = true, "Description" = true, nil }

function M.AssertCreateCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	assert(struct["CacheParameterGroupFamily"], "Expected key CacheParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateCacheParameterGroupMessage_keys[k], "CreateCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCacheParameterGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CreateCacheParameterGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;A user-specified name for the cache parameter group.&lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;The name of the cache parameter group family that the cache parameter group can be used with.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;A user-specified description for the cache parameter group.&lt;/p&gt;
-- Required parameter: CacheParameterGroupName
-- Required parameter: CacheParameterGroupFamily
-- Required parameter: Description
function M.CreateCacheParameterGroupMessage(CacheParameterGroupName, CacheParameterGroupFamily, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCacheParameterGroupMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
		["Description"] = Description,
	}
	M.AssertCreateCacheParameterGroupMessage(t)
	return t
end

local CacheParameterGroup_keys = { "CacheParameterGroupName" = true, "CacheParameterGroupFamily" = true, "Description" = true, nil }

function M.AssertCacheParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroup to be of type 'table'")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CacheParameterGroup_keys[k], "CacheParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroup
-- &lt;p&gt;Represents the output of a &lt;code&gt;CreateCacheParameterGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group.&lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;The name of the cache parameter group family that this cache parameter group is compatible with.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description for this cache parameter group.&lt;/p&gt;
function M.CacheParameterGroup(CacheParameterGroupName, CacheParameterGroupFamily, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroup")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
		["Description"] = Description,
	}
	M.AssertCacheParameterGroup(t)
	return t
end

local APICallRateForCustomerExceededFault_keys = { nil }

function M.AssertAPICallRateForCustomerExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APICallRateForCustomerExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(APICallRateForCustomerExceededFault_keys[k], "APICallRateForCustomerExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APICallRateForCustomerExceededFault
-- &lt;p&gt;The customer has exceeded the allowed rate of API calls.&lt;/p&gt;
function M.APICallRateForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating APICallRateForCustomerExceededFault")
	local t = { 
	}
	M.AssertAPICallRateForCustomerExceededFault(t)
	return t
end

local CacheSubnetGroupNotFoundFault_keys = { nil }

function M.AssertCacheSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSubnetGroupNotFoundFault_keys[k], "CacheSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSubnetGroupNotFoundFault
-- &lt;p&gt;The requested cache subnet group name does not refer to an existing cache subnet group.&lt;/p&gt;
function M.CacheSubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSubnetGroupNotFoundFault")
	local t = { 
	}
	M.AssertCacheSubnetGroupNotFoundFault(t)
	return t
end

local CacheClusterMessage_keys = { "Marker" = true, "CacheClusters" = true, nil }

function M.AssertCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheClusterMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheClusters"] then M.AssertCacheClusterList(struct["CacheClusters"]) end
	for k,_ in pairs(struct) do
		assert(CacheClusterMessage_keys[k], "CacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheClusterMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeCacheClusters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheClusters [CacheClusterList] &lt;p&gt;A list of cache clusters. Each item in the list contains detailed information about one cache cluster.&lt;/p&gt;
function M.CacheClusterMessage(Marker, CacheClusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheClusterMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheClusters"] = CacheClusters,
	}
	M.AssertCacheClusterMessage(t)
	return t
end

local ModifyCacheClusterMessage_keys = { "CacheSecurityGroupNames" = true, "CacheParameterGroupName" = true, "CacheClusterId" = true, "NumCacheNodes" = true, "AutoMinorVersionUpgrade" = true, "ApplyImmediately" = true, "SecurityGroupIds" = true, "SnapshotRetentionLimit" = true, "NotificationTopicStatus" = true, "SnapshotWindow" = true, "EngineVersion" = true, "CacheNodeType" = true, "AZMode" = true, "NotificationTopicArn" = true, "NewAvailabilityZones" = true, "PreferredMaintenanceWindow" = true, "CacheNodeIdsToRemove" = true, nil }

function M.AssertModifyCacheClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheClusterMessage to be of type 'table'")
	assert(struct["CacheClusterId"], "Expected key CacheClusterId to exist in table")
	if struct["CacheSecurityGroupNames"] then M.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["NumCacheNodes"] then M.AssertIntegerOptional(struct["NumCacheNodes"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["NotificationTopicStatus"] then M.AssertString(struct["NotificationTopicStatus"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["AZMode"] then M.AssertAZMode(struct["AZMode"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["NewAvailabilityZones"] then M.AssertPreferredAvailabilityZoneList(struct["NewAvailabilityZones"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheNodeIdsToRemove"] then M.AssertCacheNodeIdsList(struct["CacheNodeIdsToRemove"]) end
	for k,_ in pairs(struct) do
		assert(ModifyCacheClusterMessage_keys[k], "ModifyCacheClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheClusterMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;ModifyCacheCluster&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheSecurityGroupNames [CacheSecurityGroupNameList] &lt;p&gt;A list of cache security group names to authorize on this cache cluster. This change is asynchronously applied as soon as possible.&lt;/p&gt; &lt;p&gt;You can use this parameter only with clusters that are created outside of an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters. Must not be &quot;Default&quot;.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group to apply to this cache cluster. This change is asynchronously applied as soon as possible for parameters when the &lt;code&gt;ApplyImmediately&lt;/code&gt; parameter is specified as &lt;code&gt;true&lt;/code&gt; for this request.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;The cache cluster identifier. This value is stored as a lowercase string.&lt;/p&gt;
-- @param NumCacheNodes [IntegerOptional] &lt;p&gt;The number of cache nodes that the cache cluster should have. If the value for &lt;code&gt;NumCacheNodes&lt;/code&gt; is greater than the sum of the number of current cache nodes and the number of cache nodes pending creation (which may be zero), more nodes are added. If the value is less than the number of existing cache nodes, nodes are removed. If the value is equal to the number of current cache nodes, any pending add or remove requests are canceled.&lt;/p&gt; &lt;p&gt;If you are removing cache nodes, you must use the &lt;code&gt;CacheNodeIdsToRemove&lt;/code&gt; parameter to provide the IDs of the specific cache nodes to remove.&lt;/p&gt; &lt;p&gt;For clusters running Redis, this value must be 1. For clusters running Memcached, this value must be between 1 and 20.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Adding or removing Memcached cache nodes can be applied immediately or as a pending operation (see &lt;code&gt;ApplyImmediately&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;A pending operation to modify the number of cache nodes in a cluster during its maintenance window, whether by adding or removing nodes in accordance with the scale out architecture, is not queued. The customer's latest request to add or remove nodes to the cluster overrides any previous pending operations to modify the number of cache nodes in the cluster. For example, a request to remove 2 nodes would override a previous pending operation to remove 3 nodes. Similarly, a request to add 2 nodes would override a previous pending operation to remove 3 nodes and vice versa. As Memcached cache nodes may now be provisioned in different Availability Zones with flexible cache node placement, a request to add nodes does not automatically override a previous pending operation to add nodes. The customer can modify the previous pending operation to add more nodes or explicitly cancel the pending request and retry the new request. To cancel pending operations to modify the number of cache nodes in a cluster, use the &lt;code&gt;ModifyCacheCluster&lt;/code&gt; request and set &lt;code&gt;NumCacheNodes&lt;/code&gt; equal to the number of cache nodes currently in the cache cluster.&lt;/p&gt; &lt;/note&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param ApplyImmediately [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, this parameter causes the modifications in this request and any pending modifications to be applied, asynchronously and as soon as possible, regardless of the &lt;code&gt;PreferredMaintenanceWindow&lt;/code&gt; setting for the cache cluster.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;false&lt;/code&gt;, changes to the cache cluster are applied on the next maintenance reboot, or the next failure reboot, whichever occurs first.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you perform a &lt;code&gt;ModifyCacheCluster&lt;/code&gt; before a pending modification is applied, the pending modification is replaced by the newer modification.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;Valid values: &lt;code&gt;true&lt;/code&gt; | &lt;code&gt;false&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- @param SecurityGroupIds [SecurityGroupIdsList] &lt;p&gt;Specifies the VPC Security Groups associated with the cache cluster.&lt;/p&gt; &lt;p&gt;This parameter can be used only with clusters that are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot that was taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If the value of &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; is set to zero (0), backups are turned off.&lt;/p&gt; &lt;/note&gt;
-- @param NotificationTopicStatus [String] &lt;p&gt;The status of the Amazon SNS notification topic. Notifications are sent only if the status is &lt;code&gt;active&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;active&lt;/code&gt; | &lt;code&gt;inactive&lt;/code&gt; &lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your cache cluster. &lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The upgraded version of the cache engine to be run on the cache nodes.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Important:&lt;/b&gt; You can upgrade to a newer engine version (see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement&quot;&gt;Selecting a Cache Engine and Version&lt;/a&gt;), but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cache cluster and create it anew with the earlier engine version. &lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;A valid cache node type that you want to scale this cache cluster up to.&lt;/p&gt;
-- @param AZMode [AZMode] &lt;p&gt;Specifies whether the new nodes in this Memcached cache cluster are all created in a single Availability Zone or created across multiple Availability Zones.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;single-az&lt;/code&gt; | &lt;code&gt;cross-az&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This option is only supported for Memcached cache clusters.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You cannot specify &lt;code&gt;single-az&lt;/code&gt; if the Memcached cache cluster already has cache nodes in different Availability Zones. If &lt;code&gt;cross-az&lt;/code&gt; is specified, existing Memcached nodes remain in their current Availability Zone.&lt;/p&gt; &lt;p&gt;Only newly created nodes are located in different Availability Zones. For instructions on how to move existing Memcached nodes to different Availability Zones, see the &lt;b&gt;Availability Zone Considerations&lt;/b&gt; section of &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html&quot;&gt;Cache Node Considerations for Memcached&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param NotificationTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are sent.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The Amazon SNS topic owner must be same as the cache cluster owner.&lt;/p&gt; &lt;/note&gt;
-- @param NewAvailabilityZones [PreferredAvailabilityZoneList] &lt;p&gt;The list of Availability Zones where the new Memcached cache nodes are created.&lt;/p&gt; &lt;p&gt;This parameter is only valid when &lt;code&gt;NumCacheNodes&lt;/code&gt; in the request is greater than the sum of the number of active cache nodes and the number of cache nodes pending creation (which may be zero). The number of Availability Zones supplied in this list must match the cache nodes being added in this request.&lt;/p&gt; &lt;p&gt;This option is only supported on Memcached clusters.&lt;/p&gt; &lt;p&gt;Scenarios:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Scenario 1:&lt;/b&gt; You have 3 active nodes and wish to add 2 nodes. Specify &lt;code&gt;NumCacheNodes=5&lt;/code&gt; (3 + 2) and optionally specify two Availability Zones for the two new nodes.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Scenario 2:&lt;/b&gt; You have 3 active nodes and 2 nodes pending creation (from the scenario 1 call) and want to add 1 more node. Specify &lt;code&gt;NumCacheNodes=6&lt;/code&gt; ((3 + 2) + 1) and optionally specify an Availability Zone for the new node.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Scenario 3:&lt;/b&gt; You want to cancel all pending operations. Specify &lt;code&gt;NumCacheNodes=3&lt;/code&gt; to cancel all pending operations.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The Availability Zone placement of nodes pending creation cannot be modified. If you wish to cancel any nodes pending creation, add 0 nodes by setting &lt;code&gt;NumCacheNodes&lt;/code&gt; to the number of current nodes.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;cross-az&lt;/code&gt; is specified, existing Memcached nodes remain in their current Availability Zone. Only newly created nodes can be located in different Availability Zones. For guidance on how to move existing Memcached nodes to different Availability Zones, see the &lt;b&gt;Availability Zone Considerations&lt;/b&gt; section of &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html&quot;&gt;Cache Node Considerations for Memcached&lt;/a&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Impact of new add/remove requests upon pending requests&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Scenario-1&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending Action: Delete&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;New Request: Delete&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Result: The new delete, pending or immediate, replaces the pending delete.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Scenario-2&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending Action: Delete&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;New Request: Create&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Result: The new create, pending or immediate, replaces the pending delete.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Scenario-3&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending Action: Create&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;New Request: Delete&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Result: The new delete, pending or immediate, replaces the pending create.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Scenario-4&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Pending Action: Create&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;New Request: Create&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Result: The new create is added to the pending create.&lt;/p&gt; &lt;important&gt; &lt;p&gt; &lt;b&gt;Important:&lt;/b&gt; If the new create request is &lt;b&gt;Apply Immediately - Yes&lt;/b&gt;, all creates are performed immediately. If the new create request is &lt;b&gt;Apply Immediately - No&lt;/b&gt;, all creates are pending.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param CacheNodeIdsToRemove [CacheNodeIdsList] &lt;p&gt;A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002, etc.). This parameter is only valid when &lt;code&gt;NumCacheNodes&lt;/code&gt; is less than the existing number of cache nodes. The number of cache node IDs supplied in this parameter must match the difference between the existing number of cache nodes in the cluster or pending cache nodes, whichever is greater, and the value of &lt;code&gt;NumCacheNodes&lt;/code&gt; in the request.&lt;/p&gt; &lt;p&gt;For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number of cache nodes in this &lt;code&gt;ModifyCacheCluser&lt;/code&gt; call is 5, you must list 2 (7 - 5) cache node IDs to remove.&lt;/p&gt;
-- Required parameter: CacheClusterId
function M.ModifyCacheClusterMessage(CacheSecurityGroupNames, CacheParameterGroupName, CacheClusterId, NumCacheNodes, AutoMinorVersionUpgrade, ApplyImmediately, SecurityGroupIds, SnapshotRetentionLimit, NotificationTopicStatus, SnapshotWindow, EngineVersion, CacheNodeType, AZMode, NotificationTopicArn, NewAvailabilityZones, PreferredMaintenanceWindow, CacheNodeIdsToRemove, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyCacheClusterMessage")
	local t = { 
		["CacheSecurityGroupNames"] = CacheSecurityGroupNames,
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["CacheClusterId"] = CacheClusterId,
		["NumCacheNodes"] = NumCacheNodes,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["ApplyImmediately"] = ApplyImmediately,
		["SecurityGroupIds"] = SecurityGroupIds,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["NotificationTopicStatus"] = NotificationTopicStatus,
		["SnapshotWindow"] = SnapshotWindow,
		["EngineVersion"] = EngineVersion,
		["CacheNodeType"] = CacheNodeType,
		["AZMode"] = AZMode,
		["NotificationTopicArn"] = NotificationTopicArn,
		["NewAvailabilityZones"] = NewAvailabilityZones,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["CacheNodeIdsToRemove"] = CacheNodeIdsToRemove,
	}
	M.AssertModifyCacheClusterMessage(t)
	return t
end

local ReservedCacheNodesOfferingNotFoundFault_keys = { nil }

function M.AssertReservedCacheNodesOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodesOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodesOfferingNotFoundFault_keys[k], "ReservedCacheNodesOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodesOfferingNotFoundFault
-- &lt;p&gt;The requested cache node offering does not exist.&lt;/p&gt;
function M.ReservedCacheNodesOfferingNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodesOfferingNotFoundFault")
	local t = { 
	}
	M.AssertReservedCacheNodesOfferingNotFoundFault(t)
	return t
end

local ModifyCacheSubnetGroupMessage_keys = { "SubnetIds" = true, "CacheSubnetGroupDescription" = true, "CacheSubnetGroupName" = true, nil }

function M.AssertModifyCacheSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheSubnetGroupMessage to be of type 'table'")
	assert(struct["CacheSubnetGroupName"], "Expected key CacheSubnetGroupName to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["CacheSubnetGroupDescription"] then M.AssertString(struct["CacheSubnetGroupDescription"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ModifyCacheSubnetGroupMessage_keys[k], "ModifyCacheSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheSubnetGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;ModifyCacheSubnetGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;The EC2 subnet IDs for the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupDescription [String] &lt;p&gt;A description of the cache subnet group.&lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name for the cache subnet group. This value is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints: Must contain no more than 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;mysubnetgroup&lt;/code&gt; &lt;/p&gt;
-- Required parameter: CacheSubnetGroupName
function M.ModifyCacheSubnetGroupMessage(SubnetIds, CacheSubnetGroupDescription, CacheSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyCacheSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["CacheSubnetGroupDescription"] = CacheSubnetGroupDescription,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
	}
	M.AssertModifyCacheSubnetGroupMessage(t)
	return t
end

local ReplicationGroupAlreadyExistsFault_keys = { nil }

function M.AssertReplicationGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReplicationGroupAlreadyExistsFault_keys[k], "ReplicationGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupAlreadyExistsFault
-- &lt;p&gt;The specified replication group already exists.&lt;/p&gt;
function M.ReplicationGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertReplicationGroupAlreadyExistsFault(t)
	return t
end

local ReplicationGroup_keys = { "Status" = true, "Description" = true, "NodeGroups" = true, "ConfigurationEndpoint" = true, "ClusterEnabled" = true, "ReplicationGroupId" = true, "SnapshotRetentionLimit" = true, "AutomaticFailover" = true, "SnapshotWindow" = true, "SnapshottingClusterId" = true, "MemberClusters" = true, "CacheNodeType" = true, "PendingModifiedValues" = true, nil }

function M.AssertReplicationGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroup to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["NodeGroups"] then M.AssertNodeGroupList(struct["NodeGroups"]) end
	if struct["ConfigurationEndpoint"] then M.AssertEndpoint(struct["ConfigurationEndpoint"]) end
	if struct["ClusterEnabled"] then M.AssertBooleanOptional(struct["ClusterEnabled"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["AutomaticFailover"] then M.AssertAutomaticFailoverStatus(struct["AutomaticFailover"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["SnapshottingClusterId"] then M.AssertString(struct["SnapshottingClusterId"]) end
	if struct["MemberClusters"] then M.AssertClusterIdList(struct["MemberClusters"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["PendingModifiedValues"] then M.AssertReplicationGroupPendingModifiedValues(struct["PendingModifiedValues"]) end
	for k,_ in pairs(struct) do
		assert(ReplicationGroup_keys[k], "ReplicationGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroup
-- &lt;p&gt;Contains all of the attributes of a specific Redis replication group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The current state of this replication group - &lt;code&gt;creating&lt;/code&gt;, &lt;code&gt;available&lt;/code&gt;, &lt;code&gt;modifying&lt;/code&gt;, &lt;code&gt;deleting&lt;/code&gt;, &lt;code&gt;create-failed&lt;/code&gt;, &lt;code&gt;snapshotting&lt;/code&gt;.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description of the replication group.&lt;/p&gt;
-- @param NodeGroups [NodeGroupList] &lt;p&gt;A single element list with information about the nodes in the replication group.&lt;/p&gt;
-- @param ConfigurationEndpoint [Endpoint] &lt;p&gt;The configuration endpoint for this replicaiton group. Use the configuration endpoint to connect to this replication group.&lt;/p&gt;
-- @param ClusterEnabled [BooleanOptional] &lt;p&gt;A flag indicating whether or not this replication group is cluster enabled; i.e., whether its data can be partitioned across multiple shards (API/CLI: node groups).&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;true&lt;/code&gt; | &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The identifier for the replication group.&lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot that was taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;important&gt; &lt;p&gt; If the value of &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; is set to zero (0), backups are turned off.&lt;/p&gt; &lt;/important&gt;
-- @param AutomaticFailover [AutomaticFailoverStatus] &lt;p&gt;Indicates the status of Multi-AZ for this replication group.&lt;/p&gt; &lt;note&gt; &lt;p&gt;ElastiCache Multi-AZ replication groups are not supported on:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Redis versions earlier than 2.8.6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis (cluster mode disabled):T1 and T2 cache node types.&lt;/p&gt; &lt;p&gt;Redis (cluster mode enabled): T1 node types.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/note&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;05:00-09:00&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Note:&lt;/b&gt; This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt;
-- @param SnapshottingClusterId [String] &lt;p&gt;The cache cluster ID that is used as the daily snapshot source for the replication group.&lt;/p&gt;
-- @param MemberClusters [ClusterIdList] &lt;p&gt;The names of all the cache clusters that are part of this replication group.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The name of the compute and memory capacity node type for each node in the replication group.&lt;/p&gt;
-- @param PendingModifiedValues [ReplicationGroupPendingModifiedValues] &lt;p&gt;A group of settings to be applied to the replication group, either immediately or during the next maintenance window.&lt;/p&gt;
function M.ReplicationGroup(Status, Description, NodeGroups, ConfigurationEndpoint, ClusterEnabled, ReplicationGroupId, SnapshotRetentionLimit, AutomaticFailover, SnapshotWindow, SnapshottingClusterId, MemberClusters, CacheNodeType, PendingModifiedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationGroup")
	local t = { 
		["Status"] = Status,
		["Description"] = Description,
		["NodeGroups"] = NodeGroups,
		["ConfigurationEndpoint"] = ConfigurationEndpoint,
		["ClusterEnabled"] = ClusterEnabled,
		["ReplicationGroupId"] = ReplicationGroupId,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["AutomaticFailover"] = AutomaticFailover,
		["SnapshotWindow"] = SnapshotWindow,
		["SnapshottingClusterId"] = SnapshottingClusterId,
		["MemberClusters"] = MemberClusters,
		["CacheNodeType"] = CacheNodeType,
		["PendingModifiedValues"] = PendingModifiedValues,
	}
	M.AssertReplicationGroup(t)
	return t
end

local EC2SecurityGroup_keys = { "Status" = true, "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, nil }

function M.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	for k,_ in pairs(struct) do
		assert(EC2SecurityGroup_keys[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- &lt;p&gt;Provides ownership and status information for an Amazon EC2 security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the Amazon EC2 security group.&lt;/p&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The name of the Amazon EC2 security group.&lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS account ID of the Amazon EC2 security group owner.&lt;/p&gt;
function M.EC2SecurityGroup(Status, EC2SecurityGroupName, EC2SecurityGroupOwnerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2SecurityGroup")
	local t = { 
		["Status"] = Status,
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
	}
	M.AssertEC2SecurityGroup(t)
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
-- &lt;p&gt;The requested subnet is being used by another cache subnet group.&lt;/p&gt;
function M.SubnetInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetInUse")
	local t = { 
	}
	M.AssertSubnetInUse(t)
	return t
end

local CacheSecurityGroupMessage_keys = { "Marker" = true, "CacheSecurityGroups" = true, nil }

function M.AssertCacheSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheSecurityGroups"] then M.AssertCacheSecurityGroups(struct["CacheSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroupMessage_keys[k], "CacheSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeCacheSecurityGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param CacheSecurityGroups [CacheSecurityGroups] &lt;p&gt;A list of cache security groups. Each element in the list contains detailed information about one group.&lt;/p&gt;
function M.CacheSecurityGroupMessage(Marker, CacheSecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheSecurityGroups"] = CacheSecurityGroups,
	}
	M.AssertCacheSecurityGroupMessage(t)
	return t
end

local InvalidCacheParameterGroupStateFault_keys = { nil }

function M.AssertInvalidCacheParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCacheParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCacheParameterGroupStateFault_keys[k], "InvalidCacheParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCacheParameterGroupStateFault
-- &lt;p&gt;The current state of the cache parameter group does not allow the requested operation to occur.&lt;/p&gt;
function M.InvalidCacheParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCacheParameterGroupStateFault")
	local t = { 
	}
	M.AssertInvalidCacheParameterGroupStateFault(t)
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
-- &lt;p&gt;The requested tag was not found on this resource.&lt;/p&gt;
function M.TagNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagNotFoundFault")
	local t = { 
	}
	M.AssertTagNotFoundFault(t)
	return t
end

local CreateReplicationGroupMessage_keys = { "CacheParameterGroupName" = true, "NodeGroupConfiguration" = true, "ReplicationGroupId" = true, "NumNodeGroups" = true, "NotificationTopicArn" = true, "CacheNodeType" = true, "Engine" = true, "AuthToken" = true, "PrimaryClusterId" = true, "AutoMinorVersionUpgrade" = true, "PreferredMaintenanceWindow" = true, "CacheSubnetGroupName" = true, "CacheSecurityGroupNames" = true, "SnapshotName" = true, "ReplicasPerNodeGroup" = true, "SecurityGroupIds" = true, "PreferredCacheClusterAZs" = true, "EngineVersion" = true, "ReplicationGroupDescription" = true, "NumCacheClusters" = true, "SnapshotArns" = true, "SnapshotRetentionLimit" = true, "Tags" = true, "SnapshotWindow" = true, "Port" = true, "AutomaticFailoverEnabled" = true, nil }

function M.AssertCreateReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	assert(struct["ReplicationGroupDescription"], "Expected key ReplicationGroupDescription to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["NodeGroupConfiguration"] then M.AssertNodeGroupConfigurationList(struct["NodeGroupConfiguration"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["NumNodeGroups"] then M.AssertIntegerOptional(struct["NumNodeGroups"]) end
	if struct["NotificationTopicArn"] then M.AssertString(struct["NotificationTopicArn"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["AuthToken"] then M.AssertString(struct["AuthToken"]) end
	if struct["PrimaryClusterId"] then M.AssertString(struct["PrimaryClusterId"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["CacheSubnetGroupName"] then M.AssertString(struct["CacheSubnetGroupName"]) end
	if struct["CacheSecurityGroupNames"] then M.AssertCacheSecurityGroupNameList(struct["CacheSecurityGroupNames"]) end
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	if struct["ReplicasPerNodeGroup"] then M.AssertIntegerOptional(struct["ReplicasPerNodeGroup"]) end
	if struct["SecurityGroupIds"] then M.AssertSecurityGroupIdsList(struct["SecurityGroupIds"]) end
	if struct["PreferredCacheClusterAZs"] then M.AssertAvailabilityZonesList(struct["PreferredCacheClusterAZs"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReplicationGroupDescription"] then M.AssertString(struct["ReplicationGroupDescription"]) end
	if struct["NumCacheClusters"] then M.AssertIntegerOptional(struct["NumCacheClusters"]) end
	if struct["SnapshotArns"] then M.AssertSnapshotArnsList(struct["SnapshotArns"]) end
	if struct["SnapshotRetentionLimit"] then M.AssertIntegerOptional(struct["SnapshotRetentionLimit"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SnapshotWindow"] then M.AssertString(struct["SnapshotWindow"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["AutomaticFailoverEnabled"] then M.AssertBooleanOptional(struct["AutomaticFailoverEnabled"]) end
	for k,_ in pairs(struct) do
		assert(CreateReplicationGroupMessage_keys[k], "CreateReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReplicationGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;CreateReplicationGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used.&lt;/p&gt; &lt;p&gt;If you are running Redis version 3.2.4 or later, only one node group (shard), and want to use a default parameter group, we recommend that you specify the parameter group by name. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To create a Redis (cluster mode disabled) replication group, use &lt;code&gt;CacheParameterGroupName=default.redis3.2&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To create a Redis (cluster mode enabled) replication group, use &lt;code&gt;CacheParameterGroupName=default.redis3.2.cluster.on&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param NodeGroupConfiguration [NodeGroupConfigurationList] &lt;p&gt;A list of node group (shard) configuration options. Each node group (shard) configuration has the following: Slots, PrimaryAvailabilityZone, ReplicaAvailabilityZones, ReplicaCount.&lt;/p&gt; &lt;p&gt;If you're creating a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group, you can use this parameter to individually configure each node group (shard), or you can omit this parameter.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The replication group identifier. This parameter is stored as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A name must contain from 1 to 20 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The first character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A name cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param NumNodeGroups [IntegerOptional] &lt;p&gt;An optional parameter that specifies the number of node groups (shards) for this Redis (cluster mode enabled) replication group. For Redis (cluster mode disabled) either omit this parameter or set it to 1.&lt;/p&gt; &lt;p&gt;Default: 1&lt;/p&gt;
-- @param NotificationTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The Amazon SNS topic owner must be the same as the cache cluster owner.&lt;/p&gt; &lt;/note&gt;
-- @param CacheNodeType [String] &lt;p&gt;The compute and memory capacity of the nodes in the node group (shard).&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The name of the cache engine to be used for the cache clusters in this replication group.&lt;/p&gt;
-- @param AuthToken [String] &lt;p&gt; &lt;b&gt;Reserved parameter.&lt;/b&gt; The password used to access a password protected server.&lt;/p&gt; &lt;p&gt;Password constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be only printable ASCII characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be at least 16 characters and no more than 128 characters in length.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot contain any of the following characters: '/', '&quot;', or &quot;@&quot;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://redis.io/commands/AUTH&quot;&gt;AUTH password&lt;/a&gt; at Redis.&lt;/p&gt;
-- @param PrimaryClusterId [String] &lt;p&gt;The identifier of the cache cluster that serves as the primary for this replication group. This cache cluster must already exist and have a status of &lt;code&gt;available&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not required if &lt;code&gt;NumCacheClusters&lt;/code&gt;, &lt;code&gt;NumNodeGroups&lt;/code&gt;, or &lt;code&gt;ReplicasPerNodeGroup&lt;/code&gt; is specified.&lt;/p&gt;
-- @param AutoMinorVersionUpgrade [BooleanOptional] &lt;p&gt;This parameter is currently disabled.&lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;Specifies the weekly time range during which maintenance on the cache cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;p&gt;Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period.&lt;/p&gt; &lt;p&gt;Valid values for &lt;code&gt;ddd&lt;/code&gt; are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sun&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;mon&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;tue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;wed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;thu&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;fri&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sat&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;sun:23:00-mon:01:30&lt;/code&gt; &lt;/p&gt;
-- @param CacheSubnetGroupName [String] &lt;p&gt;The name of the cache subnet group to be used for the replication group.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you're going to launch your cluster in an Amazon VPC, you need to create a subnet group before you start creating a cluster. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SubnetGroups.html&quot;&gt;Subnets and Subnet Groups&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param CacheSecurityGroupNames [CacheSecurityGroupNameList] &lt;p&gt;A list of cache security group names to associate with this replication group.&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;The name of a snapshot from which to restore data into the new replication group. The snapshot status changes to &lt;code&gt;restoring&lt;/code&gt; while the new replication group is being created.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param ReplicasPerNodeGroup [IntegerOptional] &lt;p&gt;An optional parameter that specifies the number of replica nodes in each node group (shard). Valid values are 0 to 5.&lt;/p&gt;
-- @param SecurityGroupIds [SecurityGroupIdsList] &lt;p&gt;One or more Amazon VPC security groups associated with this replication group.&lt;/p&gt; &lt;p&gt;Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt;
-- @param PreferredCacheClusterAZs [AvailabilityZonesList] &lt;p&gt;A list of EC2 Availability Zones in which the replication group's cache clusters are created. The order of the Availability Zones in the list is the order in which clusters are allocated. The primary cluster is created in the first AZ in the list.&lt;/p&gt; &lt;p&gt;This parameter is not used if there is more than one node group (shard). You should use &lt;code&gt;NodeGroupConfiguration&lt;/code&gt; instead.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you are creating your replication group in an Amazon VPC (recommended), you can only locate cache clusters in Availability Zones associated with the subnets in the selected subnet group.&lt;/p&gt; &lt;p&gt;The number of Availability Zones listed must equal the value of &lt;code&gt;NumCacheClusters&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Default: system chosen Availability Zones.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The version number of the cache engine to be used for the cache clusters in this replication group. To view the supported cache engine versions, use the &lt;code&gt;DescribeCacheEngineVersions&lt;/code&gt; operation.&lt;/p&gt; &lt;p&gt; &lt;b&gt;Important:&lt;/b&gt; You can upgrade to a newer engine version (see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement&quot;&gt;Selecting a Cache Engine and Version&lt;/a&gt;) in the &lt;i&gt;ElastiCache User Guide&lt;/i&gt;, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cache cluster or replication group and create it anew with the earlier engine version. &lt;/p&gt;
-- @param ReplicationGroupDescription [String] &lt;p&gt;A user-created description for the replication group.&lt;/p&gt;
-- @param NumCacheClusters [IntegerOptional] &lt;p&gt;The number of clusters this replication group initially has.&lt;/p&gt; &lt;p&gt;This parameter is not used if there is more than one node group (shard). You should use &lt;code&gt;ReplicasPerNodeGroup&lt;/code&gt; instead.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;AutomaticFailoverEnabled&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of this parameter must be at least 2. If &lt;code&gt;AutomaticFailoverEnabled&lt;/code&gt; is &lt;code&gt;false&lt;/code&gt; you can omit this parameter (it will default to 1), or you can explicitly set it to a value between 2 and 6.&lt;/p&gt; &lt;p&gt;The maximum permitted value for &lt;code&gt;NumCacheClusters&lt;/code&gt; is 6 (primary plus 5 replicas).&lt;/p&gt;
-- @param SnapshotArns [SnapshotArnsList] &lt;p&gt;A list of Amazon Resource Names (ARN) that uniquely identify the Redis RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new replication group. The Amazon S3 object name in the ARN cannot contain any commas. The new replication group will have the number of node groups (console: shards) specified by the parameter &lt;i&gt;NumNodeGroups&lt;/i&gt; or the number of node groups configured by &lt;i&gt;NodeGroupConfiguration&lt;/i&gt; regardless of the number of ARNs specified here.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Example of an Amazon S3 ARN: &lt;code&gt;arn:aws:s3:::my_bucket/snapshot1.rdb&lt;/code&gt; &lt;/p&gt;
-- @param SnapshotRetentionLimit [IntegerOptional] &lt;p&gt;The number of days for which ElastiCache retains automatic snapshots before deleting them. For example, if you set &lt;code&gt;SnapshotRetentionLimit&lt;/code&gt; to 5, a snapshot that was taken today is retained for 5 days before being deleted.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Default: 0 (i.e., automatic backups are disabled for this cache cluster).&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of cost allocation tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value.&lt;/p&gt;
-- @param SnapshotWindow [String] &lt;p&gt;The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;05:00-09:00&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you do not specify this parameter, ElastiCache automatically chooses an appropriate time range.&lt;/p&gt; &lt;note&gt; &lt;p&gt;This parameter is only valid if the &lt;code&gt;Engine&lt;/code&gt; parameter is &lt;code&gt;redis&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port number on which each member of the replication group accepts connections.&lt;/p&gt;
-- @param AutomaticFailoverEnabled [BooleanOptional] &lt;p&gt;Specifies whether a read-only replica is automatically promoted to read/write primary if the existing primary fails.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, Multi-AZ is enabled for this replication group. If &lt;code&gt;false&lt;/code&gt;, Multi-AZ is disabled for this replication group.&lt;/p&gt; &lt;p&gt; &lt;code&gt;AutomaticFailoverEnabled&lt;/code&gt; must be enabled for Redis (cluster mode enabled) replication groups.&lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt; &lt;note&gt; &lt;p&gt;ElastiCache Multi-AZ replication groups is not supported on:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Redis versions earlier than 2.8.6.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis (cluster mode disabled): T1 and T2 node types.&lt;/p&gt; &lt;p&gt;Redis (cluster mode enabled): T2 node types.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/note&gt;
-- Required parameter: ReplicationGroupId
-- Required parameter: ReplicationGroupDescription
function M.CreateReplicationGroupMessage(CacheParameterGroupName, NodeGroupConfiguration, ReplicationGroupId, NumNodeGroups, NotificationTopicArn, CacheNodeType, Engine, AuthToken, PrimaryClusterId, AutoMinorVersionUpgrade, PreferredMaintenanceWindow, CacheSubnetGroupName, CacheSecurityGroupNames, SnapshotName, ReplicasPerNodeGroup, SecurityGroupIds, PreferredCacheClusterAZs, EngineVersion, ReplicationGroupDescription, NumCacheClusters, SnapshotArns, SnapshotRetentionLimit, Tags, SnapshotWindow, Port, AutomaticFailoverEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReplicationGroupMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["NodeGroupConfiguration"] = NodeGroupConfiguration,
		["ReplicationGroupId"] = ReplicationGroupId,
		["NumNodeGroups"] = NumNodeGroups,
		["NotificationTopicArn"] = NotificationTopicArn,
		["CacheNodeType"] = CacheNodeType,
		["Engine"] = Engine,
		["AuthToken"] = AuthToken,
		["PrimaryClusterId"] = PrimaryClusterId,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["CacheSubnetGroupName"] = CacheSubnetGroupName,
		["CacheSecurityGroupNames"] = CacheSecurityGroupNames,
		["SnapshotName"] = SnapshotName,
		["ReplicasPerNodeGroup"] = ReplicasPerNodeGroup,
		["SecurityGroupIds"] = SecurityGroupIds,
		["PreferredCacheClusterAZs"] = PreferredCacheClusterAZs,
		["EngineVersion"] = EngineVersion,
		["ReplicationGroupDescription"] = ReplicationGroupDescription,
		["NumCacheClusters"] = NumCacheClusters,
		["SnapshotArns"] = SnapshotArns,
		["SnapshotRetentionLimit"] = SnapshotRetentionLimit,
		["Tags"] = Tags,
		["SnapshotWindow"] = SnapshotWindow,
		["Port"] = Port,
		["AutomaticFailoverEnabled"] = AutomaticFailoverEnabled,
	}
	M.AssertCreateReplicationGroupMessage(t)
	return t
end

local ReservedCacheNodeMessage_keys = { "Marker" = true, "ReservedCacheNodes" = true, nil }

function M.AssertReservedCacheNodeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodeMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedCacheNodes"] then M.AssertReservedCacheNodeList(struct["ReservedCacheNodes"]) end
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodeMessage_keys[k], "ReservedCacheNodeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodeMessage
-- &lt;p&gt;Represents the output of a &lt;code&gt;DescribeReservedCacheNodes&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;Provides an identifier to allow retrieval of paginated results.&lt;/p&gt;
-- @param ReservedCacheNodes [ReservedCacheNodeList] &lt;p&gt;A list of reserved cache nodes. Each element in the list contains detailed information about one node.&lt;/p&gt;
function M.ReservedCacheNodeMessage(Marker, ReservedCacheNodes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodeMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedCacheNodes"] = ReservedCacheNodes,
	}
	M.AssertReservedCacheNodeMessage(t)
	return t
end

local InvalidCacheSecurityGroupStateFault_keys = { nil }

function M.AssertInvalidCacheSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCacheSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCacheSecurityGroupStateFault_keys[k], "InvalidCacheSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCacheSecurityGroupStateFault
-- &lt;p&gt;The current state of the cache security group does not allow deletion.&lt;/p&gt;
function M.InvalidCacheSecurityGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCacheSecurityGroupStateFault")
	local t = { 
	}
	M.AssertInvalidCacheSecurityGroupStateFault(t)
	return t
end

local ReplicationGroupNotFoundFault_keys = { nil }

function M.AssertReplicationGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplicationGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReplicationGroupNotFoundFault_keys[k], "ReplicationGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplicationGroupNotFoundFault
-- &lt;p&gt;The specified replication group does not exist.&lt;/p&gt;
function M.ReplicationGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplicationGroupNotFoundFault")
	local t = { 
	}
	M.AssertReplicationGroupNotFoundFault(t)
	return t
end

local NodeGroupConfiguration_keys = { "Slots" = true, "ReplicaCount" = true, "PrimaryAvailabilityZone" = true, "ReplicaAvailabilityZones" = true, nil }

function M.AssertNodeGroupConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NodeGroupConfiguration to be of type 'table'")
	if struct["Slots"] then M.AssertString(struct["Slots"]) end
	if struct["ReplicaCount"] then M.AssertIntegerOptional(struct["ReplicaCount"]) end
	if struct["PrimaryAvailabilityZone"] then M.AssertString(struct["PrimaryAvailabilityZone"]) end
	if struct["ReplicaAvailabilityZones"] then M.AssertAvailabilityZonesList(struct["ReplicaAvailabilityZones"]) end
	for k,_ in pairs(struct) do
		assert(NodeGroupConfiguration_keys[k], "NodeGroupConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NodeGroupConfiguration
-- &lt;p&gt;node group (shard) configuration options. Each node group (shard) configuration has the following: &lt;code&gt;Slots&lt;/code&gt;, &lt;code&gt;PrimaryAvailabilityZone&lt;/code&gt;, &lt;code&gt;ReplicaAvailabilityZones&lt;/code&gt;, &lt;code&gt;ReplicaCount&lt;/code&gt;.&lt;/p&gt;
-- @param Slots [String] &lt;p&gt;A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format &lt;code&gt;startkey-endkey&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;&quot;0-3999&quot;&lt;/code&gt; &lt;/p&gt;
-- @param ReplicaCount [IntegerOptional] &lt;p&gt;The number of read replica nodes in this node group (shard).&lt;/p&gt;
-- @param PrimaryAvailabilityZone [String] &lt;p&gt;The Availability Zone where the primary node of this node group (shard) is launched.&lt;/p&gt;
-- @param ReplicaAvailabilityZones [AvailabilityZonesList] &lt;p&gt;A list of Availability Zones to be used for the read replicas. The number of Availability Zones in this list must match the value of &lt;code&gt;ReplicaCount&lt;/code&gt; or &lt;code&gt;ReplicasPerNodeGroup&lt;/code&gt; if not specified.&lt;/p&gt;
function M.NodeGroupConfiguration(Slots, ReplicaCount, PrimaryAvailabilityZone, ReplicaAvailabilityZones, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeGroupConfiguration")
	local t = { 
		["Slots"] = Slots,
		["ReplicaCount"] = ReplicaCount,
		["PrimaryAvailabilityZone"] = PrimaryAvailabilityZone,
		["ReplicaAvailabilityZones"] = ReplicaAvailabilityZones,
	}
	M.AssertNodeGroupConfiguration(t)
	return t
end

local ModifyCacheClusterResult_keys = { "CacheCluster" = true, nil }

function M.AssertModifyCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then M.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(ModifyCacheClusterResult_keys[k], "ModifyCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyCacheClusterResult
--  
-- @param CacheCluster [CacheCluster]  
function M.ModifyCacheClusterResult(CacheCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyCacheClusterResult")
	local t = { 
		["CacheCluster"] = CacheCluster,
	}
	M.AssertModifyCacheClusterResult(t)
	return t
end

local DeleteReplicationGroupMessage_keys = { "FinalSnapshotIdentifier" = true, "ReplicationGroupId" = true, "RetainPrimaryCluster" = true, nil }

function M.AssertDeleteReplicationGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReplicationGroupMessage to be of type 'table'")
	assert(struct["ReplicationGroupId"], "Expected key ReplicationGroupId to exist in table")
	if struct["FinalSnapshotIdentifier"] then M.AssertString(struct["FinalSnapshotIdentifier"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["RetainPrimaryCluster"] then M.AssertBooleanOptional(struct["RetainPrimaryCluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReplicationGroupMessage_keys[k], "DeleteReplicationGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReplicationGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteReplicationGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param FinalSnapshotIdentifier [String] &lt;p&gt;The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster, rather than one of the replicas; this is to ensure that it captures the freshest data. After the final snapshot is taken, the replication group is immediately deleted.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;The identifier for the cluster to be deleted. This parameter is not case sensitive.&lt;/p&gt;
-- @param RetainPrimaryCluster [BooleanOptional] &lt;p&gt;If set to &lt;code&gt;true&lt;/code&gt;, all of the read replicas are deleted, but the primary node is retained.&lt;/p&gt;
-- Required parameter: ReplicationGroupId
function M.DeleteReplicationGroupMessage(FinalSnapshotIdentifier, ReplicationGroupId, RetainPrimaryCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReplicationGroupMessage")
	local t = { 
		["FinalSnapshotIdentifier"] = FinalSnapshotIdentifier,
		["ReplicationGroupId"] = ReplicationGroupId,
		["RetainPrimaryCluster"] = RetainPrimaryCluster,
	}
	M.AssertDeleteReplicationGroupMessage(t)
	return t
end

local AuthorizationAlreadyExistsFault_keys = { nil }

function M.AssertAuthorizationAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AuthorizationAlreadyExistsFault_keys[k], "AuthorizationAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationAlreadyExistsFault
-- &lt;p&gt;The specified Amazon EC2 security group is already authorized for the specified cache security group.&lt;/p&gt;
function M.AuthorizationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationAlreadyExistsFault")
	local t = { 
	}
	M.AssertAuthorizationAlreadyExistsFault(t)
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
-- &lt;p&gt;The request cannot be processed because it would cause the resource to have more than the allowed number of tags. The maximum number of tags permitted on a resource is 50.&lt;/p&gt;
function M.TagQuotaPerResourceExceeded(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagQuotaPerResourceExceeded")
	local t = { 
	}
	M.AssertTagQuotaPerResourceExceeded(t)
	return t
end

local CacheParameterGroupNotFoundFault_keys = { nil }

function M.AssertCacheParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheParameterGroupNotFoundFault_keys[k], "CacheParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheParameterGroupNotFoundFault
-- &lt;p&gt;The requested cache parameter group name does not refer to an existing cache parameter group.&lt;/p&gt;
function M.CacheParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheParameterGroupNotFoundFault")
	local t = { 
	}
	M.AssertCacheParameterGroupNotFoundFault(t)
	return t
end

local TestFailoverNotAvailableFault_keys = { nil }

function M.AssertTestFailoverNotAvailableFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestFailoverNotAvailableFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TestFailoverNotAvailableFault_keys[k], "TestFailoverNotAvailableFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestFailoverNotAvailableFault
--  
function M.TestFailoverNotAvailableFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestFailoverNotAvailableFault")
	local t = { 
	}
	M.AssertTestFailoverNotAvailableFault(t)
	return t
end

local DescribeSnapshotsMessage_keys = { "ShowNodeGroupConfig" = true, "CacheClusterId" = true, "SnapshotName" = true, "ReplicationGroupId" = true, "MaxRecords" = true, "SnapshotSource" = true, "Marker" = true, nil }

function M.AssertDescribeSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotsMessage to be of type 'table'")
	if struct["ShowNodeGroupConfig"] then M.AssertBooleanOptional(struct["ShowNodeGroupConfig"]) end
	if struct["CacheClusterId"] then M.AssertString(struct["CacheClusterId"]) end
	if struct["SnapshotName"] then M.AssertString(struct["SnapshotName"]) end
	if struct["ReplicationGroupId"] then M.AssertString(struct["ReplicationGroupId"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SnapshotSource"] then M.AssertString(struct["SnapshotSource"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotsMessage_keys[k], "DescribeSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeSnapshotsMessage&lt;/code&gt; operation.&lt;/p&gt;
-- @param ShowNodeGroupConfig [BooleanOptional] &lt;p&gt;A Boolean value which if true, the node group (shard) configuration is included in the snapshot description.&lt;/p&gt;
-- @param CacheClusterId [String] &lt;p&gt;A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cache cluster are described.&lt;/p&gt;
-- @param SnapshotName [String] &lt;p&gt;A user-supplied name of the snapshot. If this parameter is specified, only this snapshot are described.&lt;/p&gt;
-- @param ReplicationGroupId [String] &lt;p&gt;A user-supplied replication group identifier. If this parameter is specified, only snapshots associated with that specific replication group are described.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 50&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 50.&lt;/p&gt;
-- @param SnapshotSource [String] &lt;p&gt;If set to &lt;code&gt;system&lt;/code&gt;, the output shows snapshots that were automatically created by ElastiCache. If set to &lt;code&gt;user&lt;/code&gt; the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
function M.DescribeSnapshotsMessage(ShowNodeGroupConfig, CacheClusterId, SnapshotName, ReplicationGroupId, MaxRecords, SnapshotSource, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotsMessage")
	local t = { 
		["ShowNodeGroupConfig"] = ShowNodeGroupConfig,
		["CacheClusterId"] = CacheClusterId,
		["SnapshotName"] = SnapshotName,
		["ReplicationGroupId"] = ReplicationGroupId,
		["MaxRecords"] = MaxRecords,
		["SnapshotSource"] = SnapshotSource,
		["Marker"] = Marker,
	}
	M.AssertDescribeSnapshotsMessage(t)
	return t
end

local CacheSecurityGroupQuotaExceededFault_keys = { nil }

function M.AssertCacheSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroupQuotaExceededFault_keys[k], "CacheSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of cache security groups.&lt;/p&gt;
function M.CacheSecurityGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertCacheSecurityGroupQuotaExceededFault(t)
	return t
end

local TestFailoverResult_keys = { "ReplicationGroup" = true, nil }

function M.AssertTestFailoverResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestFailoverResult to be of type 'table'")
	if struct["ReplicationGroup"] then M.AssertReplicationGroup(struct["ReplicationGroup"]) end
	for k,_ in pairs(struct) do
		assert(TestFailoverResult_keys[k], "TestFailoverResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestFailoverResult
--  
-- @param ReplicationGroup [ReplicationGroup]  
function M.TestFailoverResult(ReplicationGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestFailoverResult")
	local t = { 
		["ReplicationGroup"] = ReplicationGroup,
	}
	M.AssertTestFailoverResult(t)
	return t
end

local ReservedCacheNodeQuotaExceededFault_keys = { nil }

function M.AssertReservedCacheNodeQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodeQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodeQuotaExceededFault_keys[k], "ReservedCacheNodeQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodeQuotaExceededFault
-- &lt;p&gt;The request cannot be processed because it would exceed the user's cache node quota.&lt;/p&gt;
function M.ReservedCacheNodeQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodeQuotaExceededFault")
	local t = { 
	}
	M.AssertReservedCacheNodeQuotaExceededFault(t)
	return t
end

local CacheNodeTypeSpecificParameter_keys = { "Description" = true, "DataType" = true, "ChangeType" = true, "AllowedValues" = true, "Source" = true, "IsModifiable" = true, "CacheNodeTypeSpecificValues" = true, "ParameterName" = true, "MinimumEngineVersion" = true, nil }

function M.AssertCacheNodeTypeSpecificParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheNodeTypeSpecificParameter to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["ChangeType"] then M.AssertChangeType(struct["ChangeType"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["CacheNodeTypeSpecificValues"] then M.AssertCacheNodeTypeSpecificValueList(struct["CacheNodeTypeSpecificValues"]) end
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then M.AssertString(struct["MinimumEngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(CacheNodeTypeSpecificParameter_keys[k], "CacheNodeTypeSpecificParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheNodeTypeSpecificParameter
-- &lt;p&gt;A parameter that has a different value for each cache node type it is applied to. For example, in a Redis cache cluster, a &lt;code&gt;cache.m1.large&lt;/code&gt; cache node type would have a larger &lt;code&gt;maxmemory&lt;/code&gt; value than a &lt;code&gt;cache.m1.small&lt;/code&gt; type.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the parameter.&lt;/p&gt;
-- @param DataType [String] &lt;p&gt;The valid data type for the parameter.&lt;/p&gt;
-- @param ChangeType [ChangeType] &lt;p&gt;Indicates whether a change to the parameter is applied immediately or requires a reboot for the change to be applied. You can force a reboot or wait until the next maintenance window's reboot. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Clusters.Rebooting.html&quot;&gt;Rebooting a Cluster&lt;/a&gt;.&lt;/p&gt;
-- @param AllowedValues [String] &lt;p&gt;The valid range of values for the parameter.&lt;/p&gt;
-- @param Source [String] &lt;p&gt;The source of the parameter value.&lt;/p&gt;
-- @param IsModifiable [Boolean] &lt;p&gt;Indicates whether (&lt;code&gt;true&lt;/code&gt;) or not (&lt;code&gt;false&lt;/code&gt;) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed.&lt;/p&gt;
-- @param CacheNodeTypeSpecificValues [CacheNodeTypeSpecificValueList] &lt;p&gt;A list of cache node types and their corresponding values for this parameter.&lt;/p&gt;
-- @param ParameterName [String] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param MinimumEngineVersion [String] &lt;p&gt;The earliest cache engine version to which the parameter can apply.&lt;/p&gt;
function M.CacheNodeTypeSpecificParameter(Description, DataType, ChangeType, AllowedValues, Source, IsModifiable, CacheNodeTypeSpecificValues, ParameterName, MinimumEngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheNodeTypeSpecificParameter")
	local t = { 
		["Description"] = Description,
		["DataType"] = DataType,
		["ChangeType"] = ChangeType,
		["AllowedValues"] = AllowedValues,
		["Source"] = Source,
		["IsModifiable"] = IsModifiable,
		["CacheNodeTypeSpecificValues"] = CacheNodeTypeSpecificValues,
		["ParameterName"] = ParameterName,
		["MinimumEngineVersion"] = MinimumEngineVersion,
	}
	M.AssertCacheNodeTypeSpecificParameter(t)
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
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of cache nodes in a single cache cluster.&lt;/p&gt;
function M.NodeQuotaForClusterExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NodeQuotaForClusterExceededFault")
	local t = { 
	}
	M.AssertNodeQuotaForClusterExceededFault(t)
	return t
end

local DeleteCacheClusterResult_keys = { "CacheCluster" = true, nil }

function M.AssertDeleteCacheClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheClusterResult to be of type 'table'")
	if struct["CacheCluster"] then M.AssertCacheCluster(struct["CacheCluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCacheClusterResult_keys[k], "DeleteCacheClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheClusterResult
--  
-- @param CacheCluster [CacheCluster]  
function M.DeleteCacheClusterResult(CacheCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCacheClusterResult")
	local t = { 
		["CacheCluster"] = CacheCluster,
	}
	M.AssertDeleteCacheClusterResult(t)
	return t
end

local ReservedCacheNodeAlreadyExistsFault_keys = { nil }

function M.AssertReservedCacheNodeAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodeAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodeAlreadyExistsFault_keys[k], "ReservedCacheNodeAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodeAlreadyExistsFault
-- &lt;p&gt;You already have a reservation with the given identifier.&lt;/p&gt;
function M.ReservedCacheNodeAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodeAlreadyExistsFault")
	local t = { 
	}
	M.AssertReservedCacheNodeAlreadyExistsFault(t)
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
-- &lt;p&gt;The request cannot be processed because it would exceed the allowed number of cache clusters per customer.&lt;/p&gt;
function M.ClusterQuotaForCustomerExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterQuotaForCustomerExceededFault")
	local t = { 
	}
	M.AssertClusterQuotaForCustomerExceededFault(t)
	return t
end

local DeleteCacheParameterGroupMessage_keys = { "CacheParameterGroupName" = true, nil }

function M.AssertDeleteCacheParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCacheParameterGroupMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCacheParameterGroupMessage_keys[k], "DeleteCacheParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCacheParameterGroupMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DeleteCacheParameterGroup&lt;/code&gt; operation.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of the cache parameter group to delete.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The specified cache security group must not be associated with any cache clusters.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: CacheParameterGroupName
function M.DeleteCacheParameterGroupMessage(CacheParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCacheParameterGroupMessage")
	local t = { 
		["CacheParameterGroupName"] = CacheParameterGroupName,
	}
	M.AssertDeleteCacheParameterGroupMessage(t)
	return t
end

local ReservedCacheNodesOffering_keys = { "OfferingType" = true, "FixedPrice" = true, "ReservedCacheNodesOfferingId" = true, "UsagePrice" = true, "RecurringCharges" = true, "ProductDescription" = true, "Duration" = true, "CacheNodeType" = true, nil }

function M.AssertReservedCacheNodesOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodesOffering to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["ReservedCacheNodesOfferingId"] then M.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["CacheNodeType"] then M.AssertString(struct["CacheNodeType"]) end
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodesOffering_keys[k], "ReservedCacheNodesOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodesOffering
-- &lt;p&gt;Describes all of the attributes of a reserved cache node offering.&lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The offering type.&lt;/p&gt;
-- @param FixedPrice [Double] &lt;p&gt;The fixed price charged for this offering.&lt;/p&gt;
-- @param ReservedCacheNodesOfferingId [String] &lt;p&gt;A unique identifier for the reserved cache node offering.&lt;/p&gt;
-- @param UsagePrice [Double] &lt;p&gt;The hourly price charged for this offering.&lt;/p&gt;
-- @param RecurringCharges [RecurringChargeList] &lt;p&gt;The recurring price charged to run this reserved cache node.&lt;/p&gt;
-- @param ProductDescription [String] &lt;p&gt;The cache engine used by the offering.&lt;/p&gt;
-- @param Duration [Integer] &lt;p&gt;The duration of the offering. in seconds.&lt;/p&gt;
-- @param CacheNodeType [String] &lt;p&gt;The cache node type for the reserved cache node.&lt;/p&gt; &lt;p&gt;Valid node types are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;General purpose:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.t2.micro&lt;/code&gt;, &lt;code&gt;cache.t2.small&lt;/code&gt;, &lt;code&gt;cache.t2.medium&lt;/code&gt;, &lt;code&gt;cache.m3.medium&lt;/code&gt;, &lt;code&gt;cache.m3.large&lt;/code&gt;, &lt;code&gt;cache.m3.xlarge&lt;/code&gt;, &lt;code&gt;cache.m3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.large&lt;/code&gt;, &lt;code&gt;cache.m4.xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.4xlarge&lt;/code&gt;, &lt;code&gt;cache.m4.10xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.t1.micro&lt;/code&gt;, &lt;code&gt;cache.m1.small&lt;/code&gt;, &lt;code&gt;cache.m1.medium&lt;/code&gt;, &lt;code&gt;cache.m1.large&lt;/code&gt;, &lt;code&gt;cache.m1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Compute optimized: &lt;code&gt;cache.c1.xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Memory optimized:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Current generation: &lt;code&gt;cache.r3.large&lt;/code&gt;, &lt;code&gt;cache.r3.xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.2xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.4xlarge&lt;/code&gt;, &lt;code&gt;cache.r3.8xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Previous generation: &lt;code&gt;cache.m2.xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.2xlarge&lt;/code&gt;, &lt;code&gt;cache.m2.4xlarge&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Notes:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a complete listing of node types and specifications, see &lt;a href=&quot;http://aws.amazon.com/elasticache/details&quot;&gt;Amazon ElastiCache Product Features and Details&lt;/a&gt; and either &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Memcached&lt;/a&gt; or &lt;a href=&quot;http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific&quot;&gt;Cache Node Type-Specific Parameters for Redis&lt;/a&gt;.&lt;/p&gt;
function M.ReservedCacheNodesOffering(OfferingType, FixedPrice, ReservedCacheNodesOfferingId, UsagePrice, RecurringCharges, ProductDescription, Duration, CacheNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodesOffering")
	local t = { 
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["ReservedCacheNodesOfferingId"] = ReservedCacheNodesOfferingId,
		["UsagePrice"] = UsagePrice,
		["RecurringCharges"] = RecurringCharges,
		["ProductDescription"] = ProductDescription,
		["Duration"] = Duration,
		["CacheNodeType"] = CacheNodeType,
	}
	M.AssertReservedCacheNodesOffering(t)
	return t
end

local DescribeCacheParametersMessage_keys = { "Marker" = true, "Source" = true, "CacheParameterGroupName" = true, "MaxRecords" = true, nil }

function M.AssertDescribeCacheParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheParametersMessage to be of type 'table'")
	assert(struct["CacheParameterGroupName"], "Expected key CacheParameterGroupName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheParametersMessage_keys[k], "DescribeCacheParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheParametersMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheParameters&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param Source [String] &lt;p&gt;The parameter types to return.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;user&lt;/code&gt; | &lt;code&gt;system&lt;/code&gt; | &lt;code&gt;engine-default&lt;/code&gt; &lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of a specific cache parameter group to return details for.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- Required parameter: CacheParameterGroupName
function M.DescribeCacheParametersMessage(Marker, Source, CacheParameterGroupName, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["Source"] = Source,
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeCacheParametersMessage(t)
	return t
end

local ReservedCacheNodeNotFoundFault_keys = { nil }

function M.AssertReservedCacheNodeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedCacheNodeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedCacheNodeNotFoundFault_keys[k], "ReservedCacheNodeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedCacheNodeNotFoundFault
-- &lt;p&gt;The requested reserved cache node was not found.&lt;/p&gt;
function M.ReservedCacheNodeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedCacheNodeNotFoundFault")
	local t = { 
	}
	M.AssertReservedCacheNodeNotFoundFault(t)
	return t
end

local DescribeCacheEngineVersionsMessage_keys = { "Engine" = true, "CacheParameterGroupFamily" = true, "DefaultOnly" = true, "MaxRecords" = true, "EngineVersion" = true, "Marker" = true, nil }

function M.AssertDescribeCacheEngineVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheEngineVersionsMessage to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["CacheParameterGroupFamily"] then M.AssertString(struct["CacheParameterGroupFamily"]) end
	if struct["DefaultOnly"] then M.AssertBoolean(struct["DefaultOnly"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheEngineVersionsMessage_keys[k], "DescribeCacheEngineVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheEngineVersionsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheEngineVersions&lt;/code&gt; operation.&lt;/p&gt;
-- @param Engine [String] &lt;p&gt;The cache engine to return. Valid values: &lt;code&gt;memcached&lt;/code&gt; | &lt;code&gt;redis&lt;/code&gt; &lt;/p&gt;
-- @param CacheParameterGroupFamily [String] &lt;p&gt;The name of a specific cache parameter group family to return details for.&lt;/p&gt; &lt;p&gt;Valid values are: &lt;code&gt;memcached1.4&lt;/code&gt; | &lt;code&gt;redis2.6&lt;/code&gt; | &lt;code&gt;redis2.8&lt;/code&gt; | &lt;code&gt;redis3.2&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param DefaultOnly [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, specifies that only the default version of the specified engine or engine and major version combination is to be returned.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
-- @param EngineVersion [String] &lt;p&gt;The cache engine version to return.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;1.4.14&lt;/code&gt; &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
function M.DescribeCacheEngineVersionsMessage(Engine, CacheParameterGroupFamily, DefaultOnly, MaxRecords, EngineVersion, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheEngineVersionsMessage")
	local t = { 
		["Engine"] = Engine,
		["CacheParameterGroupFamily"] = CacheParameterGroupFamily,
		["DefaultOnly"] = DefaultOnly,
		["MaxRecords"] = MaxRecords,
		["EngineVersion"] = EngineVersion,
		["Marker"] = Marker,
	}
	M.AssertDescribeCacheEngineVersionsMessage(t)
	return t
end

local DescribeCacheParameterGroupsMessage_keys = { "Marker" = true, "CacheParameterGroupName" = true, "MaxRecords" = true, nil }

function M.AssertDescribeCacheParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCacheParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CacheParameterGroupName"] then M.AssertString(struct["CacheParameterGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCacheParameterGroupsMessage_keys[k], "DescribeCacheParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCacheParameterGroupsMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;DescribeCacheParameterGroups&lt;/code&gt; operation.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by &lt;code&gt;MaxRecords&lt;/code&gt;.&lt;/p&gt;
-- @param CacheParameterGroupName [String] &lt;p&gt;The name of a specific cache parameter group to return details for.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt; &lt;p&gt;Default: 100&lt;/p&gt; &lt;p&gt;Constraints: minimum 20; maximum 100.&lt;/p&gt;
function M.DescribeCacheParameterGroupsMessage(Marker, CacheParameterGroupName, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCacheParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["CacheParameterGroupName"] = CacheParameterGroupName,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeCacheParameterGroupsMessage(t)
	return t
end

local PurchaseReservedCacheNodesOfferingMessage_keys = { "ReservedCacheNodesOfferingId" = true, "CacheNodeCount" = true, "ReservedCacheNodeId" = true, nil }

function M.AssertPurchaseReservedCacheNodesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedCacheNodesOfferingMessage to be of type 'table'")
	assert(struct["ReservedCacheNodesOfferingId"], "Expected key ReservedCacheNodesOfferingId to exist in table")
	if struct["ReservedCacheNodesOfferingId"] then M.AssertString(struct["ReservedCacheNodesOfferingId"]) end
	if struct["CacheNodeCount"] then M.AssertIntegerOptional(struct["CacheNodeCount"]) end
	if struct["ReservedCacheNodeId"] then M.AssertString(struct["ReservedCacheNodeId"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedCacheNodesOfferingMessage_keys[k], "PurchaseReservedCacheNodesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedCacheNodesOfferingMessage
-- &lt;p&gt;Represents the input of a &lt;code&gt;PurchaseReservedCacheNodesOffering&lt;/code&gt; operation.&lt;/p&gt;
-- @param ReservedCacheNodesOfferingId [String] &lt;p&gt;The ID of the reserved cache node offering to purchase.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;438012d3-4052-4cc7-b2e3-8d3372e0e706&lt;/code&gt; &lt;/p&gt;
-- @param CacheNodeCount [IntegerOptional] &lt;p&gt;The number of cache node instances to reserve.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;1&lt;/code&gt; &lt;/p&gt;
-- @param ReservedCacheNodeId [String] &lt;p&gt;A customer-specified identifier to track this reservation.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The Reserved Cache Node ID is an unique customer-specified identifier to track this reservation. If this parameter is not specified, ElastiCache automatically generates an identifier for the reservation.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Example: myreservationID&lt;/p&gt;
-- Required parameter: ReservedCacheNodesOfferingId
function M.PurchaseReservedCacheNodesOfferingMessage(ReservedCacheNodesOfferingId, CacheNodeCount, ReservedCacheNodeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedCacheNodesOfferingMessage")
	local t = { 
		["ReservedCacheNodesOfferingId"] = ReservedCacheNodesOfferingId,
		["CacheNodeCount"] = CacheNodeCount,
		["ReservedCacheNodeId"] = ReservedCacheNodeId,
	}
	M.AssertPurchaseReservedCacheNodesOfferingMessage(t)
	return t
end

local CacheSecurityGroupMembership_keys = { "Status" = true, "CacheSecurityGroupName" = true, nil }

function M.AssertCacheSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CacheSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["CacheSecurityGroupName"] then M.AssertString(struct["CacheSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CacheSecurityGroupMembership_keys[k], "CacheSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CacheSecurityGroupMembership
-- &lt;p&gt;Represents a cache cluster's status within a particular cache security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The membership status in the cache security group. The status changes when a cache security group is modified, or when the cache security groups assigned to a cache cluster are modified.&lt;/p&gt;
-- @param CacheSecurityGroupName [String] &lt;p&gt;The name of the cache security group.&lt;/p&gt;
function M.CacheSecurityGroupMembership(Status, CacheSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CacheSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["CacheSecurityGroupName"] = CacheSecurityGroupName,
	}
	M.AssertCacheSecurityGroupMembership(t)
	return t
end

local AuthorizeCacheSecurityGroupIngressResult_keys = { "CacheSecurityGroup" = true, nil }

function M.AssertAuthorizeCacheSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeCacheSecurityGroupIngressResult to be of type 'table'")
	if struct["CacheSecurityGroup"] then M.AssertCacheSecurityGroup(struct["CacheSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeCacheSecurityGroupIngressResult_keys[k], "AuthorizeCacheSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeCacheSecurityGroupIngressResult
--  
-- @param CacheSecurityGroup [CacheSecurityGroup]  
function M.AuthorizeCacheSecurityGroupIngressResult(CacheSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeCacheSecurityGroupIngressResult")
	local t = { 
		["CacheSecurityGroup"] = CacheSecurityGroup,
	}
	M.AssertAuthorizeCacheSecurityGroupIngressResult(t)
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

function M.AssertAutomaticFailoverStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomaticFailoverStatus to be of type 'string'")
end

--  
function M.AutomaticFailoverStatus(str)
	M.AssertAutomaticFailoverStatus(str)
	return str
end

function M.AssertAZMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AZMode to be of type 'string'")
end

--  
function M.AZMode(str)
	M.AssertAZMode(str)
	return str
end

function M.AssertPendingAutomaticFailoverStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PendingAutomaticFailoverStatus to be of type 'string'")
end

--  
function M.PendingAutomaticFailoverStatus(str)
	M.AssertPendingAutomaticFailoverStatus(str)
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

function M.AssertBooleanOptional(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanOptional to be of type 'boolean'")
end

function M.BooleanOptional(boolean)
	M.AssertBooleanOptional(boolean)
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

function M.AssertTStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TStamp to be of type 'string'")
end

function M.TStamp(timestamp)
	M.AssertTStamp(timestamp)
	return timestamp
end

function M.AssertSecurityGroupIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SecurityGroupIdsList(list)
	M.AssertSecurityGroupIdsList(list)
	return list
end

function M.AssertCacheNodeTypeSpecificValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeTypeSpecificValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheNodeTypeSpecificValue(v)
	end
end

--  
-- List of CacheNodeTypeSpecificValue objects
function M.CacheNodeTypeSpecificValueList(list)
	M.AssertCacheNodeTypeSpecificValueList(list)
	return list
end

function M.AssertParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParametersList(list)
	M.AssertParametersList(list)
	return list
end

function M.AssertReservedCacheNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedCacheNodeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedCacheNode(v)
	end
end

--  
-- List of ReservedCacheNode objects
function M.ReservedCacheNodeList(list)
	M.AssertReservedCacheNodeList(list)
	return list
end

function M.AssertCacheSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheSecurityGroupMembership(v)
	end
end

--  
-- List of CacheSecurityGroupMembership objects
function M.CacheSecurityGroupMembershipList(list)
	M.AssertCacheSecurityGroupMembershipList(list)
	return list
end

function M.AssertCacheEngineVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheEngineVersionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheEngineVersion(v)
	end
end

--  
-- List of CacheEngineVersion objects
function M.CacheEngineVersionList(list)
	M.AssertCacheEngineVersionList(list)
	return list
end

function M.AssertCacheNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheNode(v)
	end
end

--  
-- List of CacheNode objects
function M.CacheNodeList(list)
	M.AssertCacheNodeList(list)
	return list
end

function M.AssertPreferredAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected PreferredAvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.PreferredAvailabilityZoneList(list)
	M.AssertPreferredAvailabilityZoneList(list)
	return list
end

function M.AssertEC2SecurityGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected EC2SecurityGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEC2SecurityGroup(v)
	end
end

--  
-- List of EC2SecurityGroup objects
function M.EC2SecurityGroupList(list)
	M.AssertEC2SecurityGroupList(list)
	return list
end

function M.AssertNodeGroupConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNodeGroupConfiguration(v)
	end
end

--  
-- List of NodeGroupConfiguration objects
function M.NodeGroupConfigurationList(list)
	M.AssertNodeGroupConfigurationList(list)
	return list
end

function M.AssertNodeGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNodeGroup(v)
	end
end

--  
-- List of NodeGroup objects
function M.NodeGroupList(list)
	M.AssertNodeGroupList(list)
	return list
end

function M.AssertCacheNodeIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.CacheNodeIdsList(list)
	M.AssertCacheNodeIdsList(list)
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

function M.AssertCacheParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheParameterGroup(v)
	end
end

--  
-- List of CacheParameterGroup objects
function M.CacheParameterGroupList(list)
	M.AssertCacheParameterGroupList(list)
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

function M.AssertCacheSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.CacheSecurityGroupNameList(list)
	M.AssertCacheSecurityGroupNameList(list)
	return list
end

function M.AssertNodeTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.NodeTypeList(list)
	M.AssertNodeTypeList(list)
	return list
end

function M.AssertRecurringChargeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecurringChargeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecurringCharge(v)
	end
end

--  
-- List of RecurringCharge objects
function M.RecurringChargeList(list)
	M.AssertRecurringChargeList(list)
	return list
end

function M.AssertReservedCacheNodesOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedCacheNodesOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedCacheNodesOffering(v)
	end
end

--  
-- List of ReservedCacheNodesOffering objects
function M.ReservedCacheNodesOfferingList(list)
	M.AssertReservedCacheNodesOfferingList(list)
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

function M.AssertReplicationGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReplicationGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReplicationGroup(v)
	end
end

--  
-- List of ReplicationGroup objects
function M.ReplicationGroupList(list)
	M.AssertReplicationGroupList(list)
	return list
end

function M.AssertSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSnapshot(v)
	end
end

--  
-- List of Snapshot objects
function M.SnapshotList(list)
	M.AssertSnapshotList(list)
	return list
end

function M.AssertAvailabilityZonesList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZonesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZonesList(list)
	M.AssertAvailabilityZonesList(list)
	return list
end

function M.AssertCacheNodeTypeSpecificParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheNodeTypeSpecificParametersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheNodeTypeSpecificParameter(v)
	end
end

--  
-- List of CacheNodeTypeSpecificParameter objects
function M.CacheNodeTypeSpecificParametersList(list)
	M.AssertCacheNodeTypeSpecificParametersList(list)
	return list
end

function M.AssertSnapshotArnsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotArnsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SnapshotArnsList(list)
	M.AssertSnapshotArnsList(list)
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

function M.AssertNodeGroupMemberList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeGroupMemberList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNodeGroupMember(v)
	end
end

--  
-- List of NodeGroupMember objects
function M.NodeGroupMemberList(list)
	M.AssertNodeGroupMemberList(list)
	return list
end

function M.AssertCacheSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheSecurityGroup(v)
	end
end

--  
-- List of CacheSecurityGroup objects
function M.CacheSecurityGroups(list)
	M.AssertCacheSecurityGroups(list)
	return list
end

function M.AssertNodeSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected NodeSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNodeSnapshot(v)
	end
end

--  
-- List of NodeSnapshot objects
function M.NodeSnapshotList(list)
	M.AssertNodeSnapshotList(list)
	return list
end

function M.AssertCacheSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheSubnetGroup(v)
	end
end

--  
-- List of CacheSubnetGroup objects
function M.CacheSubnetGroups(list)
	M.AssertCacheSubnetGroups(list)
	return list
end

function M.AssertCacheClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected CacheClusterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCacheCluster(v)
	end
end

--  
-- List of CacheCluster objects
function M.CacheClusterList(list)
	M.AssertCacheClusterList(list)
	return list
end

function M.AssertClusterIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterIdList(list)
	M.AssertClusterIdList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DescribeCacheEngineVersions
-- @param DescribeCacheEngineVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheEngineVersionsAsync(DescribeCacheEngineVersionsMessage, cb)
	assert(DescribeCacheEngineVersionsMessage, "You must provide a DescribeCacheEngineVersionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheEngineVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheEngineVersionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCacheSubnetGroup
-- @param DeleteCacheSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCacheSubnetGroupAsync(DeleteCacheSubnetGroupMessage, cb)
	assert(DeleteCacheSubnetGroupMessage, "You must provide a DeleteCacheSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCacheSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCacheSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetCacheParameterGroup
-- @param ResetCacheParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetCacheParameterGroupAsync(ResetCacheParameterGroupMessage, cb)
	assert(ResetCacheParameterGroupMessage, "You must provide a ResetCacheParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResetCacheParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetCacheParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCacheSecurityGroup
-- @param DeleteCacheSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCacheSecurityGroupAsync(DeleteCacheSecurityGroupMessage, cb)
	assert(DeleteCacheSecurityGroupMessage, "You must provide a DeleteCacheSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCacheSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCacheSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEvents
-- @param DescribeEventsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsMessage, cb)
	assert(DescribeEventsMessage, "You must provide a DescribeEventsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEngineDefaultParameters
-- @param DescribeEngineDefaultParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, cb)
	assert(DescribeEngineDefaultParametersMessage, "You must provide a DescribeEngineDefaultParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEngineDefaultParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCacheSubnetGroups
-- @param DescribeCacheSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheSubnetGroupsAsync(DescribeCacheSubnetGroupsMessage, cb)
	assert(DescribeCacheSubnetGroupsMessage, "You must provide a DescribeCacheSubnetGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheSubnetGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCacheSecurityGroups
-- @param DescribeCacheSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheSecurityGroupsAsync(DescribeCacheSecurityGroupsMessage, cb)
	assert(DescribeCacheSecurityGroupsMessage, "You must provide a DescribeCacheSecurityGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheSecurityGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootCacheCluster
-- @param RebootCacheClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootCacheClusterAsync(RebootCacheClusterMessage, cb)
	assert(RebootCacheClusterMessage, "You must provide a RebootCacheClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RebootCacheCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootCacheClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyCacheSubnetGroup
-- @param ModifyCacheSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyCacheSubnetGroupAsync(ModifyCacheSubnetGroupMessage, cb)
	assert(ModifyCacheSubnetGroupMessage, "You must provide a ModifyCacheSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyCacheSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyCacheSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCacheParameterGroups
-- @param DescribeCacheParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheParameterGroupsAsync(DescribeCacheParameterGroupsMessage, cb)
	assert(DescribeCacheParameterGroupsMessage, "You must provide a DescribeCacheParameterGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheParameterGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCacheParameterGroup
-- @param DeleteCacheParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCacheParameterGroupAsync(DeleteCacheParameterGroupMessage, cb)
	assert(DeleteCacheParameterGroupMessage, "You must provide a DeleteCacheParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCacheParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCacheParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AuthorizeCacheSecurityGroupIngress
-- @param AuthorizeCacheSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeCacheSecurityGroupIngressAsync(AuthorizeCacheSecurityGroupIngressMessage, cb)
	assert(AuthorizeCacheSecurityGroupIngressMessage, "You must provide a AuthorizeCacheSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AuthorizeCacheSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AuthorizeCacheSecurityGroupIngressMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopySnapshot
-- @param CopySnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopySnapshotAsync(CopySnapshotMessage, cb)
	assert(CopySnapshotMessage, "You must provide a CopySnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopySnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopySnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToResource
-- @param AddTagsToResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceMessage, cb)
	assert(AddTagsToResourceMessage, "You must provide a AddTagsToResourceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCacheClusters
-- @param DescribeCacheClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheClustersAsync(DescribeCacheClustersMessage, cb)
	assert(DescribeCacheClustersMessage, "You must provide a DescribeCacheClustersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheClustersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyCacheCluster
-- @param ModifyCacheClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyCacheClusterAsync(ModifyCacheClusterMessage, cb)
	assert(ModifyCacheClusterMessage, "You must provide a ModifyCacheClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyCacheCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyCacheClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReplicationGroup
-- @param CreateReplicationGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReplicationGroupAsync(CreateReplicationGroupMessage, cb)
	assert(CreateReplicationGroupMessage, "You must provide a CreateReplicationGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateReplicationGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReplicationGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromResource
-- @param RemoveTagsFromResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, cb)
	assert(RemoveTagsFromResourceMessage, "You must provide a RemoveTagsFromResourceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCacheParameters
-- @param DescribeCacheParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCacheParametersAsync(DescribeCacheParametersMessage, cb)
	assert(DescribeCacheParametersMessage, "You must provide a DescribeCacheParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCacheParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCacheParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCacheParameterGroup
-- @param CreateCacheParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCacheParameterGroupAsync(CreateCacheParameterGroupMessage, cb)
	assert(CreateCacheParameterGroupMessage, "You must provide a CreateCacheParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCacheParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCacheParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestFailover
-- @param TestFailoverMessage
-- @param cb Callback function accepting two args: response, error_message
function M.TestFailoverAsync(TestFailoverMessage, cb)
	assert(TestFailoverMessage, "You must provide a TestFailoverMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TestFailover",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TestFailoverMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReplicationGroups
-- @param DescribeReplicationGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReplicationGroupsAsync(DescribeReplicationGroupsMessage, cb)
	assert(DescribeReplicationGroupsMessage, "You must provide a DescribeReplicationGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReplicationGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReplicationGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReplicationGroup
-- @param DeleteReplicationGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReplicationGroupAsync(DeleteReplicationGroupMessage, cb)
	assert(DeleteReplicationGroupMessage, "You must provide a DeleteReplicationGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteReplicationGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReplicationGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReservedCacheNodesOfferings
-- @param DescribeReservedCacheNodesOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedCacheNodesOfferingsAsync(DescribeReservedCacheNodesOfferingsMessage, cb)
	assert(DescribeReservedCacheNodesOfferingsMessage, "You must provide a DescribeReservedCacheNodesOfferingsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedCacheNodesOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedCacheNodesOfferingsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCacheCluster
-- @param CreateCacheClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCacheClusterAsync(CreateCacheClusterMessage, cb)
	assert(CreateCacheClusterMessage, "You must provide a CreateCacheClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCacheCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCacheClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCacheSubnetGroup
-- @param CreateCacheSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCacheSubnetGroupAsync(CreateCacheSubnetGroupMessage, cb)
	assert(CreateCacheSubnetGroupMessage, "You must provide a CreateCacheSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCacheSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCacheSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyReplicationGroup
-- @param ModifyReplicationGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyReplicationGroupAsync(ModifyReplicationGroupMessage, cb)
	assert(ModifyReplicationGroupMessage, "You must provide a ModifyReplicationGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyReplicationGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyReplicationGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyCacheParameterGroup
-- @param ModifyCacheParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyCacheParameterGroupAsync(ModifyCacheParameterGroupMessage, cb)
	assert(ModifyCacheParameterGroupMessage, "You must provide a ModifyCacheParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyCacheParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyCacheParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSnapshots
-- @param DescribeSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotsAsync(DescribeSnapshotsMessage, cb)
	assert(DescribeSnapshotsMessage, "You must provide a DescribeSnapshotsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSnapshotsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCacheCluster
-- @param DeleteCacheClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCacheClusterAsync(DeleteCacheClusterMessage, cb)
	assert(DeleteCacheClusterMessage, "You must provide a DeleteCacheClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCacheCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteCacheClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurchaseReservedCacheNodesOffering
-- @param PurchaseReservedCacheNodesOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedCacheNodesOfferingAsync(PurchaseReservedCacheNodesOfferingMessage, cb)
	assert(PurchaseReservedCacheNodesOfferingMessage, "You must provide a PurchaseReservedCacheNodesOfferingMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurchaseReservedCacheNodesOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurchaseReservedCacheNodesOfferingMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSnapshot
-- @param DeleteSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotAsync(DeleteSnapshotMessage, cb)
	assert(DeleteSnapshotMessage, "You must provide a DeleteSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeCacheSecurityGroupIngress
-- @param RevokeCacheSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeCacheSecurityGroupIngressAsync(RevokeCacheSecurityGroupIngressMessage, cb)
	assert(RevokeCacheSecurityGroupIngressMessage, "You must provide a RevokeCacheSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RevokeCacheSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeCacheSecurityGroupIngressMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAllowedNodeTypeModifications
-- @param ListAllowedNodeTypeModificationsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ListAllowedNodeTypeModificationsAsync(ListAllowedNodeTypeModificationsMessage, cb)
	assert(ListAllowedNodeTypeModificationsMessage, "You must provide a ListAllowedNodeTypeModificationsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAllowedNodeTypeModifications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAllowedNodeTypeModificationsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReservedCacheNodes
-- @param DescribeReservedCacheNodesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedCacheNodesAsync(DescribeReservedCacheNodesMessage, cb)
	assert(DescribeReservedCacheNodesMessage, "You must provide a DescribeReservedCacheNodesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedCacheNodes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedCacheNodesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCacheSecurityGroup
-- @param CreateCacheSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCacheSecurityGroupAsync(CreateCacheSecurityGroupMessage, cb)
	assert(CreateCacheSecurityGroupMessage, "You must provide a CreateCacheSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCacheSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateCacheSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceMessage, cb)
	assert(ListTagsForResourceMessage, "You must provide a ListTagsForResourceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSnapshot
-- @param CreateSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotAsync(CreateSnapshotMessage, cb)
	assert(CreateSnapshotMessage, "You must provide a CreateSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
