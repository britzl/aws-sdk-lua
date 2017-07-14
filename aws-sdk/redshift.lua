--- GENERATED CODE - DO NOT MODIFY
-- Amazon Redshift (redshift-2012-12-01)

local M = {}

M.metadata = {
	api_version = "2012-12-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "redshift",
	service_abbreviation = "",
	service_full_name = "Amazon Redshift",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "redshift-2012-12-01",
}

local RevokeClusterSecurityGroupIngressResult_keys = { "ClusterSecurityGroup" = true, nil }

function M.AssertRevokeClusterSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeClusterSecurityGroupIngressResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then M.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(RevokeClusterSecurityGroupIngressResult_keys[k], "RevokeClusterSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeClusterSecurityGroupIngressResult
--  
-- @param ClusterSecurityGroup [ClusterSecurityGroup]  
function M.RevokeClusterSecurityGroupIngressResult(ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeClusterSecurityGroupIngressResult")
	local t = { 
		["ClusterSecurityGroup"] = ClusterSecurityGroup,
	}
	M.AssertRevokeClusterSecurityGroupIngressResult(t)
	return t
end

local ClusterNode_keys = { "NodeRole" = true, "PrivateIPAddress" = true, "PublicIPAddress" = true, nil }

function M.AssertClusterNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNode to be of type 'table'")
	if struct["NodeRole"] then M.AssertString(struct["NodeRole"]) end
	if struct["PrivateIPAddress"] then M.AssertString(struct["PrivateIPAddress"]) end
	if struct["PublicIPAddress"] then M.AssertString(struct["PublicIPAddress"]) end
	for k,_ in pairs(struct) do
		assert(ClusterNode_keys[k], "ClusterNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNode
-- &lt;p&gt;The identifier of a node in a cluster.&lt;/p&gt;
-- @param NodeRole [String] &lt;p&gt;Whether the node is a leader node or a compute node.&lt;/p&gt;
-- @param PrivateIPAddress [String] &lt;p&gt;The private IP address of a node within a cluster.&lt;/p&gt;
-- @param PublicIPAddress [String] &lt;p&gt;The public IP address of a node within a cluster.&lt;/p&gt;
function M.ClusterNode(NodeRole, PrivateIPAddress, PublicIPAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNode")
	local t = { 
		["NodeRole"] = NodeRole,
		["PrivateIPAddress"] = PrivateIPAddress,
		["PublicIPAddress"] = PublicIPAddress,
	}
	M.AssertClusterNode(t)
	return t
end

local DeleteEventSubscriptionMessage_keys = { "SubscriptionName" = true, nil }

function M.AssertDeleteEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventSubscriptionMessage_keys[k], "DeleteEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionMessage
-- &lt;p/&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the Amazon Redshift event notification subscription to be deleted.&lt;/p&gt;
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertDeleteEventSubscriptionMessage(t)
	return t
end

local ClusterSubnetGroup_keys = { "Subnets" = true, "VpcId" = true, "Description" = true, "Tags" = true, "SubnetGroupStatus" = true, "ClusterSubnetGroupName" = true, nil }

function M.AssertClusterSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroup to be of type 'table'")
	if struct["Subnets"] then M.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SubnetGroupStatus"] then M.AssertString(struct["SubnetGroupStatus"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSubnetGroup_keys[k], "ClusterSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroup
-- &lt;p&gt;Describes a subnet group.&lt;/p&gt;
-- @param Subnets [SubnetList] &lt;p&gt;A list of the VPC &lt;a&gt;Subnet&lt;/a&gt; elements. &lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The VPC ID of the cluster subnet group.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description of the cluster subnet group.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the cluster subnet group.&lt;/p&gt;
-- @param SubnetGroupStatus [String] &lt;p&gt;The status of the cluster subnet group. Possible values are &lt;code&gt;Complete&lt;/code&gt;, &lt;code&gt;Incomplete&lt;/code&gt; and &lt;code&gt;Invalid&lt;/code&gt;. &lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the cluster subnet group.&lt;/p&gt;
function M.ClusterSubnetGroup(Subnets, VpcId, Description, Tags, SubnetGroupStatus, ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroup")
	local t = { 
		["Subnets"] = Subnets,
		["VpcId"] = VpcId,
		["Description"] = Description,
		["Tags"] = Tags,
		["SubnetGroupStatus"] = SubnetGroupStatus,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
	}
	M.AssertClusterSubnetGroup(t)
	return t
end

local ClusterNotFoundFault_keys = { nil }

function M.AssertClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterNotFoundFault_keys[k], "ClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundFault
-- &lt;p&gt;The &lt;code&gt;ClusterIdentifier&lt;/code&gt; parameter does not refer to an existing cluster. &lt;/p&gt;
function M.ClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundFault")
	local t = { 
	}
	M.AssertClusterNotFoundFault(t)
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
-- &lt;p&gt;The specified cluster is not in the &lt;code&gt;available&lt;/code&gt; state. &lt;/p&gt;
function M.InvalidClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterStateFault")
	local t = { 
	}
	M.AssertInvalidClusterStateFault(t)
	return t
end

local ClusterSnapshotNotFoundFault_keys = { nil }

function M.AssertClusterSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSnapshotNotFoundFault_keys[k], "ClusterSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotNotFoundFault
-- &lt;p&gt;The snapshot identifier does not refer to an existing cluster snapshot.&lt;/p&gt;
function M.ClusterSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotNotFoundFault")
	local t = { 
	}
	M.AssertClusterSnapshotNotFoundFault(t)
	return t
end

local SNSNoAuthorizationFault_keys = { nil }

function M.AssertSNSNoAuthorizationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSNoAuthorizationFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SNSNoAuthorizationFault_keys[k], "SNSNoAuthorizationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSNoAuthorizationFault
-- &lt;p&gt;You do not have permission to publish to the specified Amazon SNS topic.&lt;/p&gt;
function M.SNSNoAuthorizationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
	}
	M.AssertSNSNoAuthorizationFault(t)
	return t
end

local EventCategoriesMap_keys = { "SourceType" = true, "Events" = true, nil }

function M.AssertEventCategoriesMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMap to be of type 'table'")
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["Events"] then M.AssertEventInfoMapList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(EventCategoriesMap_keys[k], "EventCategoriesMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMap
-- &lt;p&gt;Describes event categories.&lt;/p&gt;
-- @param SourceType [String] &lt;p&gt;The source type, such as cluster or cluster-snapshot, that the returned categories belong to.&lt;/p&gt;
-- @param Events [EventInfoMapList] &lt;p&gt;The events in the event category.&lt;/p&gt;
function M.EventCategoriesMap(SourceType, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMap")
	local t = { 
		["SourceType"] = SourceType,
		["Events"] = Events,
	}
	M.AssertEventCategoriesMap(t)
	return t
end

local CreateHsmConfigurationResult_keys = { "HsmConfiguration" = true, nil }

function M.AssertCreateHsmConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmConfigurationResult to be of type 'table'")
	if struct["HsmConfiguration"] then M.AssertHsmConfiguration(struct["HsmConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmConfigurationResult_keys[k], "CreateHsmConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmConfigurationResult
--  
-- @param HsmConfiguration [HsmConfiguration]  
function M.CreateHsmConfigurationResult(HsmConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmConfigurationResult")
	local t = { 
		["HsmConfiguration"] = HsmConfiguration,
	}
	M.AssertCreateHsmConfigurationResult(t)
	return t
end

local PurchaseReservedNodeOfferingResult_keys = { "ReservedNode" = true, nil }

function M.AssertPurchaseReservedNodeOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedNodeOfferingResult to be of type 'table'")
	if struct["ReservedNode"] then M.AssertReservedNode(struct["ReservedNode"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedNodeOfferingResult_keys[k], "PurchaseReservedNodeOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedNodeOfferingResult
--  
-- @param ReservedNode [ReservedNode]  
function M.PurchaseReservedNodeOfferingResult(ReservedNode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedNodeOfferingResult")
	local t = { 
		["ReservedNode"] = ReservedNode,
	}
	M.AssertPurchaseReservedNodeOfferingResult(t)
	return t
end

local DeleteHsmConfigurationMessage_keys = { "HsmConfigurationIdentifier" = true, nil }

function M.AssertDeleteHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmConfigurationMessage to be of type 'table'")
	assert(struct["HsmConfigurationIdentifier"], "Expected key HsmConfigurationIdentifier to exist in table")
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHsmConfigurationMessage_keys[k], "DeleteHsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmConfigurationMessage
-- &lt;p/&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;The identifier of the Amazon Redshift HSM configuration to be deleted.&lt;/p&gt;
-- Required parameter: HsmConfigurationIdentifier
function M.DeleteHsmConfigurationMessage(HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmConfigurationMessage")
	local t = { 
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
	}
	M.AssertDeleteHsmConfigurationMessage(t)
	return t
end

local ModifyEventSubscriptionMessage_keys = { "EventCategories" = true, "Severity" = true, "Enabled" = true, "SnsTopicArn" = true, "SubscriptionName" = true, "SourceIds" = true, "SourceType" = true, nil }

function M.AssertModifyEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then M.AssertString(struct["Severity"]) end
	if struct["Enabled"] then M.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then M.AssertSourceIdsList(struct["SourceIds"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEventSubscriptionMessage_keys[k], "ModifyEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionMessage
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;Specifies the Amazon Redshift event categories to be published by the event notification subscription.&lt;/p&gt; &lt;p&gt;Values: Configuration, Management, Monitoring, Security&lt;/p&gt;
-- @param Severity [String] &lt;p&gt;Specifies the Amazon Redshift event severity to be published by the event notification subscription.&lt;/p&gt; &lt;p&gt;Values: ERROR, INFO&lt;/p&gt;
-- @param Enabled [BooleanOptional] &lt;p&gt;A Boolean value indicating if the subscription is enabled. &lt;code&gt;true&lt;/code&gt; indicates the subscription is enabled &lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.&lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the modified Amazon Redshift event notification subscription.&lt;/p&gt;
-- @param SourceIds [SourceIdsList] &lt;p&gt;A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.&lt;/p&gt; &lt;p&gt;Example: my-cluster-1, my-cluster-2&lt;/p&gt; &lt;p&gt;Example: my-snapshot-20131010&lt;/p&gt;
-- @param SourceType [String] &lt;p&gt;The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.&lt;/p&gt; &lt;p&gt;Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.&lt;/p&gt;
-- Required parameter: SubscriptionName
function M.ModifyEventSubscriptionMessage(EventCategories, Severity, Enabled, SnsTopicArn, SubscriptionName, SourceIds, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = EventCategories,
		["Severity"] = Severity,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["SubscriptionName"] = SubscriptionName,
		["SourceIds"] = SourceIds,
		["SourceType"] = SourceType,
	}
	M.AssertModifyEventSubscriptionMessage(t)
	return t
end

local DeleteClusterParameterGroupMessage_keys = { "ParameterGroupName" = true, nil }

function M.AssertDeleteClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterParameterGroupMessage_keys[k], "DeleteClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterParameterGroupMessage
-- &lt;p/&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the parameter group to be deleted.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be the name of an existing cluster parameter group.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot delete a default cluster parameter group.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: ParameterGroupName
function M.DeleteClusterParameterGroupMessage(ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
	}
	M.AssertDeleteClusterParameterGroupMessage(t)
	return t
end

local HsmClientCertificateMessage_keys = { "Marker" = true, "HsmClientCertificates" = true, nil }

function M.AssertHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["HsmClientCertificates"] then M.AssertHsmClientCertificateList(struct["HsmClientCertificates"]) end
	for k,_ in pairs(struct) do
		assert(HsmClientCertificateMessage_keys[k], "HsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param HsmClientCertificates [HsmClientCertificateList] &lt;p&gt;A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.&lt;/p&gt;
function M.HsmClientCertificateMessage(Marker, HsmClientCertificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateMessage")
	local t = { 
		["Marker"] = Marker,
		["HsmClientCertificates"] = HsmClientCertificates,
	}
	M.AssertHsmClientCertificateMessage(t)
	return t
end

local DescribeEventCategoriesMessage_keys = { "SourceType" = true, nil }

function M.AssertDescribeEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesMessage to be of type 'table'")
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventCategoriesMessage_keys[k], "DescribeEventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesMessage
-- &lt;p/&gt;
-- @param SourceType [String] &lt;p&gt;The source type, such as cluster or parameter group, to which the described event categories apply.&lt;/p&gt; &lt;p&gt;Valid values: cluster, cluster-snapshot, cluster-parameter-group, and cluster-security-group.&lt;/p&gt;
function M.DescribeEventCategoriesMessage(SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = SourceType,
	}
	M.AssertDescribeEventCategoriesMessage(t)
	return t
end

local SubscriptionEventIdNotFoundFault_keys = { nil }

function M.AssertSubscriptionEventIdNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionEventIdNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscriptionEventIdNotFoundFault_keys[k], "SubscriptionEventIdNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionEventIdNotFoundFault
-- &lt;p&gt;An Amazon Redshift event with the specified event ID does not exist.&lt;/p&gt;
function M.SubscriptionEventIdNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionEventIdNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionEventIdNotFoundFault(t)
	return t
end

local CreateClusterSecurityGroupResult_keys = { "ClusterSecurityGroup" = true, nil }

function M.AssertCreateClusterSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSecurityGroupResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then M.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSecurityGroupResult_keys[k], "CreateClusterSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSecurityGroupResult
--  
-- @param ClusterSecurityGroup [ClusterSecurityGroup]  
function M.CreateClusterSecurityGroupResult(ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSecurityGroupResult")
	local t = { 
		["ClusterSecurityGroup"] = ClusterSecurityGroup,
	}
	M.AssertCreateClusterSecurityGroupResult(t)
	return t
end

local SnapshotCopyAlreadyDisabledFault_keys = { nil }

function M.AssertSnapshotCopyAlreadyDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyAlreadyDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyAlreadyDisabledFault_keys[k], "SnapshotCopyAlreadyDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyAlreadyDisabledFault
-- &lt;p&gt;The cluster already has cross-region snapshot copy disabled.&lt;/p&gt;
function M.SnapshotCopyAlreadyDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyAlreadyDisabledFault")
	local t = { 
	}
	M.AssertSnapshotCopyAlreadyDisabledFault(t)
	return t
end

local InvalidElasticIpFault_keys = { nil }

function M.AssertInvalidElasticIpFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidElasticIpFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidElasticIpFault_keys[k], "InvalidElasticIpFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidElasticIpFault
-- &lt;p&gt;The Elastic IP (EIP) is invalid or cannot be found.&lt;/p&gt;
function M.InvalidElasticIpFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidElasticIpFault")
	local t = { 
	}
	M.AssertInvalidElasticIpFault(t)
	return t
end

local ClusterParameterStatus_keys = { "ParameterName" = true, "ParameterApplyStatus" = true, "ParameterApplyErrorDescription" = true, nil }

function M.AssertClusterParameterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterStatus to be of type 'table'")
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["ParameterApplyStatus"] then M.AssertString(struct["ParameterApplyStatus"]) end
	if struct["ParameterApplyErrorDescription"] then M.AssertString(struct["ParameterApplyErrorDescription"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterStatus_keys[k], "ClusterParameterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterStatus
-- &lt;p&gt;Describes the status of a parameter group.&lt;/p&gt;
-- @param ParameterName [String] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param ParameterApplyStatus [String] &lt;p&gt;The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.&lt;/p&gt; &lt;p&gt;The following are possible statuses and descriptions.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;in-sync&lt;/code&gt;: The parameter value is in sync with the database.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;pending-reboot&lt;/code&gt;: The parameter value will be applied after the cluster reboots.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;applying&lt;/code&gt;: The parameter value is being applied to the database.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;invalid-parameter&lt;/code&gt;: Cannot apply the parameter value because it has an invalid value or syntax.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;apply-deferred&lt;/code&gt;: The parameter contains static property changes. The changes are deferred until the cluster reboots.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;apply-error&lt;/code&gt;: Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;unknown-error&lt;/code&gt;: Cannot apply the parameter change right now. The change will be applied after the cluster reboots.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ParameterApplyErrorDescription [String] &lt;p&gt;The error that prevented the parameter from being applied to the database.&lt;/p&gt;
function M.ClusterParameterStatus(ParameterName, ParameterApplyStatus, ParameterApplyErrorDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterStatus")
	local t = { 
		["ParameterName"] = ParameterName,
		["ParameterApplyStatus"] = ParameterApplyStatus,
		["ParameterApplyErrorDescription"] = ParameterApplyErrorDescription,
	}
	M.AssertClusterParameterStatus(t)
	return t
end

local ClusterVersion_keys = { "ClusterVersion" = true, "Description" = true, "ClusterParameterGroupFamily" = true, nil }

function M.AssertClusterVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterVersion to be of type 'table'")
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["ClusterParameterGroupFamily"] then M.AssertString(struct["ClusterParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(ClusterVersion_keys[k], "ClusterVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterVersion
-- &lt;p&gt;Describes a cluster version, including the parameter group family and description of the version.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version number used by the cluster.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description of the cluster version.&lt;/p&gt;
-- @param ClusterParameterGroupFamily [String] &lt;p&gt;The name of the cluster parameter group family for the cluster.&lt;/p&gt;
function M.ClusterVersion(ClusterVersion, Description, ClusterParameterGroupFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterVersion")
	local t = { 
		["ClusterVersion"] = ClusterVersion,
		["Description"] = Description,
		["ClusterParameterGroupFamily"] = ClusterParameterGroupFamily,
	}
	M.AssertClusterVersion(t)
	return t
end

local ModifyClusterMessage_keys = { "HsmClientCertificateIdentifier" = true, "NodeType" = true, "PubliclyAccessible" = true, "ClusterParameterGroupName" = true, "EnhancedVpcRouting" = true, "ElasticIp" = true, "ClusterType" = true, "MasterUserPassword" = true, "VpcSecurityGroupIds" = true, "AllowVersionUpgrade" = true, "PreferredMaintenanceWindow" = true, "AutomatedSnapshotRetentionPeriod" = true, "ClusterSecurityGroups" = true, "ClusterIdentifier" = true, "HsmConfigurationIdentifier" = true, "NewClusterIdentifier" = true, "NumberOfNodes" = true, "ClusterVersion" = true, nil }

function M.AssertModifyClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["ClusterParameterGroupName"] then M.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	if struct["ClusterType"] then M.AssertString(struct["ClusterType"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["AllowVersionUpgrade"] then M.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then M.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["ClusterSecurityGroups"] then M.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["NewClusterIdentifier"] then M.AssertString(struct["NewClusterIdentifier"]) end
	if struct["NumberOfNodes"] then M.AssertIntegerOptional(struct["NumberOfNodes"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterMessage_keys[k], "ModifyClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterMessage
-- &lt;p/&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.&lt;/p&gt; &lt;p&gt;When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use &lt;a&gt;DescribeResize&lt;/a&gt; to track the progress of the resize request. &lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt; ds1.xlarge&lt;/code&gt; | &lt;code&gt;ds1.8xlarge&lt;/code&gt; | &lt;code&gt; ds2.xlarge&lt;/code&gt; | &lt;code&gt;ds2.8xlarge&lt;/code&gt; | &lt;code&gt;dc1.large&lt;/code&gt; | &lt;code&gt;dc1.8xlarge&lt;/code&gt;.&lt;/p&gt;
-- @param PubliclyAccessible [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.&lt;/p&gt;
-- @param ClusterParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use &lt;a&gt;RebootCluster&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;Default: Uses existing setting.&lt;/p&gt; &lt;p&gt;Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.&lt;/p&gt;
-- @param EnhancedVpcRouting [BooleanOptional] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP (EIP) address for the cluster.&lt;/p&gt; &lt;p&gt;Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms&quot;&gt;Supported Platforms to Launch Your Cluster&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt;
-- @param ClusterType [String] &lt;p&gt;The new cluster type.&lt;/p&gt; &lt;p&gt;When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use &lt;a&gt;DescribeResize&lt;/a&gt; to track the progress of the resize request. &lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt; multi-node | single-node &lt;/code&gt; &lt;/p&gt;
-- @param MasterUserPassword [String] &lt;p&gt;The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the &lt;code&gt;MasterUserPassword&lt;/code&gt; element exists in the &lt;code&gt;PendingModifiedValues&lt;/code&gt; element of the operation response. &lt;/p&gt; &lt;note&gt; &lt;p&gt;Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Default: Uses existing setting.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be between 8 and 64 characters in length.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain at least one uppercase letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain at least one lowercase letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain one number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), &quot; (double quote), \, /, @, or space.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] &lt;p&gt;A list of virtual private cloud (VPC) security groups to be associated with the cluster.&lt;/p&gt;
-- @param AllowVersionUpgrade [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, major version upgrades will be applied automatically to the cluster during the maintenance window. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage.&lt;/p&gt; &lt;p&gt;This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied.&lt;/p&gt; &lt;p&gt;Default: Uses existing setting.&lt;/p&gt; &lt;p&gt;Format: ddd:hh24:mi-ddd:hh24:mi, for example &lt;code&gt;wed:07:30-wed:08:00&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun&lt;/p&gt; &lt;p&gt;Constraints: Must be at least 30 minutes.&lt;/p&gt;
-- @param AutomatedSnapshotRetentionPeriod [IntegerOptional] &lt;p&gt;The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with &lt;a&gt;CreateClusterSnapshot&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted.&lt;/p&gt; &lt;p&gt;Default: Uses existing setting.&lt;/p&gt; &lt;p&gt;Constraints: Must be a value from 0 to 35.&lt;/p&gt;
-- @param ClusterSecurityGroups [ClusterSecurityGroupNameList] &lt;p&gt;A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible.&lt;/p&gt; &lt;p&gt;Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters or hyphens&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster to be modified.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;examplecluster&lt;/code&gt; &lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.&lt;/p&gt;
-- @param NewClusterIdentifier [String] &lt;p&gt;The new identifier for the cluster.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alphabetic characters must be lowercase.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all clusters within an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;examplecluster&lt;/code&gt; &lt;/p&gt;
-- @param NumberOfNodes [IntegerOptional] &lt;p&gt;The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.&lt;/p&gt; &lt;p&gt;When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use &lt;a&gt;DescribeResize&lt;/a&gt; to track the progress of the resize request. &lt;/p&gt; &lt;p&gt;Valid Values: Integer greater than &lt;code&gt;0&lt;/code&gt;.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The new version number of the Amazon Redshift engine to upgrade to.&lt;/p&gt; &lt;p&gt;For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html&quot;&gt;Amazon Redshift Parameter Groups&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;1.0&lt;/code&gt; &lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.ModifyClusterMessage(HsmClientCertificateIdentifier, NodeType, PubliclyAccessible, ClusterParameterGroupName, EnhancedVpcRouting, ElasticIp, ClusterType, MasterUserPassword, VpcSecurityGroupIds, AllowVersionUpgrade, PreferredMaintenanceWindow, AutomatedSnapshotRetentionPeriod, ClusterSecurityGroups, ClusterIdentifier, HsmConfigurationIdentifier, NewClusterIdentifier, NumberOfNodes, ClusterVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["NodeType"] = NodeType,
		["PubliclyAccessible"] = PubliclyAccessible,
		["ClusterParameterGroupName"] = ClusterParameterGroupName,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["ElasticIp"] = ElasticIp,
		["ClusterType"] = ClusterType,
		["MasterUserPassword"] = MasterUserPassword,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["AllowVersionUpgrade"] = AllowVersionUpgrade,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["AutomatedSnapshotRetentionPeriod"] = AutomatedSnapshotRetentionPeriod,
		["ClusterSecurityGroups"] = ClusterSecurityGroups,
		["ClusterIdentifier"] = ClusterIdentifier,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
		["NewClusterIdentifier"] = NewClusterIdentifier,
		["NumberOfNodes"] = NumberOfNodes,
		["ClusterVersion"] = ClusterVersion,
	}
	M.AssertModifyClusterMessage(t)
	return t
end

local ClusterParameterGroupStatus_keys = { "ClusterParameterStatusList" = true, "ParameterGroupName" = true, "ParameterApplyStatus" = true, nil }

function M.AssertClusterParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupStatus to be of type 'table'")
	if struct["ClusterParameterStatusList"] then M.AssertClusterParameterStatusList(struct["ClusterParameterStatusList"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then M.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupStatus_keys[k], "ClusterParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupStatus
-- &lt;p&gt;Describes the status of a parameter group.&lt;/p&gt;
-- @param ClusterParameterStatusList [ClusterParameterStatusList] &lt;p&gt;The list of parameter statuses.&lt;/p&gt; &lt;p&gt; For more information about parameters and parameter groups, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html&quot;&gt;Amazon Redshift Parameter Groups&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group.&lt;/p&gt;
-- @param ParameterApplyStatus [String] &lt;p&gt;The status of parameter updates.&lt;/p&gt;
function M.ClusterParameterGroupStatus(ClusterParameterStatusList, ParameterGroupName, ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupStatus")
	local t = { 
		["ClusterParameterStatusList"] = ClusterParameterStatusList,
		["ParameterGroupName"] = ParameterGroupName,
		["ParameterApplyStatus"] = ParameterApplyStatus,
	}
	M.AssertClusterParameterGroupStatus(t)
	return t
end

local VpcSecurityGroupMembership_keys = { "Status" = true, "VpcSecurityGroupId" = true, nil }

function M.AssertVpcSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["VpcSecurityGroupId"] then M.AssertString(struct["VpcSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(VpcSecurityGroupMembership_keys[k], "VpcSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcSecurityGroupMembership
-- &lt;p&gt;Describes the members of a VPC security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the VPC security group.&lt;/p&gt;
-- @param VpcSecurityGroupId [String] &lt;p&gt;The identifier of the VPC security group.&lt;/p&gt;
function M.VpcSecurityGroupMembership(Status, VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["VpcSecurityGroupId"] = VpcSecurityGroupId,
	}
	M.AssertVpcSecurityGroupMembership(t)
	return t
end

local CreateClusterResult_keys = { "Cluster" = true, nil }

function M.AssertCreateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterResult_keys[k], "CreateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResult
--  
-- @param Cluster [Cluster]  
function M.CreateClusterResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertCreateClusterResult(t)
	return t
end

local ClusterSecurityGroupMembership_keys = { "Status" = true, "ClusterSecurityGroupName" = true, nil }

function M.AssertClusterSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroupMembership_keys[k], "ClusterSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupMembership
-- &lt;p&gt;Describes a cluster security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the cluster security group.&lt;/p&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of the cluster security group.&lt;/p&gt;
function M.ClusterSecurityGroupMembership(Status, ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
	}
	M.AssertClusterSecurityGroupMembership(t)
	return t
end

local ResizeNotFoundFault_keys = { nil }

function M.AssertResizeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResizeNotFoundFault_keys[k], "ResizeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeNotFoundFault
-- &lt;p&gt;A resize operation for the specified cluster is not found.&lt;/p&gt;
function M.ResizeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResizeNotFoundFault")
	local t = { 
	}
	M.AssertResizeNotFoundFault(t)
	return t
end

local DependentServiceRequestThrottlingFault_keys = { nil }

function M.AssertDependentServiceRequestThrottlingFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependentServiceRequestThrottlingFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DependentServiceRequestThrottlingFault_keys[k], "DependentServiceRequestThrottlingFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependentServiceRequestThrottlingFault
-- &lt;p&gt;The request cannot be completed because a dependent service is throttling requests made by Amazon Redshift on your behalf. Wait and retry the request.&lt;/p&gt;
function M.DependentServiceRequestThrottlingFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependentServiceRequestThrottlingFault")
	local t = { 
	}
	M.AssertDependentServiceRequestThrottlingFault(t)
	return t
end

local AccountWithRestoreAccess_keys = { "AccountAlias" = true, "AccountId" = true, nil }

function M.AssertAccountWithRestoreAccess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountWithRestoreAccess to be of type 'table'")
	if struct["AccountAlias"] then M.AssertString(struct["AccountAlias"]) end
	if struct["AccountId"] then M.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(AccountWithRestoreAccess_keys[k], "AccountWithRestoreAccess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountWithRestoreAccess
-- &lt;p&gt;Describes an AWS customer account authorized to restore a snapshot.&lt;/p&gt;
-- @param AccountAlias [String] &lt;p&gt;The identifier of an AWS support account authorized to restore a snapshot. For AWS support, the identifier is &lt;code&gt;amazon-redshift-support&lt;/code&gt;. &lt;/p&gt;
-- @param AccountId [String] &lt;p&gt;The identifier of an AWS customer account authorized to restore a snapshot.&lt;/p&gt;
function M.AccountWithRestoreAccess(AccountAlias, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountWithRestoreAccess")
	local t = { 
		["AccountAlias"] = AccountAlias,
		["AccountId"] = AccountId,
	}
	M.AssertAccountWithRestoreAccess(t)
	return t
end

local TaggedResourceListMessage_keys = { "Marker" = true, "TaggedResources" = true, nil }

function M.AssertTaggedResourceListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaggedResourceListMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TaggedResources"] then M.AssertTaggedResourceList(struct["TaggedResources"]) end
	for k,_ in pairs(struct) do
		assert(TaggedResourceListMessage_keys[k], "TaggedResourceListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaggedResourceListMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param TaggedResources [TaggedResourceList] &lt;p&gt;A list of tags with their associated resources.&lt;/p&gt;
function M.TaggedResourceListMessage(Marker, TaggedResources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaggedResourceListMessage")
	local t = { 
		["Marker"] = Marker,
		["TaggedResources"] = TaggedResources,
	}
	M.AssertTaggedResourceListMessage(t)
	return t
end

local RevokeSnapshotAccessResult_keys = { "Snapshot" = true, nil }

function M.AssertRevokeSnapshotAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeSnapshotAccessResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(RevokeSnapshotAccessResult_keys[k], "RevokeSnapshotAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeSnapshotAccessResult
--  
-- @param Snapshot [Snapshot]  
function M.RevokeSnapshotAccessResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeSnapshotAccessResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertRevokeSnapshotAccessResult(t)
	return t
end

local PurchaseReservedNodeOfferingMessage_keys = { "NodeCount" = true, "ReservedNodeOfferingId" = true, nil }

function M.AssertPurchaseReservedNodeOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedNodeOfferingMessage to be of type 'table'")
	assert(struct["ReservedNodeOfferingId"], "Expected key ReservedNodeOfferingId to exist in table")
	if struct["NodeCount"] then M.AssertIntegerOptional(struct["NodeCount"]) end
	if struct["ReservedNodeOfferingId"] then M.AssertString(struct["ReservedNodeOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedNodeOfferingMessage_keys[k], "PurchaseReservedNodeOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedNodeOfferingMessage
-- &lt;p/&gt;
-- @param NodeCount [IntegerOptional] &lt;p&gt;The number of reserved nodes that you want to purchase.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;1&lt;/code&gt; &lt;/p&gt;
-- @param ReservedNodeOfferingId [String] &lt;p&gt;The unique identifier of the reserved node offering you want to purchase.&lt;/p&gt;
-- Required parameter: ReservedNodeOfferingId
function M.PurchaseReservedNodeOfferingMessage(NodeCount, ReservedNodeOfferingId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedNodeOfferingMessage")
	local t = { 
		["NodeCount"] = NodeCount,
		["ReservedNodeOfferingId"] = ReservedNodeOfferingId,
	}
	M.AssertPurchaseReservedNodeOfferingMessage(t)
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
-- &lt;p&gt;The number of nodes specified exceeds the allotted capacity of the cluster.&lt;/p&gt;
function M.InsufficientClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientClusterCapacityFault")
	local t = { 
	}
	M.AssertInsufficientClusterCapacityFault(t)
	return t
end

local CreateEventSubscriptionResult_keys = { "EventSubscription" = true, nil }

function M.AssertCreateEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(CreateEventSubscriptionResult_keys[k], "CreateEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionResult
--  
-- @param EventSubscription [EventSubscription]  
function M.CreateEventSubscriptionResult(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertCreateEventSubscriptionResult(t)
	return t
end

local HsmStatus_keys = { "Status" = true, "HsmClientCertificateIdentifier" = true, "HsmConfigurationIdentifier" = true, nil }

function M.AssertHsmStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmStatus to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(HsmStatus_keys[k], "HsmStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmStatus
-- &lt;p&gt;Describes the status of changes to HSM settings.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;Reports whether the Amazon Redshift cluster has finished applying any HSM settings changes specified in a modify cluster command.&lt;/p&gt; &lt;p&gt;Values: active, applying&lt;/p&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.&lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.&lt;/p&gt;
function M.HsmStatus(Status, HsmClientCertificateIdentifier, HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmStatus")
	local t = { 
		["Status"] = Status,
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
	}
	M.AssertHsmStatus(t)
	return t
end

local SNSInvalidTopicFault_keys = { nil }

function M.AssertSNSInvalidTopicFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSInvalidTopicFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SNSInvalidTopicFault_keys[k], "SNSInvalidTopicFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSInvalidTopicFault
-- &lt;p&gt;Amazon SNS has responded that there is a problem with the specified Amazon SNS topic.&lt;/p&gt;
function M.SNSInvalidTopicFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
	}
	M.AssertSNSInvalidTopicFault(t)
	return t
end

local ReservedNodeOfferingsMessage_keys = { "Marker" = true, "ReservedNodeOfferings" = true, nil }

function M.AssertReservedNodeOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOfferingsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedNodeOfferings"] then M.AssertReservedNodeOfferingList(struct["ReservedNodeOfferings"]) end
	for k,_ in pairs(struct) do
		assert(ReservedNodeOfferingsMessage_keys[k], "ReservedNodeOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOfferingsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ReservedNodeOfferings [ReservedNodeOfferingList] &lt;p&gt;A list of &lt;code&gt;ReservedNodeOffering&lt;/code&gt; objects.&lt;/p&gt;
function M.ReservedNodeOfferingsMessage(Marker, ReservedNodeOfferings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOfferingsMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedNodeOfferings"] = ReservedNodeOfferings,
	}
	M.AssertReservedNodeOfferingsMessage(t)
	return t
end

local HsmConfigurationNotFoundFault_keys = { nil }

function M.AssertHsmConfigurationNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmConfigurationNotFoundFault_keys[k], "HsmConfigurationNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationNotFoundFault
-- &lt;p&gt;There is no Amazon Redshift HSM configuration with the specified identifier.&lt;/p&gt;
function M.HsmConfigurationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationNotFoundFault")
	local t = { 
	}
	M.AssertHsmConfigurationNotFoundFault(t)
	return t
end

local NumberOfNodesQuotaExceededFault_keys = { nil }

function M.AssertNumberOfNodesQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberOfNodesQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NumberOfNodesQuotaExceededFault_keys[k], "NumberOfNodesQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberOfNodesQuotaExceededFault
-- &lt;p&gt;The operation would exceed the number of nodes allotted to the account. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.NumberOfNodesQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberOfNodesQuotaExceededFault")
	local t = { 
	}
	M.AssertNumberOfNodesQuotaExceededFault(t)
	return t
end

local CreateEventSubscriptionMessage_keys = { "EventCategories" = true, "Severity" = true, "Tags" = true, "Enabled" = true, "SnsTopicArn" = true, "SubscriptionName" = true, "SourceIds" = true, "SourceType" = true, nil }

function M.AssertCreateEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then M.AssertString(struct["Severity"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["Enabled"] then M.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then M.AssertSourceIdsList(struct["SourceIds"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(CreateEventSubscriptionMessage_keys[k], "CreateEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionMessage
-- &lt;p/&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;Specifies the Amazon Redshift event categories to be published by the event notification subscription.&lt;/p&gt; &lt;p&gt;Values: Configuration, Management, Monitoring, Security&lt;/p&gt;
-- @param Severity [String] &lt;p&gt;Specifies the Amazon Redshift event severity to be published by the event notification subscription.&lt;/p&gt; &lt;p&gt;Values: ERROR, INFO&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param Enabled [BooleanOptional] &lt;p&gt;A Boolean value; set to &lt;code&gt;true&lt;/code&gt; to activate the subscription, set to &lt;code&gt;false&lt;/code&gt; to create the subscription but not active it. &lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.&lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the event subscription to be created.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cannot be null, empty, or blank.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SourceIds [SourceIdsList] &lt;p&gt;A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.&lt;/p&gt; &lt;p&gt;Example: my-cluster-1, my-cluster-2&lt;/p&gt; &lt;p&gt;Example: my-snapshot-20131010&lt;/p&gt;
-- @param SourceType [String] &lt;p&gt;The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.&lt;/p&gt; &lt;p&gt;Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.&lt;/p&gt;
-- Required parameter: SubscriptionName
-- Required parameter: SnsTopicArn
function M.CreateEventSubscriptionMessage(EventCategories, Severity, Tags, Enabled, SnsTopicArn, SubscriptionName, SourceIds, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = EventCategories,
		["Severity"] = Severity,
		["Tags"] = Tags,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["SubscriptionName"] = SubscriptionName,
		["SourceIds"] = SourceIds,
		["SourceType"] = SourceType,
	}
	M.AssertCreateEventSubscriptionMessage(t)
	return t
end

local DescribeClusterParameterGroupsMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "TagKeys" = true, "ParameterGroupName" = true, nil }

function M.AssertDescribeClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterParameterGroupsMessage_keys[k], "DescribeClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterParameterGroupsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterParameterGroups&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.&lt;/p&gt;
function M.DescribeClusterParameterGroupsMessage(Marker, TagValues, MaxRecords, TagKeys, ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["TagKeys"] = TagKeys,
		["ParameterGroupName"] = ParameterGroupName,
	}
	M.AssertDescribeClusterParameterGroupsMessage(t)
	return t
end

local IncompatibleOrderableOptions_keys = { nil }

function M.AssertIncompatibleOrderableOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleOrderableOptions to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IncompatibleOrderableOptions_keys[k], "IncompatibleOrderableOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleOrderableOptions
-- &lt;p&gt;The specified options are incompatible.&lt;/p&gt;
function M.IncompatibleOrderableOptions(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleOrderableOptions")
	local t = { 
	}
	M.AssertIncompatibleOrderableOptions(t)
	return t
end

local CreateHsmClientCertificateMessage_keys = { "HsmClientCertificateIdentifier" = true, "Tags" = true, nil }

function M.AssertCreateHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmClientCertificateMessage to be of type 'table'")
	assert(struct["HsmClientCertificateIdentifier"], "Expected key HsmClientCertificateIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmClientCertificateMessage_keys[k], "CreateHsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmClientCertificateMessage
-- &lt;p/&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- Required parameter: HsmClientCertificateIdentifier
function M.CreateHsmClientCertificateMessage(HsmClientCertificateIdentifier, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmClientCertificateMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["Tags"] = Tags,
	}
	M.AssertCreateHsmClientCertificateMessage(t)
	return t
end

local InvalidS3KeyPrefixFault_keys = { nil }

function M.AssertInvalidS3KeyPrefixFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3KeyPrefixFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3KeyPrefixFault_keys[k], "InvalidS3KeyPrefixFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3KeyPrefixFault
-- &lt;p&gt;The string specified for the logging S3 key prefix does not comply with the documented constraints.&lt;/p&gt;
function M.InvalidS3KeyPrefixFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3KeyPrefixFault")
	local t = { 
	}
	M.AssertInvalidS3KeyPrefixFault(t)
	return t
end

local SubscriptionAlreadyExistFault_keys = { nil }

function M.AssertSubscriptionAlreadyExistFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionAlreadyExistFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscriptionAlreadyExistFault_keys[k], "SubscriptionAlreadyExistFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionAlreadyExistFault
-- &lt;p&gt;There is already an existing event notification subscription with the specified name.&lt;/p&gt;
function M.SubscriptionAlreadyExistFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionAlreadyExistFault")
	local t = { 
	}
	M.AssertSubscriptionAlreadyExistFault(t)
	return t
end

local RebootClusterMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertRebootClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RebootClusterMessage_keys[k], "RebootClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootClusterMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The cluster identifier.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.RebootClusterMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootClusterMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertRebootClusterMessage(t)
	return t
end

local ClusterSecurityGroupMessage_keys = { "Marker" = true, "ClusterSecurityGroups" = true, nil }

function M.AssertClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ClusterSecurityGroups"] then M.AssertClusterSecurityGroups(struct["ClusterSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroupMessage_keys[k], "ClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ClusterSecurityGroups [ClusterSecurityGroups] &lt;p&gt;A list of &lt;a&gt;ClusterSecurityGroup&lt;/a&gt; instances. &lt;/p&gt;
function M.ClusterSecurityGroupMessage(Marker, ClusterSecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["ClusterSecurityGroups"] = ClusterSecurityGroups,
	}
	M.AssertClusterSecurityGroupMessage(t)
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
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param Events [EventList] &lt;p&gt;A list of &lt;code&gt;Event&lt;/code&gt; instances. &lt;/p&gt;
function M.EventsMessage(Marker, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventsMessage")
	local t = { 
		["Marker"] = Marker,
		["Events"] = Events,
	}
	M.AssertEventsMessage(t)
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
-- &lt;p/&gt;
-- @param SourceType [SourceType] &lt;p&gt;The event source to retrieve events for. If no value is specified, all events are returned.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;p&gt;If &lt;i&gt;SourceType&lt;/i&gt; is supplied, &lt;i&gt;SourceIdentifier&lt;/i&gt; must also be provided.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Specify &lt;code&gt;cluster&lt;/code&gt; when &lt;i&gt;SourceIdentifier&lt;/i&gt; is a cluster identifier.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify &lt;code&gt;cluster-security-group&lt;/code&gt; when &lt;i&gt;SourceIdentifier&lt;/i&gt; is a cluster security group name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify &lt;code&gt;cluster-parameter-group&lt;/code&gt; when &lt;i&gt;SourceIdentifier&lt;/i&gt; is a cluster parameter group name.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify &lt;code&gt;cluster-snapshot&lt;/code&gt; when &lt;i&gt;SourceIdentifier&lt;/i&gt; is a cluster snapshot identifier.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeEvents&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param StartTime [TStamp] &lt;p&gt;The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the &lt;a href=&quot;http://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO8601 Wikipedia page.&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;2009-07-08T18:00Z&lt;/code&gt; &lt;/p&gt;
-- @param Duration [IntegerOptional] &lt;p&gt;The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;60&lt;/code&gt; &lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt;The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;p&gt;If &lt;i&gt;SourceIdentifier&lt;/i&gt; is supplied, &lt;i&gt;SourceType&lt;/i&gt; must also be provided.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Specify a cluster identifier when &lt;i&gt;SourceType&lt;/i&gt; is &lt;code&gt;cluster&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify a cluster security group name when &lt;i&gt;SourceType&lt;/i&gt; is &lt;code&gt;cluster-security-group&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify a cluster parameter group name when &lt;i&gt;SourceType&lt;/i&gt; is &lt;code&gt;cluster-parameter-group&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify a cluster snapshot identifier when &lt;i&gt;SourceType&lt;/i&gt; is &lt;code&gt;cluster-snapshot&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EndTime [TStamp] &lt;p&gt;The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the &lt;a href=&quot;http://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO8601 Wikipedia page.&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;2009-07-08T18:00Z&lt;/code&gt; &lt;/p&gt;
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

local ClusterParameterGroupsMessage_keys = { "Marker" = true, "ParameterGroups" = true, nil }

function M.AssertClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ParameterGroups"] then M.AssertParameterGroupList(struct["ParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupsMessage_keys[k], "ClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupsMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusterParameterGroups&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ParameterGroups [ParameterGroupList] &lt;p&gt;A list of &lt;a&gt;ClusterParameterGroup&lt;/a&gt; instances. Each instance describes one cluster parameter group. &lt;/p&gt;
function M.ClusterParameterGroupsMessage(Marker, ParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["ParameterGroups"] = ParameterGroups,
	}
	M.AssertClusterParameterGroupsMessage(t)
	return t
end

local ClusterSubnetGroupAlreadyExistsFault_keys = { nil }

function M.AssertClusterSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSubnetGroupAlreadyExistsFault_keys[k], "ClusterSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupAlreadyExistsFault
-- &lt;p&gt;A &lt;i&gt;ClusterSubnetGroupName&lt;/i&gt; is already used by an existing cluster subnet group. &lt;/p&gt;
function M.ClusterSubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterSubnetGroupAlreadyExistsFault(t)
	return t
end

local AccessToSnapshotDeniedFault_keys = { nil }

function M.AssertAccessToSnapshotDeniedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessToSnapshotDeniedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AccessToSnapshotDeniedFault_keys[k], "AccessToSnapshotDeniedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessToSnapshotDeniedFault
-- &lt;p&gt;The owner of the specified snapshot has not authorized your account to access the snapshot.&lt;/p&gt;
function M.AccessToSnapshotDeniedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessToSnapshotDeniedFault")
	local t = { 
	}
	M.AssertAccessToSnapshotDeniedFault(t)
	return t
end

local ClusterSnapshotCopyStatus_keys = { "SnapshotCopyGrantName" = true, "DestinationRegion" = true, "RetentionPeriod" = true, nil }

function M.AssertClusterSnapshotCopyStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotCopyStatus to be of type 'table'")
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["DestinationRegion"] then M.AssertString(struct["DestinationRegion"]) end
	if struct["RetentionPeriod"] then M.AssertLong(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSnapshotCopyStatus_keys[k], "ClusterSnapshotCopyStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotCopyStatus
-- &lt;p&gt;Returns the destination region and retention period that are configured for cross-region snapshot copy.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant.&lt;/p&gt;
-- @param DestinationRegion [String] &lt;p&gt;The destination region that snapshots are automatically copied to when cross-region snapshot copy is enabled.&lt;/p&gt;
-- @param RetentionPeriod [Long] &lt;p&gt;The number of days that automated snapshots are retained in the destination region after they are copied from a source region.&lt;/p&gt;
function M.ClusterSnapshotCopyStatus(SnapshotCopyGrantName, DestinationRegion, RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotCopyStatus")
	local t = { 
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
		["DestinationRegion"] = DestinationRegion,
		["RetentionPeriod"] = RetentionPeriod,
	}
	M.AssertClusterSnapshotCopyStatus(t)
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
-- &lt;p&gt;A tag consisting of a name/value pair for a resource.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;The value for the resource tag.&lt;/p&gt;
-- @param Key [String] &lt;p&gt;The key, or name, for the resource tag.&lt;/p&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local ClusterSubnetGroupMessage_keys = { "Marker" = true, "ClusterSubnetGroups" = true, nil }

function M.AssertClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ClusterSubnetGroups"] then M.AssertClusterSubnetGroups(struct["ClusterSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSubnetGroupMessage_keys[k], "ClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusterSubnetGroups&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ClusterSubnetGroups [ClusterSubnetGroups] &lt;p&gt;A list of &lt;a&gt;ClusterSubnetGroup&lt;/a&gt; instances. &lt;/p&gt;
function M.ClusterSubnetGroupMessage(Marker, ClusterSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["ClusterSubnetGroups"] = ClusterSubnetGroups,
	}
	M.AssertClusterSubnetGroupMessage(t)
	return t
end

local Event_keys = { "EventId" = true, "EventCategories" = true, "SourceType" = true, "Date" = true, "Message" = true, "SourceIdentifier" = true, "Severity" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then M.AssertString(struct["EventId"]) end
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	if struct["Date"] then M.AssertTStamp(struct["Date"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["Severity"] then M.AssertString(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p&gt;Describes an event.&lt;/p&gt;
-- @param EventId [String] &lt;p&gt;The identifier of the event.&lt;/p&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;A list of the event categories.&lt;/p&gt; &lt;p&gt;Values: Configuration, Management, Monitoring, Security&lt;/p&gt;
-- @param SourceType [SourceType] &lt;p&gt;The source type for this event.&lt;/p&gt;
-- @param Date [TStamp] &lt;p&gt;The date and time of the event.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The text of this event.&lt;/p&gt;
-- @param SourceIdentifier [String] &lt;p&gt;The identifier for the source of the event.&lt;/p&gt;
-- @param Severity [String] &lt;p&gt;The severity of the event.&lt;/p&gt; &lt;p&gt;Values: ERROR, INFO&lt;/p&gt;
function M.Event(EventId, EventCategories, SourceType, Date, Message, SourceIdentifier, Severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = EventId,
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
		["Date"] = Date,
		["Message"] = Message,
		["SourceIdentifier"] = SourceIdentifier,
		["Severity"] = Severity,
	}
	M.AssertEvent(t)
	return t
end

local DisableLoggingMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertDisableLoggingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableLoggingMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DisableLoggingMessage_keys[k], "DisableLoggingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableLoggingMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster on which logging is to be stopped.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;examplecluster&lt;/code&gt; &lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.DisableLoggingMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableLoggingMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertDisableLoggingMessage(t)
	return t
end

local SubscriptionNotFoundFault_keys = { nil }

function M.AssertSubscriptionNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscriptionNotFoundFault_keys[k], "SubscriptionNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionNotFoundFault
-- &lt;p&gt;An Amazon Redshift event notification subscription with the specified name does not exist.&lt;/p&gt;
function M.SubscriptionNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionNotFoundFault(t)
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
-- &lt;p&gt;The requested subnet is not valid, or not all of the subnets are in the same VPC.&lt;/p&gt;
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	M.AssertInvalidSubnet(t)
	return t
end

local ClusterSecurityGroupQuotaExceededFault_keys = { nil }

function M.AssertClusterSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroupQuotaExceededFault_keys[k], "ClusterSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupQuotaExceededFault
-- &lt;p&gt;The request would result in the user exceeding the allowed number of cluster security groups. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ClusterSecurityGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterSecurityGroupQuotaExceededFault(t)
	return t
end

local ReservedNodeOfferingNotFoundFault_keys = { nil }

function M.AssertReservedNodeOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedNodeOfferingNotFoundFault_keys[k], "ReservedNodeOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOfferingNotFoundFault
-- &lt;p&gt;Specified offering does not exist.&lt;/p&gt;
function M.ReservedNodeOfferingNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOfferingNotFoundFault")
	local t = { 
	}
	M.AssertReservedNodeOfferingNotFoundFault(t)
	return t
end

local CreateClusterMessage_keys = { "ClusterParameterGroupName" = true, "PubliclyAccessible" = true, "MasterUsername" = true, "VpcSecurityGroupIds" = true, "NumberOfNodes" = true, "ClusterVersion" = true, "Tags" = true, "AutomatedSnapshotRetentionPeriod" = true, "EnhancedVpcRouting" = true, "DBName" = true, "PreferredMaintenanceWindow" = true, "AdditionalInfo" = true, "ClusterType" = true, "IamRoles" = true, "AllowVersionUpgrade" = true, "HsmConfigurationIdentifier" = true, "ClusterSecurityGroups" = true, "ClusterIdentifier" = true, "HsmClientCertificateIdentifier" = true, "AvailabilityZone" = true, "NodeType" = true, "ElasticIp" = true, "Encrypted" = true, "MasterUserPassword" = true, "KmsKeyId" = true, "Port" = true, "ClusterSubnetGroupName" = true, nil }

function M.AssertCreateClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["NodeType"], "Expected key NodeType to exist in table")
	assert(struct["MasterUsername"], "Expected key MasterUsername to exist in table")
	assert(struct["MasterUserPassword"], "Expected key MasterUserPassword to exist in table")
	if struct["ClusterParameterGroupName"] then M.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["NumberOfNodes"] then M.AssertIntegerOptional(struct["NumberOfNodes"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then M.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AdditionalInfo"] then M.AssertString(struct["AdditionalInfo"]) end
	if struct["ClusterType"] then M.AssertString(struct["ClusterType"]) end
	if struct["IamRoles"] then M.AssertIamRoleArnList(struct["IamRoles"]) end
	if struct["AllowVersionUpgrade"] then M.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["ClusterSecurityGroups"] then M.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	if struct["Encrypted"] then M.AssertBooleanOptional(struct["Encrypted"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterMessage_keys[k], "CreateClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterMessage
-- &lt;p/&gt;
-- @param ClusterParameterGroupName [String] &lt;p&gt;The name of the parameter group to be associated with this cluster.&lt;/p&gt; &lt;p&gt;Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html&quot;&gt;Working with Amazon Redshift Parameter Groups&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PubliclyAccessible [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the cluster can be accessed from a public network. &lt;/p&gt;
-- @param MasterUsername [String] &lt;p&gt;The user name associated with the master user account for the cluster that is being created.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 - 128 alphanumeric characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot be a reserved word. A list of reserved words can be found in &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html&quot;&gt;Reserved Words&lt;/a&gt; in the Amazon Redshift Database Developer Guide. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] &lt;p&gt;A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.&lt;/p&gt; &lt;p&gt;Default: The default VPC security group is associated with the cluster.&lt;/p&gt;
-- @param NumberOfNodes [IntegerOptional] &lt;p&gt;The number of compute nodes in the cluster. This parameter is required when the &lt;b&gt;ClusterType&lt;/b&gt; parameter is specified as &lt;code&gt;multi-node&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;For information about determining how many nodes you need, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes&quot;&gt; Working with Clusters&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt; &lt;p&gt;If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;1&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: Value must be at least 1 and no more than 100.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version of the Amazon Redshift engine software that you want to deploy on the cluster.&lt;/p&gt; &lt;p&gt;The version selected runs on all the nodes in the cluster.&lt;/p&gt; &lt;p&gt;Constraints: Only version 1.0 is currently available.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;1.0&lt;/code&gt; &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param AutomatedSnapshotRetentionPeriod [IntegerOptional] &lt;p&gt;The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with &lt;a&gt;CreateClusterSnapshot&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;1&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: Must be a value from 0 to 35.&lt;/p&gt;
-- @param EnhancedVpcRouting [BooleanOptional] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param DBName [String] &lt;p&gt;The name of the first database to be created when the cluster is created.&lt;/p&gt; &lt;p&gt;To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html&quot;&gt;Create a Database&lt;/a&gt; in the Amazon Redshift Database Developer Guide. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;dev&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain 1 to 64 alphanumeric characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain only lowercase letters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot be a word that is reserved by the service. A list of reserved words can be found in &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html&quot;&gt;Reserved Words&lt;/a&gt; in the Amazon Redshift Database Developer Guide. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range (in UTC) during which automated cluster maintenance can occur.&lt;/p&gt; &lt;p&gt; Format: &lt;code&gt;ddd:hh24:mi-ddd:hh24:mi&lt;/code&gt; &lt;/p&gt; &lt;p&gt; Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows&quot;&gt;Maintenance Windows&lt;/a&gt; in Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun&lt;/p&gt; &lt;p&gt;Constraints: Minimum 30-minute window.&lt;/p&gt;
-- @param AdditionalInfo [String] &lt;p&gt;Reserved.&lt;/p&gt;
-- @param ClusterType [String] &lt;p&gt;The type of the cluster. When cluster type is specified as&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;single-node&lt;/code&gt;, the &lt;b&gt;NumberOfNodes&lt;/b&gt; parameter is not required.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;multi-node&lt;/code&gt;, the &lt;b&gt;NumberOfNodes&lt;/b&gt; parameter is required.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Valid Values: &lt;code&gt;multi-node&lt;/code&gt; | &lt;code&gt;single-node&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;multi-node&lt;/code&gt; &lt;/p&gt;
-- @param IamRoles [IamRoleArnList] &lt;p&gt;A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.&lt;/p&gt; &lt;p&gt;A cluster can have up to 10 IAM roles associated with it at any time.&lt;/p&gt;
-- @param AllowVersionUpgrade [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.&lt;/p&gt; &lt;p&gt;When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;true&lt;/code&gt; &lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.&lt;/p&gt;
-- @param ClusterSecurityGroups [ClusterSecurityGroupNameList] &lt;p&gt;A list of security groups to be associated with this cluster.&lt;/p&gt; &lt;p&gt;Default: The default cluster security group for Amazon Redshift.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alphabetic characters must be lowercase.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all clusters within an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;myexamplecluster&lt;/code&gt; &lt;/p&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.&lt;/p&gt; &lt;p&gt;Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;us-east-1d&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraint: The specified Availability Zone must be in the same region as the current endpoint.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type to be provisioned for the cluster. For information about node types, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes&quot;&gt; Working with Clusters&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;ds1.xlarge&lt;/code&gt; | &lt;code&gt;ds1.8xlarge&lt;/code&gt; | &lt;code&gt;ds2.xlarge&lt;/code&gt; | &lt;code&gt;ds2.8xlarge&lt;/code&gt; | &lt;code&gt;dc1.large&lt;/code&gt; | &lt;code&gt;dc1.8xlarge&lt;/code&gt;. &lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The Elastic IP (EIP) address for the cluster.&lt;/p&gt; &lt;p&gt;Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms&quot;&gt;Supported Platforms to Launch Your Cluster&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt;
-- @param Encrypted [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the data in the cluster is encrypted at rest. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param MasterUserPassword [String] &lt;p&gt;The password associated with the master user account for the cluster that is being created.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be between 8 and 64 characters in length.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain at least one uppercase letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain at least one lowercase letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain one number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), &quot; (double quote), \, /, @, or space.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param KmsKeyId [String] &lt;p&gt;The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.&lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port number on which the cluster accepts incoming connections.&lt;/p&gt; &lt;p&gt;The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections.&lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;5439&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;1150-65535&lt;/code&gt; &lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of a cluster subnet group to be associated with this cluster.&lt;/p&gt; &lt;p&gt;If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).&lt;/p&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: NodeType
-- Required parameter: MasterUsername
-- Required parameter: MasterUserPassword
function M.CreateClusterMessage(ClusterParameterGroupName, PubliclyAccessible, MasterUsername, VpcSecurityGroupIds, NumberOfNodes, ClusterVersion, Tags, AutomatedSnapshotRetentionPeriod, EnhancedVpcRouting, DBName, PreferredMaintenanceWindow, AdditionalInfo, ClusterType, IamRoles, AllowVersionUpgrade, HsmConfigurationIdentifier, ClusterSecurityGroups, ClusterIdentifier, HsmClientCertificateIdentifier, AvailabilityZone, NodeType, ElasticIp, Encrypted, MasterUserPassword, KmsKeyId, Port, ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterMessage")
	local t = { 
		["ClusterParameterGroupName"] = ClusterParameterGroupName,
		["PubliclyAccessible"] = PubliclyAccessible,
		["MasterUsername"] = MasterUsername,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["NumberOfNodes"] = NumberOfNodes,
		["ClusterVersion"] = ClusterVersion,
		["Tags"] = Tags,
		["AutomatedSnapshotRetentionPeriod"] = AutomatedSnapshotRetentionPeriod,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["DBName"] = DBName,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["AdditionalInfo"] = AdditionalInfo,
		["ClusterType"] = ClusterType,
		["IamRoles"] = IamRoles,
		["AllowVersionUpgrade"] = AllowVersionUpgrade,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
		["ClusterSecurityGroups"] = ClusterSecurityGroups,
		["ClusterIdentifier"] = ClusterIdentifier,
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["AvailabilityZone"] = AvailabilityZone,
		["NodeType"] = NodeType,
		["ElasticIp"] = ElasticIp,
		["Encrypted"] = Encrypted,
		["MasterUserPassword"] = MasterUserPassword,
		["KmsKeyId"] = KmsKeyId,
		["Port"] = Port,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
	}
	M.AssertCreateClusterMessage(t)
	return t
end

local ClusterSnapshotQuotaExceededFault_keys = { nil }

function M.AssertClusterSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSnapshotQuotaExceededFault_keys[k], "ClusterSnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotQuotaExceededFault
-- &lt;p&gt;The request would result in the user exceeding the allowed number of cluster snapshots.&lt;/p&gt;
function M.ClusterSnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterSnapshotQuotaExceededFault(t)
	return t
end

local DeleteTagsMessage_keys = { "ResourceName" = true, "TagKeys" = true, nil }

function M.AssertDeleteTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsMessage_keys[k], "DeleteTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsMessage
-- &lt;p&gt;Contains the output from the &lt;code&gt;DeleteTags&lt;/code&gt; action. &lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, &lt;code&gt;arn:aws:redshift:us-east-1:123456789:cluster:t1&lt;/code&gt;. &lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;The tag key that you want to delete.&lt;/p&gt;
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.DeleteTagsMessage(ResourceName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsMessage")
	local t = { 
		["ResourceName"] = ResourceName,
		["TagKeys"] = TagKeys,
	}
	M.AssertDeleteTagsMessage(t)
	return t
end

local CreateSnapshotCopyGrantResult_keys = { "SnapshotCopyGrant" = true, nil }

function M.AssertCreateSnapshotCopyGrantResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotCopyGrantResult to be of type 'table'")
	if struct["SnapshotCopyGrant"] then M.AssertSnapshotCopyGrant(struct["SnapshotCopyGrant"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotCopyGrantResult_keys[k], "CreateSnapshotCopyGrantResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotCopyGrantResult
--  
-- @param SnapshotCopyGrant [SnapshotCopyGrant]  
function M.CreateSnapshotCopyGrantResult(SnapshotCopyGrant, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotCopyGrantResult")
	local t = { 
		["SnapshotCopyGrant"] = SnapshotCopyGrant,
	}
	M.AssertCreateSnapshotCopyGrantResult(t)
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
-- &lt;p&gt;Describes a connection endpoint.&lt;/p&gt;
-- @param Port [Integer] &lt;p&gt;The port that the database engine is listening on.&lt;/p&gt;
-- @param Address [String] &lt;p&gt;The DNS address of the Cluster.&lt;/p&gt;
function M.Endpoint(Port, Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Port"] = Port,
		["Address"] = Address,
	}
	M.AssertEndpoint(t)
	return t
end

local HsmConfiguration_keys = { "Tags" = true, "HsmIpAddress" = true, "HsmPartitionName" = true, "HsmConfigurationIdentifier" = true, "Description" = true, nil }

function M.AssertHsmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfiguration to be of type 'table'")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["HsmIpAddress"] then M.AssertString(struct["HsmIpAddress"]) end
	if struct["HsmPartitionName"] then M.AssertString(struct["HsmPartitionName"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(HsmConfiguration_keys[k], "HsmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfiguration
-- &lt;p&gt;Returns information about an HSM configuration, which is an object that describes to Amazon Redshift clusters the information they require to connect to an HSM where they can store database encryption keys.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the HSM configuration.&lt;/p&gt;
-- @param HsmIpAddress [String] &lt;p&gt;The IP address that the Amazon Redshift cluster must use to access the HSM.&lt;/p&gt;
-- @param HsmPartitionName [String] &lt;p&gt;The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.&lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;The name of the Amazon Redshift HSM configuration.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A text description of the HSM configuration.&lt;/p&gt;
function M.HsmConfiguration(Tags, HsmIpAddress, HsmPartitionName, HsmConfigurationIdentifier, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfiguration")
	local t = { 
		["Tags"] = Tags,
		["HsmIpAddress"] = HsmIpAddress,
		["HsmPartitionName"] = HsmPartitionName,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
		["Description"] = Description,
	}
	M.AssertHsmConfiguration(t)
	return t
end

local ReservedNode_keys = { "OfferingType" = true, "FixedPrice" = true, "NodeType" = true, "NodeCount" = true, "UsagePrice" = true, "RecurringCharges" = true, "ReservedNodeId" = true, "State" = true, "StartTime" = true, "Duration" = true, "ReservedNodeOfferingId" = true, "CurrencyCode" = true, nil }

function M.AssertReservedNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNode to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["NodeCount"] then M.AssertInteger(struct["NodeCount"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedNodeId"] then M.AssertString(struct["ReservedNodeId"]) end
	if struct["State"] then M.AssertString(struct["State"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["ReservedNodeOfferingId"] then M.AssertString(struct["ReservedNodeOfferingId"]) end
	if struct["CurrencyCode"] then M.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(ReservedNode_keys[k], "ReservedNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNode
-- &lt;p&gt;Describes a reserved node. You can call the &lt;a&gt;DescribeReservedNodeOfferings&lt;/a&gt; API to obtain the available reserved node offerings. &lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The anticipated utilization of the reserved node, as defined in the reserved node offering.&lt;/p&gt;
-- @param FixedPrice [Double] &lt;p&gt;The fixed cost Amazon Redshift charges you for this reserved node.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type of the reserved node.&lt;/p&gt;
-- @param NodeCount [Integer] &lt;p&gt;The number of reserved compute nodes.&lt;/p&gt;
-- @param UsagePrice [Double] &lt;p&gt;The hourly rate Amazon Redshift charges you for this reserved node.&lt;/p&gt;
-- @param RecurringCharges [RecurringChargeList] &lt;p&gt;The recurring charges for the reserved node.&lt;/p&gt;
-- @param ReservedNodeId [String] &lt;p&gt;The unique identifier for the reservation.&lt;/p&gt;
-- @param State [String] &lt;p&gt;The state of the reserved compute node.&lt;/p&gt; &lt;p&gt;Possible Values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;active-This reserved node is owned by the caller and is available for use.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;payment-failed-Payment failed for the purchase attempt.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param StartTime [TStamp] &lt;p&gt;The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.&lt;/p&gt;
-- @param Duration [Integer] &lt;p&gt;The duration of the node reservation in seconds.&lt;/p&gt;
-- @param ReservedNodeOfferingId [String] &lt;p&gt;The identifier for the reserved node offering.&lt;/p&gt;
-- @param CurrencyCode [String] &lt;p&gt;The currency code for the reserved cluster.&lt;/p&gt;
function M.ReservedNode(OfferingType, FixedPrice, NodeType, NodeCount, UsagePrice, RecurringCharges, ReservedNodeId, State, StartTime, Duration, ReservedNodeOfferingId, CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNode")
	local t = { 
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["NodeType"] = NodeType,
		["NodeCount"] = NodeCount,
		["UsagePrice"] = UsagePrice,
		["RecurringCharges"] = RecurringCharges,
		["ReservedNodeId"] = ReservedNodeId,
		["State"] = State,
		["StartTime"] = StartTime,
		["Duration"] = Duration,
		["ReservedNodeOfferingId"] = ReservedNodeOfferingId,
		["CurrencyCode"] = CurrencyCode,
	}
	M.AssertReservedNode(t)
	return t
end

local ResetClusterParameterGroupMessage_keys = { "ResetAllParameters" = true, "ParameterGroupName" = true, "Parameters" = true, nil }

function M.AssertResetClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ResetAllParameters"] then M.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ResetClusterParameterGroupMessage_keys[k], "ResetClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetClusterParameterGroupMessage
-- &lt;p/&gt;
-- @param ResetAllParameters [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, all parameters in the specified parameter group will be reset to their default values. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;true&lt;/code&gt; &lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group to be reset.&lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;An array of names of parameters to be reset. If &lt;i&gt;ResetAllParameters&lt;/i&gt; option is not used, then at least one parameter name must be supplied. &lt;/p&gt; &lt;p&gt;Constraints: A maximum of 20 parameters can be reset in a single request.&lt;/p&gt;
-- Required parameter: ParameterGroupName
function M.ResetClusterParameterGroupMessage(ResetAllParameters, ParameterGroupName, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetClusterParameterGroupMessage")
	local t = { 
		["ResetAllParameters"] = ResetAllParameters,
		["ParameterGroupName"] = ParameterGroupName,
		["Parameters"] = Parameters,
	}
	M.AssertResetClusterParameterGroupMessage(t)
	return t
end

local ModifyClusterResult_keys = { "Cluster" = true, nil }

function M.AssertModifyClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterResult_keys[k], "ModifyClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterResult
--  
-- @param Cluster [Cluster]  
function M.ModifyClusterResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertModifyClusterResult(t)
	return t
end

local InvalidSubscriptionStateFault_keys = { nil }

function M.AssertInvalidSubscriptionStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubscriptionStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSubscriptionStateFault_keys[k], "InvalidSubscriptionStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubscriptionStateFault
-- &lt;p&gt;The subscription request is invalid because it is a duplicate request. This subscription request is already in progress.&lt;/p&gt;
function M.InvalidSubscriptionStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubscriptionStateFault")
	local t = { 
	}
	M.AssertInvalidSubscriptionStateFault(t)
	return t
end

local InProgressTableRestoreQuotaExceededFault_keys = { nil }

function M.AssertInProgressTableRestoreQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InProgressTableRestoreQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InProgressTableRestoreQuotaExceededFault_keys[k], "InProgressTableRestoreQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InProgressTableRestoreQuotaExceededFault
-- &lt;p&gt;You have exceeded the allowed number of table restore requests. Wait for your current table restore requests to complete before making a new request.&lt;/p&gt;
function M.InProgressTableRestoreQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InProgressTableRestoreQuotaExceededFault")
	local t = { 
	}
	M.AssertInProgressTableRestoreQuotaExceededFault(t)
	return t
end

local Parameter_keys = { "Description" = true, "DataType" = true, "IsModifiable" = true, "AllowedValues" = true, "Source" = true, "ParameterValue" = true, "ParameterName" = true, "MinimumEngineVersion" = true, "ApplyType" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then M.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then M.AssertString(struct["MinimumEngineVersion"]) end
	if struct["ApplyType"] then M.AssertParameterApplyType(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- &lt;p&gt;Describes a parameter in a cluster parameter group.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the parameter.&lt;/p&gt;
-- @param DataType [String] &lt;p&gt;The data type of the parameter.&lt;/p&gt;
-- @param IsModifiable [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. &lt;/p&gt;
-- @param AllowedValues [String] &lt;p&gt;The valid range of values for the parameter.&lt;/p&gt;
-- @param Source [String] &lt;p&gt;The source of the parameter value, such as &quot;engine-default&quot; or &quot;user&quot;.&lt;/p&gt;
-- @param ParameterValue [String] &lt;p&gt;The value of the parameter.&lt;/p&gt;
-- @param ParameterName [String] &lt;p&gt;The name of the parameter.&lt;/p&gt;
-- @param MinimumEngineVersion [String] &lt;p&gt;The earliest engine version to which the parameter can apply.&lt;/p&gt;
-- @param ApplyType [ParameterApplyType] &lt;p&gt;Specifies how to apply the WLM configuration parameter. Some properties can be applied dynamically, while other properties require that any associated clusters be rebooted for the configuration changes to be applied. For more information about parameters and parameter groups, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html&quot;&gt;Amazon Redshift Parameter Groups&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;.&lt;/p&gt;
function M.Parameter(Description, DataType, IsModifiable, AllowedValues, Source, ParameterValue, ParameterName, MinimumEngineVersion, ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["Description"] = Description,
		["DataType"] = DataType,
		["IsModifiable"] = IsModifiable,
		["AllowedValues"] = AllowedValues,
		["Source"] = Source,
		["ParameterValue"] = ParameterValue,
		["ParameterName"] = ParameterName,
		["MinimumEngineVersion"] = MinimumEngineVersion,
		["ApplyType"] = ApplyType,
	}
	M.AssertParameter(t)
	return t
end

local CopyClusterSnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertCopyClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(CopyClusterSnapshotResult_keys[k], "CopyClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyClusterSnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.CopyClusterSnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyClusterSnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertCopyClusterSnapshotResult(t)
	return t
end

local ClusterIamRole_keys = { "ApplyStatus" = true, "IamRoleArn" = true, nil }

function M.AssertClusterIamRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterIamRole to be of type 'table'")
	if struct["ApplyStatus"] then M.AssertString(struct["ApplyStatus"]) end
	if struct["IamRoleArn"] then M.AssertString(struct["IamRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(ClusterIamRole_keys[k], "ClusterIamRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterIamRole
-- &lt;p&gt;An AWS Identity and Access Management (IAM) role that can be used by the associated Amazon Redshift cluster to access other AWS services.&lt;/p&gt;
-- @param ApplyStatus [String] &lt;p&gt;A value that describes the status of the IAM role's association with an Amazon Redshift cluster.&lt;/p&gt; &lt;p&gt;The following are possible statuses and descriptions.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;in-sync&lt;/code&gt;: The role is available for use by the cluster.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;adding&lt;/code&gt;: The role is in the process of being associated with the cluster.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;removing&lt;/code&gt;: The role is in the process of being disassociated with the cluster.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param IamRoleArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role, for example, &lt;code&gt;arn:aws:iam::123456789012:role/RedshiftCopyUnload&lt;/code&gt;. &lt;/p&gt;
function M.ClusterIamRole(ApplyStatus, IamRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterIamRole")
	local t = { 
		["ApplyStatus"] = ApplyStatus,
		["IamRoleArn"] = IamRoleArn,
	}
	M.AssertClusterIamRole(t)
	return t
end

local InvalidTableRestoreArgumentFault_keys = { nil }

function M.AssertInvalidTableRestoreArgumentFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTableRestoreArgumentFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTableRestoreArgumentFault_keys[k], "InvalidTableRestoreArgumentFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTableRestoreArgumentFault
-- &lt;p&gt;The value specified for the &lt;code&gt;sourceDatabaseName&lt;/code&gt;, &lt;code&gt;sourceSchemaName&lt;/code&gt;, or &lt;code&gt;sourceTableName&lt;/code&gt; parameter, or a combination of these, doesn't exist in the snapshot.&lt;/p&gt;
function M.InvalidTableRestoreArgumentFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTableRestoreArgumentFault")
	local t = { 
	}
	M.AssertInvalidTableRestoreArgumentFault(t)
	return t
end

local ClusterSubnetQuotaExceededFault_keys = { nil }

function M.AssertClusterSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSubnetQuotaExceededFault_keys[k], "ClusterSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetQuotaExceededFault
-- &lt;p&gt;The request would result in user exceeding the allowed number of subnets in a cluster subnet groups. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ClusterSubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterSubnetQuotaExceededFault(t)
	return t
end

local UnsupportedOptionFault_keys = { nil }

function M.AssertUnsupportedOptionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOptionFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedOptionFault_keys[k], "UnsupportedOptionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOptionFault
-- &lt;p&gt;A request option was specified that is not supported.&lt;/p&gt;
function M.UnsupportedOptionFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOptionFault")
	local t = { 
	}
	M.AssertUnsupportedOptionFault(t)
	return t
end

local RestoreTableFromClusterSnapshotResult_keys = { "TableRestoreStatus" = true, nil }

function M.AssertRestoreTableFromClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromClusterSnapshotResult to be of type 'table'")
	if struct["TableRestoreStatus"] then M.AssertTableRestoreStatus(struct["TableRestoreStatus"]) end
	for k,_ in pairs(struct) do
		assert(RestoreTableFromClusterSnapshotResult_keys[k], "RestoreTableFromClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromClusterSnapshotResult
--  
-- @param TableRestoreStatus [TableRestoreStatus]  
function M.RestoreTableFromClusterSnapshotResult(TableRestoreStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreTableFromClusterSnapshotResult")
	local t = { 
		["TableRestoreStatus"] = TableRestoreStatus,
	}
	M.AssertRestoreTableFromClusterSnapshotResult(t)
	return t
end

local ModifyClusterSubnetGroupMessage_keys = { "SubnetIds" = true, "ClusterSubnetGroupName" = true, "Description" = true, nil }

function M.AssertModifyClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterSubnetGroupMessage_keys[k], "ModifyClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterSubnetGroupMessage
-- &lt;p/&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.&lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the subnet group to be modified.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A text description of the subnet group to be modified.&lt;/p&gt;
-- Required parameter: ClusterSubnetGroupName
-- Required parameter: SubnetIds
function M.ModifyClusterSubnetGroupMessage(SubnetIds, ClusterSubnetGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
		["Description"] = Description,
	}
	M.AssertModifyClusterSubnetGroupMessage(t)
	return t
end

local HsmClientCertificateQuotaExceededFault_keys = { nil }

function M.AssertHsmClientCertificateQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmClientCertificateQuotaExceededFault_keys[k], "HsmClientCertificateQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateQuotaExceededFault
-- &lt;p&gt;The quota for HSM client certificates has been reached. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.HsmClientCertificateQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateQuotaExceededFault")
	local t = { 
	}
	M.AssertHsmClientCertificateQuotaExceededFault(t)
	return t
end

local ModifyClusterIamRolesResult_keys = { "Cluster" = true, nil }

function M.AssertModifyClusterIamRolesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterIamRolesResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterIamRolesResult_keys[k], "ModifyClusterIamRolesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterIamRolesResult
--  
-- @param Cluster [Cluster]  
function M.ModifyClusterIamRolesResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterIamRolesResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertModifyClusterIamRolesResult(t)
	return t
end

local ModifyClusterIamRolesMessage_keys = { "AddIamRoles" = true, "RemoveIamRoles" = true, "ClusterIdentifier" = true, nil }

function M.AssertModifyClusterIamRolesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterIamRolesMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["AddIamRoles"] then M.AssertIamRoleArnList(struct["AddIamRoles"]) end
	if struct["RemoveIamRoles"] then M.AssertIamRoleArnList(struct["RemoveIamRoles"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterIamRolesMessage_keys[k], "ModifyClusterIamRolesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterIamRolesMessage
-- &lt;p/&gt;
-- @param AddIamRoles [IamRoleArnList] &lt;p&gt;Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.&lt;/p&gt;
-- @param RemoveIamRoles [IamRoleArnList] &lt;p&gt;Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster for which you want to associate or disassociate IAM roles.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.ModifyClusterIamRolesMessage(AddIamRoles, RemoveIamRoles, ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterIamRolesMessage")
	local t = { 
		["AddIamRoles"] = AddIamRoles,
		["RemoveIamRoles"] = RemoveIamRoles,
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertModifyClusterIamRolesMessage(t)
	return t
end

local CreateClusterSecurityGroupMessage_keys = { "ClusterSecurityGroupName" = true, "Description" = true, "Tags" = true, nil }

function M.AssertCreateClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSecurityGroupMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSecurityGroupMessage_keys[k], "CreateClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSecurityGroupMessage
-- &lt;p/&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name for the security group. Amazon Redshift stores the value as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain no more than 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must not be &quot;Default&quot;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all security groups that are created by your AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;examplesecuritygroup&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description for the security group.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- Required parameter: ClusterSecurityGroupName
-- Required parameter: Description
function M.CreateClusterSecurityGroupMessage(ClusterSecurityGroupName, Description, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSecurityGroupMessage")
	local t = { 
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
		["Description"] = Description,
		["Tags"] = Tags,
	}
	M.AssertCreateClusterSecurityGroupMessage(t)
	return t
end

local HsmClientCertificateNotFoundFault_keys = { nil }

function M.AssertHsmClientCertificateNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmClientCertificateNotFoundFault_keys[k], "HsmClientCertificateNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateNotFoundFault
-- &lt;p&gt;There is no Amazon Redshift HSM client certificate with the specified identifier.&lt;/p&gt;
function M.HsmClientCertificateNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateNotFoundFault")
	local t = { 
	}
	M.AssertHsmClientCertificateNotFoundFault(t)
	return t
end

local EventSubscriptionQuotaExceededFault_keys = { nil }

function M.AssertEventSubscriptionQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EventSubscriptionQuotaExceededFault_keys[k], "EventSubscriptionQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionQuotaExceededFault
-- &lt;p&gt;The request would exceed the allowed number of event subscriptions for this account. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.EventSubscriptionQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionQuotaExceededFault")
	local t = { 
	}
	M.AssertEventSubscriptionQuotaExceededFault(t)
	return t
end

local DeleteClusterSnapshotMessage_keys = { "SnapshotClusterIdentifier" = true, "SnapshotIdentifier" = true, nil }

function M.AssertDeleteClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	if struct["SnapshotClusterIdentifier"] then M.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterSnapshotMessage_keys[k], "DeleteClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSnapshotMessage
-- &lt;p/&gt;
-- @param SnapshotClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.&lt;/p&gt; &lt;p&gt;Constraints: Must be the name of valid cluster.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The unique identifier of the manual snapshot to be deleted.&lt;/p&gt; &lt;p&gt;Constraints: Must be the name of an existing snapshot that is in the &lt;code&gt;available&lt;/code&gt; state.&lt;/p&gt;
-- Required parameter: SnapshotIdentifier
function M.DeleteClusterSnapshotMessage(SnapshotClusterIdentifier, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSnapshotMessage")
	local t = { 
		["SnapshotClusterIdentifier"] = SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertDeleteClusterSnapshotMessage(t)
	return t
end

local DescribeClusterVersionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "ClusterVersion" = true, "ClusterParameterGroupFamily" = true, nil }

function M.AssertDescribeClusterVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterVersionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["ClusterParameterGroupFamily"] then M.AssertString(struct["ClusterParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterVersionsMessage_keys[k], "DescribeClusterVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterVersionsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterVersions&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The specific cluster version to return.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;1.0&lt;/code&gt; &lt;/p&gt;
-- @param ClusterParameterGroupFamily [String] &lt;p&gt;The name of a specific cluster parameter group family to return details for.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.DescribeClusterVersionsMessage(Marker, MaxRecords, ClusterVersion, ClusterParameterGroupFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterVersionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["ClusterVersion"] = ClusterVersion,
		["ClusterParameterGroupFamily"] = ClusterParameterGroupFamily,
	}
	M.AssertDescribeClusterVersionsMessage(t)
	return t
end

local ClustersMessage_keys = { "Marker" = true, "Clusters" = true, nil }

function M.AssertClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClustersMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Clusters"] then M.AssertClusterList(struct["Clusters"]) end
	for k,_ in pairs(struct) do
		assert(ClustersMessage_keys[k], "ClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClustersMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusters&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param Clusters [ClusterList] &lt;p&gt;A list of &lt;code&gt;Cluster&lt;/code&gt; objects, where each object describes one cluster. &lt;/p&gt;
function M.ClustersMessage(Marker, Clusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClustersMessage")
	local t = { 
		["Marker"] = Marker,
		["Clusters"] = Clusters,
	}
	M.AssertClustersMessage(t)
	return t
end

local AuthorizationQuotaExceededFault_keys = { nil }

function M.AssertAuthorizationQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AuthorizationQuotaExceededFault_keys[k], "AuthorizationQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationQuotaExceededFault
-- &lt;p&gt;The authorization quota for the cluster security group has been reached.&lt;/p&gt;
function M.AuthorizationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationQuotaExceededFault")
	local t = { 
	}
	M.AssertAuthorizationQuotaExceededFault(t)
	return t
end

local DisableSnapshotCopyMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertDisableSnapshotCopyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSnapshotCopyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DisableSnapshotCopyMessage_keys[k], "DisableSnapshotCopyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSnapshotCopyMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region.&lt;/p&gt; &lt;p&gt;Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.DisableSnapshotCopyMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSnapshotCopyMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertDisableSnapshotCopyMessage(t)
	return t
end

local SourceNotFoundFault_keys = { nil }

function M.AssertSourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SourceNotFoundFault_keys[k], "SourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceNotFoundFault
-- &lt;p&gt;The specified Amazon Redshift event source could not be found.&lt;/p&gt;
function M.SourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceNotFoundFault")
	local t = { 
	}
	M.AssertSourceNotFoundFault(t)
	return t
end

local ModifySnapshotCopyRetentionPeriodMessage_keys = { "ClusterIdentifier" = true, "RetentionPeriod" = true, nil }

function M.AssertModifySnapshotCopyRetentionPeriodMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifySnapshotCopyRetentionPeriodMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["RetentionPeriod"], "Expected key RetentionPeriod to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["RetentionPeriod"] then M.AssertInteger(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(ModifySnapshotCopyRetentionPeriodMessage_keys[k], "ModifySnapshotCopyRetentionPeriodMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifySnapshotCopyRetentionPeriodMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster for which you want to change the retention period for automated snapshots that are copied to a destination region.&lt;/p&gt; &lt;p&gt;Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.&lt;/p&gt;
-- @param RetentionPeriod [Integer] &lt;p&gt;The number of days to retain automated snapshots in the destination region after they are copied from the source region.&lt;/p&gt; &lt;p&gt;If you decrease the retention period for automated snapshots that are copied to a destination region, Amazon Redshift will delete any existing automated snapshots that were copied to the destination region and that fall outside of the new retention period.&lt;/p&gt; &lt;p&gt;Constraints: Must be at least 1 and no more than 35.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: RetentionPeriod
function M.ModifySnapshotCopyRetentionPeriodMessage(ClusterIdentifier, RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifySnapshotCopyRetentionPeriodMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
		["RetentionPeriod"] = RetentionPeriod,
	}
	M.AssertModifySnapshotCopyRetentionPeriodMessage(t)
	return t
end

local DisableSnapshotCopyResult_keys = { "Cluster" = true, nil }

function M.AssertDisableSnapshotCopyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSnapshotCopyResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(DisableSnapshotCopyResult_keys[k], "DisableSnapshotCopyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSnapshotCopyResult
--  
-- @param Cluster [Cluster]  
function M.DisableSnapshotCopyResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSnapshotCopyResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertDisableSnapshotCopyResult(t)
	return t
end

local DeleteClusterSnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertDeleteClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterSnapshotResult_keys[k], "DeleteClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.DeleteClusterSnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertDeleteClusterSnapshotResult(t)
	return t
end

local CreateHsmConfigurationMessage_keys = { "HsmPartitionName" = true, "Description" = true, "Tags" = true, "HsmPartitionPassword" = true, "HsmConfigurationIdentifier" = true, "HsmIpAddress" = true, "HsmServerPublicCertificate" = true, nil }

function M.AssertCreateHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmConfigurationMessage to be of type 'table'")
	assert(struct["HsmConfigurationIdentifier"], "Expected key HsmConfigurationIdentifier to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["HsmIpAddress"], "Expected key HsmIpAddress to exist in table")
	assert(struct["HsmPartitionName"], "Expected key HsmPartitionName to exist in table")
	assert(struct["HsmPartitionPassword"], "Expected key HsmPartitionPassword to exist in table")
	assert(struct["HsmServerPublicCertificate"], "Expected key HsmServerPublicCertificate to exist in table")
	if struct["HsmPartitionName"] then M.AssertString(struct["HsmPartitionName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["HsmPartitionPassword"] then M.AssertString(struct["HsmPartitionPassword"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["HsmIpAddress"] then M.AssertString(struct["HsmIpAddress"]) end
	if struct["HsmServerPublicCertificate"] then M.AssertString(struct["HsmServerPublicCertificate"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmConfigurationMessage_keys[k], "CreateHsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmConfigurationMessage
-- &lt;p/&gt;
-- @param HsmPartitionName [String] &lt;p&gt;The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A text description of the HSM configuration to be created.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param HsmPartitionPassword [String] &lt;p&gt;The password required to access the HSM partition.&lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;The identifier to be assigned to the new Amazon Redshift HSM configuration.&lt;/p&gt;
-- @param HsmIpAddress [String] &lt;p&gt;The IP address that the Amazon Redshift cluster must use to access the HSM.&lt;/p&gt;
-- @param HsmServerPublicCertificate [String] &lt;p&gt;The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.&lt;/p&gt;
-- Required parameter: HsmConfigurationIdentifier
-- Required parameter: Description
-- Required parameter: HsmIpAddress
-- Required parameter: HsmPartitionName
-- Required parameter: HsmPartitionPassword
-- Required parameter: HsmServerPublicCertificate
function M.CreateHsmConfigurationMessage(HsmPartitionName, Description, Tags, HsmPartitionPassword, HsmConfigurationIdentifier, HsmIpAddress, HsmServerPublicCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmConfigurationMessage")
	local t = { 
		["HsmPartitionName"] = HsmPartitionName,
		["Description"] = Description,
		["Tags"] = Tags,
		["HsmPartitionPassword"] = HsmPartitionPassword,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
		["HsmIpAddress"] = HsmIpAddress,
		["HsmServerPublicCertificate"] = HsmServerPublicCertificate,
	}
	M.AssertCreateHsmConfigurationMessage(t)
	return t
end

local EC2SecurityGroup_keys = { "Status" = true, "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "Tags" = true, nil }

function M.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(EC2SecurityGroup_keys[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- &lt;p&gt;Describes an Amazon EC2 security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the EC2 security group.&lt;/p&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The name of the EC2 Security Group.&lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS ID of the owner of the EC2 security group specified in the &lt;code&gt;EC2SecurityGroupName&lt;/code&gt; field. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the EC2 security group.&lt;/p&gt;
function M.EC2SecurityGroup(Status, EC2SecurityGroupName, EC2SecurityGroupOwnerId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2SecurityGroup")
	local t = { 
		["Status"] = Status,
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["Tags"] = Tags,
	}
	M.AssertEC2SecurityGroup(t)
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
-- &lt;p&gt;Describes a recurring charge.&lt;/p&gt;
-- @param RecurringChargeAmount [Double] &lt;p&gt;The amount charged per the period of time specified by the recurring charge frequency.&lt;/p&gt;
-- @param RecurringChargeFrequency [String] &lt;p&gt;The frequency at which the recurring charge amount is applied.&lt;/p&gt;
function M.RecurringCharge(RecurringChargeAmount, RecurringChargeFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["RecurringChargeAmount"] = RecurringChargeAmount,
		["RecurringChargeFrequency"] = RecurringChargeFrequency,
	}
	M.AssertRecurringCharge(t)
	return t
end

local EventCategoriesMessage_keys = { "EventCategoriesMapList" = true, nil }

function M.AssertEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMessage to be of type 'table'")
	if struct["EventCategoriesMapList"] then M.AssertEventCategoriesMapList(struct["EventCategoriesMapList"]) end
	for k,_ in pairs(struct) do
		assert(EventCategoriesMessage_keys[k], "EventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMessage
-- &lt;p/&gt;
-- @param EventCategoriesMapList [EventCategoriesMapList] &lt;p&gt;A list of event categories descriptions.&lt;/p&gt;
function M.EventCategoriesMessage(EventCategoriesMapList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMessage")
	local t = { 
		["EventCategoriesMapList"] = EventCategoriesMapList,
	}
	M.AssertEventCategoriesMessage(t)
	return t
end

local PendingModifiedValues_keys = { "ClusterVersion" = true, "PubliclyAccessible" = true, "EnhancedVpcRouting" = true, "ClusterType" = true, "MasterUserPassword" = true, "AutomatedSnapshotRetentionPeriod" = true, "NodeType" = true, "ClusterIdentifier" = true, "NumberOfNodes" = true, nil }

function M.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["ClusterType"] then M.AssertString(struct["ClusterType"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then M.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["NumberOfNodes"] then M.AssertIntegerOptional(struct["NumberOfNodes"]) end
	for k,_ in pairs(struct) do
		assert(PendingModifiedValues_keys[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- &lt;p&gt;Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The pending or in-progress change of the service version.&lt;/p&gt;
-- @param PubliclyAccessible [BooleanOptional] &lt;p&gt;The pending or in-progress change of the ability to connect to the cluster from the public network.&lt;/p&gt;
-- @param EnhancedVpcRouting [BooleanOptional] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param ClusterType [String] &lt;p&gt;The pending or in-progress change of the cluster type.&lt;/p&gt;
-- @param MasterUserPassword [String] &lt;p&gt;The pending or in-progress change of the master user password for the cluster.&lt;/p&gt;
-- @param AutomatedSnapshotRetentionPeriod [IntegerOptional] &lt;p&gt;The pending or in-progress change of the automated snapshot retention period.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The pending or in-progress change of the cluster's node type.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The pending or in-progress change of the new identifier for the cluster.&lt;/p&gt;
-- @param NumberOfNodes [IntegerOptional] &lt;p&gt;The pending or in-progress change of the number of nodes in the cluster.&lt;/p&gt;
function M.PendingModifiedValues(ClusterVersion, PubliclyAccessible, EnhancedVpcRouting, ClusterType, MasterUserPassword, AutomatedSnapshotRetentionPeriod, NodeType, ClusterIdentifier, NumberOfNodes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingModifiedValues")
	local t = { 
		["ClusterVersion"] = ClusterVersion,
		["PubliclyAccessible"] = PubliclyAccessible,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["ClusterType"] = ClusterType,
		["MasterUserPassword"] = MasterUserPassword,
		["AutomatedSnapshotRetentionPeriod"] = AutomatedSnapshotRetentionPeriod,
		["NodeType"] = NodeType,
		["ClusterIdentifier"] = ClusterIdentifier,
		["NumberOfNodes"] = NumberOfNodes,
	}
	M.AssertPendingModifiedValues(t)
	return t
end

local GetClusterCredentialsMessage_keys = { "DbGroups" = true, "AutoCreate" = true, "DurationSeconds" = true, "DbUser" = true, "ClusterIdentifier" = true, "DbName" = true, nil }

function M.AssertGetClusterCredentialsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClusterCredentialsMessage to be of type 'table'")
	assert(struct["DbUser"], "Expected key DbUser to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["DbGroups"] then M.AssertDbGroupList(struct["DbGroups"]) end
	if struct["AutoCreate"] then M.AssertBooleanOptional(struct["AutoCreate"]) end
	if struct["DurationSeconds"] then M.AssertIntegerOptional(struct["DurationSeconds"]) end
	if struct["DbUser"] then M.AssertString(struct["DbUser"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["DbName"] then M.AssertString(struct["DbName"]) end
	for k,_ in pairs(struct) do
		assert(GetClusterCredentialsMessage_keys[k], "GetClusterCredentialsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClusterCredentialsMessage
-- &lt;p&gt;The request parameters to get cluster credentials.&lt;/p&gt;
-- @param DbGroups [DbGroupList] &lt;p&gt;A list of the names of existing database groups that &lt;code&gt;DbUser&lt;/code&gt; will join for the current session. If not specified, the new user is added only to PUBLIC.&lt;/p&gt;
-- @param AutoCreate [BooleanOptional] &lt;p&gt;Create a database user with the name specified for &lt;code&gt;DbUser&lt;/code&gt; if one does not exist.&lt;/p&gt;
-- @param DurationSeconds [IntegerOptional] &lt;p&gt;The number of seconds until the returned temporary password expires.&lt;/p&gt; &lt;p&gt;Constraint: minimum 900, maximum 3600.&lt;/p&gt; &lt;p&gt;Default: 900&lt;/p&gt;
-- @param DbUser [String] &lt;p&gt;The name of a database user. If a user name matching &lt;code&gt;DbUser&lt;/code&gt; exists in the database, the temporary user credentials have the same permissions as the existing user. If &lt;code&gt;DbUser&lt;/code&gt; doesn't exist in the database and &lt;code&gt;Autocreate&lt;/code&gt; is &lt;code&gt;True&lt;/code&gt;, a new user is created using the value for &lt;code&gt;DbUser&lt;/code&gt; with PUBLIC permissions. If a database user matching the value for &lt;code&gt;DbUser&lt;/code&gt; doesn't exist and &lt;code&gt;Autocreate&lt;/code&gt; is &lt;code&gt;False&lt;/code&gt;, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/http:/docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html&quot;&gt;CREATE USER&lt;/a&gt; in the Amazon Redshift Database Developer Guide. &lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 128 alphanumeric characters or hyphens&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain only lowercase letters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must not contain a colon ( : ) or slash ( / ). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot be a reserved word. A list of reserved words can be found in &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html&quot;&gt;Reserved Words&lt;/a&gt; in the Amazon Redshift Database Developer Guide.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.&lt;/p&gt;
-- @param DbName [String] &lt;p&gt;The name of a database that &lt;code&gt;DbUser&lt;/code&gt; is authorized to log on to. If &lt;code&gt;DbName&lt;/code&gt; is not specified, &lt;code&gt;DbUser&lt;/code&gt; can log in to any existing database.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 64 alphanumeric characters or hyphens&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain only lowercase letters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot be a reserved word. A list of reserved words can be found in &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html&quot;&gt;Reserved Words&lt;/a&gt; in the Amazon Redshift Database Developer Guide.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: DbUser
-- Required parameter: ClusterIdentifier
function M.GetClusterCredentialsMessage(DbGroups, AutoCreate, DurationSeconds, DbUser, ClusterIdentifier, DbName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetClusterCredentialsMessage")
	local t = { 
		["DbGroups"] = DbGroups,
		["AutoCreate"] = AutoCreate,
		["DurationSeconds"] = DurationSeconds,
		["DbUser"] = DbUser,
		["ClusterIdentifier"] = ClusterIdentifier,
		["DbName"] = DbName,
	}
	M.AssertGetClusterCredentialsMessage(t)
	return t
end

local EventInfoMap_keys = { "EventId" = true, "EventCategories" = true, "Severity" = true, "EventDescription" = true, nil }

function M.AssertEventInfoMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventInfoMap to be of type 'table'")
	if struct["EventId"] then M.AssertString(struct["EventId"]) end
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then M.AssertString(struct["Severity"]) end
	if struct["EventDescription"] then M.AssertString(struct["EventDescription"]) end
	for k,_ in pairs(struct) do
		assert(EventInfoMap_keys[k], "EventInfoMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventInfoMap
-- &lt;p&gt;Describes event information.&lt;/p&gt;
-- @param EventId [String] &lt;p&gt;The identifier of an Amazon Redshift event.&lt;/p&gt;
-- @param EventCategories [EventCategoriesList] &lt;p&gt;The category of an Amazon Redshift event.&lt;/p&gt;
-- @param Severity [String] &lt;p&gt;The severity of the event.&lt;/p&gt; &lt;p&gt;Values: ERROR, INFO&lt;/p&gt;
-- @param EventDescription [String] &lt;p&gt;The description of an Amazon Redshift event.&lt;/p&gt;
function M.EventInfoMap(EventId, EventCategories, Severity, EventDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventInfoMap")
	local t = { 
		["EventId"] = EventId,
		["EventCategories"] = EventCategories,
		["Severity"] = Severity,
		["EventDescription"] = EventDescription,
	}
	M.AssertEventInfoMap(t)
	return t
end

local DeleteSnapshotCopyGrantMessage_keys = { "SnapshotCopyGrantName" = true, nil }

function M.AssertDeleteSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotCopyGrantMessage to be of type 'table'")
	assert(struct["SnapshotCopyGrantName"], "Expected key SnapshotCopyGrantName to exist in table")
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSnapshotCopyGrantMessage_keys[k], "DeleteSnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotCopyGrantMessage
-- &lt;p&gt;The result of the &lt;code&gt;DeleteSnapshotCopyGrant&lt;/code&gt; action.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant to delete.&lt;/p&gt;
-- Required parameter: SnapshotCopyGrantName
function M.DeleteSnapshotCopyGrantMessage(SnapshotCopyGrantName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotCopyGrantMessage")
	local t = { 
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
	}
	M.AssertDeleteSnapshotCopyGrantMessage(t)
	return t
end

local InvalidClusterSubnetStateFault_keys = { nil }

function M.AssertInvalidClusterSubnetStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSubnetStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterSubnetStateFault_keys[k], "InvalidClusterSubnetStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSubnetStateFault
-- &lt;p&gt;The state of the subnet is invalid.&lt;/p&gt;
function M.InvalidClusterSubnetStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSubnetStateFault")
	local t = { 
	}
	M.AssertInvalidClusterSubnetStateFault(t)
	return t
end

local UnauthorizedOperation_keys = { nil }

function M.AssertUnauthorizedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnauthorizedOperation_keys[k], "UnauthorizedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperation
-- &lt;p&gt;Your account is not authorized to perform the requested operation.&lt;/p&gt;
function M.UnauthorizedOperation(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperation")
	local t = { 
	}
	M.AssertUnauthorizedOperation(t)
	return t
end

local RestoreFromClusterSnapshotResult_keys = { "Cluster" = true, nil }

function M.AssertRestoreFromClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromClusterSnapshotResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(RestoreFromClusterSnapshotResult_keys[k], "RestoreFromClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromClusterSnapshotResult
--  
-- @param Cluster [Cluster]  
function M.RestoreFromClusterSnapshotResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromClusterSnapshotResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertRestoreFromClusterSnapshotResult(t)
	return t
end

local DescribeDefaultClusterParametersMessage_keys = { "Marker" = true, "ParameterGroupFamily" = true, "MaxRecords" = true, nil }

function M.AssertDescribeDefaultClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultClusterParametersMessage to be of type 'table'")
	assert(struct["ParameterGroupFamily"], "Expected key ParameterGroupFamily to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ParameterGroupFamily"] then M.AssertString(struct["ParameterGroupFamily"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDefaultClusterParametersMessage_keys[k], "DescribeDefaultClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultClusterParametersMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeDefaultClusterParameters&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param ParameterGroupFamily [String] &lt;p&gt;The name of the cluster parameter group family.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- Required parameter: ParameterGroupFamily
function M.DescribeDefaultClusterParametersMessage(Marker, ParameterGroupFamily, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultClusterParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["ParameterGroupFamily"] = ParameterGroupFamily,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeDefaultClusterParametersMessage(t)
	return t
end

local EventSubscriptionsMessage_keys = { "Marker" = true, "EventSubscriptionsList" = true, nil }

function M.AssertEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["EventSubscriptionsList"] then M.AssertEventSubscriptionsList(struct["EventSubscriptionsList"]) end
	for k,_ in pairs(struct) do
		assert(EventSubscriptionsMessage_keys[k], "EventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param EventSubscriptionsList [EventSubscriptionsList] &lt;p&gt;A list of event subscriptions.&lt;/p&gt;
function M.EventSubscriptionsMessage(Marker, EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["EventSubscriptionsList"] = EventSubscriptionsList,
	}
	M.AssertEventSubscriptionsMessage(t)
	return t
end

local CreateHsmClientCertificateResult_keys = { "HsmClientCertificate" = true, nil }

function M.AssertCreateHsmClientCertificateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmClientCertificateResult to be of type 'table'")
	if struct["HsmClientCertificate"] then M.AssertHsmClientCertificate(struct["HsmClientCertificate"]) end
	for k,_ in pairs(struct) do
		assert(CreateHsmClientCertificateResult_keys[k], "CreateHsmClientCertificateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmClientCertificateResult
--  
-- @param HsmClientCertificate [HsmClientCertificate]  
function M.CreateHsmClientCertificateResult(HsmClientCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmClientCertificateResult")
	local t = { 
		["HsmClientCertificate"] = HsmClientCertificate,
	}
	M.AssertCreateHsmClientCertificateResult(t)
	return t
end

local RestoreFromClusterSnapshotMessage_keys = { "ClusterParameterGroupName" = true, "PubliclyAccessible" = true, "OwnerAccount" = true, "VpcSecurityGroupIds" = true, "SnapshotClusterIdentifier" = true, "AutomatedSnapshotRetentionPeriod" = true, "EnhancedVpcRouting" = true, "PreferredMaintenanceWindow" = true, "AdditionalInfo" = true, "IamRoles" = true, "AllowVersionUpgrade" = true, "HsmConfigurationIdentifier" = true, "ClusterSecurityGroups" = true, "ClusterIdentifier" = true, "HsmClientCertificateIdentifier" = true, "AvailabilityZone" = true, "NodeType" = true, "ElasticIp" = true, "KmsKeyId" = true, "SnapshotIdentifier" = true, "Port" = true, "ClusterSubnetGroupName" = true, nil }

function M.AssertRestoreFromClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromClusterSnapshotMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	if struct["ClusterParameterGroupName"] then M.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["OwnerAccount"] then M.AssertString(struct["OwnerAccount"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["SnapshotClusterIdentifier"] then M.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then M.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AdditionalInfo"] then M.AssertString(struct["AdditionalInfo"]) end
	if struct["IamRoles"] then M.AssertIamRoleArnList(struct["IamRoles"]) end
	if struct["AllowVersionUpgrade"] then M.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["ClusterSecurityGroups"] then M.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(RestoreFromClusterSnapshotMessage_keys[k], "RestoreFromClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromClusterSnapshotMessage
-- &lt;p/&gt;
-- @param ClusterParameterGroupName [String] &lt;p&gt;The name of the parameter group to be associated with this cluster.&lt;/p&gt; &lt;p&gt;Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html&quot;&gt;Working with Amazon Redshift Parameter Groups&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PubliclyAccessible [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the cluster can be accessed from a public network. &lt;/p&gt;
-- @param OwnerAccount [String] &lt;p&gt;The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.&lt;/p&gt;
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] &lt;p&gt;A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.&lt;/p&gt; &lt;p&gt;Default: The default VPC security group is associated with the cluster.&lt;/p&gt; &lt;p&gt;VPC security groups only apply to clusters in VPCs.&lt;/p&gt;
-- @param SnapshotClusterIdentifier [String] &lt;p&gt;The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.&lt;/p&gt;
-- @param AutomatedSnapshotRetentionPeriod [IntegerOptional] &lt;p&gt;The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with &lt;a&gt;CreateClusterSnapshot&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;Default: The value selected for the cluster from which the snapshot was taken.&lt;/p&gt; &lt;p&gt;Constraints: Must be a value from 0 to 35.&lt;/p&gt;
-- @param EnhancedVpcRouting [BooleanOptional] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range (in UTC) during which automated cluster maintenance can occur.&lt;/p&gt; &lt;p&gt; Format: &lt;code&gt;ddd:hh24:mi-ddd:hh24:mi&lt;/code&gt; &lt;/p&gt; &lt;p&gt; Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows&quot;&gt;Maintenance Windows&lt;/a&gt; in Amazon Redshift Cluster Management Guide. &lt;/p&gt; &lt;p&gt;Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun&lt;/p&gt; &lt;p&gt;Constraints: Minimum 30-minute window.&lt;/p&gt;
-- @param AdditionalInfo [String] &lt;p&gt;Reserved.&lt;/p&gt;
-- @param IamRoles [IamRoleArnList] &lt;p&gt;A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.&lt;/p&gt; &lt;p&gt;A cluster can have up to 10 IAM roles associated at any time.&lt;/p&gt;
-- @param AllowVersionUpgrade [BooleanOptional] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;true&lt;/code&gt; &lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.&lt;/p&gt;
-- @param ClusterSecurityGroups [ClusterSecurityGroupNameList] &lt;p&gt;A list of security groups to be associated with this cluster.&lt;/p&gt; &lt;p&gt;Default: The default cluster security group for Amazon Redshift.&lt;/p&gt; &lt;p&gt;Cluster security groups only apply to clusters outside of VPCs.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster that will be created from restoring the snapshot.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alphabetic characters must be lowercase.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all clusters within an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The Amazon EC2 Availability Zone in which to restore the cluster.&lt;/p&gt; &lt;p&gt;Default: A random, system-chosen Availability Zone.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;us-east-1a&lt;/code&gt; &lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type that the restored cluster will be provisioned with.&lt;/p&gt; &lt;p&gt;Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds2.xlarge into ds1.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type. For more information about node types, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes&quot;&gt; About Clusters and Nodes&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt; &lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The elastic IP (EIP) address for the cluster.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;my-snapshot-id&lt;/code&gt; &lt;/p&gt;
-- @param Port [IntegerOptional] &lt;p&gt;The port number on which the cluster accepts connections.&lt;/p&gt; &lt;p&gt;Default: The same port as the original cluster.&lt;/p&gt; &lt;p&gt;Constraints: Must be between &lt;code&gt;1115&lt;/code&gt; and &lt;code&gt;65535&lt;/code&gt;.&lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the subnet group where you want to cluster restored.&lt;/p&gt; &lt;p&gt;A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: SnapshotIdentifier
function M.RestoreFromClusterSnapshotMessage(ClusterParameterGroupName, PubliclyAccessible, OwnerAccount, VpcSecurityGroupIds, SnapshotClusterIdentifier, AutomatedSnapshotRetentionPeriod, EnhancedVpcRouting, PreferredMaintenanceWindow, AdditionalInfo, IamRoles, AllowVersionUpgrade, HsmConfigurationIdentifier, ClusterSecurityGroups, ClusterIdentifier, HsmClientCertificateIdentifier, AvailabilityZone, NodeType, ElasticIp, KmsKeyId, SnapshotIdentifier, Port, ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromClusterSnapshotMessage")
	local t = { 
		["ClusterParameterGroupName"] = ClusterParameterGroupName,
		["PubliclyAccessible"] = PubliclyAccessible,
		["OwnerAccount"] = OwnerAccount,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["SnapshotClusterIdentifier"] = SnapshotClusterIdentifier,
		["AutomatedSnapshotRetentionPeriod"] = AutomatedSnapshotRetentionPeriod,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["AdditionalInfo"] = AdditionalInfo,
		["IamRoles"] = IamRoles,
		["AllowVersionUpgrade"] = AllowVersionUpgrade,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
		["ClusterSecurityGroups"] = ClusterSecurityGroups,
		["ClusterIdentifier"] = ClusterIdentifier,
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["AvailabilityZone"] = AvailabilityZone,
		["NodeType"] = NodeType,
		["ElasticIp"] = ElasticIp,
		["KmsKeyId"] = KmsKeyId,
		["SnapshotIdentifier"] = SnapshotIdentifier,
		["Port"] = Port,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
	}
	M.AssertRestoreFromClusterSnapshotMessage(t)
	return t
end

local HsmClientCertificate_keys = { "HsmClientCertificatePublicKey" = true, "HsmClientCertificateIdentifier" = true, "Tags" = true, nil }

function M.AssertHsmClientCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificate to be of type 'table'")
	if struct["HsmClientCertificatePublicKey"] then M.AssertString(struct["HsmClientCertificatePublicKey"]) end
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(HsmClientCertificate_keys[k], "HsmClientCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificate
-- &lt;p&gt;Returns information about an HSM client certificate. The certificate is stored in a secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data files.&lt;/p&gt;
-- @param HsmClientCertificatePublicKey [String] &lt;p&gt;The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.&lt;/p&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;The identifier of the HSM client certificate.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the HSM client certificate.&lt;/p&gt;
function M.HsmClientCertificate(HsmClientCertificatePublicKey, HsmClientCertificateIdentifier, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificate")
	local t = { 
		["HsmClientCertificatePublicKey"] = HsmClientCertificatePublicKey,
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
		["Tags"] = Tags,
	}
	M.AssertHsmClientCertificate(t)
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
-- &lt;p&gt;Describes an availability zone.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The name of the availability zone.&lt;/p&gt;
function M.AvailabilityZone(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = Name,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local DescribeHsmClientCertificatesMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "TagKeys" = true, "HsmClientCertificateIdentifier" = true, nil }

function M.AssertDescribeHsmClientCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmClientCertificatesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHsmClientCertificatesMessage_keys[k], "DescribeHsmClientCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmClientCertificatesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeHsmClientCertificates&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.&lt;/p&gt;
function M.DescribeHsmClientCertificatesMessage(Marker, TagValues, MaxRecords, TagKeys, HsmClientCertificateIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmClientCertificatesMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["TagKeys"] = TagKeys,
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
	}
	M.AssertDescribeHsmClientCertificatesMessage(t)
	return t
end

local InvalidTagFault_keys = { nil }

function M.AssertInvalidTagFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTagFault_keys[k], "InvalidTagFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagFault
-- &lt;p&gt;The tag is invalid.&lt;/p&gt;
function M.InvalidTagFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagFault")
	local t = { 
	}
	M.AssertInvalidTagFault(t)
	return t
end

local IPRange_keys = { "Status" = true, "Tags" = true, "CIDRIP" = true, nil }

function M.AssertIPRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPRange to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(IPRange_keys[k], "IPRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPRange
-- &lt;p&gt;Describes an IP range used in a security group.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the IP range, for example, &quot;authorized&quot;.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the IP range.&lt;/p&gt;
-- @param CIDRIP [String] &lt;p&gt;The IP range in Classless Inter-Domain Routing (CIDR) notation.&lt;/p&gt;
function M.IPRange(Status, Tags, CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPRange")
	local t = { 
		["Status"] = Status,
		["Tags"] = Tags,
		["CIDRIP"] = CIDRIP,
	}
	M.AssertIPRange(t)
	return t
end

local ModifySnapshotCopyRetentionPeriodResult_keys = { "Cluster" = true, nil }

function M.AssertModifySnapshotCopyRetentionPeriodResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifySnapshotCopyRetentionPeriodResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(ModifySnapshotCopyRetentionPeriodResult_keys[k], "ModifySnapshotCopyRetentionPeriodResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifySnapshotCopyRetentionPeriodResult
--  
-- @param Cluster [Cluster]  
function M.ModifySnapshotCopyRetentionPeriodResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifySnapshotCopyRetentionPeriodResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertModifySnapshotCopyRetentionPeriodResult(t)
	return t
end

local SnapshotCopyGrantAlreadyExistsFault_keys = { nil }

function M.AssertSnapshotCopyGrantAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyGrantAlreadyExistsFault_keys[k], "SnapshotCopyGrantAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantAlreadyExistsFault
-- &lt;p&gt;The snapshot copy grant can't be created because a grant with the same name already exists.&lt;/p&gt;
function M.SnapshotCopyGrantAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantAlreadyExistsFault")
	local t = { 
	}
	M.AssertSnapshotCopyGrantAlreadyExistsFault(t)
	return t
end

local DeleteClusterSecurityGroupMessage_keys = { "ClusterSecurityGroupName" = true, nil }

function M.AssertDeleteClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSecurityGroupMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterSecurityGroupMessage_keys[k], "DeleteClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSecurityGroupMessage
-- &lt;p/&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of the cluster security group to be deleted.&lt;/p&gt;
-- Required parameter: ClusterSecurityGroupName
function M.DeleteClusterSecurityGroupMessage(ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSecurityGroupMessage")
	local t = { 
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
	}
	M.AssertDeleteClusterSecurityGroupMessage(t)
	return t
end

local DescribeReservedNodesMessage_keys = { "Marker" = true, "ReservedNodeId" = true, "MaxRecords" = true, nil }

function M.AssertDescribeReservedNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedNodesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedNodeId"] then M.AssertString(struct["ReservedNodeId"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedNodesMessage_keys[k], "DescribeReservedNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedNodesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeReservedNodes&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param ReservedNodeId [String] &lt;p&gt;Identifier for the node reservation.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
function M.DescribeReservedNodesMessage(Marker, ReservedNodeId, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedNodesMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedNodeId"] = ReservedNodeId,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeReservedNodesMessage(t)
	return t
end

local DescribeReservedNodeOfferingsMessage_keys = { "Marker" = true, "MaxRecords" = true, "ReservedNodeOfferingId" = true, nil }

function M.AssertDescribeReservedNodeOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedNodeOfferingsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ReservedNodeOfferingId"] then M.AssertString(struct["ReservedNodeOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedNodeOfferingsMessage_keys[k], "DescribeReservedNodeOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedNodeOfferingsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeReservedNodeOfferings&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param ReservedNodeOfferingId [String] &lt;p&gt;The unique identifier for the offering.&lt;/p&gt;
function M.DescribeReservedNodeOfferingsMessage(Marker, MaxRecords, ReservedNodeOfferingId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedNodeOfferingsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["ReservedNodeOfferingId"] = ReservedNodeOfferingId,
	}
	M.AssertDescribeReservedNodeOfferingsMessage(t)
	return t
end

local CopyClusterSnapshotMessage_keys = { "SourceSnapshotIdentifier" = true, "SourceSnapshotClusterIdentifier" = true, "TargetSnapshotIdentifier" = true, nil }

function M.AssertCopyClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceSnapshotIdentifier"], "Expected key SourceSnapshotIdentifier to exist in table")
	assert(struct["TargetSnapshotIdentifier"], "Expected key TargetSnapshotIdentifier to exist in table")
	if struct["SourceSnapshotIdentifier"] then M.AssertString(struct["SourceSnapshotIdentifier"]) end
	if struct["SourceSnapshotClusterIdentifier"] then M.AssertString(struct["SourceSnapshotClusterIdentifier"]) end
	if struct["TargetSnapshotIdentifier"] then M.AssertString(struct["TargetSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CopyClusterSnapshotMessage_keys[k], "CopyClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyClusterSnapshotMessage
-- &lt;p/&gt;
-- @param SourceSnapshotIdentifier [String] &lt;p&gt;The identifier for the source snapshot.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be the identifier for a valid automated snapshot whose state is &lt;code&gt;available&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SourceSnapshotClusterIdentifier [String] &lt;p&gt;The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be the identifier for a valid cluster.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param TargetSnapshotIdentifier [String] &lt;p&gt;The identifier given to the new manual snapshot.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cannot be null, empty, or blank.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for the AWS account that is making the request.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: SourceSnapshotIdentifier
-- Required parameter: TargetSnapshotIdentifier
function M.CopyClusterSnapshotMessage(SourceSnapshotIdentifier, SourceSnapshotClusterIdentifier, TargetSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyClusterSnapshotMessage")
	local t = { 
		["SourceSnapshotIdentifier"] = SourceSnapshotIdentifier,
		["SourceSnapshotClusterIdentifier"] = SourceSnapshotClusterIdentifier,
		["TargetSnapshotIdentifier"] = TargetSnapshotIdentifier,
	}
	M.AssertCopyClusterSnapshotMessage(t)
	return t
end

local RevokeSnapshotAccessMessage_keys = { "AccountWithRestoreAccess" = true, "SnapshotClusterIdentifier" = true, "SnapshotIdentifier" = true, nil }

function M.AssertRevokeSnapshotAccessMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeSnapshotAccessMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["AccountWithRestoreAccess"], "Expected key AccountWithRestoreAccess to exist in table")
	if struct["AccountWithRestoreAccess"] then M.AssertString(struct["AccountWithRestoreAccess"]) end
	if struct["SnapshotClusterIdentifier"] then M.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RevokeSnapshotAccessMessage_keys[k], "RevokeSnapshotAccessMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeSnapshotAccessMessage
-- &lt;p/&gt;
-- @param AccountWithRestoreAccess [String] &lt;p&gt;The identifier of the AWS customer account that can no longer restore the specified snapshot.&lt;/p&gt;
-- @param SnapshotClusterIdentifier [String] &lt;p&gt;The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The identifier of the snapshot that the account can no longer access.&lt;/p&gt;
-- Required parameter: SnapshotIdentifier
-- Required parameter: AccountWithRestoreAccess
function M.RevokeSnapshotAccessMessage(AccountWithRestoreAccess, SnapshotClusterIdentifier, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeSnapshotAccessMessage")
	local t = { 
		["AccountWithRestoreAccess"] = AccountWithRestoreAccess,
		["SnapshotClusterIdentifier"] = SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertRevokeSnapshotAccessMessage(t)
	return t
end

local InvalidClusterSnapshotStateFault_keys = { nil }

function M.AssertInvalidClusterSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterSnapshotStateFault_keys[k], "InvalidClusterSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSnapshotStateFault
-- &lt;p&gt;The specified cluster snapshot is not in the &lt;code&gt;available&lt;/code&gt; state, or other accounts are authorized to access the snapshot. &lt;/p&gt;
function M.InvalidClusterSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSnapshotStateFault")
	local t = { 
	}
	M.AssertInvalidClusterSnapshotStateFault(t)
	return t
end

local Subnet_keys = { "SubnetStatus" = true, "SubnetIdentifier" = true, "SubnetAvailabilityZone" = true, nil }

function M.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetStatus"] then M.AssertString(struct["SubnetStatus"]) end
	if struct["SubnetIdentifier"] then M.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then M.AssertAvailabilityZone(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(Subnet_keys[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- &lt;p&gt;Describes a subnet.&lt;/p&gt;
-- @param SubnetStatus [String] &lt;p&gt;The status of the subnet.&lt;/p&gt;
-- @param SubnetIdentifier [String] &lt;p&gt;The identifier of the subnet.&lt;/p&gt;
-- @param SubnetAvailabilityZone [AvailabilityZone] &lt;p&gt;Describes a subnet.&lt;/p&gt;
function M.Subnet(SubnetStatus, SubnetIdentifier, SubnetAvailabilityZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subnet")
	local t = { 
		["SubnetStatus"] = SubnetStatus,
		["SubnetIdentifier"] = SubnetIdentifier,
		["SubnetAvailabilityZone"] = SubnetAvailabilityZone,
	}
	M.AssertSubnet(t)
	return t
end

local InvalidHsmClientCertificateStateFault_keys = { nil }

function M.AssertInvalidHsmClientCertificateStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHsmClientCertificateStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidHsmClientCertificateStateFault_keys[k], "InvalidHsmClientCertificateStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHsmClientCertificateStateFault
-- &lt;p&gt;The specified HSM client certificate is not in the &lt;code&gt;available&lt;/code&gt; state, or it is still in use by one or more Amazon Redshift clusters.&lt;/p&gt;
function M.InvalidHsmClientCertificateStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHsmClientCertificateStateFault")
	local t = { 
	}
	M.AssertInvalidHsmClientCertificateStateFault(t)
	return t
end

local InvalidS3BucketNameFault_keys = { nil }

function M.AssertInvalidS3BucketNameFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketNameFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3BucketNameFault_keys[k], "InvalidS3BucketNameFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketNameFault
-- &lt;p&gt;The S3 bucket name is invalid. For more information about naming rules, go to &lt;a href=&quot;http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html&quot;&gt;Bucket Restrictions and Limitations&lt;/a&gt; in the Amazon Simple Storage Service (S3) Developer Guide.&lt;/p&gt;
function M.InvalidS3BucketNameFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketNameFault")
	local t = { 
	}
	M.AssertInvalidS3BucketNameFault(t)
	return t
end

local SnapshotCopyGrantQuotaExceededFault_keys = { nil }

function M.AssertSnapshotCopyGrantQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyGrantQuotaExceededFault_keys[k], "SnapshotCopyGrantQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantQuotaExceededFault
-- &lt;p&gt;The AWS account has exceeded the maximum number of snapshot copy grants in this region.&lt;/p&gt;
function M.SnapshotCopyGrantQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantQuotaExceededFault")
	local t = { 
	}
	M.AssertSnapshotCopyGrantQuotaExceededFault(t)
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
-- &lt;p&gt;The specified CIDR IP range or EC2 security group is not authorized for the specified cluster security group.&lt;/p&gt;
function M.AuthorizationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationNotFoundFault")
	local t = { 
	}
	M.AssertAuthorizationNotFoundFault(t)
	return t
end

local LimitExceededFault_keys = { nil }

function M.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededFault_keys[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- &lt;p&gt;The encryption key has exceeded its grant limit in AWS KMS.&lt;/p&gt;
function M.LimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
	}
	M.AssertLimitExceededFault(t)
	return t
end

local AuthorizeClusterSecurityGroupIngressResult_keys = { "ClusterSecurityGroup" = true, nil }

function M.AssertAuthorizeClusterSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeClusterSecurityGroupIngressResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then M.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeClusterSecurityGroupIngressResult_keys[k], "AuthorizeClusterSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeClusterSecurityGroupIngressResult
--  
-- @param ClusterSecurityGroup [ClusterSecurityGroup]  
function M.AuthorizeClusterSecurityGroupIngressResult(ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeClusterSecurityGroupIngressResult")
	local t = { 
		["ClusterSecurityGroup"] = ClusterSecurityGroup,
	}
	M.AssertAuthorizeClusterSecurityGroupIngressResult(t)
	return t
end

local ModifyClusterParameterGroupMessage_keys = { "ParameterGroupName" = true, "Parameters" = true, nil }

function M.AssertModifyClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterParameterGroupMessage_keys[k], "ModifyClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterParameterGroupMessage
-- &lt;p/&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the parameter group to be modified.&lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.&lt;/p&gt; &lt;p&gt;For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional.&lt;/p&gt; &lt;p&gt;For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.&lt;/p&gt;
-- Required parameter: ParameterGroupName
-- Required parameter: Parameters
function M.ModifyClusterParameterGroupMessage(ParameterGroupName, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupName"] = ParameterGroupName,
		["Parameters"] = Parameters,
	}
	M.AssertModifyClusterParameterGroupMessage(t)
	return t
end

local DescribeClusterSnapshotsMessage_keys = { "TagKeys" = true, "OwnerAccount" = true, "TagValues" = true, "Marker" = true, "MaxRecords" = true, "StartTime" = true, "SnapshotType" = true, "ClusterIdentifier" = true, "EndTime" = true, "SnapshotIdentifier" = true, nil }

function M.AssertDescribeClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSnapshotsMessage to be of type 'table'")
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["OwnerAccount"] then M.AssertString(struct["OwnerAccount"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["EndTime"] then M.AssertTStamp(struct["EndTime"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterSnapshotsMessage_keys[k], "DescribeClusterSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSnapshotsMessage
-- &lt;p/&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param OwnerAccount [String] &lt;p&gt;The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.&lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterSnapshots&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param StartTime [TStamp] &lt;p&gt;A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the &lt;a href=&quot;http://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO8601 Wikipedia page.&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;2012-07-16T18:00:00Z&lt;/code&gt; &lt;/p&gt;
-- @param SnapshotType [String] &lt;p&gt;The type of snapshots for which you are requesting information. By default, snapshots of all types are returned.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;automated&lt;/code&gt; | &lt;code&gt;manual&lt;/code&gt; &lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster for which information about snapshots is requested.&lt;/p&gt;
-- @param EndTime [TStamp] &lt;p&gt;A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the &lt;a href=&quot;http://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO8601 Wikipedia page.&lt;/a&gt; &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;2012-07-16T18:00:00Z&lt;/code&gt; &lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The snapshot identifier of the snapshot about which to return information.&lt;/p&gt;
function M.DescribeClusterSnapshotsMessage(TagKeys, OwnerAccount, TagValues, Marker, MaxRecords, StartTime, SnapshotType, ClusterIdentifier, EndTime, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSnapshotsMessage")
	local t = { 
		["TagKeys"] = TagKeys,
		["OwnerAccount"] = OwnerAccount,
		["TagValues"] = TagValues,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["StartTime"] = StartTime,
		["SnapshotType"] = SnapshotType,
		["ClusterIdentifier"] = ClusterIdentifier,
		["EndTime"] = EndTime,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertDescribeClusterSnapshotsMessage(t)
	return t
end

local ModifyClusterSubnetGroupResult_keys = { "ClusterSubnetGroup" = true, nil }

function M.AssertModifyClusterSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterSubnetGroupResult to be of type 'table'")
	if struct["ClusterSubnetGroup"] then M.AssertClusterSubnetGroup(struct["ClusterSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyClusterSubnetGroupResult_keys[k], "ModifyClusterSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterSubnetGroupResult
--  
-- @param ClusterSubnetGroup [ClusterSubnetGroup]  
function M.ModifyClusterSubnetGroupResult(ClusterSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterSubnetGroupResult")
	local t = { 
		["ClusterSubnetGroup"] = ClusterSubnetGroup,
	}
	M.AssertModifyClusterSubnetGroupResult(t)
	return t
end

local CreateClusterSnapshotResult_keys = { "Snapshot" = true, nil }

function M.AssertCreateClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSnapshotResult_keys[k], "CreateClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSnapshotResult
--  
-- @param Snapshot [Snapshot]  
function M.CreateClusterSnapshotResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSnapshotResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertCreateClusterSnapshotResult(t)
	return t
end

local ClusterSubnetGroupQuotaExceededFault_keys = { nil }

function M.AssertClusterSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSubnetGroupQuotaExceededFault_keys[k], "ClusterSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupQuotaExceededFault
-- &lt;p&gt;The request would result in user exceeding the allowed number of cluster subnet groups. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ClusterSubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterSubnetGroupQuotaExceededFault(t)
	return t
end

local DependentServiceUnavailableFault_keys = { nil }

function M.AssertDependentServiceUnavailableFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependentServiceUnavailableFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DependentServiceUnavailableFault_keys[k], "DependentServiceUnavailableFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependentServiceUnavailableFault
-- &lt;p&gt;Your request cannot be completed because a dependent internal service is temporarily unavailable. Wait 30 to 60 seconds and try again.&lt;/p&gt;
function M.DependentServiceUnavailableFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependentServiceUnavailableFault")
	local t = { 
	}
	M.AssertDependentServiceUnavailableFault(t)
	return t
end

local RestoreTableFromClusterSnapshotMessage_keys = { "SourceTableName" = true, "TargetDatabaseName" = true, "SourceSchemaName" = true, "NewTableName" = true, "TargetSchemaName" = true, "ClusterIdentifier" = true, "SourceDatabaseName" = true, "SnapshotIdentifier" = true, nil }

function M.AssertRestoreTableFromClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromClusterSnapshotMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["SourceDatabaseName"], "Expected key SourceDatabaseName to exist in table")
	assert(struct["SourceTableName"], "Expected key SourceTableName to exist in table")
	assert(struct["NewTableName"], "Expected key NewTableName to exist in table")
	if struct["SourceTableName"] then M.AssertString(struct["SourceTableName"]) end
	if struct["TargetDatabaseName"] then M.AssertString(struct["TargetDatabaseName"]) end
	if struct["SourceSchemaName"] then M.AssertString(struct["SourceSchemaName"]) end
	if struct["NewTableName"] then M.AssertString(struct["NewTableName"]) end
	if struct["TargetSchemaName"] then M.AssertString(struct["TargetSchemaName"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["SourceDatabaseName"] then M.AssertString(struct["SourceDatabaseName"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RestoreTableFromClusterSnapshotMessage_keys[k], "RestoreTableFromClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromClusterSnapshotMessage
-- &lt;p/&gt;
-- @param SourceTableName [String] &lt;p&gt;The name of the source table to restore from.&lt;/p&gt;
-- @param TargetDatabaseName [String] &lt;p&gt;The name of the database to restore the table to.&lt;/p&gt;
-- @param SourceSchemaName [String] &lt;p&gt;The name of the source schema that contains the table to restore from. If you do not specify a &lt;code&gt;SourceSchemaName&lt;/code&gt; value, the default is &lt;code&gt;public&lt;/code&gt;.&lt;/p&gt;
-- @param NewTableName [String] &lt;p&gt;The name of the table to create as a result of the current request.&lt;/p&gt;
-- @param TargetSchemaName [String] &lt;p&gt;The name of the schema to restore the table to.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the Amazon Redshift cluster to restore the table to.&lt;/p&gt;
-- @param SourceDatabaseName [String] &lt;p&gt;The name of the source database that contains the table to restore from.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the &lt;code&gt;ClusterIdentifier&lt;/code&gt; parameter.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: SnapshotIdentifier
-- Required parameter: SourceDatabaseName
-- Required parameter: SourceTableName
-- Required parameter: NewTableName
function M.RestoreTableFromClusterSnapshotMessage(SourceTableName, TargetDatabaseName, SourceSchemaName, NewTableName, TargetSchemaName, ClusterIdentifier, SourceDatabaseName, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreTableFromClusterSnapshotMessage")
	local t = { 
		["SourceTableName"] = SourceTableName,
		["TargetDatabaseName"] = TargetDatabaseName,
		["SourceSchemaName"] = SourceSchemaName,
		["NewTableName"] = NewTableName,
		["TargetSchemaName"] = TargetSchemaName,
		["ClusterIdentifier"] = ClusterIdentifier,
		["SourceDatabaseName"] = SourceDatabaseName,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertRestoreTableFromClusterSnapshotMessage(t)
	return t
end

local DescribeResizeMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertDescribeResizeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResizeMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeResizeMessage_keys[k], "DescribeResizeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResizeMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive.&lt;/p&gt; &lt;p&gt;By default, resize operations for all clusters defined for an AWS account are returned.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.DescribeResizeMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResizeMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertDescribeResizeMessage(t)
	return t
end

local DescribeEventSubscriptionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "SubscriptionName" = true, nil }

function M.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventSubscriptionsMessage_keys[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeEventSubscriptions&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param SubscriptionName [String] &lt;p&gt;The name of the Amazon Redshift event notification subscription to be described.&lt;/p&gt;
function M.DescribeEventSubscriptionsMessage(Marker, MaxRecords, SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertDescribeEventSubscriptionsMessage(t)
	return t
end

local EnableSnapshotCopyResult_keys = { "Cluster" = true, nil }

function M.AssertEnableSnapshotCopyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSnapshotCopyResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(EnableSnapshotCopyResult_keys[k], "EnableSnapshotCopyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSnapshotCopyResult
--  
-- @param Cluster [Cluster]  
function M.EnableSnapshotCopyResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSnapshotCopyResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertEnableSnapshotCopyResult(t)
	return t
end

local SnapshotCopyDisabledFault_keys = { nil }

function M.AssertSnapshotCopyDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyDisabledFault_keys[k], "SnapshotCopyDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyDisabledFault
-- &lt;p&gt;Cross-region snapshot copy was temporarily disabled. Try your request again.&lt;/p&gt;
function M.SnapshotCopyDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyDisabledFault")
	local t = { 
	}
	M.AssertSnapshotCopyDisabledFault(t)
	return t
end

local DescribeTagsMessage_keys = { "ResourceType" = true, "TagValues" = true, "MaxRecords" = true, "Marker" = true, "ResourceName" = true, "TagKeys" = true, nil }

function M.AssertDescribeTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsMessage to be of type 'table'")
	if struct["ResourceType"] then M.AssertString(struct["ResourceType"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsMessage_keys[k], "DescribeTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsMessage
-- &lt;p/&gt;
-- @param ResourceType [String] &lt;p&gt;The type of resource with which you want to view tags. Valid resource types are: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cluster&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CIDR/IP&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;EC2 security group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Snapshot&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cluster security group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Subnet group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HSM connection&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HSM certificate&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Parameter group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Snapshot copy grant&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about Amazon Redshift resource types and constructing ARNs, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/constructing-redshift-arn.html&quot;&gt;Constructing an Amazon Redshift Amazon Resource Name (ARN)&lt;/a&gt; in the Amazon Redshift Cluster Management Guide. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned &lt;code&gt;marker&lt;/code&gt; value. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, &lt;code&gt;arn:aws:redshift:us-east-1:123456789:cluster:t1&lt;/code&gt;. &lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.&lt;/p&gt;
function M.DescribeTagsMessage(ResourceType, TagValues, MaxRecords, Marker, ResourceName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsMessage")
	local t = { 
		["ResourceType"] = ResourceType,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["Marker"] = Marker,
		["ResourceName"] = ResourceName,
		["TagKeys"] = TagKeys,
	}
	M.AssertDescribeTagsMessage(t)
	return t
end

local ClusterParameterGroupAlreadyExistsFault_keys = { nil }

function M.AssertClusterParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupAlreadyExistsFault_keys[k], "ClusterParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupAlreadyExistsFault
-- &lt;p&gt;A cluster parameter group with the same name already exists.&lt;/p&gt;
function M.ClusterParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterParameterGroupAlreadyExistsFault(t)
	return t
end

local SnapshotCopyGrantNotFoundFault_keys = { nil }

function M.AssertSnapshotCopyGrantNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyGrantNotFoundFault_keys[k], "SnapshotCopyGrantNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantNotFoundFault
-- &lt;p&gt;The specified snapshot copy grant can't be found. Make sure that the name is typed correctly and that the grant exists in the destination region.&lt;/p&gt;
function M.SnapshotCopyGrantNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantNotFoundFault")
	local t = { 
	}
	M.AssertSnapshotCopyGrantNotFoundFault(t)
	return t
end

local OrderableClusterOptionsMessage_keys = { "Marker" = true, "OrderableClusterOptions" = true, nil }

function M.AssertOrderableClusterOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableClusterOptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["OrderableClusterOptions"] then M.AssertOrderableClusterOptionsList(struct["OrderableClusterOptions"]) end
	for k,_ in pairs(struct) do
		assert(OrderableClusterOptionsMessage_keys[k], "OrderableClusterOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableClusterOptionsMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeOrderableClusterOptions&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param OrderableClusterOptions [OrderableClusterOptionsList] &lt;p&gt;An &lt;code&gt;OrderableClusterOption&lt;/code&gt; structure containing information about orderable options for the cluster.&lt;/p&gt;
function M.OrderableClusterOptionsMessage(Marker, OrderableClusterOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableClusterOptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["OrderableClusterOptions"] = OrderableClusterOptions,
	}
	M.AssertOrderableClusterOptionsMessage(t)
	return t
end

local InvalidRestoreFault_keys = { nil }

function M.AssertInvalidRestoreFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRestoreFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRestoreFault_keys[k], "InvalidRestoreFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRestoreFault
-- &lt;p&gt;The restore is invalid.&lt;/p&gt;
function M.InvalidRestoreFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRestoreFault")
	local t = { 
	}
	M.AssertInvalidRestoreFault(t)
	return t
end

local DeleteClusterResult_keys = { "Cluster" = true, nil }

function M.AssertDeleteClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterResult_keys[k], "DeleteClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResult
--  
-- @param Cluster [Cluster]  
function M.DeleteClusterResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertDeleteClusterResult(t)
	return t
end

local SubscriptionCategoryNotFoundFault_keys = { nil }

function M.AssertSubscriptionCategoryNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionCategoryNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscriptionCategoryNotFoundFault_keys[k], "SubscriptionCategoryNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionCategoryNotFoundFault
-- &lt;p&gt;The value specified for the event category was not one of the allowed values, or it specified a category that does not apply to the specified source type. The allowed values are Configuration, Management, Monitoring, and Security.&lt;/p&gt;
function M.SubscriptionCategoryNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionCategoryNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionCategoryNotFoundFault(t)
	return t
end

local SubscriptionSeverityNotFoundFault_keys = { nil }

function M.AssertSubscriptionSeverityNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionSeverityNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubscriptionSeverityNotFoundFault_keys[k], "SubscriptionSeverityNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionSeverityNotFoundFault
-- &lt;p&gt;The value specified for the event severity was not one of the allowed values, or it specified a severity that does not apply to the specified source type. The allowed values are ERROR and INFO.&lt;/p&gt;
function M.SubscriptionSeverityNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionSeverityNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionSeverityNotFoundFault(t)
	return t
end

local InvalidSnapshotCopyGrantStateFault_keys = { nil }

function M.AssertInvalidSnapshotCopyGrantStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnapshotCopyGrantStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSnapshotCopyGrantStateFault_keys[k], "InvalidSnapshotCopyGrantStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnapshotCopyGrantStateFault
-- &lt;p&gt;The snapshot copy grant can't be deleted because it is used by one or more clusters.&lt;/p&gt;
function M.InvalidSnapshotCopyGrantStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnapshotCopyGrantStateFault")
	local t = { 
	}
	M.AssertInvalidSnapshotCopyGrantStateFault(t)
	return t
end

local DescribeOrderableClusterOptionsMessage_keys = { "Marker" = true, "NodeType" = true, "MaxRecords" = true, "ClusterVersion" = true, nil }

function M.AssertDescribeOrderableClusterOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableClusterOptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrderableClusterOptionsMessage_keys[k], "DescribeOrderableClusterOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableClusterOptionsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeOrderableClusterOptions&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version filter value. Specify this parameter to show only the available offerings matching the specified version.&lt;/p&gt; &lt;p&gt;Default: All versions.&lt;/p&gt; &lt;p&gt;Constraints: Must be one of the version returned from &lt;a&gt;DescribeClusterVersions&lt;/a&gt;.&lt;/p&gt;
function M.DescribeOrderableClusterOptionsMessage(Marker, NodeType, MaxRecords, ClusterVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableClusterOptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["NodeType"] = NodeType,
		["MaxRecords"] = MaxRecords,
		["ClusterVersion"] = ClusterVersion,
	}
	M.AssertDescribeOrderableClusterOptionsMessage(t)
	return t
end

local ClusterSnapshotAlreadyExistsFault_keys = { nil }

function M.AssertClusterSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSnapshotAlreadyExistsFault_keys[k], "ClusterSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotAlreadyExistsFault
-- &lt;p&gt;The value specified as a snapshot identifier is already used by an existing snapshot.&lt;/p&gt;
function M.ClusterSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterSnapshotAlreadyExistsFault(t)
	return t
end

local TagLimitExceededFault_keys = { nil }

function M.AssertTagLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagLimitExceededFault_keys[k], "TagLimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededFault
-- &lt;p&gt;The request exceeds the limit of 10 tags for the resource.&lt;/p&gt;
function M.TagLimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededFault")
	local t = { 
	}
	M.AssertTagLimitExceededFault(t)
	return t
end

local ReservedNodeQuotaExceededFault_keys = { nil }

function M.AssertReservedNodeQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedNodeQuotaExceededFault_keys[k], "ReservedNodeQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeQuotaExceededFault
-- &lt;p&gt;Request would exceed the user's compute node quota. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ReservedNodeQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeQuotaExceededFault")
	local t = { 
	}
	M.AssertReservedNodeQuotaExceededFault(t)
	return t
end

local CreateClusterSubnetGroupMessage_keys = { "SubnetIds" = true, "Tags" = true, "ClusterSubnetGroupName" = true, "Description" = true, nil }

function M.AssertCreateClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSubnetGroupMessage_keys[k], "CreateClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSubnetGroupMessage
-- &lt;p/&gt;
-- @param SubnetIds [SubnetIdentifierList] &lt;p&gt;An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name for the subnet group. Amazon Redshift stores the value as a lowercase string.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain no more than 255 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must not be &quot;Default&quot;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all subnet groups that are created by your AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;examplesubnetgroup&lt;/code&gt; &lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description for the subnet group.&lt;/p&gt;
-- Required parameter: ClusterSubnetGroupName
-- Required parameter: Description
-- Required parameter: SubnetIds
function M.CreateClusterSubnetGroupMessage(SubnetIds, Tags, ClusterSubnetGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = SubnetIds,
		["Tags"] = Tags,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
		["Description"] = Description,
	}
	M.AssertCreateClusterSubnetGroupMessage(t)
	return t
end

local ClusterSecurityGroup_keys = { "IPRanges" = true, "Tags" = true, "ClusterSecurityGroupName" = true, "Description" = true, "EC2SecurityGroups" = true, nil }

function M.AssertClusterSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroup to be of type 'table'")
	if struct["IPRanges"] then M.AssertIPRangeList(struct["IPRanges"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["EC2SecurityGroups"] then M.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroup_keys[k], "ClusterSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroup
-- &lt;p&gt;Describes a security group.&lt;/p&gt;
-- @param IPRanges [IPRangeList] &lt;p&gt;A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the cluster security group.&lt;/p&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of the cluster security group to which the operation was applied.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;A description of the security group.&lt;/p&gt;
-- @param EC2SecurityGroups [EC2SecurityGroupList] &lt;p&gt;A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.&lt;/p&gt;
function M.ClusterSecurityGroup(IPRanges, Tags, ClusterSecurityGroupName, Description, EC2SecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroup")
	local t = { 
		["IPRanges"] = IPRanges,
		["Tags"] = Tags,
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
		["Description"] = Description,
		["EC2SecurityGroups"] = EC2SecurityGroups,
	}
	M.AssertClusterSecurityGroup(t)
	return t
end

local DescribeClusterSubnetGroupsMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "TagKeys" = true, "ClusterSubnetGroupName" = true, nil }

function M.AssertDescribeClusterSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterSubnetGroupsMessage_keys[k], "DescribeClusterSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSubnetGroupsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterSubnetGroups&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the cluster subnet group for which information is requested.&lt;/p&gt;
function M.DescribeClusterSubnetGroupsMessage(Marker, TagValues, MaxRecords, TagKeys, ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSubnetGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["TagKeys"] = TagKeys,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
	}
	M.AssertDescribeClusterSubnetGroupsMessage(t)
	return t
end

local HsmClientCertificateAlreadyExistsFault_keys = { nil }

function M.AssertHsmClientCertificateAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmClientCertificateAlreadyExistsFault_keys[k], "HsmClientCertificateAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateAlreadyExistsFault
-- &lt;p&gt;There is already an existing Amazon Redshift HSM client certificate with the specified identifier.&lt;/p&gt;
function M.HsmClientCertificateAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateAlreadyExistsFault")
	local t = { 
	}
	M.AssertHsmClientCertificateAlreadyExistsFault(t)
	return t
end

local EnableLoggingMessage_keys = { "S3KeyPrefix" = true, "ClusterIdentifier" = true, "BucketName" = true, nil }

function M.AssertEnableLoggingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableLoggingMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["BucketName"], "Expected key BucketName to exist in table")
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["BucketName"] then M.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(EnableLoggingMessage_keys[k], "EnableLoggingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableLoggingMessage
-- &lt;p/&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;The prefix applied to the log file names.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cannot exceed 512 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot contain spaces( ), double quotes (&quot;), single quotes ('), a backslash (\), or control characters. The hexadecimal codes for invalid characters are: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;x00 to x20&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;x22&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;x27&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;x5c&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;x7f or larger&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster on which logging is to be started.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;examplecluster&lt;/code&gt; &lt;/p&gt;
-- @param BucketName [String] &lt;p&gt;The name of an existing S3 bucket where the log files are to be stored.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be in the same region as the cluster&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The cluster must have read bucket and put object permissions&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: BucketName
function M.EnableLoggingMessage(S3KeyPrefix, ClusterIdentifier, BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableLoggingMessage")
	local t = { 
		["S3KeyPrefix"] = S3KeyPrefix,
		["ClusterIdentifier"] = ClusterIdentifier,
		["BucketName"] = BucketName,
	}
	M.AssertEnableLoggingMessage(t)
	return t
end

local AuthorizeClusterSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "ClusterSecurityGroupName" = true, "CIDRIP" = true, nil }

function M.AssertAuthorizeClusterSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeClusterSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeClusterSecurityGroupIngressMessage_keys[k], "AuthorizeClusterSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeClusterSecurityGroupIngressMessage
-- &lt;p/&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The EC2 security group to be added the Amazon Redshift security group.&lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS account number of the owner of the security group specified by the &lt;i&gt;EC2SecurityGroupName&lt;/i&gt; parameter. The AWS Access Key ID is not an acceptable value. &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;111122223333&lt;/code&gt; &lt;/p&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of the security group to which the ingress rule is added.&lt;/p&gt;
-- @param CIDRIP [String] &lt;p&gt;The IP range to be added the Amazon Redshift security group.&lt;/p&gt;
-- Required parameter: ClusterSecurityGroupName
function M.AuthorizeClusterSecurityGroupIngressMessage(EC2SecurityGroupName, EC2SecurityGroupOwnerId, ClusterSecurityGroupName, CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeClusterSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
		["CIDRIP"] = CIDRIP,
	}
	M.AssertAuthorizeClusterSecurityGroupIngressMessage(t)
	return t
end

local DescribeLoggingStatusMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertDescribeLoggingStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoggingStatusMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLoggingStatusMessage_keys[k], "DescribeLoggingStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoggingStatusMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster from which to get the logging status.&lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;examplecluster&lt;/code&gt; &lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.DescribeLoggingStatusMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoggingStatusMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertDescribeLoggingStatusMessage(t)
	return t
end

local ClusterParameterGroupDetails_keys = { "Marker" = true, "Parameters" = true, nil }

function M.AssertClusterParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupDetails_keys[k], "ClusterParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupDetails
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusterParameters&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;A list of &lt;a&gt;Parameter&lt;/a&gt; instances. Each instance lists the parameters of one cluster parameter group. &lt;/p&gt;
function M.ClusterParameterGroupDetails(Marker, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupDetails")
	local t = { 
		["Marker"] = Marker,
		["Parameters"] = Parameters,
	}
	M.AssertClusterParameterGroupDetails(t)
	return t
end

local Snapshot_keys = { "MasterUsername" = true, "OwnerAccount" = true, "CurrentBackupRateInMegaBytesPerSecond" = true, "ActualIncrementalBackupSizeInMegaBytes" = true, "NumberOfNodes" = true, "Status" = true, "VpcId" = true, "ClusterVersion" = true, "Tags" = true, "EnhancedVpcRouting" = true, "EstimatedSecondsToCompletion" = true, "SourceRegion" = true, "AccountsWithRestoreAccess" = true, "TotalBackupSizeInMegaBytes" = true, "DBName" = true, "BackupProgressInMegaBytes" = true, "ClusterCreateTime" = true, "RestorableNodeTypes" = true, "EncryptedWithHSM" = true, "ClusterIdentifier" = true, "SnapshotCreateTime" = true, "AvailabilityZone" = true, "NodeType" = true, "Encrypted" = true, "ElapsedTimeInSeconds" = true, "KmsKeyId" = true, "SnapshotType" = true, "Port" = true, "SnapshotIdentifier" = true, nil }

function M.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["OwnerAccount"] then M.AssertString(struct["OwnerAccount"]) end
	if struct["CurrentBackupRateInMegaBytesPerSecond"] then M.AssertDouble(struct["CurrentBackupRateInMegaBytesPerSecond"]) end
	if struct["ActualIncrementalBackupSizeInMegaBytes"] then M.AssertDouble(struct["ActualIncrementalBackupSizeInMegaBytes"]) end
	if struct["NumberOfNodes"] then M.AssertInteger(struct["NumberOfNodes"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBoolean(struct["EnhancedVpcRouting"]) end
	if struct["EstimatedSecondsToCompletion"] then M.AssertLong(struct["EstimatedSecondsToCompletion"]) end
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["AccountsWithRestoreAccess"] then M.AssertAccountsWithRestoreAccessList(struct["AccountsWithRestoreAccess"]) end
	if struct["TotalBackupSizeInMegaBytes"] then M.AssertDouble(struct["TotalBackupSizeInMegaBytes"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["BackupProgressInMegaBytes"] then M.AssertDouble(struct["BackupProgressInMegaBytes"]) end
	if struct["ClusterCreateTime"] then M.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["RestorableNodeTypes"] then M.AssertRestorableNodeTypeList(struct["RestorableNodeTypes"]) end
	if struct["EncryptedWithHSM"] then M.AssertBoolean(struct["EncryptedWithHSM"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotCreateTime"] then M.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["Encrypted"] then M.AssertBoolean(struct["Encrypted"]) end
	if struct["ElapsedTimeInSeconds"] then M.AssertLong(struct["ElapsedTimeInSeconds"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	if struct["Port"] then M.AssertInteger(struct["Port"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(Snapshot_keys[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- &lt;p&gt;Describes a snapshot.&lt;/p&gt;
-- @param MasterUsername [String] &lt;p&gt;The master user name for the cluster.&lt;/p&gt;
-- @param OwnerAccount [String] &lt;p&gt;For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.&lt;/p&gt;
-- @param CurrentBackupRateInMegaBytesPerSecond [Double] &lt;p&gt;The number of megabytes per second being transferred to the snapshot backup. Returns &lt;code&gt;0&lt;/code&gt; for a completed backup. &lt;/p&gt;
-- @param ActualIncrementalBackupSizeInMegaBytes [Double] &lt;p&gt;The size of the incremental backup.&lt;/p&gt;
-- @param NumberOfNodes [Integer] &lt;p&gt;The number of nodes in the cluster.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The snapshot status. The value of the status depends on the API operation used. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateClusterSnapshot&lt;/a&gt; and &lt;a&gt;CopyClusterSnapshot&lt;/a&gt; returns status as &quot;creating&quot;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DescribeClusterSnapshots&lt;/a&gt; returns status as &quot;creating&quot;, &quot;available&quot;, &quot;final snapshot&quot;, or &quot;failed&quot;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;DeleteClusterSnapshot&lt;/a&gt; returns status as &quot;deleted&quot;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param VpcId [String] &lt;p&gt;The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version ID of the Amazon Redshift engine that is running on the cluster.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the cluster snapshot.&lt;/p&gt;
-- @param EnhancedVpcRouting [Boolean] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param EstimatedSecondsToCompletion [Long] &lt;p&gt;The estimate of the time remaining before the snapshot backup will complete. Returns &lt;code&gt;0&lt;/code&gt; for a completed backup. &lt;/p&gt;
-- @param SourceRegion [String] &lt;p&gt;The source region from which the snapshot was copied.&lt;/p&gt;
-- @param AccountsWithRestoreAccess [AccountsWithRestoreAccessList] &lt;p&gt;A list of the AWS customer accounts authorized to restore the snapshot. Returns &lt;code&gt;null&lt;/code&gt; if no accounts are authorized. Visible only to the snapshot owner. &lt;/p&gt;
-- @param TotalBackupSizeInMegaBytes [Double] &lt;p&gt;The size of the complete set of backup data that would be used to restore the cluster.&lt;/p&gt;
-- @param DBName [String] &lt;p&gt;The name of the database that was created when the cluster was created.&lt;/p&gt;
-- @param BackupProgressInMegaBytes [Double] &lt;p&gt;The number of megabytes that have been transferred to the snapshot backup.&lt;/p&gt;
-- @param ClusterCreateTime [TStamp] &lt;p&gt;The time (UTC) when the cluster was originally created.&lt;/p&gt;
-- @param RestorableNodeTypes [RestorableNodeTypeList] &lt;p&gt;The list of node types that this cluster snapshot is able to restore into.&lt;/p&gt;
-- @param EncryptedWithHSM [Boolean] &lt;p&gt;A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. &lt;code&gt;true&lt;/code&gt; indicates that the data is encrypted using HSM keys.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster for which the snapshot was taken.&lt;/p&gt;
-- @param SnapshotCreateTime [TStamp] &lt;p&gt;The time (UTC) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The Availability Zone in which the cluster was created.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type of the nodes in the cluster.&lt;/p&gt;
-- @param Encrypted [Boolean] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the data in the snapshot is encrypted at rest.&lt;/p&gt;
-- @param ElapsedTimeInSeconds [Long] &lt;p&gt;The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.&lt;/p&gt;
-- @param SnapshotType [String] &lt;p&gt;The snapshot type. Snapshots created using &lt;a&gt;CreateClusterSnapshot&lt;/a&gt; and &lt;a&gt;CopyClusterSnapshot&lt;/a&gt; will be of type &quot;manual&quot;. &lt;/p&gt;
-- @param Port [Integer] &lt;p&gt;The port that the cluster is listening on.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The snapshot identifier that is provided in the request.&lt;/p&gt;
function M.Snapshot(MasterUsername, OwnerAccount, CurrentBackupRateInMegaBytesPerSecond, ActualIncrementalBackupSizeInMegaBytes, NumberOfNodes, Status, VpcId, ClusterVersion, Tags, EnhancedVpcRouting, EstimatedSecondsToCompletion, SourceRegion, AccountsWithRestoreAccess, TotalBackupSizeInMegaBytes, DBName, BackupProgressInMegaBytes, ClusterCreateTime, RestorableNodeTypes, EncryptedWithHSM, ClusterIdentifier, SnapshotCreateTime, AvailabilityZone, NodeType, Encrypted, ElapsedTimeInSeconds, KmsKeyId, SnapshotType, Port, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Snapshot")
	local t = { 
		["MasterUsername"] = MasterUsername,
		["OwnerAccount"] = OwnerAccount,
		["CurrentBackupRateInMegaBytesPerSecond"] = CurrentBackupRateInMegaBytesPerSecond,
		["ActualIncrementalBackupSizeInMegaBytes"] = ActualIncrementalBackupSizeInMegaBytes,
		["NumberOfNodes"] = NumberOfNodes,
		["Status"] = Status,
		["VpcId"] = VpcId,
		["ClusterVersion"] = ClusterVersion,
		["Tags"] = Tags,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["EstimatedSecondsToCompletion"] = EstimatedSecondsToCompletion,
		["SourceRegion"] = SourceRegion,
		["AccountsWithRestoreAccess"] = AccountsWithRestoreAccess,
		["TotalBackupSizeInMegaBytes"] = TotalBackupSizeInMegaBytes,
		["DBName"] = DBName,
		["BackupProgressInMegaBytes"] = BackupProgressInMegaBytes,
		["ClusterCreateTime"] = ClusterCreateTime,
		["RestorableNodeTypes"] = RestorableNodeTypes,
		["EncryptedWithHSM"] = EncryptedWithHSM,
		["ClusterIdentifier"] = ClusterIdentifier,
		["SnapshotCreateTime"] = SnapshotCreateTime,
		["AvailabilityZone"] = AvailabilityZone,
		["NodeType"] = NodeType,
		["Encrypted"] = Encrypted,
		["ElapsedTimeInSeconds"] = ElapsedTimeInSeconds,
		["KmsKeyId"] = KmsKeyId,
		["SnapshotType"] = SnapshotType,
		["Port"] = Port,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertSnapshot(t)
	return t
end

local DeleteHsmClientCertificateMessage_keys = { "HsmClientCertificateIdentifier" = true, nil }

function M.AssertDeleteHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmClientCertificateMessage to be of type 'table'")
	assert(struct["HsmClientCertificateIdentifier"], "Expected key HsmClientCertificateIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then M.AssertString(struct["HsmClientCertificateIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHsmClientCertificateMessage_keys[k], "DeleteHsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmClientCertificateMessage
-- &lt;p/&gt;
-- @param HsmClientCertificateIdentifier [String] &lt;p&gt;The identifier of the HSM client certificate to be deleted.&lt;/p&gt;
-- Required parameter: HsmClientCertificateIdentifier
function M.DeleteHsmClientCertificateMessage(HsmClientCertificateIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmClientCertificateMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = HsmClientCertificateIdentifier,
	}
	M.AssertDeleteHsmClientCertificateMessage(t)
	return t
end

local AuthorizeSnapshotAccessMessage_keys = { "AccountWithRestoreAccess" = true, "SnapshotClusterIdentifier" = true, "SnapshotIdentifier" = true, nil }

function M.AssertAuthorizeSnapshotAccessMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeSnapshotAccessMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["AccountWithRestoreAccess"], "Expected key AccountWithRestoreAccess to exist in table")
	if struct["AccountWithRestoreAccess"] then M.AssertString(struct["AccountWithRestoreAccess"]) end
	if struct["SnapshotClusterIdentifier"] then M.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeSnapshotAccessMessage_keys[k], "AuthorizeSnapshotAccessMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeSnapshotAccessMessage
-- &lt;p/&gt;
-- @param AccountWithRestoreAccess [String] &lt;p&gt;The identifier of the AWS customer account authorized to restore the specified snapshot.&lt;/p&gt; &lt;p&gt;To share a snapshot with AWS support, specify amazon-redshift-support.&lt;/p&gt;
-- @param SnapshotClusterIdentifier [String] &lt;p&gt;The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The identifier of the snapshot the account is authorized to restore.&lt;/p&gt;
-- Required parameter: SnapshotIdentifier
-- Required parameter: AccountWithRestoreAccess
function M.AuthorizeSnapshotAccessMessage(AccountWithRestoreAccess, SnapshotClusterIdentifier, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeSnapshotAccessMessage")
	local t = { 
		["AccountWithRestoreAccess"] = AccountWithRestoreAccess,
		["SnapshotClusterIdentifier"] = SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertAuthorizeSnapshotAccessMessage(t)
	return t
end

local AuthorizeSnapshotAccessResult_keys = { "Snapshot" = true, nil }

function M.AssertAuthorizeSnapshotAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeSnapshotAccessResult to be of type 'table'")
	if struct["Snapshot"] then M.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeSnapshotAccessResult_keys[k], "AuthorizeSnapshotAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeSnapshotAccessResult
--  
-- @param Snapshot [Snapshot]  
function M.AuthorizeSnapshotAccessResult(Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeSnapshotAccessResult")
	local t = { 
		["Snapshot"] = Snapshot,
	}
	M.AssertAuthorizeSnapshotAccessResult(t)
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
-- &lt;p&gt;The cluster subnet group does not cover all Availability Zones.&lt;/p&gt;
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	M.AssertInvalidVPCNetworkStateFault(t)
	return t
end

local ClusterSecurityGroupNotFoundFault_keys = { nil }

function M.AssertClusterSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroupNotFoundFault_keys[k], "ClusterSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupNotFoundFault
-- &lt;p&gt;The cluster security group name does not refer to an existing cluster security group.&lt;/p&gt;
function M.ClusterSecurityGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupNotFoundFault")
	local t = { 
	}
	M.AssertClusterSecurityGroupNotFoundFault(t)
	return t
end

local RevokeClusterSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "ClusterSecurityGroupName" = true, "CIDRIP" = true, nil }

function M.AssertRevokeClusterSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeClusterSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(RevokeClusterSecurityGroupIngressMessage_keys[k], "RevokeClusterSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeClusterSecurityGroupIngressMessage
-- &lt;p/&gt;
-- @param EC2SecurityGroupName [String] &lt;p&gt;The name of the EC2 Security Group whose access is to be revoked. If &lt;code&gt;EC2SecurityGroupName&lt;/code&gt; is specified, &lt;code&gt;EC2SecurityGroupOwnerId&lt;/code&gt; must also be provided and &lt;code&gt;CIDRIP&lt;/code&gt; cannot be provided. &lt;/p&gt;
-- @param EC2SecurityGroupOwnerId [String] &lt;p&gt;The AWS account number of the owner of the security group specified in the &lt;code&gt;EC2SecurityGroupName&lt;/code&gt; parameter. The AWS access key ID is not an acceptable value. If &lt;code&gt;EC2SecurityGroupOwnerId&lt;/code&gt; is specified, &lt;code&gt;EC2SecurityGroupName&lt;/code&gt; must also be provided. and &lt;code&gt;CIDRIP&lt;/code&gt; cannot be provided. &lt;/p&gt; &lt;p&gt;Example: &lt;code&gt;111122223333&lt;/code&gt; &lt;/p&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of the security Group from which to revoke the ingress rule.&lt;/p&gt;
-- @param CIDRIP [String] &lt;p&gt;The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If &lt;code&gt;CIDRIP&lt;/code&gt; is specified, &lt;code&gt;EC2SecurityGroupName&lt;/code&gt; and &lt;code&gt;EC2SecurityGroupOwnerId&lt;/code&gt; cannot be provided. &lt;/p&gt;
-- Required parameter: ClusterSecurityGroupName
function M.RevokeClusterSecurityGroupIngressMessage(EC2SecurityGroupName, EC2SecurityGroupOwnerId, ClusterSecurityGroupName, CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeClusterSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
		["CIDRIP"] = CIDRIP,
	}
	M.AssertRevokeClusterSecurityGroupIngressMessage(t)
	return t
end

local SnapshotCopyGrant_keys = { "Tags" = true, "SnapshotCopyGrantName" = true, "KmsKeyId" = true, nil }

function M.AssertSnapshotCopyGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrant to be of type 'table'")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotCopyGrant_keys[k], "SnapshotCopyGrant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrant
-- &lt;p&gt;The snapshot copy grant that grants Amazon Redshift permission to encrypt copied snapshots with the specified customer master key (CMK) from AWS KMS in the destination region.&lt;/p&gt; &lt;p&gt; For more information about managing snapshot copy grants, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html&quot;&gt;Amazon Redshift Database Encryption&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The unique identifier of the customer master key (CMK) in AWS KMS to which Amazon Redshift is granted permission.&lt;/p&gt;
function M.SnapshotCopyGrant(Tags, SnapshotCopyGrantName, KmsKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrant")
	local t = { 
		["Tags"] = Tags,
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
		["KmsKeyId"] = KmsKeyId,
	}
	M.AssertSnapshotCopyGrant(t)
	return t
end

local NumberOfNodesPerClusterLimitExceededFault_keys = { nil }

function M.AssertNumberOfNodesPerClusterLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberOfNodesPerClusterLimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(NumberOfNodesPerClusterLimitExceededFault_keys[k], "NumberOfNodesPerClusterLimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberOfNodesPerClusterLimitExceededFault
-- &lt;p&gt;The operation would exceed the number of nodes allowed for a cluster.&lt;/p&gt;
function M.NumberOfNodesPerClusterLimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberOfNodesPerClusterLimitExceededFault")
	local t = { 
	}
	M.AssertNumberOfNodesPerClusterLimitExceededFault(t)
	return t
end

local EnableSnapshotCopyMessage_keys = { "ClusterIdentifier" = true, "SnapshotCopyGrantName" = true, "DestinationRegion" = true, "RetentionPeriod" = true, nil }

function M.AssertEnableSnapshotCopyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSnapshotCopyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["DestinationRegion"], "Expected key DestinationRegion to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["DestinationRegion"] then M.AssertString(struct["DestinationRegion"]) end
	if struct["RetentionPeriod"] then M.AssertIntegerOptional(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(EnableSnapshotCopyMessage_keys[k], "EnableSnapshotCopyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSnapshotCopyMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the source cluster to copy snapshots from.&lt;/p&gt; &lt;p&gt;Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.&lt;/p&gt;
-- @param DestinationRegion [String] &lt;p&gt;The destination region that you want to copy snapshots to.&lt;/p&gt; &lt;p&gt;Constraints: Must be the name of a valid region. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region&quot;&gt;Regions and Endpoints&lt;/a&gt; in the Amazon Web Services General Reference. &lt;/p&gt;
-- @param RetentionPeriod [IntegerOptional] &lt;p&gt;The number of days to retain automated snapshots in the destination region after they are copied from the source region.&lt;/p&gt; &lt;p&gt;Default: 7.&lt;/p&gt; &lt;p&gt;Constraints: Must be at least 1 and no more than 35.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
-- Required parameter: DestinationRegion
function M.EnableSnapshotCopyMessage(ClusterIdentifier, SnapshotCopyGrantName, DestinationRegion, RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSnapshotCopyMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
		["DestinationRegion"] = DestinationRegion,
		["RetentionPeriod"] = RetentionPeriod,
	}
	M.AssertEnableSnapshotCopyMessage(t)
	return t
end

local Cluster_keys = { "PubliclyAccessible" = true, "MasterUsername" = true, "VpcSecurityGroups" = true, "HsmStatus" = true, "ClusterPublicKey" = true, "ModifyStatus" = true, "NumberOfNodes" = true, "PendingModifiedValues" = true, "IamRoles" = true, "VpcId" = true, "ClusterVersion" = true, "Tags" = true, "AutomatedSnapshotRetentionPeriod" = true, "ClusterParameterGroups" = true, "DBName" = true, "PreferredMaintenanceWindow" = true, "Endpoint" = true, "RestoreStatus" = true, "ElasticIpStatus" = true, "AllowVersionUpgrade" = true, "ClusterCreateTime" = true, "ClusterSubnetGroupName" = true, "EnhancedVpcRouting" = true, "ClusterSecurityGroups" = true, "ClusterIdentifier" = true, "ClusterNodes" = true, "AvailabilityZone" = true, "NodeType" = true, "Encrypted" = true, "ClusterRevisionNumber" = true, "ClusterSnapshotCopyStatus" = true, "KmsKeyId" = true, "ClusterStatus" = true, nil }

function M.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["PubliclyAccessible"] then M.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroups"] then M.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["HsmStatus"] then M.AssertHsmStatus(struct["HsmStatus"]) end
	if struct["ClusterPublicKey"] then M.AssertString(struct["ClusterPublicKey"]) end
	if struct["ModifyStatus"] then M.AssertString(struct["ModifyStatus"]) end
	if struct["NumberOfNodes"] then M.AssertInteger(struct["NumberOfNodes"]) end
	if struct["PendingModifiedValues"] then M.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["IamRoles"] then M.AssertClusterIamRoleList(struct["IamRoles"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then M.AssertInteger(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["ClusterParameterGroups"] then M.AssertClusterParameterGroupStatusList(struct["ClusterParameterGroups"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	if struct["RestoreStatus"] then M.AssertRestoreStatus(struct["RestoreStatus"]) end
	if struct["ElasticIpStatus"] then M.AssertElasticIpStatus(struct["ElasticIpStatus"]) end
	if struct["AllowVersionUpgrade"] then M.AssertBoolean(struct["AllowVersionUpgrade"]) end
	if struct["ClusterCreateTime"] then M.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["EnhancedVpcRouting"] then M.AssertBoolean(struct["EnhancedVpcRouting"]) end
	if struct["ClusterSecurityGroups"] then M.AssertClusterSecurityGroupMembershipList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["ClusterNodes"] then M.AssertClusterNodesList(struct["ClusterNodes"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["Encrypted"] then M.AssertBoolean(struct["Encrypted"]) end
	if struct["ClusterRevisionNumber"] then M.AssertString(struct["ClusterRevisionNumber"]) end
	if struct["ClusterSnapshotCopyStatus"] then M.AssertClusterSnapshotCopyStatus(struct["ClusterSnapshotCopyStatus"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["ClusterStatus"] then M.AssertString(struct["ClusterStatus"]) end
	for k,_ in pairs(struct) do
		assert(Cluster_keys[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- &lt;p&gt;Describes a cluster.&lt;/p&gt;
-- @param PubliclyAccessible [Boolean] &lt;p&gt;A Boolean value that, if &lt;code&gt;true&lt;/code&gt;, indicates that the cluster can be accessed from a public network.&lt;/p&gt;
-- @param MasterUsername [String] &lt;p&gt;The master user name for the cluster. This name is used to connect to the database that is specified in the &lt;b&gt;DBName&lt;/b&gt; parameter. &lt;/p&gt;
-- @param VpcSecurityGroups [VpcSecurityGroupMembershipList] &lt;p&gt;A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are associated with the cluster. This parameter is returned only if the cluster is in a VPC.&lt;/p&gt;
-- @param HsmStatus [HsmStatus] &lt;p&gt;A value that reports whether the Amazon Redshift cluster has finished applying any hardware security module (HSM) settings changes specified in a modify cluster command.&lt;/p&gt; &lt;p&gt;Values: active, applying&lt;/p&gt;
-- @param ClusterPublicKey [String] &lt;p&gt;The public key for the cluster.&lt;/p&gt;
-- @param ModifyStatus [String] &lt;p&gt;The status of a modify operation, if any, initiated for the cluster.&lt;/p&gt;
-- @param NumberOfNodes [Integer] &lt;p&gt;The number of compute nodes in the cluster.&lt;/p&gt;
-- @param PendingModifiedValues [PendingModifiedValues] &lt;p&gt;A value that, if present, indicates that changes to the cluster are pending. Specific pending changes are identified by subelements.&lt;/p&gt;
-- @param IamRoles [ClusterIamRoleList] &lt;p&gt;A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.&lt;/p&gt;
-- @param VpcId [String] &lt;p&gt;The identifier of the VPC the cluster is in, if the cluster is in a VPC.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version ID of the Amazon Redshift engine that is running on the cluster.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the cluster.&lt;/p&gt;
-- @param AutomatedSnapshotRetentionPeriod [Integer] &lt;p&gt;The number of days that automatic cluster snapshots are retained.&lt;/p&gt;
-- @param ClusterParameterGroups [ClusterParameterGroupStatusList] &lt;p&gt;The list of cluster parameter groups that are associated with this cluster. Each parameter group in the list is returned with its status.&lt;/p&gt;
-- @param DBName [String] &lt;p&gt;The name of the initial database that was created when the cluster was created. This same name is returned for the life of the cluster. If an initial database was not specified, a database named &lt;code&gt;dev&lt;/code&gt;dev was created by default. &lt;/p&gt;
-- @param PreferredMaintenanceWindow [String] &lt;p&gt;The weekly time range, in Universal Coordinated Time (UTC), during which system maintenance can occur.&lt;/p&gt;
-- @param Endpoint [Endpoint] &lt;p&gt;The connection endpoint.&lt;/p&gt;
-- @param RestoreStatus [RestoreStatus] &lt;p&gt;A value that describes the status of a cluster restore action. This parameter returns null if the cluster was not created by restoring a snapshot.&lt;/p&gt;
-- @param ElasticIpStatus [ElasticIpStatus] &lt;p&gt;The status of the elastic IP (EIP) address.&lt;/p&gt;
-- @param AllowVersionUpgrade [Boolean] &lt;p&gt;A Boolean value that, if &lt;code&gt;true&lt;/code&gt;, indicates that major version upgrades will be applied automatically to the cluster during the maintenance window. &lt;/p&gt;
-- @param ClusterCreateTime [TStamp] &lt;p&gt;The date and time that the cluster was created.&lt;/p&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the subnet group that is associated with the cluster. This parameter is valid only when the cluster is in a VPC.&lt;/p&gt;
-- @param EnhancedVpcRouting [Boolean] &lt;p&gt;An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html&quot;&gt;Enhanced VPC Routing&lt;/a&gt; in the Amazon Redshift Cluster Management Guide.&lt;/p&gt; &lt;p&gt;If this option is &lt;code&gt;true&lt;/code&gt;, enhanced VPC routing is enabled. &lt;/p&gt; &lt;p&gt;Default: false&lt;/p&gt;
-- @param ClusterSecurityGroups [ClusterSecurityGroupMembershipList] &lt;p&gt;A list of cluster security group that are associated with the cluster. Each security group is represented by an element that contains &lt;code&gt;ClusterSecurityGroup.Name&lt;/code&gt; and &lt;code&gt;ClusterSecurityGroup.Status&lt;/code&gt; subelements. &lt;/p&gt; &lt;p&gt;Cluster security groups are used when the cluster is not created in an Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups, which are listed by the &lt;b&gt;VpcSecurityGroups&lt;/b&gt; parameter. &lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster.&lt;/p&gt;
-- @param ClusterNodes [ClusterNodesList] &lt;p&gt;The nodes in the cluster.&lt;/p&gt;
-- @param AvailabilityZone [String] &lt;p&gt;The name of the Availability Zone in which the cluster is located.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type for the nodes in the cluster.&lt;/p&gt;
-- @param Encrypted [Boolean] &lt;p&gt;A Boolean value that, if &lt;code&gt;true&lt;/code&gt;, indicates that data in the cluster is encrypted at rest.&lt;/p&gt;
-- @param ClusterRevisionNumber [String] &lt;p&gt;The specific revision number of the database in the cluster.&lt;/p&gt;
-- @param ClusterSnapshotCopyStatus [ClusterSnapshotCopyStatus] &lt;p&gt;A value that returns the destination region and retention period that are configured for cross-region snapshot copy.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;The AWS Key Management Service (AWS KMS) key ID of the encryption key used to encrypt data in the cluster.&lt;/p&gt;
-- @param ClusterStatus [String] &lt;p&gt; The current state of the cluster. Possible values are the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;available&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;creating&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;deleting&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;final-snapshot&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;hardware-failure&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;incompatible-hsm&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;incompatible-network&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;incompatible-parameters&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;incompatible-restore&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;modifying&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;rebooting&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;renaming&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;resizing&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;rotating-keys&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;storage-full&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;updating-hsm&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.Cluster(PubliclyAccessible, MasterUsername, VpcSecurityGroups, HsmStatus, ClusterPublicKey, ModifyStatus, NumberOfNodes, PendingModifiedValues, IamRoles, VpcId, ClusterVersion, Tags, AutomatedSnapshotRetentionPeriod, ClusterParameterGroups, DBName, PreferredMaintenanceWindow, Endpoint, RestoreStatus, ElasticIpStatus, AllowVersionUpgrade, ClusterCreateTime, ClusterSubnetGroupName, EnhancedVpcRouting, ClusterSecurityGroups, ClusterIdentifier, ClusterNodes, AvailabilityZone, NodeType, Encrypted, ClusterRevisionNumber, ClusterSnapshotCopyStatus, KmsKeyId, ClusterStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["PubliclyAccessible"] = PubliclyAccessible,
		["MasterUsername"] = MasterUsername,
		["VpcSecurityGroups"] = VpcSecurityGroups,
		["HsmStatus"] = HsmStatus,
		["ClusterPublicKey"] = ClusterPublicKey,
		["ModifyStatus"] = ModifyStatus,
		["NumberOfNodes"] = NumberOfNodes,
		["PendingModifiedValues"] = PendingModifiedValues,
		["IamRoles"] = IamRoles,
		["VpcId"] = VpcId,
		["ClusterVersion"] = ClusterVersion,
		["Tags"] = Tags,
		["AutomatedSnapshotRetentionPeriod"] = AutomatedSnapshotRetentionPeriod,
		["ClusterParameterGroups"] = ClusterParameterGroups,
		["DBName"] = DBName,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["Endpoint"] = Endpoint,
		["RestoreStatus"] = RestoreStatus,
		["ElasticIpStatus"] = ElasticIpStatus,
		["AllowVersionUpgrade"] = AllowVersionUpgrade,
		["ClusterCreateTime"] = ClusterCreateTime,
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
		["EnhancedVpcRouting"] = EnhancedVpcRouting,
		["ClusterSecurityGroups"] = ClusterSecurityGroups,
		["ClusterIdentifier"] = ClusterIdentifier,
		["ClusterNodes"] = ClusterNodes,
		["AvailabilityZone"] = AvailabilityZone,
		["NodeType"] = NodeType,
		["Encrypted"] = Encrypted,
		["ClusterRevisionNumber"] = ClusterRevisionNumber,
		["ClusterSnapshotCopyStatus"] = ClusterSnapshotCopyStatus,
		["KmsKeyId"] = KmsKeyId,
		["ClusterStatus"] = ClusterStatus,
	}
	M.AssertCluster(t)
	return t
end

local RestoreStatus_keys = { "Status" = true, "ProgressInMegaBytes" = true, "CurrentRestoreRateInMegaBytesPerSecond" = true, "EstimatedTimeToCompletionInSeconds" = true, "ElapsedTimeInSeconds" = true, "SnapshotSizeInMegaBytes" = true, nil }

function M.AssertRestoreStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreStatus to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ProgressInMegaBytes"] then M.AssertLong(struct["ProgressInMegaBytes"]) end
	if struct["CurrentRestoreRateInMegaBytesPerSecond"] then M.AssertDouble(struct["CurrentRestoreRateInMegaBytesPerSecond"]) end
	if struct["EstimatedTimeToCompletionInSeconds"] then M.AssertLong(struct["EstimatedTimeToCompletionInSeconds"]) end
	if struct["ElapsedTimeInSeconds"] then M.AssertLong(struct["ElapsedTimeInSeconds"]) end
	if struct["SnapshotSizeInMegaBytes"] then M.AssertLong(struct["SnapshotSizeInMegaBytes"]) end
	for k,_ in pairs(struct) do
		assert(RestoreStatus_keys[k], "RestoreStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreStatus
-- &lt;p&gt;Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the restore action. Returns starting, restoring, completed, or failed.&lt;/p&gt;
-- @param ProgressInMegaBytes [Long] &lt;p&gt;The number of megabytes that have been transferred from snapshot storage.&lt;/p&gt;
-- @param CurrentRestoreRateInMegaBytesPerSecond [Double] &lt;p&gt;The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup.&lt;/p&gt;
-- @param EstimatedTimeToCompletionInSeconds [Long] &lt;p&gt;The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore.&lt;/p&gt;
-- @param ElapsedTimeInSeconds [Long] &lt;p&gt;The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish.&lt;/p&gt;
-- @param SnapshotSizeInMegaBytes [Long] &lt;p&gt;The size of the set of snapshot data used to restore the cluster.&lt;/p&gt;
function M.RestoreStatus(Status, ProgressInMegaBytes, CurrentRestoreRateInMegaBytesPerSecond, EstimatedTimeToCompletionInSeconds, ElapsedTimeInSeconds, SnapshotSizeInMegaBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreStatus")
	local t = { 
		["Status"] = Status,
		["ProgressInMegaBytes"] = ProgressInMegaBytes,
		["CurrentRestoreRateInMegaBytesPerSecond"] = CurrentRestoreRateInMegaBytesPerSecond,
		["EstimatedTimeToCompletionInSeconds"] = EstimatedTimeToCompletionInSeconds,
		["ElapsedTimeInSeconds"] = ElapsedTimeInSeconds,
		["SnapshotSizeInMegaBytes"] = SnapshotSizeInMegaBytes,
	}
	M.AssertRestoreStatus(t)
	return t
end

local DescribeClusterParametersMessage_keys = { "Marker" = true, "Source" = true, "MaxRecords" = true, "ParameterGroupName" = true, nil }

function M.AssertDescribeClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterParametersMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterParametersMessage_keys[k], "DescribeClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterParametersMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterParameters&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param Source [String] &lt;p&gt;The parameter types to return. Specify &lt;code&gt;user&lt;/code&gt; to show parameters that are different form the default. Similarly, specify &lt;code&gt;engine-default&lt;/code&gt; to show parameters that are the same as the default parameter group. &lt;/p&gt; &lt;p&gt;Default: All parameter types returned.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;user&lt;/code&gt; | &lt;code&gt;engine-default&lt;/code&gt; &lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of a cluster parameter group for which to return details.&lt;/p&gt;
-- Required parameter: ParameterGroupName
function M.DescribeClusterParametersMessage(Marker, Source, MaxRecords, ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["Source"] = Source,
		["MaxRecords"] = MaxRecords,
		["ParameterGroupName"] = ParameterGroupName,
	}
	M.AssertDescribeClusterParametersMessage(t)
	return t
end

local DescribeDefaultClusterParametersResult_keys = { "DefaultClusterParameters" = true, nil }

function M.AssertDescribeDefaultClusterParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultClusterParametersResult to be of type 'table'")
	if struct["DefaultClusterParameters"] then M.AssertDefaultClusterParameters(struct["DefaultClusterParameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDefaultClusterParametersResult_keys[k], "DescribeDefaultClusterParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultClusterParametersResult
--  
-- @param DefaultClusterParameters [DefaultClusterParameters]  
function M.DescribeDefaultClusterParametersResult(DefaultClusterParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultClusterParametersResult")
	local t = { 
		["DefaultClusterParameters"] = DefaultClusterParameters,
	}
	M.AssertDescribeDefaultClusterParametersResult(t)
	return t
end

local ReservedNodeNotFoundFault_keys = { nil }

function M.AssertReservedNodeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedNodeNotFoundFault_keys[k], "ReservedNodeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeNotFoundFault
-- &lt;p&gt;The specified reserved compute node not found.&lt;/p&gt;
function M.ReservedNodeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeNotFoundFault")
	local t = { 
	}
	M.AssertReservedNodeNotFoundFault(t)
	return t
end

local UnsupportedOperationFault_keys = { nil }

function M.AssertUnsupportedOperationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedOperationFault_keys[k], "UnsupportedOperationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationFault
-- &lt;p&gt;The requested operation isn't supported.&lt;/p&gt;
function M.UnsupportedOperationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationFault")
	local t = { 
	}
	M.AssertUnsupportedOperationFault(t)
	return t
end

local LoggingStatus_keys = { "LastFailureMessage" = true, "LoggingEnabled" = true, "LastFailureTime" = true, "LastSuccessfulDeliveryTime" = true, "S3KeyPrefix" = true, "BucketName" = true, nil }

function M.AssertLoggingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingStatus to be of type 'table'")
	if struct["LastFailureMessage"] then M.AssertString(struct["LastFailureMessage"]) end
	if struct["LoggingEnabled"] then M.AssertBoolean(struct["LoggingEnabled"]) end
	if struct["LastFailureTime"] then M.AssertTStamp(struct["LastFailureTime"]) end
	if struct["LastSuccessfulDeliveryTime"] then M.AssertTStamp(struct["LastSuccessfulDeliveryTime"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["BucketName"] then M.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(LoggingStatus_keys[k], "LoggingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingStatus
-- &lt;p&gt;Describes the status of logging for a cluster.&lt;/p&gt;
-- @param LastFailureMessage [String] &lt;p&gt;The message indicating that logs failed to be delivered.&lt;/p&gt;
-- @param LoggingEnabled [Boolean] &lt;p&gt; &lt;code&gt;true&lt;/code&gt; if logging is on, &lt;code&gt;false&lt;/code&gt; if logging is off.&lt;/p&gt;
-- @param LastFailureTime [TStamp] &lt;p&gt;The last time when logs failed to be delivered.&lt;/p&gt;
-- @param LastSuccessfulDeliveryTime [TStamp] &lt;p&gt;The last time that logs were delivered.&lt;/p&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;The prefix applied to the log file names.&lt;/p&gt;
-- @param BucketName [String] &lt;p&gt;The name of the S3 bucket where the log files are stored.&lt;/p&gt;
function M.LoggingStatus(LastFailureMessage, LoggingEnabled, LastFailureTime, LastSuccessfulDeliveryTime, S3KeyPrefix, BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingStatus")
	local t = { 
		["LastFailureMessage"] = LastFailureMessage,
		["LoggingEnabled"] = LoggingEnabled,
		["LastFailureTime"] = LastFailureTime,
		["LastSuccessfulDeliveryTime"] = LastSuccessfulDeliveryTime,
		["S3KeyPrefix"] = S3KeyPrefix,
		["BucketName"] = BucketName,
	}
	M.AssertLoggingStatus(t)
	return t
end

local ResizeProgressMessage_keys = { "Status" = true, "ImportTablesCompleted" = true, "EstimatedTimeToCompletionInSeconds" = true, "ProgressInMegaBytes" = true, "TargetClusterType" = true, "TotalResizeDataInMegaBytes" = true, "TargetNumberOfNodes" = true, "ImportTablesInProgress" = true, "ImportTablesNotStarted" = true, "AvgResizeRateInMegaBytesPerSecond" = true, "ElapsedTimeInSeconds" = true, "TargetNodeType" = true, nil }

function M.AssertResizeProgressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeProgressMessage to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ImportTablesCompleted"] then M.AssertImportTablesCompleted(struct["ImportTablesCompleted"]) end
	if struct["EstimatedTimeToCompletionInSeconds"] then M.AssertLongOptional(struct["EstimatedTimeToCompletionInSeconds"]) end
	if struct["ProgressInMegaBytes"] then M.AssertLongOptional(struct["ProgressInMegaBytes"]) end
	if struct["TargetClusterType"] then M.AssertString(struct["TargetClusterType"]) end
	if struct["TotalResizeDataInMegaBytes"] then M.AssertLongOptional(struct["TotalResizeDataInMegaBytes"]) end
	if struct["TargetNumberOfNodes"] then M.AssertIntegerOptional(struct["TargetNumberOfNodes"]) end
	if struct["ImportTablesInProgress"] then M.AssertImportTablesInProgress(struct["ImportTablesInProgress"]) end
	if struct["ImportTablesNotStarted"] then M.AssertImportTablesNotStarted(struct["ImportTablesNotStarted"]) end
	if struct["AvgResizeRateInMegaBytesPerSecond"] then M.AssertDoubleOptional(struct["AvgResizeRateInMegaBytesPerSecond"]) end
	if struct["ElapsedTimeInSeconds"] then M.AssertLongOptional(struct["ElapsedTimeInSeconds"]) end
	if struct["TargetNodeType"] then M.AssertString(struct["TargetNodeType"]) end
	for k,_ in pairs(struct) do
		assert(ResizeProgressMessage_keys[k], "ResizeProgressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeProgressMessage
-- &lt;p&gt;Describes the result of a cluster resize operation.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the resize operation.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;NONE&lt;/code&gt; | &lt;code&gt;IN_PROGRESS&lt;/code&gt; | &lt;code&gt;FAILED&lt;/code&gt; | &lt;code&gt;SUCCEEDED&lt;/code&gt; &lt;/p&gt;
-- @param ImportTablesCompleted [ImportTablesCompleted] &lt;p&gt;The names of tables that have been completely imported .&lt;/p&gt; &lt;p&gt;Valid Values: List of table names.&lt;/p&gt;
-- @param EstimatedTimeToCompletionInSeconds [LongOptional] &lt;p&gt;The estimated time remaining, in seconds, until the resize operation is complete. This value is calculated based on the average resize rate and the estimated amount of data remaining to be processed. Once the resize operation is complete, this value will be 0.&lt;/p&gt;
-- @param ProgressInMegaBytes [LongOptional] &lt;p&gt;While the resize operation is in progress, this value shows the current amount of data, in megabytes, that has been processed so far. When the resize operation is complete, this value shows the total amount of data, in megabytes, on the cluster, which may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data before resize).&lt;/p&gt;
-- @param TargetClusterType [String] &lt;p&gt;The cluster type after the resize operation is complete.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;multi-node&lt;/code&gt; | &lt;code&gt;single-node&lt;/code&gt; &lt;/p&gt;
-- @param TotalResizeDataInMegaBytes [LongOptional] &lt;p&gt;The estimated total amount of data, in megabytes, on the cluster before the resize operation began.&lt;/p&gt;
-- @param TargetNumberOfNodes [IntegerOptional] &lt;p&gt;The number of nodes that the cluster will have after the resize operation is complete.&lt;/p&gt;
-- @param ImportTablesInProgress [ImportTablesInProgress] &lt;p&gt;The names of tables that are being currently imported.&lt;/p&gt; &lt;p&gt;Valid Values: List of table names.&lt;/p&gt;
-- @param ImportTablesNotStarted [ImportTablesNotStarted] &lt;p&gt;The names of tables that have not been yet imported.&lt;/p&gt; &lt;p&gt;Valid Values: List of table names&lt;/p&gt;
-- @param AvgResizeRateInMegaBytesPerSecond [DoubleOptional] &lt;p&gt;The average rate of the resize operation over the last few minutes, measured in megabytes per second. After the resize operation completes, this value shows the average rate of the entire resize operation.&lt;/p&gt;
-- @param ElapsedTimeInSeconds [LongOptional] &lt;p&gt;The amount of seconds that have elapsed since the resize operation began. After the resize operation completes, this value shows the total actual time, in seconds, for the resize operation.&lt;/p&gt;
-- @param TargetNodeType [String] &lt;p&gt;The node type that the cluster will have after the resize operation is complete.&lt;/p&gt;
function M.ResizeProgressMessage(Status, ImportTablesCompleted, EstimatedTimeToCompletionInSeconds, ProgressInMegaBytes, TargetClusterType, TotalResizeDataInMegaBytes, TargetNumberOfNodes, ImportTablesInProgress, ImportTablesNotStarted, AvgResizeRateInMegaBytesPerSecond, ElapsedTimeInSeconds, TargetNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResizeProgressMessage")
	local t = { 
		["Status"] = Status,
		["ImportTablesCompleted"] = ImportTablesCompleted,
		["EstimatedTimeToCompletionInSeconds"] = EstimatedTimeToCompletionInSeconds,
		["ProgressInMegaBytes"] = ProgressInMegaBytes,
		["TargetClusterType"] = TargetClusterType,
		["TotalResizeDataInMegaBytes"] = TotalResizeDataInMegaBytes,
		["TargetNumberOfNodes"] = TargetNumberOfNodes,
		["ImportTablesInProgress"] = ImportTablesInProgress,
		["ImportTablesNotStarted"] = ImportTablesNotStarted,
		["AvgResizeRateInMegaBytesPerSecond"] = AvgResizeRateInMegaBytesPerSecond,
		["ElapsedTimeInSeconds"] = ElapsedTimeInSeconds,
		["TargetNodeType"] = TargetNodeType,
	}
	M.AssertResizeProgressMessage(t)
	return t
end

local ResourceNotFoundFault_keys = { nil }

function M.AssertResourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundFault_keys[k], "ResourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundFault
-- &lt;p&gt;The resource could not be found.&lt;/p&gt;
function M.ResourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
	}
	M.AssertResourceNotFoundFault(t)
	return t
end

local HsmConfigurationAlreadyExistsFault_keys = { nil }

function M.AssertHsmConfigurationAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmConfigurationAlreadyExistsFault_keys[k], "HsmConfigurationAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationAlreadyExistsFault
-- &lt;p&gt;There is already an existing Amazon Redshift HSM configuration with the specified identifier.&lt;/p&gt;
function M.HsmConfigurationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationAlreadyExistsFault")
	local t = { 
	}
	M.AssertHsmConfigurationAlreadyExistsFault(t)
	return t
end

local DescribeHsmConfigurationsMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "TagKeys" = true, "HsmConfigurationIdentifier" = true, nil }

function M.AssertDescribeHsmConfigurationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmConfigurationsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["HsmConfigurationIdentifier"] then M.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeHsmConfigurationsMessage_keys[k], "DescribeHsmConfigurationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmConfigurationsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeHsmConfigurations&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param HsmConfigurationIdentifier [String] &lt;p&gt;The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.&lt;/p&gt;
function M.DescribeHsmConfigurationsMessage(Marker, TagValues, MaxRecords, TagKeys, HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmConfigurationsMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["TagKeys"] = TagKeys,
		["HsmConfigurationIdentifier"] = HsmConfigurationIdentifier,
	}
	M.AssertDescribeHsmConfigurationsMessage(t)
	return t
end

local DescribeTableRestoreStatusMessage_keys = { "Marker" = true, "ClusterIdentifier" = true, "MaxRecords" = true, "TableRestoreRequestId" = true, nil }

function M.AssertDescribeTableRestoreStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableRestoreStatusMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TableRestoreRequestId"] then M.AssertString(struct["TableRestoreRequestId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTableRestoreStatusMessage_keys[k], "DescribeTableRestoreStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableRestoreStatusMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional pagination token provided by a previous &lt;code&gt;DescribeTableRestoreStatus&lt;/code&gt; request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the &lt;code&gt;MaxRecords&lt;/code&gt; parameter.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The Amazon Redshift cluster that the table is being restored to.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of records to include in the response. If more records exist than the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.&lt;/p&gt;
-- @param TableRestoreRequestId [String] &lt;p&gt;The identifier of the table restore request to return status for. If you don't specify a &lt;code&gt;TableRestoreRequestId&lt;/code&gt; value, then &lt;code&gt;DescribeTableRestoreStatus&lt;/code&gt; returns the status of all in-progress table restore requests.&lt;/p&gt;
function M.DescribeTableRestoreStatusMessage(Marker, ClusterIdentifier, MaxRecords, TableRestoreRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableRestoreStatusMessage")
	local t = { 
		["Marker"] = Marker,
		["ClusterIdentifier"] = ClusterIdentifier,
		["MaxRecords"] = MaxRecords,
		["TableRestoreRequestId"] = TableRestoreRequestId,
	}
	M.AssertDescribeTableRestoreStatusMessage(t)
	return t
end

local ClusterCredentials_keys = { "DbUser" = true, "Expiration" = true, "DbPassword" = true, nil }

function M.AssertClusterCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterCredentials to be of type 'table'")
	if struct["DbUser"] then M.AssertString(struct["DbUser"]) end
	if struct["Expiration"] then M.AssertTStamp(struct["Expiration"]) end
	if struct["DbPassword"] then M.AssertSensitiveString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(ClusterCredentials_keys[k], "ClusterCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterCredentials
-- &lt;p&gt;Temporary credentials with authorization to log in to an Amazon Redshift database. &lt;/p&gt;
-- @param DbUser [String] &lt;p&gt;A database user name that is authorized to log on to the database &lt;code&gt;DbName&lt;/code&gt; using the password &lt;code&gt;DbPassword&lt;/code&gt;. If the &lt;code&gt;DbGroups&lt;/code&gt; parameter is specifed, &lt;code&gt;DbUser&lt;/code&gt; is added to the listed groups for the current session. The user name is prefixed with &lt;code&gt;IAM:&lt;/code&gt; for an existing user name or &lt;code&gt;IAMA:&lt;/code&gt; if the user was auto-created. &lt;/p&gt;
-- @param Expiration [TStamp] &lt;p&gt;The date and time &lt;code&gt;DbPassword&lt;/code&gt; expires.&lt;/p&gt;
-- @param DbPassword [SensitiveString] &lt;p&gt;A temporary password that authorizes the user name returned by &lt;code&gt;DbUser&lt;/code&gt; to log on to the database &lt;code&gt;DbName&lt;/code&gt;. &lt;/p&gt;
function M.ClusterCredentials(DbUser, Expiration, DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterCredentials")
	local t = { 
		["DbUser"] = DbUser,
		["Expiration"] = Expiration,
		["DbPassword"] = DbPassword,
	}
	M.AssertClusterCredentials(t)
	return t
end

local ModifyEventSubscriptionResult_keys = { "EventSubscription" = true, nil }

function M.AssertModifyEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEventSubscriptionResult_keys[k], "ModifyEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionResult
--  
-- @param EventSubscription [EventSubscription]  
function M.ModifyEventSubscriptionResult(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertModifyEventSubscriptionResult(t)
	return t
end

local SnapshotCopyGrantMessage_keys = { "Marker" = true, "SnapshotCopyGrants" = true, nil }

function M.AssertSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["SnapshotCopyGrants"] then M.AssertSnapshotCopyGrantList(struct["SnapshotCopyGrants"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotCopyGrantMessage_keys[k], "SnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;code&gt;DescribeSnapshotCopyGrant&lt;/code&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt; &lt;p&gt;Constraints: You can specify either the &lt;b&gt;SnapshotCopyGrantName&lt;/b&gt; parameter or the &lt;b&gt;Marker&lt;/b&gt; parameter, but not both. &lt;/p&gt;
-- @param SnapshotCopyGrants [SnapshotCopyGrantList] &lt;p&gt;The list of &lt;code&gt;SnapshotCopyGrant&lt;/code&gt; objects.&lt;/p&gt;
function M.SnapshotCopyGrantMessage(Marker, SnapshotCopyGrants, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantMessage")
	local t = { 
		["Marker"] = Marker,
		["SnapshotCopyGrants"] = SnapshotCopyGrants,
	}
	M.AssertSnapshotCopyGrantMessage(t)
	return t
end

local HsmConfigurationQuotaExceededFault_keys = { nil }

function M.AssertHsmConfigurationQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(HsmConfigurationQuotaExceededFault_keys[k], "HsmConfigurationQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationQuotaExceededFault
-- &lt;p&gt;The quota for HSM configurations has been reached. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.HsmConfigurationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationQuotaExceededFault")
	local t = { 
	}
	M.AssertHsmConfigurationQuotaExceededFault(t)
	return t
end

local TableRestoreStatus_keys = { "Status" = true, "RequestTime" = true, "TotalDataInMegaBytes" = true, "SourceSchemaName" = true, "TargetDatabaseName" = true, "ProgressInMegaBytes" = true, "SourceTableName" = true, "TableRestoreRequestId" = true, "NewTableName" = true, "TargetSchemaName" = true, "Message" = true, "SourceDatabaseName" = true, "ClusterIdentifier" = true, "SnapshotIdentifier" = true, nil }

function M.AssertTableRestoreStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreStatus to be of type 'table'")
	if struct["Status"] then M.AssertTableRestoreStatusType(struct["Status"]) end
	if struct["RequestTime"] then M.AssertTStamp(struct["RequestTime"]) end
	if struct["TotalDataInMegaBytes"] then M.AssertLongOptional(struct["TotalDataInMegaBytes"]) end
	if struct["SourceSchemaName"] then M.AssertString(struct["SourceSchemaName"]) end
	if struct["TargetDatabaseName"] then M.AssertString(struct["TargetDatabaseName"]) end
	if struct["ProgressInMegaBytes"] then M.AssertLongOptional(struct["ProgressInMegaBytes"]) end
	if struct["SourceTableName"] then M.AssertString(struct["SourceTableName"]) end
	if struct["TableRestoreRequestId"] then M.AssertString(struct["TableRestoreRequestId"]) end
	if struct["NewTableName"] then M.AssertString(struct["NewTableName"]) end
	if struct["TargetSchemaName"] then M.AssertString(struct["TargetSchemaName"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceDatabaseName"] then M.AssertString(struct["SourceDatabaseName"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(TableRestoreStatus_keys[k], "TableRestoreStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreStatus
-- &lt;p&gt;Describes the status of a &lt;a&gt;RestoreTableFromClusterSnapshot&lt;/a&gt; operation.&lt;/p&gt;
-- @param Status [TableRestoreStatusType] &lt;p&gt;A value that describes the current state of the table restore request.&lt;/p&gt; &lt;p&gt;Valid Values: &lt;code&gt;SUCCEEDED&lt;/code&gt;, &lt;code&gt;FAILED&lt;/code&gt;, &lt;code&gt;CANCELED&lt;/code&gt;, &lt;code&gt;PENDING&lt;/code&gt;, &lt;code&gt;IN_PROGRESS&lt;/code&gt; &lt;/p&gt;
-- @param RequestTime [TStamp] &lt;p&gt;The time that the table restore request was made, in Universal Coordinated Time (UTC).&lt;/p&gt;
-- @param TotalDataInMegaBytes [LongOptional] &lt;p&gt;The total amount of data to restore to the new table, in megabytes (MB).&lt;/p&gt;
-- @param SourceSchemaName [String] &lt;p&gt;The name of the source schema that contains the table being restored.&lt;/p&gt;
-- @param TargetDatabaseName [String] &lt;p&gt;The name of the database to restore the table to.&lt;/p&gt;
-- @param ProgressInMegaBytes [LongOptional] &lt;p&gt;The amount of data restored to the new table so far, in megabytes (MB).&lt;/p&gt;
-- @param SourceTableName [String] &lt;p&gt;The name of the source table being restored.&lt;/p&gt;
-- @param TableRestoreRequestId [String] &lt;p&gt;The unique identifier for the table restore request.&lt;/p&gt;
-- @param NewTableName [String] &lt;p&gt;The name of the table to create as a result of the table restore request.&lt;/p&gt;
-- @param TargetSchemaName [String] &lt;p&gt;The name of the schema to restore the table to.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;A description of the status of the table restore request. Status values include &lt;code&gt;SUCCEEDED&lt;/code&gt;, &lt;code&gt;FAILED&lt;/code&gt;, &lt;code&gt;CANCELED&lt;/code&gt;, &lt;code&gt;PENDING&lt;/code&gt;, &lt;code&gt;IN_PROGRESS&lt;/code&gt;.&lt;/p&gt;
-- @param SourceDatabaseName [String] &lt;p&gt;The name of the source database that contains the table being restored.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the Amazon Redshift cluster that the table is being restored to.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;The identifier of the snapshot that the table is being restored from.&lt;/p&gt;
function M.TableRestoreStatus(Status, RequestTime, TotalDataInMegaBytes, SourceSchemaName, TargetDatabaseName, ProgressInMegaBytes, SourceTableName, TableRestoreRequestId, NewTableName, TargetSchemaName, Message, SourceDatabaseName, ClusterIdentifier, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreStatus")
	local t = { 
		["Status"] = Status,
		["RequestTime"] = RequestTime,
		["TotalDataInMegaBytes"] = TotalDataInMegaBytes,
		["SourceSchemaName"] = SourceSchemaName,
		["TargetDatabaseName"] = TargetDatabaseName,
		["ProgressInMegaBytes"] = ProgressInMegaBytes,
		["SourceTableName"] = SourceTableName,
		["TableRestoreRequestId"] = TableRestoreRequestId,
		["NewTableName"] = NewTableName,
		["TargetSchemaName"] = TargetSchemaName,
		["Message"] = Message,
		["SourceDatabaseName"] = SourceDatabaseName,
		["ClusterIdentifier"] = ClusterIdentifier,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertTableRestoreStatus(t)
	return t
end

local SnapshotCopyAlreadyEnabledFault_keys = { nil }

function M.AssertSnapshotCopyAlreadyEnabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyAlreadyEnabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SnapshotCopyAlreadyEnabledFault_keys[k], "SnapshotCopyAlreadyEnabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyAlreadyEnabledFault
-- &lt;p&gt;The cluster already has cross-region snapshot copy enabled.&lt;/p&gt;
function M.SnapshotCopyAlreadyEnabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyAlreadyEnabledFault")
	local t = { 
	}
	M.AssertSnapshotCopyAlreadyEnabledFault(t)
	return t
end

local DeleteClusterMessage_keys = { "FinalClusterSnapshotIdentifier" = true, "ClusterIdentifier" = true, "SkipFinalClusterSnapshot" = true, nil }

function M.AssertDeleteClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["FinalClusterSnapshotIdentifier"] then M.AssertString(struct["FinalClusterSnapshotIdentifier"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["SkipFinalClusterSnapshot"] then M.AssertBoolean(struct["SkipFinalClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterMessage_keys[k], "DeleteClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterMessage
-- &lt;p/&gt;
-- @param FinalClusterSnapshotIdentifier [String] &lt;p&gt;The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, &lt;i&gt;SkipFinalClusterSnapshot&lt;/i&gt; must be &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The identifier of the cluster to be deleted.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain lowercase characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param SkipFinalClusterSnapshot [Boolean] &lt;p&gt;Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If &lt;code&gt;true&lt;/code&gt;, a final cluster snapshot is not created. If &lt;code&gt;false&lt;/code&gt;, a final cluster snapshot is created before the cluster is deleted. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;i&gt;FinalClusterSnapshotIdentifier&lt;/i&gt; parameter must be specified if &lt;i&gt;SkipFinalClusterSnapshot&lt;/i&gt; is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Default: &lt;code&gt;false&lt;/code&gt; &lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.DeleteClusterMessage(FinalClusterSnapshotIdentifier, ClusterIdentifier, SkipFinalClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterMessage")
	local t = { 
		["FinalClusterSnapshotIdentifier"] = FinalClusterSnapshotIdentifier,
		["ClusterIdentifier"] = ClusterIdentifier,
		["SkipFinalClusterSnapshot"] = SkipFinalClusterSnapshot,
	}
	M.AssertDeleteClusterMessage(t)
	return t
end

local DefaultClusterParameters_keys = { "Marker" = true, "ParameterGroupFamily" = true, "Parameters" = true, nil }

function M.AssertDefaultClusterParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultClusterParameters to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ParameterGroupFamily"] then M.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DefaultClusterParameters_keys[k], "DefaultClusterParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultClusterParameters
-- &lt;p&gt;Describes the default cluster parameters for a parameter group family.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ParameterGroupFamily [String] &lt;p&gt;The name of the cluster parameter group family to which the engine default parameters apply.&lt;/p&gt;
-- @param Parameters [ParametersList] &lt;p&gt;The list of cluster default parameters.&lt;/p&gt;
function M.DefaultClusterParameters(Marker, ParameterGroupFamily, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultClusterParameters")
	local t = { 
		["Marker"] = Marker,
		["ParameterGroupFamily"] = ParameterGroupFamily,
		["Parameters"] = Parameters,
	}
	M.AssertDefaultClusterParameters(t)
	return t
end

local ClusterParameterGroupNameMessage_keys = { "ParameterGroupStatus" = true, "ParameterGroupName" = true, nil }

function M.AssertClusterParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupNameMessage to be of type 'table'")
	if struct["ParameterGroupStatus"] then M.AssertString(struct["ParameterGroupStatus"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupNameMessage_keys[k], "ClusterParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupNameMessage
-- &lt;p/&gt;
-- @param ParameterGroupStatus [String] &lt;p&gt;The status of the parameter group. For example, if you made a change to a parameter group name-value pair, then the change could be pending a reboot of an associated cluster.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group.&lt;/p&gt;
function M.ClusterParameterGroupNameMessage(ParameterGroupStatus, ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupNameMessage")
	local t = { 
		["ParameterGroupStatus"] = ParameterGroupStatus,
		["ParameterGroupName"] = ParameterGroupName,
	}
	M.AssertClusterParameterGroupNameMessage(t)
	return t
end

local InvalidClusterSecurityGroupStateFault_keys = { nil }

function M.AssertInvalidClusterSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterSecurityGroupStateFault_keys[k], "InvalidClusterSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSecurityGroupStateFault
-- &lt;p&gt;The state of the cluster security group is not &lt;code&gt;available&lt;/code&gt;. &lt;/p&gt;
function M.InvalidClusterSecurityGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSecurityGroupStateFault")
	local t = { 
	}
	M.AssertInvalidClusterSecurityGroupStateFault(t)
	return t
end

local CreateTagsMessage_keys = { "ResourceName" = true, "Tags" = true, nil }

function M.AssertCreateTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagsMessage_keys[k], "CreateTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsMessage
-- &lt;p&gt;Contains the output from the &lt;code&gt;CreateTags&lt;/code&gt; action. &lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, &lt;code&gt;arn:aws:redshift:us-east-1:123456789:cluster:t1&lt;/code&gt;. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter &lt;code&gt;Key&lt;/code&gt; and the corresponding value is passed in with the parameter &lt;code&gt;Value&lt;/code&gt;. The &lt;code&gt;Key&lt;/code&gt; and &lt;code&gt;Value&lt;/code&gt; parameters are separated by a comma (,). Separate multiple tags with a space. For example, &lt;code&gt;--tags &quot;Key&quot;=&quot;owner&quot;,&quot;Value&quot;=&quot;admin&quot; &quot;Key&quot;=&quot;environment&quot;,&quot;Value&quot;=&quot;test&quot; &quot;Key&quot;=&quot;version&quot;,&quot;Value&quot;=&quot;1.0&quot;&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.CreateTagsMessage(ResourceName, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsMessage")
	local t = { 
		["ResourceName"] = ResourceName,
		["Tags"] = Tags,
	}
	M.AssertCreateTagsMessage(t)
	return t
end

local InsufficientS3BucketPolicyFault_keys = { nil }

function M.AssertInsufficientS3BucketPolicyFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientS3BucketPolicyFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientS3BucketPolicyFault_keys[k], "InsufficientS3BucketPolicyFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientS3BucketPolicyFault
-- &lt;p&gt;The cluster does not have read bucket or put object permissions on the S3 bucket specified when enabling logging.&lt;/p&gt;
function M.InsufficientS3BucketPolicyFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientS3BucketPolicyFault")
	local t = { 
	}
	M.AssertInsufficientS3BucketPolicyFault(t)
	return t
end

local RotateEncryptionKeyResult_keys = { "Cluster" = true, nil }

function M.AssertRotateEncryptionKeyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateEncryptionKeyResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(RotateEncryptionKeyResult_keys[k], "RotateEncryptionKeyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateEncryptionKeyResult
--  
-- @param Cluster [Cluster]  
function M.RotateEncryptionKeyResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RotateEncryptionKeyResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertRotateEncryptionKeyResult(t)
	return t
end

local DeleteClusterSubnetGroupMessage_keys = { "ClusterSubnetGroupName" = true, nil }

function M.AssertDeleteClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	if struct["ClusterSubnetGroupName"] then M.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteClusterSubnetGroupMessage_keys[k], "DeleteClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSubnetGroupMessage
-- &lt;p/&gt;
-- @param ClusterSubnetGroupName [String] &lt;p&gt;The name of the cluster subnet group name to be deleted.&lt;/p&gt;
-- Required parameter: ClusterSubnetGroupName
function M.DeleteClusterSubnetGroupMessage(ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSubnetGroupMessage")
	local t = { 
		["ClusterSubnetGroupName"] = ClusterSubnetGroupName,
	}
	M.AssertDeleteClusterSubnetGroupMessage(t)
	return t
end

local DescribeClusterSecurityGroupsMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "TagKeys" = true, "ClusterSecurityGroupName" = true, nil }

function M.AssertDescribeClusterSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ClusterSecurityGroupName"] then M.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClusterSecurityGroupsMessage_keys[k], "DescribeClusterSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSecurityGroupsMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusterSecurityGroups&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt; &lt;p&gt;Constraints: You can specify either the &lt;b&gt;ClusterSecurityGroupName&lt;/b&gt; parameter or the &lt;b&gt;Marker&lt;/b&gt; parameter, but not both. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param ClusterSecurityGroupName [String] &lt;p&gt;The name of a cluster security group for which you are requesting details. You can specify either the &lt;b&gt;Marker&lt;/b&gt; parameter or a &lt;b&gt;ClusterSecurityGroupName&lt;/b&gt; parameter, but not both. &lt;/p&gt; &lt;p&gt; Example: &lt;code&gt;securitygroup1&lt;/code&gt; &lt;/p&gt;
function M.DescribeClusterSecurityGroupsMessage(Marker, TagValues, MaxRecords, TagKeys, ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSecurityGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["TagKeys"] = TagKeys,
		["ClusterSecurityGroupName"] = ClusterSecurityGroupName,
	}
	M.AssertDescribeClusterSecurityGroupsMessage(t)
	return t
end

local CopyToRegionDisabledFault_keys = { nil }

function M.AssertCopyToRegionDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyToRegionDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CopyToRegionDisabledFault_keys[k], "CopyToRegionDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyToRegionDisabledFault
-- &lt;p&gt;Cross-region snapshot copy was temporarily disabled. Try your request again.&lt;/p&gt;
function M.CopyToRegionDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyToRegionDisabledFault")
	local t = { 
	}
	M.AssertCopyToRegionDisabledFault(t)
	return t
end

local InvalidHsmConfigurationStateFault_keys = { nil }

function M.AssertInvalidHsmConfigurationStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHsmConfigurationStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidHsmConfigurationStateFault_keys[k], "InvalidHsmConfigurationStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHsmConfigurationStateFault
-- &lt;p&gt;The specified HSM configuration is not in the &lt;code&gt;available&lt;/code&gt; state, or it is still in use by one or more Amazon Redshift clusters.&lt;/p&gt;
function M.InvalidHsmConfigurationStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHsmConfigurationStateFault")
	local t = { 
	}
	M.AssertInvalidHsmConfigurationStateFault(t)
	return t
end

local CreateClusterSnapshotMessage_keys = { "ClusterIdentifier" = true, "Tags" = true, "SnapshotIdentifier" = true, nil }

function M.AssertCreateClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSnapshotMessage_keys[k], "CreateClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSnapshotMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The cluster identifier for which you want a snapshot.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param SnapshotIdentifier [String] &lt;p&gt;A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cannot be null, empty, or blank&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 255 alphanumeric characters or hyphens&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Example: &lt;code&gt;my-snapshot-id&lt;/code&gt; &lt;/p&gt;
-- Required parameter: SnapshotIdentifier
-- Required parameter: ClusterIdentifier
function M.CreateClusterSnapshotMessage(ClusterIdentifier, Tags, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSnapshotMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
		["Tags"] = Tags,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertCreateClusterSnapshotMessage(t)
	return t
end

local SnapshotMessage_keys = { "Marker" = true, "Snapshots" = true, nil }

function M.AssertSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Snapshots"] then M.AssertSnapshotList(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(SnapshotMessage_keys[k], "SnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusterSnapshots&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param Snapshots [SnapshotList] &lt;p&gt;A list of &lt;a&gt;Snapshot&lt;/a&gt; instances. &lt;/p&gt;
function M.SnapshotMessage(Marker, Snapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotMessage")
	local t = { 
		["Marker"] = Marker,
		["Snapshots"] = Snapshots,
	}
	M.AssertSnapshotMessage(t)
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
-- &lt;p&gt;The specified CIDR block or EC2 security group is already authorized for the specified cluster security group.&lt;/p&gt;
function M.AuthorizationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationAlreadyExistsFault")
	local t = { 
	}
	M.AssertAuthorizationAlreadyExistsFault(t)
	return t
end

local InvalidClusterParameterGroupStateFault_keys = { nil }

function M.AssertInvalidClusterParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterParameterGroupStateFault_keys[k], "InvalidClusterParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterParameterGroupStateFault
-- &lt;p&gt;The cluster parameter group action can not be completed because another task is in progress that involves the parameter group. Wait a few moments and try the operation again.&lt;/p&gt;
function M.InvalidClusterParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterParameterGroupStateFault")
	local t = { 
	}
	M.AssertInvalidClusterParameterGroupStateFault(t)
	return t
end

local CreateSnapshotCopyGrantMessage_keys = { "Tags" = true, "SnapshotCopyGrantName" = true, "KmsKeyId" = true, nil }

function M.AssertCreateSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotCopyGrantMessage to be of type 'table'")
	assert(struct["SnapshotCopyGrantName"], "Expected key SnapshotCopyGrantName to exist in table")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(CreateSnapshotCopyGrantMessage_keys[k], "CreateSnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotCopyGrantMessage
-- &lt;p&gt;The result of the &lt;code&gt;CreateSnapshotCopyGrant&lt;/code&gt; action.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant. This name must be unique in the region for the AWS account.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must contain from 1 to 63 alphanumeric characters or hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Alphabetic characters must be lowercase.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique for all clusters within an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param KmsKeyId [String] &lt;p&gt;The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used.&lt;/p&gt;
-- Required parameter: SnapshotCopyGrantName
function M.CreateSnapshotCopyGrantMessage(Tags, SnapshotCopyGrantName, KmsKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotCopyGrantMessage")
	local t = { 
		["Tags"] = Tags,
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
		["KmsKeyId"] = KmsKeyId,
	}
	M.AssertCreateSnapshotCopyGrantMessage(t)
	return t
end

local ElasticIpStatus_keys = { "Status" = true, "ElasticIp" = true, nil }

function M.AssertElasticIpStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticIpStatus to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["ElasticIp"] then M.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(ElasticIpStatus_keys[k], "ElasticIpStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticIpStatus
-- &lt;p&gt;Describes the status of the elastic IP (EIP) address.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the elastic IP (EIP) address.&lt;/p&gt;
-- @param ElasticIp [String] &lt;p&gt;The elastic IP (EIP) address for the cluster.&lt;/p&gt;
function M.ElasticIpStatus(Status, ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticIpStatus")
	local t = { 
		["Status"] = Status,
		["ElasticIp"] = ElasticIp,
	}
	M.AssertElasticIpStatus(t)
	return t
end

local ClusterVersionsMessage_keys = { "Marker" = true, "ClusterVersions" = true, nil }

function M.AssertClusterVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterVersionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ClusterVersions"] then M.AssertClusterVersionList(struct["ClusterVersions"]) end
	for k,_ in pairs(struct) do
		assert(ClusterVersionsMessage_keys[k], "ClusterVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterVersionsMessage
-- &lt;p&gt;Contains the output from the &lt;a&gt;DescribeClusterVersions&lt;/a&gt; action. &lt;/p&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ClusterVersions [ClusterVersionList] &lt;p&gt;A list of &lt;code&gt;Version&lt;/code&gt; elements. &lt;/p&gt;
function M.ClusterVersionsMessage(Marker, ClusterVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterVersionsMessage")
	local t = { 
		["Marker"] = Marker,
		["ClusterVersions"] = ClusterVersions,
	}
	M.AssertClusterVersionsMessage(t)
	return t
end

local ReservedNodeAlreadyExistsFault_keys = { nil }

function M.AssertReservedNodeAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedNodeAlreadyExistsFault_keys[k], "ReservedNodeAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeAlreadyExistsFault
-- &lt;p&gt;User already has a reservation with the given identifier.&lt;/p&gt;
function M.ReservedNodeAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeAlreadyExistsFault")
	local t = { 
	}
	M.AssertReservedNodeAlreadyExistsFault(t)
	return t
end

local ClusterSecurityGroupAlreadyExistsFault_keys = { nil }

function M.AssertClusterSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSecurityGroupAlreadyExistsFault_keys[k], "ClusterSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupAlreadyExistsFault
-- &lt;p&gt;A cluster security group with the same name already exists.&lt;/p&gt;
function M.ClusterSecurityGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterSecurityGroupAlreadyExistsFault(t)
	return t
end

local ClusterParameterGroupNotFoundFault_keys = { nil }

function M.AssertClusterParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupNotFoundFault_keys[k], "ClusterParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupNotFoundFault
-- &lt;p&gt;The parameter group name does not refer to an existing parameter group.&lt;/p&gt;
function M.ClusterParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupNotFoundFault")
	local t = { 
	}
	M.AssertClusterParameterGroupNotFoundFault(t)
	return t
end

local RebootClusterResult_keys = { "Cluster" = true, nil }

function M.AssertRebootClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootClusterResult to be of type 'table'")
	if struct["Cluster"] then M.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(RebootClusterResult_keys[k], "RebootClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootClusterResult
--  
-- @param Cluster [Cluster]  
function M.RebootClusterResult(Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootClusterResult")
	local t = { 
		["Cluster"] = Cluster,
	}
	M.AssertRebootClusterResult(t)
	return t
end

local ClusterQuotaExceededFault_keys = { nil }

function M.AssertClusterQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterQuotaExceededFault_keys[k], "ClusterQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterQuotaExceededFault
-- &lt;p&gt;The request would exceed the allowed number of cluster instances for this account. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ClusterQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterQuotaExceededFault(t)
	return t
end

local CreateClusterParameterGroupMessage_keys = { "ParameterGroupFamily" = true, "Tags" = true, "ParameterGroupName" = true, "Description" = true, nil }

function M.AssertCreateClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["ParameterGroupFamily"], "Expected key ParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["ParameterGroupFamily"] then M.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterParameterGroupMessage_keys[k], "CreateClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterParameterGroupMessage
-- &lt;p/&gt;
-- @param ParameterGroupFamily [String] &lt;p&gt;The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.&lt;/p&gt; &lt;p&gt;To get a list of valid parameter group family names, you can call &lt;a&gt;DescribeClusterParameterGroups&lt;/a&gt;. By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is &quot;redshift-1.0&quot;. &lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;A list of tag instances.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Must be 1 to 255 alphanumeric characters or hyphens&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;First character must be a letter.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cannot end with a hyphen or contain two consecutive hyphens.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be unique withing your AWS account.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;This value is stored as a lower-case string.&lt;/p&gt; &lt;/note&gt;
-- @param Description [String] &lt;p&gt;A description of the parameter group.&lt;/p&gt;
-- Required parameter: ParameterGroupName
-- Required parameter: ParameterGroupFamily
-- Required parameter: Description
function M.CreateClusterParameterGroupMessage(ParameterGroupFamily, Tags, ParameterGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupFamily"] = ParameterGroupFamily,
		["Tags"] = Tags,
		["ParameterGroupName"] = ParameterGroupName,
		["Description"] = Description,
	}
	M.AssertCreateClusterParameterGroupMessage(t)
	return t
end

local SNSTopicArnNotFoundFault_keys = { nil }

function M.AssertSNSTopicArnNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSTopicArnNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SNSTopicArnNotFoundFault_keys[k], "SNSTopicArnNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSTopicArnNotFoundFault
-- &lt;p&gt;An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not exist.&lt;/p&gt;
function M.SNSTopicArnNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSTopicArnNotFoundFault")
	local t = { 
	}
	M.AssertSNSTopicArnNotFoundFault(t)
	return t
end

local ReservedNodesMessage_keys = { "Marker" = true, "ReservedNodes" = true, nil }

function M.AssertReservedNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedNodes"] then M.AssertReservedNodeList(struct["ReservedNodes"]) end
	for k,_ in pairs(struct) do
		assert(ReservedNodesMessage_keys[k], "ReservedNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodesMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param ReservedNodes [ReservedNodeList] &lt;p&gt;The list of &lt;code&gt;ReservedNode&lt;/code&gt; objects.&lt;/p&gt;
function M.ReservedNodesMessage(Marker, ReservedNodes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodesMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedNodes"] = ReservedNodes,
	}
	M.AssertReservedNodesMessage(t)
	return t
end

local TableRestoreNotFoundFault_keys = { nil }

function M.AssertTableRestoreNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TableRestoreNotFoundFault_keys[k], "TableRestoreNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreNotFoundFault
-- &lt;p&gt;The specified &lt;code&gt;TableRestoreRequestId&lt;/code&gt; value was not found.&lt;/p&gt;
function M.TableRestoreNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreNotFoundFault")
	local t = { 
	}
	M.AssertTableRestoreNotFoundFault(t)
	return t
end

local RotateEncryptionKeyMessage_keys = { "ClusterIdentifier" = true, nil }

function M.AssertRotateEncryptionKeyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateEncryptionKeyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RotateEncryptionKeyMessage_keys[k], "RotateEncryptionKeyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateEncryptionKeyMessage
-- &lt;p/&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of the cluster that you want to rotate the encryption keys for.&lt;/p&gt; &lt;p&gt;Constraints: Must be the name of valid cluster that has encryption enabled.&lt;/p&gt;
-- Required parameter: ClusterIdentifier
function M.RotateEncryptionKeyMessage(ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RotateEncryptionKeyMessage")
	local t = { 
		["ClusterIdentifier"] = ClusterIdentifier,
	}
	M.AssertRotateEncryptionKeyMessage(t)
	return t
end

local DescribeSnapshotCopyGrantsMessage_keys = { "Marker" = true, "TagValues" = true, "MaxRecords" = true, "SnapshotCopyGrantName" = true, "TagKeys" = true, nil }

function M.AssertDescribeSnapshotCopyGrantsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotCopyGrantsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SnapshotCopyGrantName"] then M.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSnapshotCopyGrantsMessage_keys[k], "DescribeSnapshotCopyGrantsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotCopyGrantsMessage
-- &lt;p&gt;The result of the &lt;code&gt;DescribeSnapshotCopyGrants&lt;/code&gt; action.&lt;/p&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;code&gt;DescribeSnapshotCopyGrant&lt;/code&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt; &lt;p&gt;Constraints: You can specify either the &lt;b&gt;SnapshotCopyGrantName&lt;/b&gt; parameter or the &lt;b&gt;Marker&lt;/b&gt; parameter, but not both. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
-- @param SnapshotCopyGrantName [String] &lt;p&gt;The name of the snapshot copy grant.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.&lt;/p&gt;
function M.DescribeSnapshotCopyGrantsMessage(Marker, TagValues, MaxRecords, SnapshotCopyGrantName, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotCopyGrantsMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["MaxRecords"] = MaxRecords,
		["SnapshotCopyGrantName"] = SnapshotCopyGrantName,
		["TagKeys"] = TagKeys,
	}
	M.AssertDescribeSnapshotCopyGrantsMessage(t)
	return t
end

local ReservedNodeOffering_keys = { "OfferingType" = true, "FixedPrice" = true, "NodeType" = true, "UsagePrice" = true, "RecurringCharges" = true, "Duration" = true, "ReservedNodeOfferingId" = true, "CurrencyCode" = true, nil }

function M.AssertReservedNodeOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOffering to be of type 'table'")
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["ReservedNodeOfferingId"] then M.AssertString(struct["ReservedNodeOfferingId"]) end
	if struct["CurrencyCode"] then M.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(ReservedNodeOffering_keys[k], "ReservedNodeOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOffering
-- &lt;p&gt;Describes a reserved node offering.&lt;/p&gt;
-- @param OfferingType [String] &lt;p&gt;The anticipated utilization of the reserved node, as defined in the reserved node offering.&lt;/p&gt;
-- @param FixedPrice [Double] &lt;p&gt;The upfront fixed charge you will pay to purchase the specific reserved node offering.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type offered by the reserved node offering.&lt;/p&gt;
-- @param UsagePrice [Double] &lt;p&gt;The rate you are charged for each hour the cluster that is using the offering is running.&lt;/p&gt;
-- @param RecurringCharges [RecurringChargeList] &lt;p&gt;The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.&lt;/p&gt;
-- @param Duration [Integer] &lt;p&gt;The duration, in seconds, for which the offering will reserve the node.&lt;/p&gt;
-- @param ReservedNodeOfferingId [String] &lt;p&gt;The offering identifier.&lt;/p&gt;
-- @param CurrencyCode [String] &lt;p&gt;The currency code for the compute nodes offering.&lt;/p&gt;
function M.ReservedNodeOffering(OfferingType, FixedPrice, NodeType, UsagePrice, RecurringCharges, Duration, ReservedNodeOfferingId, CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOffering")
	local t = { 
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["NodeType"] = NodeType,
		["UsagePrice"] = UsagePrice,
		["RecurringCharges"] = RecurringCharges,
		["Duration"] = Duration,
		["ReservedNodeOfferingId"] = ReservedNodeOfferingId,
		["CurrencyCode"] = CurrencyCode,
	}
	M.AssertReservedNodeOffering(t)
	return t
end

local ClusterParameterGroup_keys = { "ParameterGroupFamily" = true, "Tags" = true, "ParameterGroupName" = true, "Description" = true, nil }

function M.AssertClusterParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroup to be of type 'table'")
	if struct["ParameterGroupFamily"] then M.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["ParameterGroupName"] then M.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroup_keys[k], "ClusterParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroup
-- &lt;p&gt;Describes a parameter group.&lt;/p&gt;
-- @param ParameterGroupFamily [String] &lt;p&gt;The name of the cluster parameter group family that this cluster parameter group is compatible with.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the cluster parameter group.&lt;/p&gt;
-- @param ParameterGroupName [String] &lt;p&gt;The name of the cluster parameter group.&lt;/p&gt;
-- @param Description [String] &lt;p&gt;The description of the parameter group.&lt;/p&gt;
function M.ClusterParameterGroup(ParameterGroupFamily, Tags, ParameterGroupName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroup")
	local t = { 
		["ParameterGroupFamily"] = ParameterGroupFamily,
		["Tags"] = Tags,
		["ParameterGroupName"] = ParameterGroupName,
		["Description"] = Description,
	}
	M.AssertClusterParameterGroup(t)
	return t
end

local CreateClusterParameterGroupResult_keys = { "ClusterParameterGroup" = true, nil }

function M.AssertCreateClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterParameterGroupResult to be of type 'table'")
	if struct["ClusterParameterGroup"] then M.AssertClusterParameterGroup(struct["ClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterParameterGroupResult_keys[k], "CreateClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterParameterGroupResult
--  
-- @param ClusterParameterGroup [ClusterParameterGroup]  
function M.CreateClusterParameterGroupResult(ClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterParameterGroupResult")
	local t = { 
		["ClusterParameterGroup"] = ClusterParameterGroup,
	}
	M.AssertCreateClusterParameterGroupResult(t)
	return t
end

local CreateClusterSubnetGroupResult_keys = { "ClusterSubnetGroup" = true, nil }

function M.AssertCreateClusterSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSubnetGroupResult to be of type 'table'")
	if struct["ClusterSubnetGroup"] then M.AssertClusterSubnetGroup(struct["ClusterSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateClusterSubnetGroupResult_keys[k], "CreateClusterSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSubnetGroupResult
--  
-- @param ClusterSubnetGroup [ClusterSubnetGroup]  
function M.CreateClusterSubnetGroupResult(ClusterSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSubnetGroupResult")
	local t = { 
		["ClusterSubnetGroup"] = ClusterSubnetGroup,
	}
	M.AssertCreateClusterSubnetGroupResult(t)
	return t
end

local TableRestoreStatusMessage_keys = { "Marker" = true, "TableRestoreStatusDetails" = true, nil }

function M.AssertTableRestoreStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreStatusMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TableRestoreStatusDetails"] then M.AssertTableRestoreStatusList(struct["TableRestoreStatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(TableRestoreStatusMessage_keys[k], "TableRestoreStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreStatusMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A pagination token that can be used in a subsequent &lt;a&gt;DescribeTableRestoreStatus&lt;/a&gt; request.&lt;/p&gt;
-- @param TableRestoreStatusDetails [TableRestoreStatusList] &lt;p&gt;A list of status details for one or more table restore requests.&lt;/p&gt;
function M.TableRestoreStatusMessage(Marker, TableRestoreStatusDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreStatusMessage")
	local t = { 
		["Marker"] = Marker,
		["TableRestoreStatusDetails"] = TableRestoreStatusDetails,
	}
	M.AssertTableRestoreStatusMessage(t)
	return t
end

local InvalidClusterSubnetGroupStateFault_keys = { nil }

function M.AssertInvalidClusterSubnetGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSubnetGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidClusterSubnetGroupStateFault_keys[k], "InvalidClusterSubnetGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSubnetGroupStateFault
-- &lt;p&gt;The cluster subnet group cannot be deleted because it is in use.&lt;/p&gt;
function M.InvalidClusterSubnetGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSubnetGroupStateFault")
	local t = { 
	}
	M.AssertInvalidClusterSubnetGroupStateFault(t)
	return t
end

local DescribeClustersMessage_keys = { "Marker" = true, "TagValues" = true, "ClusterIdentifier" = true, "TagKeys" = true, "MaxRecords" = true, nil }

function M.AssertDescribeClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["TagValues"] then M.AssertTagValueList(struct["TagValues"]) end
	if struct["ClusterIdentifier"] then M.AssertString(struct["ClusterIdentifier"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(DescribeClustersMessage_keys[k], "DescribeClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;An optional parameter that specifies the starting point to return a set of response records. When the results of a &lt;a&gt;DescribeClusters&lt;/a&gt; request exceed the value specified in &lt;code&gt;MaxRecords&lt;/code&gt;, AWS returns a value in the &lt;code&gt;Marker&lt;/code&gt; field of the response. You can retrieve the next set of response records by providing the returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the request. &lt;/p&gt; &lt;p&gt;Constraints: You can specify either the &lt;b&gt;ClusterIdentifier&lt;/b&gt; parameter or the &lt;b&gt;Marker&lt;/b&gt; parameter, but not both. &lt;/p&gt;
-- @param TagValues [TagValueList] &lt;p&gt;A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called &lt;code&gt;admin&lt;/code&gt; and &lt;code&gt;test&lt;/code&gt;. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.&lt;/p&gt;
-- @param ClusterIdentifier [String] &lt;p&gt;The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive.&lt;/p&gt; &lt;p&gt;The default is that all clusters defined for an account are returned.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called &lt;code&gt;owner&lt;/code&gt; and &lt;code&gt;environment&lt;/code&gt;. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them.&lt;/p&gt;
-- @param MaxRecords [IntegerOptional] &lt;p&gt;The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified &lt;code&gt;MaxRecords&lt;/code&gt; value, a value is returned in a &lt;code&gt;marker&lt;/code&gt; field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. &lt;/p&gt; &lt;p&gt;Default: &lt;code&gt;100&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraints: minimum 20, maximum 100.&lt;/p&gt;
function M.DescribeClustersMessage(Marker, TagValues, ClusterIdentifier, TagKeys, MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersMessage")
	local t = { 
		["Marker"] = Marker,
		["TagValues"] = TagValues,
		["ClusterIdentifier"] = ClusterIdentifier,
		["TagKeys"] = TagKeys,
		["MaxRecords"] = MaxRecords,
	}
	M.AssertDescribeClustersMessage(t)
	return t
end

local UnknownSnapshotCopyRegionFault_keys = { nil }

function M.AssertUnknownSnapshotCopyRegionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnknownSnapshotCopyRegionFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnknownSnapshotCopyRegionFault_keys[k], "UnknownSnapshotCopyRegionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnknownSnapshotCopyRegionFault
-- &lt;p&gt;The specified region is incorrect or does not exist.&lt;/p&gt;
function M.UnknownSnapshotCopyRegionFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnknownSnapshotCopyRegionFault")
	local t = { 
	}
	M.AssertUnknownSnapshotCopyRegionFault(t)
	return t
end

local OrderableClusterOption_keys = { "NodeType" = true, "AvailabilityZones" = true, "ClusterVersion" = true, "ClusterType" = true, nil }

function M.AssertOrderableClusterOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableClusterOption to be of type 'table'")
	if struct["NodeType"] then M.AssertString(struct["NodeType"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["ClusterVersion"] then M.AssertString(struct["ClusterVersion"]) end
	if struct["ClusterType"] then M.AssertString(struct["ClusterType"]) end
	for k,_ in pairs(struct) do
		assert(OrderableClusterOption_keys[k], "OrderableClusterOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableClusterOption
-- &lt;p&gt;Describes an orderable cluster option.&lt;/p&gt;
-- @param NodeType [String] &lt;p&gt;The node type for the orderable cluster.&lt;/p&gt;
-- @param AvailabilityZones [AvailabilityZoneList] &lt;p&gt;A list of availability zones for the orderable cluster.&lt;/p&gt;
-- @param ClusterVersion [String] &lt;p&gt;The version of the orderable cluster.&lt;/p&gt;
-- @param ClusterType [String] &lt;p&gt;The cluster type, for example &lt;code&gt;multi-node&lt;/code&gt;. &lt;/p&gt;
function M.OrderableClusterOption(NodeType, AvailabilityZones, ClusterVersion, ClusterType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableClusterOption")
	local t = { 
		["NodeType"] = NodeType,
		["AvailabilityZones"] = AvailabilityZones,
		["ClusterVersion"] = ClusterVersion,
		["ClusterType"] = ClusterType,
	}
	M.AssertOrderableClusterOption(t)
	return t
end

local ClusterSubnetGroupNotFoundFault_keys = { nil }

function M.AssertClusterSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterSubnetGroupNotFoundFault_keys[k], "ClusterSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupNotFoundFault
-- &lt;p&gt;The cluster subnet group name does not refer to an existing cluster subnet group.&lt;/p&gt;
function M.ClusterSubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupNotFoundFault")
	local t = { 
	}
	M.AssertClusterSubnetGroupNotFoundFault(t)
	return t
end

local HsmConfigurationMessage_keys = { "Marker" = true, "HsmConfigurations" = true, nil }

function M.AssertHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["HsmConfigurations"] then M.AssertHsmConfigurationList(struct["HsmConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(HsmConfigurationMessage_keys[k], "HsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationMessage
-- &lt;p/&gt;
-- @param Marker [String] &lt;p&gt;A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the &lt;code&gt;Marker&lt;/code&gt; parameter and retrying the command. If the &lt;code&gt;Marker&lt;/code&gt; field is empty, all response records have been retrieved for the request. &lt;/p&gt;
-- @param HsmConfigurations [HsmConfigurationList] &lt;p&gt;A list of &lt;code&gt;HsmConfiguration&lt;/code&gt; objects.&lt;/p&gt;
function M.HsmConfigurationMessage(Marker, HsmConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationMessage")
	local t = { 
		["Marker"] = Marker,
		["HsmConfigurations"] = HsmConfigurations,
	}
	M.AssertHsmConfigurationMessage(t)
	return t
end

local ClusterParameterGroupQuotaExceededFault_keys = { nil }

function M.AssertClusterParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ClusterParameterGroupQuotaExceededFault_keys[k], "ClusterParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupQuotaExceededFault
-- &lt;p&gt;The request would result in the user exceeding the allowed number of cluster parameter groups. For information about increasing your quota, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html&quot;&gt;Limits in Amazon Redshift&lt;/a&gt; in the &lt;i&gt;Amazon Redshift Cluster Management Guide&lt;/i&gt;. &lt;/p&gt;
function M.ClusterParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertClusterParameterGroupQuotaExceededFault(t)
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
-- &lt;p&gt;The account already has a cluster with the given identifier.&lt;/p&gt;
function M.ClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterAlreadyExistsFault")
	local t = { 
	}
	M.AssertClusterAlreadyExistsFault(t)
	return t
end

local EventSubscription_keys = { "Status" = true, "Tags" = true, "SubscriptionCreationTime" = true, "SourceType" = true, "EventCategoriesList" = true, "SourceIdsList" = true, "CustSubscriptionId" = true, "Enabled" = true, "SnsTopicArn" = true, "CustomerAwsId" = true, "Severity" = true, nil }

function M.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SubscriptionCreationTime"] then M.AssertTStamp(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then M.AssertEventCategoriesList(struct["EventCategoriesList"]) end
	if struct["SourceIdsList"] then M.AssertSourceIdsList(struct["SourceIdsList"]) end
	if struct["CustSubscriptionId"] then M.AssertString(struct["CustSubscriptionId"]) end
	if struct["Enabled"] then M.AssertBoolean(struct["Enabled"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	if struct["CustomerAwsId"] then M.AssertString(struct["CustomerAwsId"]) end
	if struct["Severity"] then M.AssertString(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(EventSubscription_keys[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- &lt;p&gt;Describes event subscriptions.&lt;/p&gt;
-- @param Status [String] &lt;p&gt;The status of the Amazon Redshift event notification subscription.&lt;/p&gt; &lt;p&gt;Constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Can be one of the following: active | no-permission | topic-not-exist&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The status &quot;no-permission&quot; indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status &quot;topic-not-exist&quot; indicates that the topic was deleted after the subscription was created.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Tags [TagList] &lt;p&gt;The list of tags for the event subscription.&lt;/p&gt;
-- @param SubscriptionCreationTime [TStamp] &lt;p&gt;The date and time the Amazon Redshift event notification subscription was created.&lt;/p&gt;
-- @param SourceType [String] &lt;p&gt;The source type of the events returned the Amazon Redshift event notification, such as cluster, or cluster-snapshot.&lt;/p&gt;
-- @param EventCategoriesList [EventCategoriesList] &lt;p&gt;The list of Amazon Redshift event categories specified in the event notification subscription.&lt;/p&gt; &lt;p&gt;Values: Configuration, Management, Monitoring, Security&lt;/p&gt;
-- @param SourceIdsList [SourceIdsList] &lt;p&gt;A list of the sources that publish events to the Amazon Redshift event notification subscription.&lt;/p&gt;
-- @param CustSubscriptionId [String] &lt;p&gt;The name of the Amazon Redshift event notification subscription.&lt;/p&gt;
-- @param Enabled [Boolean] &lt;p&gt;A Boolean value indicating whether the subscription is enabled. &lt;code&gt;true&lt;/code&gt; indicates the subscription is enabled.&lt;/p&gt;
-- @param SnsTopicArn [String] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.&lt;/p&gt;
-- @param CustomerAwsId [String] &lt;p&gt;The AWS customer account associated with the Amazon Redshift event notification subscription.&lt;/p&gt;
-- @param Severity [String] &lt;p&gt;The event severity specified in the Amazon Redshift event notification subscription.&lt;/p&gt; &lt;p&gt;Values: ERROR, INFO&lt;/p&gt;
function M.EventSubscription(Status, Tags, SubscriptionCreationTime, SourceType, EventCategoriesList, SourceIdsList, CustSubscriptionId, Enabled, SnsTopicArn, CustomerAwsId, Severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = Status,
		["Tags"] = Tags,
		["SubscriptionCreationTime"] = SubscriptionCreationTime,
		["SourceType"] = SourceType,
		["EventCategoriesList"] = EventCategoriesList,
		["SourceIdsList"] = SourceIdsList,
		["CustSubscriptionId"] = CustSubscriptionId,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["CustomerAwsId"] = CustomerAwsId,
		["Severity"] = Severity,
	}
	M.AssertEventSubscription(t)
	return t
end

local TaggedResource_keys = { "ResourceType" = true, "ResourceName" = true, "Tag" = true, nil }

function M.AssertTaggedResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaggedResource to be of type 'table'")
	if struct["ResourceType"] then M.AssertString(struct["ResourceType"]) end
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["Tag"] then M.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(TaggedResource_keys[k], "TaggedResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaggedResource
-- &lt;p&gt;A tag and its associated resource.&lt;/p&gt;
-- @param ResourceType [String] &lt;p&gt;The type of resource with which the tag is associated. Valid resource types are: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Cluster&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;CIDR/IP&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;EC2 security group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Snapshot&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Cluster security group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Subnet group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HSM connection&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;HSM certificate&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Parameter group&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about Amazon Redshift resource types and constructing ARNs, go to &lt;a href=&quot;http://docs.aws.amazon.com/redshift/latest/mgmt/constructing-redshift-arn.html&quot;&gt;Constructing an Amazon Redshift Amazon Resource Name (ARN)&lt;/a&gt; in the Amazon Redshift Cluster Management Guide. &lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The Amazon Resource Name (ARN) with which the tag is associated. For example, &lt;code&gt;arn:aws:redshift:us-east-1:123456789:cluster:t1&lt;/code&gt;.&lt;/p&gt;
-- @param Tag [Tag] &lt;p&gt;The tag for the resource.&lt;/p&gt;
function M.TaggedResource(ResourceType, ResourceName, Tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaggedResource")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceName"] = ResourceName,
		["Tag"] = Tag,
	}
	M.AssertTaggedResource(t)
	return t
end

local BucketNotFoundFault_keys = { nil }

function M.AssertBucketNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BucketNotFoundFault_keys[k], "BucketNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketNotFoundFault
-- &lt;p&gt;Could not find the specified S3 bucket.&lt;/p&gt;
function M.BucketNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketNotFoundFault")
	local t = { 
	}
	M.AssertBucketNotFoundFault(t)
	return t
end

local SubnetAlreadyInUse_keys = { nil }

function M.AssertSubnetAlreadyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetAlreadyInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SubnetAlreadyInUse_keys[k], "SubnetAlreadyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetAlreadyInUse
-- &lt;p&gt;A specified subnet is already in use by another cluster.&lt;/p&gt;
function M.SubnetAlreadyInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
	}
	M.AssertSubnetAlreadyInUse(t)
	return t
end

function M.AssertTableRestoreStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected TableRestoreStatusType to be of type 'string'")
end

--  
function M.TableRestoreStatusType(str)
	M.AssertTableRestoreStatusType(str)
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

function M.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	M.AssertSourceType(str)
	return str
end

function M.AssertParameterApplyType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterApplyType to be of type 'string'")
end

--  
function M.ParameterApplyType(str)
	M.AssertParameterApplyType(str)
	return str
end

function M.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	M.AssertSensitiveString(str)
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

function M.AssertDoubleOptional(double)
	assert(double)
	assert(type(double) == "number", "Expected DoubleOptional to be of type 'number'")
end

function M.DoubleOptional(double)
	M.AssertDoubleOptional(double)
	return double
end

function M.AssertLongOptional(long)
	assert(long)
	assert(type(long) == "number", "Expected LongOptional to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongOptional(long)
	M.AssertLongOptional(long)
	return long
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

function M.AssertVpcSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVpcSecurityGroupMembership(v)
	end
end

--  
-- List of VpcSecurityGroupMembership objects
function M.VpcSecurityGroupMembershipList(list)
	M.AssertVpcSecurityGroupMembershipList(list)
	return list
end

function M.AssertSnapshotCopyGrantList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotCopyGrantList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSnapshotCopyGrant(v)
	end
end

--  
-- List of SnapshotCopyGrant objects
function M.SnapshotCopyGrantList(list)
	M.AssertSnapshotCopyGrantList(list)
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

function M.AssertClusterNodesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterNodesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterNode(v)
	end
end

--  
-- List of ClusterNode objects
function M.ClusterNodesList(list)
	M.AssertClusterNodesList(list)
	return list
end

function M.AssertEventInfoMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventInfoMapList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventInfoMap(v)
	end
end

--  
-- List of EventInfoMap objects
function M.EventInfoMapList(list)
	M.AssertEventInfoMapList(list)
	return list
end

function M.AssertTableRestoreStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableRestoreStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTableRestoreStatus(v)
	end
end

--  
-- List of TableRestoreStatus objects
function M.TableRestoreStatusList(list)
	M.AssertTableRestoreStatusList(list)
	return list
end

function M.AssertImportTablesNotStarted(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesNotStarted to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesNotStarted(list)
	M.AssertImportTablesNotStarted(list)
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

function M.AssertImportTablesCompleted(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesCompleted to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesCompleted(list)
	M.AssertImportTablesCompleted(list)
	return list
end

function M.AssertClusterIamRoleList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterIamRoleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterIamRole(v)
	end
end

--  
-- List of ClusterIamRole objects
function M.ClusterIamRoleList(list)
	M.AssertClusterIamRoleList(list)
	return list
end

function M.AssertVpcSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.VpcSecurityGroupIdList(list)
	M.AssertVpcSecurityGroupIdList(list)
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

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertEventCategoriesMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesMapList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventCategoriesMap(v)
	end
end

--  
-- List of EventCategoriesMap objects
function M.EventCategoriesMapList(list)
	M.AssertEventCategoriesMapList(list)
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

function M.AssertEventCategoriesList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.EventCategoriesList(list)
	M.AssertEventCategoriesList(list)
	return list
end

function M.AssertDbGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DbGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.DbGroupList(list)
	M.AssertDbGroupList(list)
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

function M.AssertClusterParameterStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterParameterStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterParameterStatus(v)
	end
end

--  
-- List of ClusterParameterStatus objects
function M.ClusterParameterStatusList(list)
	M.AssertClusterParameterStatusList(list)
	return list
end

function M.AssertSourceIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceIdsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.SourceIdsList(list)
	M.AssertSourceIdsList(list)
	return list
end

function M.AssertImportTablesInProgress(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesInProgress to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesInProgress(list)
	M.AssertImportTablesInProgress(list)
	return list
end

function M.AssertOrderableClusterOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableClusterOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOrderableClusterOption(v)
	end
end

--  
-- List of OrderableClusterOption objects
function M.OrderableClusterOptionsList(list)
	M.AssertOrderableClusterOptionsList(list)
	return list
end

function M.AssertTagValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.TagValueList(list)
	M.AssertTagValueList(list)
	return list
end

function M.AssertIPRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected IPRangeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIPRange(v)
	end
end

--  
-- List of IPRange objects
function M.IPRangeList(list)
	M.AssertIPRangeList(list)
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

function M.AssertRestorableNodeTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RestorableNodeTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.RestorableNodeTypeList(list)
	M.AssertRestorableNodeTypeList(list)
	return list
end

function M.AssertClusterSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterSecurityGroupMembership(v)
	end
end

--  
-- List of ClusterSecurityGroupMembership objects
function M.ClusterSecurityGroupMembershipList(list)
	M.AssertClusterSecurityGroupMembershipList(list)
	return list
end

function M.AssertClusterSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterSecurityGroup(v)
	end
end

--  
-- List of ClusterSecurityGroup objects
function M.ClusterSecurityGroups(list)
	M.AssertClusterSecurityGroups(list)
	return list
end

function M.AssertTaggedResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected TaggedResourceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTaggedResource(v)
	end
end

--  
-- List of TaggedResource objects
function M.TaggedResourceList(list)
	M.AssertTaggedResourceList(list)
	return list
end

function M.AssertClusterVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterVersionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterVersion(v)
	end
end

--  
-- List of ClusterVersion objects
function M.ClusterVersionList(list)
	M.AssertClusterVersionList(list)
	return list
end

function M.AssertReservedNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedNodeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedNode(v)
	end
end

--  
-- List of ReservedNode objects
function M.ReservedNodeList(list)
	M.AssertReservedNodeList(list)
	return list
end

function M.AssertClusterSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterSecurityGroupNameList(list)
	M.AssertClusterSecurityGroupNameList(list)
	return list
end

function M.AssertReservedNodeOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedNodeOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedNodeOffering(v)
	end
end

--  
-- List of ReservedNodeOffering objects
function M.ReservedNodeOfferingList(list)
	M.AssertReservedNodeOfferingList(list)
	return list
end

function M.AssertEventSubscriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSubscriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventSubscription(v)
	end
end

--  
-- List of EventSubscription objects
function M.EventSubscriptionsList(list)
	M.AssertEventSubscriptionsList(list)
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

function M.AssertAccountsWithRestoreAccessList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountsWithRestoreAccessList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccountWithRestoreAccess(v)
	end
end

--  
-- List of AccountWithRestoreAccess objects
function M.AccountsWithRestoreAccessList(list)
	M.AssertAccountsWithRestoreAccessList(list)
	return list
end

function M.AssertHsmConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHsmConfiguration(v)
	end
end

--  
-- List of HsmConfiguration objects
function M.HsmConfigurationList(list)
	M.AssertHsmConfigurationList(list)
	return list
end

function M.AssertHsmClientCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmClientCertificateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHsmClientCertificate(v)
	end
end

--  
-- List of HsmClientCertificate objects
function M.HsmClientCertificateList(list)
	M.AssertHsmClientCertificateList(list)
	return list
end

function M.AssertClusterSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterSubnetGroup(v)
	end
end

--  
-- List of ClusterSubnetGroup objects
function M.ClusterSubnetGroups(list)
	M.AssertClusterSubnetGroups(list)
	return list
end

function M.AssertIamRoleArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected IamRoleArnList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.IamRoleArnList(list)
	M.AssertIamRoleArnList(list)
	return list
end

function M.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZoneList(list)
	M.AssertAvailabilityZoneList(list)
	return list
end

function M.AssertParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterParameterGroup(v)
	end
end

--  
-- List of ClusterParameterGroup objects
function M.ParameterGroupList(list)
	M.AssertParameterGroupList(list)
	return list
end

function M.AssertClusterParameterGroupStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterParameterGroupStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClusterParameterGroupStatus(v)
	end
end

--  
-- List of ClusterParameterGroupStatus objects
function M.ClusterParameterGroupStatusList(list)
	M.AssertClusterParameterGroupStatusList(list)
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
			return "redshift.amazonaws.com"
		end
	end
	local ss = { "redshift" }
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
--- DeleteTags
-- @param DeleteTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsMessage, cb)
	assert(DeleteTagsMessage, "You must provide a DeleteTagsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDefaultClusterParameters
-- @param DescribeDefaultClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDefaultClusterParametersAsync(DescribeDefaultClusterParametersMessage, cb)
	assert(DescribeDefaultClusterParametersMessage, "You must provide a DescribeDefaultClusterParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDefaultClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDefaultClusterParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterParameterGroups
-- @param DescribeClusterParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterParameterGroupsAsync(DescribeClusterParameterGroupsMessage, cb)
	assert(DescribeClusterParameterGroupsMessage, "You must provide a DescribeClusterParameterGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterParameterGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreFromClusterSnapshot
-- @param RestoreFromClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreFromClusterSnapshotAsync(RestoreFromClusterSnapshotMessage, cb)
	assert(RestoreFromClusterSnapshotMessage, "You must provide a RestoreFromClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreFromClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreFromClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCluster
-- @param CreateClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterMessage, cb)
	assert(CreateClusterMessage, "You must provide a CreateClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyClusterSnapshot
-- @param CopyClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyClusterSnapshotAsync(CopyClusterSnapshotMessage, cb)
	assert(CopyClusterSnapshotMessage, "You must provide a CopyClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateClusterParameterGroup
-- @param CreateClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterParameterGroupAsync(CreateClusterParameterGroupMessage, cb)
	assert(CreateClusterParameterGroupMessage, "You must provide a CreateClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterParameterGroupMessage, headers, M.metadata, cb)
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

--- DescribeEventSubscriptions
-- @param DescribeEventSubscriptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, cb)
	assert(DescribeEventSubscriptionsMessage, "You must provide a DescribeEventSubscriptionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEventSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventSubscriptionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateEventSubscription
-- @param CreateEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, cb)
	assert(CreateEventSubscriptionMessage, "You must provide a CreateEventSubscriptionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateEventSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHsmClientCertificates
-- @param DescribeHsmClientCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmClientCertificatesAsync(DescribeHsmClientCertificatesMessage, cb)
	assert(DescribeHsmClientCertificatesMessage, "You must provide a DescribeHsmClientCertificatesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeHsmClientCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHsmClientCertificatesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCluster
-- @param DeleteClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterAsync(DeleteClusterMessage, cb)
	assert(DeleteClusterMessage, "You must provide a DeleteClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSnapshotCopyGrant
-- @param CreateSnapshotCopyGrantMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotCopyGrantAsync(CreateSnapshotCopyGrantMessage, cb)
	assert(CreateSnapshotCopyGrantMessage, "You must provide a CreateSnapshotCopyGrantMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSnapshotCopyGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSnapshotCopyGrantMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEventCategories
-- @param DescribeEventCategoriesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, cb)
	assert(DescribeEventCategoriesMessage, "You must provide a DescribeEventCategoriesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEventCategories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventCategoriesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifySnapshotCopyRetentionPeriod
-- @param ModifySnapshotCopyRetentionPeriodMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifySnapshotCopyRetentionPeriodAsync(ModifySnapshotCopyRetentionPeriodMessage, cb)
	assert(ModifySnapshotCopyRetentionPeriodMessage, "You must provide a ModifySnapshotCopyRetentionPeriodMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifySnapshotCopyRetentionPeriod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifySnapshotCopyRetentionPeriodMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetClusterCredentials
-- @param GetClusterCredentialsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.GetClusterCredentialsAsync(GetClusterCredentialsMessage, cb)
	assert(GetClusterCredentialsMessage, "You must provide a GetClusterCredentialsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetClusterCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetClusterCredentialsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSnapshotCopyGrant
-- @param DeleteSnapshotCopyGrantMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotCopyGrantAsync(DeleteSnapshotCopyGrantMessage, cb)
	assert(DeleteSnapshotCopyGrantMessage, "You must provide a DeleteSnapshotCopyGrantMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSnapshotCopyGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSnapshotCopyGrantMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReservedNodes
-- @param DescribeReservedNodesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedNodesAsync(DescribeReservedNodesMessage, cb)
	assert(DescribeReservedNodesMessage, "You must provide a DescribeReservedNodesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedNodesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AuthorizeSnapshotAccess
-- @param AuthorizeSnapshotAccessMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeSnapshotAccessAsync(AuthorizeSnapshotAccessMessage, cb)
	assert(AuthorizeSnapshotAccessMessage, "You must provide a AuthorizeSnapshotAccessMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AuthorizeSnapshotAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AuthorizeSnapshotAccessMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableLogging
-- @param EnableLoggingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.EnableLoggingAsync(EnableLoggingMessage, cb)
	assert(EnableLoggingMessage, "You must provide a EnableLoggingMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableLoggingMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableSnapshotCopy
-- @param DisableSnapshotCopyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DisableSnapshotCopyAsync(DisableSnapshotCopyMessage, cb)
	assert(DisableSnapshotCopyMessage, "You must provide a DisableSnapshotCopyMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableSnapshotCopy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableSnapshotCopyMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHsmClientCertificate
-- @param DeleteHsmClientCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmClientCertificateAsync(DeleteHsmClientCertificateMessage, cb)
	assert(DeleteHsmClientCertificateMessage, "You must provide a DeleteHsmClientCertificateMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteHsmClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteHsmClientCertificateMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootCluster
-- @param RebootClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootClusterAsync(RebootClusterMessage, cb)
	assert(RebootClusterMessage, "You must provide a RebootClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RebootCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHsmConfiguration
-- @param CreateHsmConfigurationMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmConfigurationAsync(CreateHsmConfigurationMessage, cb)
	assert(CreateHsmConfigurationMessage, "You must provide a CreateHsmConfigurationMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateHsmConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHsmConfigurationMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeSnapshotAccess
-- @param RevokeSnapshotAccessMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeSnapshotAccessAsync(RevokeSnapshotAccessMessage, cb)
	assert(RevokeSnapshotAccessMessage, "You must provide a RevokeSnapshotAccessMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RevokeSnapshotAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeSnapshotAccessMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusters
-- @param DescribeClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClustersAsync(DescribeClustersMessage, cb)
	assert(DescribeClustersMessage, "You must provide a DescribeClustersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClustersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyClusterIamRoles
-- @param ModifyClusterIamRolesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterIamRolesAsync(ModifyClusterIamRolesMessage, cb)
	assert(ModifyClusterIamRolesMessage, "You must provide a ModifyClusterIamRolesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyClusterIamRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyClusterIamRolesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetClusterParameterGroup
-- @param ResetClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetClusterParameterGroupAsync(ResetClusterParameterGroupMessage, cb)
	assert(ResetClusterParameterGroupMessage, "You must provide a ResetClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResetClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTableRestoreStatus
-- @param DescribeTableRestoreStatusMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTableRestoreStatusAsync(DescribeTableRestoreStatusMessage, cb)
	assert(DescribeTableRestoreStatusMessage, "You must provide a DescribeTableRestoreStatusMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTableRestoreStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTableRestoreStatusMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteClusterSecurityGroup
-- @param DeleteClusterSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSecurityGroupAsync(DeleteClusterSecurityGroupMessage, cb)
	assert(DeleteClusterSecurityGroupMessage, "You must provide a DeleteClusterSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteClusterSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyClusterParameterGroup
-- @param ModifyClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterParameterGroupAsync(ModifyClusterParameterGroupMessage, cb)
	assert(ModifyClusterParameterGroupMessage, "You must provide a ModifyClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterSnapshots
-- @param DescribeClusterSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSnapshotsAsync(DescribeClusterSnapshotsMessage, cb)
	assert(DescribeClusterSnapshotsMessage, "You must provide a DescribeClusterSnapshotsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterSnapshotsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateClusterSecurityGroup
-- @param CreateClusterSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSecurityGroupAsync(CreateClusterSecurityGroupMessage, cb)
	assert(CreateClusterSecurityGroupMessage, "You must provide a CreateClusterSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateClusterSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableLogging
-- @param DisableLoggingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DisableLoggingAsync(DisableLoggingMessage, cb)
	assert(DisableLoggingMessage, "You must provide a DisableLoggingMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableLoggingMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterVersions
-- @param DescribeClusterVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterVersionsAsync(DescribeClusterVersionsMessage, cb)
	assert(DescribeClusterVersionsMessage, "You must provide a DescribeClusterVersionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterVersionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeResize
-- @param DescribeResizeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeResizeAsync(DescribeResizeMessage, cb)
	assert(DescribeResizeMessage, "You must provide a DescribeResizeMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeResize",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeResizeMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterSubnetGroups
-- @param DescribeClusterSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSubnetGroupsAsync(DescribeClusterSubnetGroupsMessage, cb)
	assert(DescribeClusterSubnetGroupsMessage, "You must provide a DescribeClusterSubnetGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterSubnetGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AuthorizeClusterSecurityGroupIngress
-- @param AuthorizeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeClusterSecurityGroupIngressAsync(AuthorizeClusterSecurityGroupIngressMessage, cb)
	assert(AuthorizeClusterSecurityGroupIngressMessage, "You must provide a AuthorizeClusterSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AuthorizeClusterSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AuthorizeClusterSecurityGroupIngressMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHsmConfigurations
-- @param DescribeHsmConfigurationsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmConfigurationsAsync(DescribeHsmConfigurationsMessage, cb)
	assert(DescribeHsmConfigurationsMessage, "You must provide a DescribeHsmConfigurationsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeHsmConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHsmConfigurationsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEventSubscription
-- @param DeleteEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, cb)
	assert(DeleteEventSubscriptionMessage, "You must provide a DeleteEventSubscriptionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEventSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsMessage, cb)
	assert(DescribeTagsMessage, "You must provide a DescribeTagsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHsmConfiguration
-- @param DeleteHsmConfigurationMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmConfigurationAsync(DeleteHsmConfigurationMessage, cb)
	assert(DeleteHsmConfigurationMessage, "You must provide a DeleteHsmConfigurationMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteHsmConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteHsmConfigurationMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateClusterSubnetGroup
-- @param CreateClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSubnetGroupAsync(CreateClusterSubnetGroupMessage, cb)
	assert(CreateClusterSubnetGroupMessage, "You must provide a CreateClusterSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterParameters
-- @param DescribeClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterParametersAsync(DescribeClusterParametersMessage, cb)
	assert(DescribeClusterParametersMessage, "You must provide a DescribeClusterParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHsmClientCertificate
-- @param CreateHsmClientCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmClientCertificateAsync(CreateHsmClientCertificateMessage, cb)
	assert(CreateHsmClientCertificateMessage, "You must provide a CreateHsmClientCertificateMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateHsmClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateHsmClientCertificateMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyClusterSubnetGroup
-- @param ModifyClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterSubnetGroupAsync(ModifyClusterSubnetGroupMessage, cb)
	assert(ModifyClusterSubnetGroupMessage, "You must provide a ModifyClusterSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyClusterSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSnapshotCopyGrants
-- @param DescribeSnapshotCopyGrantsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotCopyGrantsAsync(DescribeSnapshotCopyGrantsMessage, cb)
	assert(DescribeSnapshotCopyGrantsMessage, "You must provide a DescribeSnapshotCopyGrantsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeSnapshotCopyGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSnapshotCopyGrantsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrderableClusterOptions
-- @param DescribeOrderableClusterOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableClusterOptionsAsync(DescribeOrderableClusterOptionsMessage, cb)
	assert(DescribeOrderableClusterOptionsMessage, "You must provide a DescribeOrderableClusterOptionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeOrderableClusterOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOrderableClusterOptionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyCluster
-- @param ModifyClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterAsync(ModifyClusterMessage, cb)
	assert(ModifyClusterMessage, "You must provide a ModifyClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RotateEncryptionKey
-- @param RotateEncryptionKeyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RotateEncryptionKeyAsync(RotateEncryptionKeyMessage, cb)
	assert(RotateEncryptionKeyMessage, "You must provide a RotateEncryptionKeyMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RotateEncryptionKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RotateEncryptionKeyMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableSnapshotCopy
-- @param EnableSnapshotCopyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.EnableSnapshotCopyAsync(EnableSnapshotCopyMessage, cb)
	assert(EnableSnapshotCopyMessage, "You must provide a EnableSnapshotCopyMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableSnapshotCopy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableSnapshotCopyMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateClusterSnapshot
-- @param CreateClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSnapshotAsync(CreateClusterSnapshotMessage, cb)
	assert(CreateClusterSnapshotMessage, "You must provide a CreateClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteClusterSnapshot
-- @param DeleteClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSnapshotAsync(DeleteClusterSnapshotMessage, cb)
	assert(DeleteClusterSnapshotMessage, "You must provide a DeleteClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTags
-- @param CreateTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagsAsync(CreateTagsMessage, cb)
	assert(CreateTagsMessage, "You must provide a CreateTagsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTagsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReservedNodeOfferings
-- @param DescribeReservedNodeOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedNodeOfferingsAsync(DescribeReservedNodeOfferingsMessage, cb)
	assert(DescribeReservedNodeOfferingsMessage, "You must provide a DescribeReservedNodeOfferingsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodeOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedNodeOfferingsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLoggingStatus
-- @param DescribeLoggingStatusMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoggingStatusAsync(DescribeLoggingStatusMessage, cb)
	assert(DescribeLoggingStatusMessage, "You must provide a DescribeLoggingStatusMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeLoggingStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLoggingStatusMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyEventSubscription
-- @param ModifyEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, cb)
	assert(ModifyEventSubscriptionMessage, "You must provide a ModifyEventSubscriptionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyEventSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreTableFromClusterSnapshot
-- @param RestoreTableFromClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreTableFromClusterSnapshotAsync(RestoreTableFromClusterSnapshotMessage, cb)
	assert(RestoreTableFromClusterSnapshotMessage, "You must provide a RestoreTableFromClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreTableFromClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreTableFromClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeClusterSecurityGroups
-- @param DescribeClusterSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSecurityGroupsAsync(DescribeClusterSecurityGroupsMessage, cb)
	assert(DescribeClusterSecurityGroupsMessage, "You must provide a DescribeClusterSecurityGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeClusterSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeClusterSecurityGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeClusterSecurityGroupIngress
-- @param RevokeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeClusterSecurityGroupIngressAsync(RevokeClusterSecurityGroupIngressMessage, cb)
	assert(RevokeClusterSecurityGroupIngressMessage, "You must provide a RevokeClusterSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RevokeClusterSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeClusterSecurityGroupIngressMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteClusterParameterGroup
-- @param DeleteClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterParameterGroupAsync(DeleteClusterParameterGroupMessage, cb)
	assert(DeleteClusterParameterGroupMessage, "You must provide a DeleteClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteClusterSubnetGroup
-- @param DeleteClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSubnetGroupAsync(DeleteClusterSubnetGroupMessage, cb)
	assert(DeleteClusterSubnetGroupMessage, "You must provide a DeleteClusterSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteClusterSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurchaseReservedNodeOffering
-- @param PurchaseReservedNodeOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedNodeOfferingAsync(PurchaseReservedNodeOfferingMessage, cb)
	assert(PurchaseReservedNodeOfferingMessage, "You must provide a PurchaseReservedNodeOfferingMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurchaseReservedNodeOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurchaseReservedNodeOfferingMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
