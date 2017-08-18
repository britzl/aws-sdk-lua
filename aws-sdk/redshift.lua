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

local keys = {}
local asserts = {}

keys.RevokeClusterSecurityGroupIngressResult = { ["ClusterSecurityGroup"] = true, nil }

function asserts.AssertRevokeClusterSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeClusterSecurityGroupIngressResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then asserts.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeClusterSecurityGroupIngressResult[k], "RevokeClusterSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeClusterSecurityGroupIngressResult
--  
-- @param _ClusterSecurityGroup [ClusterSecurityGroup] 
function M.RevokeClusterSecurityGroupIngressResult(_ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeClusterSecurityGroupIngressResult")
	local t = { 
		["ClusterSecurityGroup"] = _ClusterSecurityGroup,
	}
	asserts.AssertRevokeClusterSecurityGroupIngressResult(t)
	return t
end

keys.ClusterNode = { ["NodeRole"] = true, ["PrivateIPAddress"] = true, ["PublicIPAddress"] = true, nil }

function asserts.AssertClusterNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNode to be of type 'table'")
	if struct["NodeRole"] then asserts.AssertString(struct["NodeRole"]) end
	if struct["PrivateIPAddress"] then asserts.AssertString(struct["PrivateIPAddress"]) end
	if struct["PublicIPAddress"] then asserts.AssertString(struct["PublicIPAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterNode[k], "ClusterNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNode
-- <p>The identifier of a node in a cluster.</p>
-- @param _NodeRole [String] <p>Whether the node is a leader node or a compute node.</p>
-- @param _PrivateIPAddress [String] <p>The private IP address of a node within a cluster.</p>
-- @param _PublicIPAddress [String] <p>The public IP address of a node within a cluster.</p>
function M.ClusterNode(_NodeRole, _PrivateIPAddress, _PublicIPAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNode")
	local t = { 
		["NodeRole"] = _NodeRole,
		["PrivateIPAddress"] = _PrivateIPAddress,
		["PublicIPAddress"] = _PublicIPAddress,
	}
	asserts.AssertClusterNode(t)
	return t
end

keys.DeleteEventSubscriptionMessage = { ["SubscriptionName"] = true, nil }

function asserts.AssertDeleteEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSubscriptionMessage[k], "DeleteEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionMessage
-- <p/>
-- @param _SubscriptionName [String] <p>The name of the Amazon Redshift event notification subscription to be deleted.</p>
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(_SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertDeleteEventSubscriptionMessage(t)
	return t
end

keys.ClusterSubnetGroup = { ["Subnets"] = true, ["VpcId"] = true, ["Description"] = true, ["Tags"] = true, ["SubnetGroupStatus"] = true, ["ClusterSubnetGroupName"] = true, nil }

function asserts.AssertClusterSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroup to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SubnetGroupStatus"] then asserts.AssertString(struct["SubnetGroupStatus"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetGroup[k], "ClusterSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroup
-- <p>Describes a subnet group.</p>
-- @param _Subnets [SubnetList] <p>A list of the VPC <a>Subnet</a> elements. </p>
-- @param _VpcId [String] <p>The VPC ID of the cluster subnet group.</p>
-- @param _Description [String] <p>The description of the cluster subnet group.</p>
-- @param _Tags [TagList] <p>The list of tags for the cluster subnet group.</p>
-- @param _SubnetGroupStatus [String] <p>The status of the cluster subnet group. Possible values are <code>Complete</code>, <code>Incomplete</code> and <code>Invalid</code>. </p>
-- @param _ClusterSubnetGroupName [String] <p>The name of the cluster subnet group.</p>
function M.ClusterSubnetGroup(_Subnets, _VpcId, _Description, _Tags, _SubnetGroupStatus, _ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroup")
	local t = { 
		["Subnets"] = _Subnets,
		["VpcId"] = _VpcId,
		["Description"] = _Description,
		["Tags"] = _Tags,
		["SubnetGroupStatus"] = _SubnetGroupStatus,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
	}
	asserts.AssertClusterSubnetGroup(t)
	return t
end

keys.ClusterNotFoundFault = { nil }

function asserts.AssertClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterNotFoundFault[k], "ClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterNotFoundFault
-- <p>The <code>ClusterIdentifier</code> parameter does not refer to an existing cluster. </p>
function M.ClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterNotFoundFault(t)
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
-- <p>The specified cluster is not in the <code>available</code> state. </p>
function M.InvalidClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterStateFault(t)
	return t
end

keys.ClusterSnapshotNotFoundFault = { nil }

function asserts.AssertClusterSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSnapshotNotFoundFault[k], "ClusterSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotNotFoundFault
-- <p>The snapshot identifier does not refer to an existing cluster snapshot.</p>
function M.ClusterSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterSnapshotNotFoundFault(t)
	return t
end

keys.SNSNoAuthorizationFault = { nil }

function asserts.AssertSNSNoAuthorizationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSNoAuthorizationFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSNoAuthorizationFault[k], "SNSNoAuthorizationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSNoAuthorizationFault
-- <p>You do not have permission to publish to the specified Amazon SNS topic.</p>
function M.SNSNoAuthorizationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
	}
	asserts.AssertSNSNoAuthorizationFault(t)
	return t
end

keys.EventCategoriesMap = { ["SourceType"] = true, ["Events"] = true, nil }

function asserts.AssertEventCategoriesMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMap to be of type 'table'")
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["Events"] then asserts.AssertEventInfoMapList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoriesMap[k], "EventCategoriesMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMap
-- <p>Describes event categories.</p>
-- @param _SourceType [String] <p>The source type, such as cluster or cluster-snapshot, that the returned categories belong to.</p>
-- @param _Events [EventInfoMapList] <p>The events in the event category.</p>
function M.EventCategoriesMap(_SourceType, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMap")
	local t = { 
		["SourceType"] = _SourceType,
		["Events"] = _Events,
	}
	asserts.AssertEventCategoriesMap(t)
	return t
end

keys.CreateHsmConfigurationResult = { ["HsmConfiguration"] = true, nil }

function asserts.AssertCreateHsmConfigurationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmConfigurationResult to be of type 'table'")
	if struct["HsmConfiguration"] then asserts.AssertHsmConfiguration(struct["HsmConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmConfigurationResult[k], "CreateHsmConfigurationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmConfigurationResult
--  
-- @param _HsmConfiguration [HsmConfiguration] 
function M.CreateHsmConfigurationResult(_HsmConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmConfigurationResult")
	local t = { 
		["HsmConfiguration"] = _HsmConfiguration,
	}
	asserts.AssertCreateHsmConfigurationResult(t)
	return t
end

keys.PurchaseReservedNodeOfferingResult = { ["ReservedNode"] = true, nil }

function asserts.AssertPurchaseReservedNodeOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedNodeOfferingResult to be of type 'table'")
	if struct["ReservedNode"] then asserts.AssertReservedNode(struct["ReservedNode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedNodeOfferingResult[k], "PurchaseReservedNodeOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedNodeOfferingResult
--  
-- @param _ReservedNode [ReservedNode] 
function M.PurchaseReservedNodeOfferingResult(_ReservedNode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedNodeOfferingResult")
	local t = { 
		["ReservedNode"] = _ReservedNode,
	}
	asserts.AssertPurchaseReservedNodeOfferingResult(t)
	return t
end

keys.DeleteHsmConfigurationMessage = { ["HsmConfigurationIdentifier"] = true, nil }

function asserts.AssertDeleteHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmConfigurationMessage to be of type 'table'")
	assert(struct["HsmConfigurationIdentifier"], "Expected key HsmConfigurationIdentifier to exist in table")
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmConfigurationMessage[k], "DeleteHsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmConfigurationMessage
-- <p/>
-- @param _HsmConfigurationIdentifier [String] <p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>
-- Required parameter: HsmConfigurationIdentifier
function M.DeleteHsmConfigurationMessage(_HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmConfigurationMessage")
	local t = { 
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
	}
	asserts.AssertDeleteHsmConfigurationMessage(t)
	return t
end

keys.ModifyEventSubscriptionMessage = { ["EventCategories"] = true, ["Severity"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["SubscriptionName"] = true, ["SourceIds"] = true, ["SourceType"] = true, nil }

function asserts.AssertModifyEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then asserts.AssertString(struct["Severity"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then asserts.AssertSourceIdsList(struct["SourceIds"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionMessage[k], "ModifyEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionMessage
-- <p/>
-- @param _EventCategories [EventCategoriesList] <p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- @param _Severity [String] <p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>
-- @param _Enabled [BooleanOptional] <p>A Boolean value indicating if the subscription is enabled. <code>true</code> indicates the subscription is enabled </p>
-- @param _SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.</p>
-- @param _SubscriptionName [String] <p>The name of the modified Amazon Redshift event notification subscription.</p>
-- @param _SourceIds [SourceIdsList] <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>
-- @param _SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.</p>
-- Required parameter: SubscriptionName
function M.ModifyEventSubscriptionMessage(_EventCategories, _Severity, _Enabled, _SnsTopicArn, _SubscriptionName, _SourceIds, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = _EventCategories,
		["Severity"] = _Severity,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["SubscriptionName"] = _SubscriptionName,
		["SourceIds"] = _SourceIds,
		["SourceType"] = _SourceType,
	}
	asserts.AssertModifyEventSubscriptionMessage(t)
	return t
end

keys.DeleteClusterParameterGroupMessage = { ["ParameterGroupName"] = true, nil }

function asserts.AssertDeleteClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterParameterGroupMessage[k], "DeleteClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterParameterGroupMessage
-- <p/>
-- @param _ParameterGroupName [String] <p>The name of the parameter group to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing cluster parameter group.</p> </li> <li> <p>Cannot delete a default cluster parameter group.</p> </li> </ul>
-- Required parameter: ParameterGroupName
function M.DeleteClusterParameterGroupMessage(_ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
	}
	asserts.AssertDeleteClusterParameterGroupMessage(t)
	return t
end

keys.HsmClientCertificateMessage = { ["Marker"] = true, ["HsmClientCertificates"] = true, nil }

function asserts.AssertHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["HsmClientCertificates"] then asserts.AssertHsmClientCertificateList(struct["HsmClientCertificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.HsmClientCertificateMessage[k], "HsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _HsmClientCertificates [HsmClientCertificateList] <p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.</p>
function M.HsmClientCertificateMessage(_Marker, _HsmClientCertificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateMessage")
	local t = { 
		["Marker"] = _Marker,
		["HsmClientCertificates"] = _HsmClientCertificates,
	}
	asserts.AssertHsmClientCertificateMessage(t)
	return t
end

keys.DescribeEventCategoriesMessage = { ["SourceType"] = true, nil }

function asserts.AssertDescribeEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesMessage to be of type 'table'")
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventCategoriesMessage[k], "DescribeEventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesMessage
-- <p/>
-- @param _SourceType [String] <p>The source type, such as cluster or parameter group, to which the described event categories apply.</p> <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, and cluster-security-group.</p>
function M.DescribeEventCategoriesMessage(_SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = _SourceType,
	}
	asserts.AssertDescribeEventCategoriesMessage(t)
	return t
end

keys.SubscriptionEventIdNotFoundFault = { nil }

function asserts.AssertSubscriptionEventIdNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionEventIdNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionEventIdNotFoundFault[k], "SubscriptionEventIdNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionEventIdNotFoundFault
-- <p>An Amazon Redshift event with the specified event ID does not exist.</p>
function M.SubscriptionEventIdNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionEventIdNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionEventIdNotFoundFault(t)
	return t
end

keys.CreateClusterSecurityGroupResult = { ["ClusterSecurityGroup"] = true, nil }

function asserts.AssertCreateClusterSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSecurityGroupResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then asserts.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSecurityGroupResult[k], "CreateClusterSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSecurityGroupResult
--  
-- @param _ClusterSecurityGroup [ClusterSecurityGroup] 
function M.CreateClusterSecurityGroupResult(_ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSecurityGroupResult")
	local t = { 
		["ClusterSecurityGroup"] = _ClusterSecurityGroup,
	}
	asserts.AssertCreateClusterSecurityGroupResult(t)
	return t
end

keys.SnapshotCopyAlreadyDisabledFault = { nil }

function asserts.AssertSnapshotCopyAlreadyDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyAlreadyDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyAlreadyDisabledFault[k], "SnapshotCopyAlreadyDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyAlreadyDisabledFault
-- <p>The cluster already has cross-region snapshot copy disabled.</p>
function M.SnapshotCopyAlreadyDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyAlreadyDisabledFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyAlreadyDisabledFault(t)
	return t
end

keys.InvalidElasticIpFault = { nil }

function asserts.AssertInvalidElasticIpFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidElasticIpFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidElasticIpFault[k], "InvalidElasticIpFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidElasticIpFault
-- <p>The Elastic IP (EIP) is invalid or cannot be found.</p>
function M.InvalidElasticIpFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidElasticIpFault")
	local t = { 
	}
	asserts.AssertInvalidElasticIpFault(t)
	return t
end

keys.ClusterParameterStatus = { ["ParameterName"] = true, ["ParameterApplyStatus"] = true, ["ParameterApplyErrorDescription"] = true, nil }

function asserts.AssertClusterParameterStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterStatus to be of type 'table'")
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	if struct["ParameterApplyErrorDescription"] then asserts.AssertString(struct["ParameterApplyErrorDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterStatus[k], "ClusterParameterStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterStatus
-- <p>Describes the status of a parameter group.</p>
-- @param _ParameterName [String] <p>The name of the parameter.</p>
-- @param _ParameterApplyStatus [String] <p>The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The parameter value is in sync with the database.</p> </li> <li> <p> <code>pending-reboot</code>: The parameter value will be applied after the cluster reboots.</p> </li> <li> <p> <code>applying</code>: The parameter value is being applied to the database.</p> </li> <li> <p> <code>invalid-parameter</code>: Cannot apply the parameter value because it has an invalid value or syntax.</p> </li> <li> <p> <code>apply-deferred</code>: The parameter contains static property changes. The changes are deferred until the cluster reboots.</p> </li> <li> <p> <code>apply-error</code>: Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.</p> </li> <li> <p> <code>unknown-error</code>: Cannot apply the parameter change right now. The change will be applied after the cluster reboots.</p> </li> </ul>
-- @param _ParameterApplyErrorDescription [String] <p>The error that prevented the parameter from being applied to the database.</p>
function M.ClusterParameterStatus(_ParameterName, _ParameterApplyStatus, _ParameterApplyErrorDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterStatus")
	local t = { 
		["ParameterName"] = _ParameterName,
		["ParameterApplyStatus"] = _ParameterApplyStatus,
		["ParameterApplyErrorDescription"] = _ParameterApplyErrorDescription,
	}
	asserts.AssertClusterParameterStatus(t)
	return t
end

keys.ClusterVersion = { ["ClusterVersion"] = true, ["Description"] = true, ["ClusterParameterGroupFamily"] = true, nil }

function asserts.AssertClusterVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterVersion to be of type 'table'")
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["ClusterParameterGroupFamily"] then asserts.AssertString(struct["ClusterParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterVersion[k], "ClusterVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterVersion
-- <p>Describes a cluster version, including the parameter group family and description of the version.</p>
-- @param _ClusterVersion [String] <p>The version number used by the cluster.</p>
-- @param _Description [String] <p>The description of the cluster version.</p>
-- @param _ClusterParameterGroupFamily [String] <p>The name of the cluster parameter group family for the cluster.</p>
function M.ClusterVersion(_ClusterVersion, _Description, _ClusterParameterGroupFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterVersion")
	local t = { 
		["ClusterVersion"] = _ClusterVersion,
		["Description"] = _Description,
		["ClusterParameterGroupFamily"] = _ClusterParameterGroupFamily,
	}
	asserts.AssertClusterVersion(t)
	return t
end

keys.ModifyClusterMessage = { ["HsmClientCertificateIdentifier"] = true, ["NodeType"] = true, ["PubliclyAccessible"] = true, ["ClusterParameterGroupName"] = true, ["EnhancedVpcRouting"] = true, ["ElasticIp"] = true, ["ClusterType"] = true, ["MasterUserPassword"] = true, ["VpcSecurityGroupIds"] = true, ["AllowVersionUpgrade"] = true, ["PreferredMaintenanceWindow"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmConfigurationIdentifier"] = true, ["NewClusterIdentifier"] = true, ["NumberOfNodes"] = true, ["ClusterVersion"] = true, nil }

function asserts.AssertModifyClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["ClusterParameterGroupName"] then asserts.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["AllowVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["ClusterSecurityGroups"] then asserts.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["NewClusterIdentifier"] then asserts.AssertString(struct["NewClusterIdentifier"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerOptional(struct["NumberOfNodes"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterMessage[k], "ModifyClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterMessage
-- <p/>
-- @param _HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- @param _NodeType [String] <p>The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.</p> <p>When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: <code> ds1.xlarge</code> | <code>ds1.8xlarge</code> | <code> ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code>.</p>
-- @param _PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.</p>
-- @param _ClusterParameterGroupName [String] <p>The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p> <p>Default: Uses existing setting.</p> <p>Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.</p>
-- @param _EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _ElasticIp [String] <p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
-- @param _ClusterType [String] <p>The new cluster type.</p> <p>When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: <code> multi-node | single-node </code> </p>
-- @param _MasterUserPassword [String] <p>The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <note> <p>Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.</p> </note> <p>Default: Uses existing setting.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.</p> </li> </ul>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of virtual private cloud (VPC) security groups to be associated with the cluster.</p>
-- @param _AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades will be applied automatically to the cluster during the maintenance window. </p> <p>Default: <code>false</code> </p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage.</p> <p>This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied.</p> <p>Default: Uses existing setting.</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example <code>wed:07:30-wed:08:00</code>.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes.</p>
-- @param _AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted.</p> <p>Default: Uses existing setting.</p> <p>Constraints: Must be a value from 0 to 35.</p>
-- @param _ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible.</p> <p>Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster to be modified.</p> <p>Example: <code>examplecluster</code> </p>
-- @param _HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- @param _NewClusterIdentifier [String] <p>The new identifier for the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>examplecluster</code> </p>
-- @param _NumberOfNodes [IntegerOptional] <p>The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.</p> <p>When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: Integer greater than <code>0</code>.</p>
-- @param _ClusterVersion [String] <p>The new version number of the Amazon Redshift engine to upgrade to.</p> <p>For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>Example: <code>1.0</code> </p>
-- Required parameter: ClusterIdentifier
function M.ModifyClusterMessage(_HsmClientCertificateIdentifier, _NodeType, _PubliclyAccessible, _ClusterParameterGroupName, _EnhancedVpcRouting, _ElasticIp, _ClusterType, _MasterUserPassword, _VpcSecurityGroupIds, _AllowVersionUpgrade, _PreferredMaintenanceWindow, _AutomatedSnapshotRetentionPeriod, _ClusterSecurityGroups, _ClusterIdentifier, _HsmConfigurationIdentifier, _NewClusterIdentifier, _NumberOfNodes, _ClusterVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["NodeType"] = _NodeType,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["ClusterParameterGroupName"] = _ClusterParameterGroupName,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["ElasticIp"] = _ElasticIp,
		["ClusterType"] = _ClusterType,
		["MasterUserPassword"] = _MasterUserPassword,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["AllowVersionUpgrade"] = _AllowVersionUpgrade,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["AutomatedSnapshotRetentionPeriod"] = _AutomatedSnapshotRetentionPeriod,
		["ClusterSecurityGroups"] = _ClusterSecurityGroups,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
		["NewClusterIdentifier"] = _NewClusterIdentifier,
		["NumberOfNodes"] = _NumberOfNodes,
		["ClusterVersion"] = _ClusterVersion,
	}
	asserts.AssertModifyClusterMessage(t)
	return t
end

keys.ClusterParameterGroupStatus = { ["ClusterParameterStatusList"] = true, ["ParameterGroupName"] = true, ["ParameterApplyStatus"] = true, nil }

function asserts.AssertClusterParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupStatus to be of type 'table'")
	if struct["ClusterParameterStatusList"] then asserts.AssertClusterParameterStatusList(struct["ClusterParameterStatusList"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupStatus[k], "ClusterParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupStatus
-- <p>Describes the status of a parameter group.</p>
-- @param _ClusterParameterStatusList [ClusterParameterStatusList] <p>The list of parameter statuses.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
-- @param _ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
-- @param _ParameterApplyStatus [String] <p>The status of parameter updates.</p>
function M.ClusterParameterGroupStatus(_ClusterParameterStatusList, _ParameterGroupName, _ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupStatus")
	local t = { 
		["ClusterParameterStatusList"] = _ClusterParameterStatusList,
		["ParameterGroupName"] = _ParameterGroupName,
		["ParameterApplyStatus"] = _ParameterApplyStatus,
	}
	asserts.AssertClusterParameterGroupStatus(t)
	return t
end

keys.VpcSecurityGroupMembership = { ["Status"] = true, ["VpcSecurityGroupId"] = true, nil }

function asserts.AssertVpcSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["VpcSecurityGroupId"] then asserts.AssertString(struct["VpcSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcSecurityGroupMembership[k], "VpcSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcSecurityGroupMembership
-- <p>Describes the members of a VPC security group.</p>
-- @param _Status [String] <p>The status of the VPC security group.</p>
-- @param _VpcSecurityGroupId [String] <p>The identifier of the VPC security group.</p>
function M.VpcSecurityGroupMembership(_Status, _VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["VpcSecurityGroupId"] = _VpcSecurityGroupId,
	}
	asserts.AssertVpcSecurityGroupMembership(t)
	return t
end

keys.CreateClusterResult = { ["Cluster"] = true, nil }

function asserts.AssertCreateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResult[k], "CreateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResult
--  
-- @param _Cluster [Cluster] 
function M.CreateClusterResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertCreateClusterResult(t)
	return t
end

keys.ClusterSecurityGroupMembership = { ["Status"] = true, ["ClusterSecurityGroupName"] = true, nil }

function asserts.AssertClusterSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroupMembership[k], "ClusterSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupMembership
-- <p>Describes a cluster security group.</p>
-- @param _Status [String] <p>The status of the cluster security group.</p>
-- @param _ClusterSecurityGroupName [String] <p>The name of the cluster security group.</p>
function M.ClusterSecurityGroupMembership(_Status, _ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
	}
	asserts.AssertClusterSecurityGroupMembership(t)
	return t
end

keys.ResizeNotFoundFault = { nil }

function asserts.AssertResizeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResizeNotFoundFault[k], "ResizeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeNotFoundFault
-- <p>A resize operation for the specified cluster is not found.</p>
function M.ResizeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResizeNotFoundFault")
	local t = { 
	}
	asserts.AssertResizeNotFoundFault(t)
	return t
end

keys.DependentServiceRequestThrottlingFault = { nil }

function asserts.AssertDependentServiceRequestThrottlingFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependentServiceRequestThrottlingFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DependentServiceRequestThrottlingFault[k], "DependentServiceRequestThrottlingFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependentServiceRequestThrottlingFault
-- <p>The request cannot be completed because a dependent service is throttling requests made by Amazon Redshift on your behalf. Wait and retry the request.</p>
function M.DependentServiceRequestThrottlingFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependentServiceRequestThrottlingFault")
	local t = { 
	}
	asserts.AssertDependentServiceRequestThrottlingFault(t)
	return t
end

keys.AccountWithRestoreAccess = { ["AccountAlias"] = true, ["AccountId"] = true, nil }

function asserts.AssertAccountWithRestoreAccess(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountWithRestoreAccess to be of type 'table'")
	if struct["AccountAlias"] then asserts.AssertString(struct["AccountAlias"]) end
	if struct["AccountId"] then asserts.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountWithRestoreAccess[k], "AccountWithRestoreAccess contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountWithRestoreAccess
-- <p>Describes an AWS customer account authorized to restore a snapshot.</p>
-- @param _AccountAlias [String] <p>The identifier of an AWS support account authorized to restore a snapshot. For AWS support, the identifier is <code>amazon-redshift-support</code>. </p>
-- @param _AccountId [String] <p>The identifier of an AWS customer account authorized to restore a snapshot.</p>
function M.AccountWithRestoreAccess(_AccountAlias, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountWithRestoreAccess")
	local t = { 
		["AccountAlias"] = _AccountAlias,
		["AccountId"] = _AccountId,
	}
	asserts.AssertAccountWithRestoreAccess(t)
	return t
end

keys.TaggedResourceListMessage = { ["Marker"] = true, ["TaggedResources"] = true, nil }

function asserts.AssertTaggedResourceListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaggedResourceListMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TaggedResources"] then asserts.AssertTaggedResourceList(struct["TaggedResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaggedResourceListMessage[k], "TaggedResourceListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaggedResourceListMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _TaggedResources [TaggedResourceList] <p>A list of tags with their associated resources.</p>
function M.TaggedResourceListMessage(_Marker, _TaggedResources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaggedResourceListMessage")
	local t = { 
		["Marker"] = _Marker,
		["TaggedResources"] = _TaggedResources,
	}
	asserts.AssertTaggedResourceListMessage(t)
	return t
end

keys.RevokeSnapshotAccessResult = { ["Snapshot"] = true, nil }

function asserts.AssertRevokeSnapshotAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeSnapshotAccessResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeSnapshotAccessResult[k], "RevokeSnapshotAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeSnapshotAccessResult
--  
-- @param _Snapshot [Snapshot] 
function M.RevokeSnapshotAccessResult(_Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeSnapshotAccessResult")
	local t = { 
		["Snapshot"] = _Snapshot,
	}
	asserts.AssertRevokeSnapshotAccessResult(t)
	return t
end

keys.PurchaseReservedNodeOfferingMessage = { ["NodeCount"] = true, ["ReservedNodeOfferingId"] = true, nil }

function asserts.AssertPurchaseReservedNodeOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedNodeOfferingMessage to be of type 'table'")
	assert(struct["ReservedNodeOfferingId"], "Expected key ReservedNodeOfferingId to exist in table")
	if struct["NodeCount"] then asserts.AssertIntegerOptional(struct["NodeCount"]) end
	if struct["ReservedNodeOfferingId"] then asserts.AssertString(struct["ReservedNodeOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedNodeOfferingMessage[k], "PurchaseReservedNodeOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedNodeOfferingMessage
-- <p/>
-- @param _NodeCount [IntegerOptional] <p>The number of reserved nodes that you want to purchase.</p> <p>Default: <code>1</code> </p>
-- @param _ReservedNodeOfferingId [String] <p>The unique identifier of the reserved node offering you want to purchase.</p>
-- Required parameter: ReservedNodeOfferingId
function M.PurchaseReservedNodeOfferingMessage(_NodeCount, _ReservedNodeOfferingId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedNodeOfferingMessage")
	local t = { 
		["NodeCount"] = _NodeCount,
		["ReservedNodeOfferingId"] = _ReservedNodeOfferingId,
	}
	asserts.AssertPurchaseReservedNodeOfferingMessage(t)
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
-- <p>The number of nodes specified exceeds the allotted capacity of the cluster.</p>
function M.InsufficientClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientClusterCapacityFault")
	local t = { 
	}
	asserts.AssertInsufficientClusterCapacityFault(t)
	return t
end

keys.CreateEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertCreateEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionResult[k], "CreateEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionResult
--  
-- @param _EventSubscription [EventSubscription] 
function M.CreateEventSubscriptionResult(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertCreateEventSubscriptionResult(t)
	return t
end

keys.HsmStatus = { ["Status"] = true, ["HsmClientCertificateIdentifier"] = true, ["HsmConfigurationIdentifier"] = true, nil }

function asserts.AssertHsmStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.HsmStatus[k], "HsmStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmStatus
-- <p>Describes the status of changes to HSM settings.</p>
-- @param _Status [String] <p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>
-- @param _HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- @param _HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
function M.HsmStatus(_Status, _HsmClientCertificateIdentifier, _HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmStatus")
	local t = { 
		["Status"] = _Status,
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
	}
	asserts.AssertHsmStatus(t)
	return t
end

keys.SNSInvalidTopicFault = { nil }

function asserts.AssertSNSInvalidTopicFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSInvalidTopicFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSInvalidTopicFault[k], "SNSInvalidTopicFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSInvalidTopicFault
-- <p>Amazon SNS has responded that there is a problem with the specified Amazon SNS topic.</p>
function M.SNSInvalidTopicFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
	}
	asserts.AssertSNSInvalidTopicFault(t)
	return t
end

keys.ReservedNodeOfferingsMessage = { ["Marker"] = true, ["ReservedNodeOfferings"] = true, nil }

function asserts.AssertReservedNodeOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOfferingsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedNodeOfferings"] then asserts.AssertReservedNodeOfferingList(struct["ReservedNodeOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeOfferingsMessage[k], "ReservedNodeOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOfferingsMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ReservedNodeOfferings [ReservedNodeOfferingList] <p>A list of <code>ReservedNodeOffering</code> objects.</p>
function M.ReservedNodeOfferingsMessage(_Marker, _ReservedNodeOfferings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOfferingsMessage")
	local t = { 
		["Marker"] = _Marker,
		["ReservedNodeOfferings"] = _ReservedNodeOfferings,
	}
	asserts.AssertReservedNodeOfferingsMessage(t)
	return t
end

keys.HsmConfigurationNotFoundFault = { nil }

function asserts.AssertHsmConfigurationNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmConfigurationNotFoundFault[k], "HsmConfigurationNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationNotFoundFault
-- <p>There is no Amazon Redshift HSM configuration with the specified identifier.</p>
function M.HsmConfigurationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationNotFoundFault")
	local t = { 
	}
	asserts.AssertHsmConfigurationNotFoundFault(t)
	return t
end

keys.NumberOfNodesQuotaExceededFault = { nil }

function asserts.AssertNumberOfNodesQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberOfNodesQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NumberOfNodesQuotaExceededFault[k], "NumberOfNodesQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberOfNodesQuotaExceededFault
-- <p>The operation would exceed the number of nodes allotted to the account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.NumberOfNodesQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberOfNodesQuotaExceededFault")
	local t = { 
	}
	asserts.AssertNumberOfNodesQuotaExceededFault(t)
	return t
end

keys.CreateEventSubscriptionMessage = { ["EventCategories"] = true, ["Severity"] = true, ["Tags"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["SubscriptionName"] = true, ["SourceIds"] = true, ["SourceType"] = true, nil }

function asserts.AssertCreateEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then asserts.AssertString(struct["Severity"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then asserts.AssertSourceIdsList(struct["SourceIds"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionMessage[k], "CreateEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionMessage
-- <p/>
-- @param _EventCategories [EventCategoriesList] <p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- @param _Severity [String] <p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _Enabled [BooleanOptional] <p>A Boolean value; set to <code>true</code> to activate the subscription, set to <code>false</code> to create the subscription but not active it. </p>
-- @param _SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- @param _SubscriptionName [String] <p>The name of the event subscription to be created.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _SourceIds [SourceIdsList] <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>
-- @param _SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.</p>
-- Required parameter: SubscriptionName
-- Required parameter: SnsTopicArn
function M.CreateEventSubscriptionMessage(_EventCategories, _Severity, _Tags, _Enabled, _SnsTopicArn, _SubscriptionName, _SourceIds, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = _EventCategories,
		["Severity"] = _Severity,
		["Tags"] = _Tags,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["SubscriptionName"] = _SubscriptionName,
		["SourceIds"] = _SourceIds,
		["SourceType"] = _SourceType,
	}
	asserts.AssertCreateEventSubscriptionMessage(t)
	return t
end

keys.DescribeClusterParameterGroupsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["ParameterGroupName"] = true, nil }

function asserts.AssertDescribeClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterParameterGroupsMessage[k], "DescribeClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterParameterGroupsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameterGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.</p>
-- @param _ParameterGroupName [String] <p>The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.</p>
function M.DescribeClusterParameterGroupsMessage(_Marker, _TagValues, _MaxRecords, _TagKeys, _ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["TagKeys"] = _TagKeys,
		["ParameterGroupName"] = _ParameterGroupName,
	}
	asserts.AssertDescribeClusterParameterGroupsMessage(t)
	return t
end

keys.IncompatibleOrderableOptions = { nil }

function asserts.AssertIncompatibleOrderableOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleOrderableOptions to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.IncompatibleOrderableOptions[k], "IncompatibleOrderableOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleOrderableOptions
-- <p>The specified options are incompatible.</p>
function M.IncompatibleOrderableOptions(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleOrderableOptions")
	local t = { 
	}
	asserts.AssertIncompatibleOrderableOptions(t)
	return t
end

keys.CreateHsmClientCertificateMessage = { ["HsmClientCertificateIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmClientCertificateMessage to be of type 'table'")
	assert(struct["HsmClientCertificateIdentifier"], "Expected key HsmClientCertificateIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmClientCertificateMessage[k], "CreateHsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmClientCertificateMessage
-- <p/>
-- @param _HsmClientCertificateIdentifier [String] <p>The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- Required parameter: HsmClientCertificateIdentifier
function M.CreateHsmClientCertificateMessage(_HsmClientCertificateIdentifier, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmClientCertificateMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateHsmClientCertificateMessage(t)
	return t
end

keys.InvalidS3KeyPrefixFault = { nil }

function asserts.AssertInvalidS3KeyPrefixFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3KeyPrefixFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3KeyPrefixFault[k], "InvalidS3KeyPrefixFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3KeyPrefixFault
-- <p>The string specified for the logging S3 key prefix does not comply with the documented constraints.</p>
function M.InvalidS3KeyPrefixFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3KeyPrefixFault")
	local t = { 
	}
	asserts.AssertInvalidS3KeyPrefixFault(t)
	return t
end

keys.SubscriptionAlreadyExistFault = { nil }

function asserts.AssertSubscriptionAlreadyExistFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionAlreadyExistFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionAlreadyExistFault[k], "SubscriptionAlreadyExistFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionAlreadyExistFault
-- <p>There is already an existing event notification subscription with the specified name.</p>
function M.SubscriptionAlreadyExistFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionAlreadyExistFault")
	local t = { 
	}
	asserts.AssertSubscriptionAlreadyExistFault(t)
	return t
end

keys.RebootClusterMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertRebootClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootClusterMessage[k], "RebootClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootClusterMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The cluster identifier.</p>
-- Required parameter: ClusterIdentifier
function M.RebootClusterMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootClusterMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertRebootClusterMessage(t)
	return t
end

keys.ClusterSecurityGroupMessage = { ["Marker"] = true, ["ClusterSecurityGroups"] = true, nil }

function asserts.AssertClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterSecurityGroups"] then asserts.AssertClusterSecurityGroups(struct["ClusterSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroupMessage[k], "ClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ClusterSecurityGroups [ClusterSecurityGroups] <p>A list of <a>ClusterSecurityGroup</a> instances. </p>
function M.ClusterSecurityGroupMessage(_Marker, _ClusterSecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupMessage")
	local t = { 
		["Marker"] = _Marker,
		["ClusterSecurityGroups"] = _ClusterSecurityGroups,
	}
	asserts.AssertClusterSecurityGroupMessage(t)
	return t
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
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _Events [EventList] <p>A list of <code>Event</code> instances. </p>
function M.EventsMessage(_Marker, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventsMessage")
	local t = { 
		["Marker"] = _Marker,
		["Events"] = _Events,
	}
	asserts.AssertEventsMessage(t)
	return t
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
-- <p/>
-- @param _SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p> <p>Constraints:</p> <p>If <i>SourceType</i> is supplied, <i>SourceIdentifier</i> must also be provided.</p> <ul> <li> <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is a cluster identifier.</p> </li> <li> <p>Specify <code>cluster-security-group</code> when <i>SourceIdentifier</i> is a cluster security group name.</p> </li> <li> <p>Specify <code>cluster-parameter-group</code> when <i>SourceIdentifier</i> is a cluster parameter group name.</p> </li> <li> <p>Specify <code>cluster-snapshot</code> when <i>SourceIdentifier</i> is a cluster snapshot identifier.</p> </li> </ul>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeEvents</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>
-- @param _Duration [IntegerOptional] <p>The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned.</p> <p>Default: <code>60</code> </p>
-- @param _SourceIdentifier [String] <p>The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response.</p> <p>Constraints:</p> <p>If <i>SourceIdentifier</i> is supplied, <i>SourceType</i> must also be provided.</p> <ul> <li> <p>Specify a cluster identifier when <i>SourceType</i> is <code>cluster</code>.</p> </li> <li> <p>Specify a cluster security group name when <i>SourceType</i> is <code>cluster-security-group</code>.</p> </li> <li> <p>Specify a cluster parameter group name when <i>SourceType</i> is <code>cluster-parameter-group</code>.</p> </li> <li> <p>Specify a cluster snapshot identifier when <i>SourceType</i> is <code>cluster-snapshot</code>.</p> </li> </ul>
-- @param _EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>
function M.DescribeEventsMessage(_SourceType, _Marker, _MaxRecords, _StartTime, _Duration, _SourceIdentifier, _EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsMessage")
	local t = { 
		["SourceType"] = _SourceType,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["StartTime"] = _StartTime,
		["Duration"] = _Duration,
		["SourceIdentifier"] = _SourceIdentifier,
		["EndTime"] = _EndTime,
	}
	asserts.AssertDescribeEventsMessage(t)
	return t
end

keys.ClusterParameterGroupsMessage = { ["Marker"] = true, ["ParameterGroups"] = true, nil }

function asserts.AssertClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ParameterGroups"] then asserts.AssertParameterGroupList(struct["ParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupsMessage[k], "ClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupsMessage
-- <p>Contains the output from the <a>DescribeClusterParameterGroups</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ParameterGroups [ParameterGroupList] <p>A list of <a>ClusterParameterGroup</a> instances. Each instance describes one cluster parameter group. </p>
function M.ClusterParameterGroupsMessage(_Marker, _ParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["ParameterGroups"] = _ParameterGroups,
	}
	asserts.AssertClusterParameterGroupsMessage(t)
	return t
end

keys.ClusterSubnetGroupAlreadyExistsFault = { nil }

function asserts.AssertClusterSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetGroupAlreadyExistsFault[k], "ClusterSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupAlreadyExistsFault
-- <p>A <i>ClusterSubnetGroupName</i> is already used by an existing cluster subnet group. </p>
function M.ClusterSubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterSubnetGroupAlreadyExistsFault(t)
	return t
end

keys.AccessToSnapshotDeniedFault = { nil }

function asserts.AssertAccessToSnapshotDeniedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessToSnapshotDeniedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AccessToSnapshotDeniedFault[k], "AccessToSnapshotDeniedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessToSnapshotDeniedFault
-- <p>The owner of the specified snapshot has not authorized your account to access the snapshot.</p>
function M.AccessToSnapshotDeniedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessToSnapshotDeniedFault")
	local t = { 
	}
	asserts.AssertAccessToSnapshotDeniedFault(t)
	return t
end

keys.ClusterSnapshotCopyStatus = { ["SnapshotCopyGrantName"] = true, ["DestinationRegion"] = true, ["RetentionPeriod"] = true, nil }

function asserts.AssertClusterSnapshotCopyStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotCopyStatus to be of type 'table'")
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["DestinationRegion"] then asserts.AssertString(struct["DestinationRegion"]) end
	if struct["RetentionPeriod"] then asserts.AssertLong(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSnapshotCopyStatus[k], "ClusterSnapshotCopyStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotCopyStatus
-- <p>Returns the destination region and retention period that are configured for cross-region snapshot copy.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- @param _DestinationRegion [String] <p>The destination region that snapshots are automatically copied to when cross-region snapshot copy is enabled.</p>
-- @param _RetentionPeriod [Long] <p>The number of days that automated snapshots are retained in the destination region after they are copied from a source region.</p>
function M.ClusterSnapshotCopyStatus(_SnapshotCopyGrantName, _DestinationRegion, _RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotCopyStatus")
	local t = { 
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
		["DestinationRegion"] = _DestinationRegion,
		["RetentionPeriod"] = _RetentionPeriod,
	}
	asserts.AssertClusterSnapshotCopyStatus(t)
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
-- <p>A tag consisting of a name/value pair for a resource.</p>
-- @param _Value [String] <p>The value for the resource tag.</p>
-- @param _Key [String] <p>The key, or name, for the resource tag.</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.ClusterSubnetGroupMessage = { ["Marker"] = true, ["ClusterSubnetGroups"] = true, nil }

function asserts.AssertClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterSubnetGroups"] then asserts.AssertClusterSubnetGroups(struct["ClusterSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetGroupMessage[k], "ClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupMessage
-- <p>Contains the output from the <a>DescribeClusterSubnetGroups</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ClusterSubnetGroups [ClusterSubnetGroups] <p>A list of <a>ClusterSubnetGroup</a> instances. </p>
function M.ClusterSubnetGroupMessage(_Marker, _ClusterSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupMessage")
	local t = { 
		["Marker"] = _Marker,
		["ClusterSubnetGroups"] = _ClusterSubnetGroups,
	}
	asserts.AssertClusterSubnetGroupMessage(t)
	return t
end

keys.Event = { ["EventId"] = true, ["EventCategories"] = true, ["SourceType"] = true, ["Date"] = true, ["Message"] = true, ["SourceIdentifier"] = true, ["Severity"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then asserts.AssertString(struct["EventId"]) end
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["Severity"] then asserts.AssertString(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Describes an event.</p>
-- @param _EventId [String] <p>The identifier of the event.</p>
-- @param _EventCategories [EventCategoriesList] <p>A list of the event categories.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- @param _SourceType [SourceType] <p>The source type for this event.</p>
-- @param _Date [TStamp] <p>The date and time of the event.</p>
-- @param _Message [String] <p>The text of this event.</p>
-- @param _SourceIdentifier [String] <p>The identifier for the source of the event.</p>
-- @param _Severity [String] <p>The severity of the event.</p> <p>Values: ERROR, INFO</p>
function M.Event(_EventId, _EventCategories, _SourceType, _Date, _Message, _SourceIdentifier, _Severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = _EventId,
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
		["Date"] = _Date,
		["Message"] = _Message,
		["SourceIdentifier"] = _SourceIdentifier,
		["Severity"] = _Severity,
	}
	asserts.AssertEvent(t)
	return t
end

keys.DisableLoggingMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertDisableLoggingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableLoggingMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableLoggingMessage[k], "DisableLoggingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableLoggingMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster on which logging is to be stopped.</p> <p>Example: <code>examplecluster</code> </p>
-- Required parameter: ClusterIdentifier
function M.DisableLoggingMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableLoggingMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertDisableLoggingMessage(t)
	return t
end

keys.SubscriptionNotFoundFault = { nil }

function asserts.AssertSubscriptionNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionNotFoundFault[k], "SubscriptionNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionNotFoundFault
-- <p>An Amazon Redshift event notification subscription with the specified name does not exist.</p>
function M.SubscriptionNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionNotFoundFault(t)
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
-- <p>The requested subnet is not valid, or not all of the subnets are in the same VPC.</p>
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	asserts.AssertInvalidSubnet(t)
	return t
end

keys.ClusterSecurityGroupQuotaExceededFault = { nil }

function asserts.AssertClusterSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroupQuotaExceededFault[k], "ClusterSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupQuotaExceededFault
-- <p>The request would result in the user exceeding the allowed number of cluster security groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ClusterSecurityGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterSecurityGroupQuotaExceededFault(t)
	return t
end

keys.ReservedNodeOfferingNotFoundFault = { nil }

function asserts.AssertReservedNodeOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeOfferingNotFoundFault[k], "ReservedNodeOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOfferingNotFoundFault
-- <p>Specified offering does not exist.</p>
function M.ReservedNodeOfferingNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOfferingNotFoundFault")
	local t = { 
	}
	asserts.AssertReservedNodeOfferingNotFoundFault(t)
	return t
end

keys.CreateClusterMessage = { ["ClusterParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["NumberOfNodes"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["EnhancedVpcRouting"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["AdditionalInfo"] = true, ["ClusterType"] = true, ["IamRoles"] = true, ["AllowVersionUpgrade"] = true, ["HsmConfigurationIdentifier"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmClientCertificateIdentifier"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["ElasticIp"] = true, ["Encrypted"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["Port"] = true, ["ClusterSubnetGroupName"] = true, nil }

function asserts.AssertCreateClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["NodeType"], "Expected key NodeType to exist in table")
	assert(struct["MasterUsername"], "Expected key MasterUsername to exist in table")
	assert(struct["MasterUserPassword"], "Expected key MasterUserPassword to exist in table")
	if struct["ClusterParameterGroupName"] then asserts.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerOptional(struct["NumberOfNodes"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AdditionalInfo"] then asserts.AssertString(struct["AdditionalInfo"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	if struct["IamRoles"] then asserts.AssertIamRoleArnList(struct["IamRoles"]) end
	if struct["AllowVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["ClusterSecurityGroups"] then asserts.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	if struct["Encrypted"] then asserts.AssertBooleanOptional(struct["Encrypted"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterMessage[k], "CreateClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterMessage
-- <p/>
-- @param _ClusterParameterGroupName [String] <p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon Redshift Parameter Groups</a> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
-- @param _MasterUsername [String] <p>The user name associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 - 128 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p>
-- @param _NumberOfNodes [IntegerOptional] <p>The number of compute nodes in the cluster. This parameter is required when the <b>ClusterType</b> parameter is specified as <code>multi-node</code>. </p> <p>For information about determining how many nodes you need, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.</p> <p>Default: <code>1</code> </p> <p>Constraints: Value must be at least 1 and no more than 100.</p>
-- @param _ClusterVersion [String] <p>The version of the Amazon Redshift engine software that you want to deploy on the cluster.</p> <p>The version selected runs on all the nodes in the cluster.</p> <p>Constraints: Only version 1.0 is currently available.</p> <p>Example: <code>1.0</code> </p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: <code>1</code> </p> <p>Constraints: Must be a value from 0 to 35.</p>
-- @param _EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _DBName [String] <p>The name of the first database to be created when the cluster is created.</p> <p>To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to <a href="http://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html">Create a Database</a> in the Amazon Redshift Database Developer Guide. </p> <p>Default: <code>dev</code> </p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters.</p> </li> <li> <p>Must contain only lowercase letters.</p> </li> <li> <p>Cannot be a word that is reserved by the service. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _AdditionalInfo [String] <p>Reserved.</p>
-- @param _ClusterType [String] <p>The type of the cluster. When cluster type is specified as</p> <ul> <li> <p> <code>single-node</code>, the <b>NumberOfNodes</b> parameter is not required.</p> </li> <li> <p> <code>multi-node</code>, the <b>NumberOfNodes</b> parameter is required.</p> </li> </ul> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p> <p>Default: <code>multi-node</code> </p>
-- @param _IamRoles [IamRoleArnList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated with it at any time.</p>
-- @param _AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.</p> <p>When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.</p> <p>Default: <code>true</code> </p>
-- @param _HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- @param _ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p>
-- @param _ClusterIdentifier [String] <p>A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>myexamplecluster</code> </p>
-- @param _HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- @param _AvailabilityZone [String] <p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.</p> <p>Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.</p> <p>Example: <code>us-east-1d</code> </p> <p>Constraint: The specified Availability Zone must be in the same region as the current endpoint.</p>
-- @param _NodeType [String] <p>The node type to be provisioned for the cluster. For information about node types, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>Valid Values: <code>ds1.xlarge</code> | <code>ds1.8xlarge</code> | <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code>. </p>
-- @param _ElasticIp [String] <p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
-- @param _Encrypted [BooleanOptional] <p>If <code>true</code>, the data in the cluster is encrypted at rest. </p> <p>Default: false</p>
-- @param _MasterUserPassword [String] <p>The password associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.</p> </li> </ul>
-- @param _KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.</p>
-- @param _Port [IntegerOptional] <p>The port number on which the cluster accepts incoming connections.</p> <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections.</p> <p>Default: <code>5439</code> </p> <p>Valid Values: <code>1150-65535</code> </p>
-- @param _ClusterSubnetGroupName [String] <p>The name of a cluster subnet group to be associated with this cluster.</p> <p>If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).</p>
-- Required parameter: ClusterIdentifier
-- Required parameter: NodeType
-- Required parameter: MasterUsername
-- Required parameter: MasterUserPassword
function M.CreateClusterMessage(_ClusterParameterGroupName, _PubliclyAccessible, _MasterUsername, _VpcSecurityGroupIds, _NumberOfNodes, _ClusterVersion, _Tags, _AutomatedSnapshotRetentionPeriod, _EnhancedVpcRouting, _DBName, _PreferredMaintenanceWindow, _AdditionalInfo, _ClusterType, _IamRoles, _AllowVersionUpgrade, _HsmConfigurationIdentifier, _ClusterSecurityGroups, _ClusterIdentifier, _HsmClientCertificateIdentifier, _AvailabilityZone, _NodeType, _ElasticIp, _Encrypted, _MasterUserPassword, _KmsKeyId, _Port, _ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterMessage")
	local t = { 
		["ClusterParameterGroupName"] = _ClusterParameterGroupName,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["MasterUsername"] = _MasterUsername,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["NumberOfNodes"] = _NumberOfNodes,
		["ClusterVersion"] = _ClusterVersion,
		["Tags"] = _Tags,
		["AutomatedSnapshotRetentionPeriod"] = _AutomatedSnapshotRetentionPeriod,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["DBName"] = _DBName,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["AdditionalInfo"] = _AdditionalInfo,
		["ClusterType"] = _ClusterType,
		["IamRoles"] = _IamRoles,
		["AllowVersionUpgrade"] = _AllowVersionUpgrade,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
		["ClusterSecurityGroups"] = _ClusterSecurityGroups,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["AvailabilityZone"] = _AvailabilityZone,
		["NodeType"] = _NodeType,
		["ElasticIp"] = _ElasticIp,
		["Encrypted"] = _Encrypted,
		["MasterUserPassword"] = _MasterUserPassword,
		["KmsKeyId"] = _KmsKeyId,
		["Port"] = _Port,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
	}
	asserts.AssertCreateClusterMessage(t)
	return t
end

keys.ClusterSnapshotQuotaExceededFault = { nil }

function asserts.AssertClusterSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSnapshotQuotaExceededFault[k], "ClusterSnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotQuotaExceededFault
-- <p>The request would result in the user exceeding the allowed number of cluster snapshots.</p>
function M.ClusterSnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterSnapshotQuotaExceededFault(t)
	return t
end

keys.DeleteTagsMessage = { ["ResourceName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDeleteTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsMessage[k], "DeleteTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsMessage
-- <p>Contains the output from the <code>DeleteTags</code> action. </p>
-- @param _ResourceName [String] <p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- @param _TagKeys [TagKeyList] <p>The tag key that you want to delete.</p>
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.DeleteTagsMessage(_ResourceName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsMessage")
	local t = { 
		["ResourceName"] = _ResourceName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertDeleteTagsMessage(t)
	return t
end

keys.CreateSnapshotCopyGrantResult = { ["SnapshotCopyGrant"] = true, nil }

function asserts.AssertCreateSnapshotCopyGrantResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotCopyGrantResult to be of type 'table'")
	if struct["SnapshotCopyGrant"] then asserts.AssertSnapshotCopyGrant(struct["SnapshotCopyGrant"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotCopyGrantResult[k], "CreateSnapshotCopyGrantResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotCopyGrantResult
--  
-- @param _SnapshotCopyGrant [SnapshotCopyGrant] 
function M.CreateSnapshotCopyGrantResult(_SnapshotCopyGrant, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotCopyGrantResult")
	local t = { 
		["SnapshotCopyGrant"] = _SnapshotCopyGrant,
	}
	asserts.AssertCreateSnapshotCopyGrantResult(t)
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
-- <p>Describes a connection endpoint.</p>
-- @param _Port [Integer] <p>The port that the database engine is listening on.</p>
-- @param _Address [String] <p>The DNS address of the Cluster.</p>
function M.Endpoint(_Port, _Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Port"] = _Port,
		["Address"] = _Address,
	}
	asserts.AssertEndpoint(t)
	return t
end

keys.HsmConfiguration = { ["Tags"] = true, ["HsmIpAddress"] = true, ["HsmPartitionName"] = true, ["HsmConfigurationIdentifier"] = true, ["Description"] = true, nil }

function asserts.AssertHsmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfiguration to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["HsmIpAddress"] then asserts.AssertString(struct["HsmIpAddress"]) end
	if struct["HsmPartitionName"] then asserts.AssertString(struct["HsmPartitionName"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.HsmConfiguration[k], "HsmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfiguration
-- <p>Returns information about an HSM configuration, which is an object that describes to Amazon Redshift clusters the information they require to connect to an HSM where they can store database encryption keys.</p>
-- @param _Tags [TagList] <p>The list of tags for the HSM configuration.</p>
-- @param _HsmIpAddress [String] <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
-- @param _HsmPartitionName [String] <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>
-- @param _HsmConfigurationIdentifier [String] <p>The name of the Amazon Redshift HSM configuration.</p>
-- @param _Description [String] <p>A text description of the HSM configuration.</p>
function M.HsmConfiguration(_Tags, _HsmIpAddress, _HsmPartitionName, _HsmConfigurationIdentifier, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfiguration")
	local t = { 
		["Tags"] = _Tags,
		["HsmIpAddress"] = _HsmIpAddress,
		["HsmPartitionName"] = _HsmPartitionName,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
		["Description"] = _Description,
	}
	asserts.AssertHsmConfiguration(t)
	return t
end

keys.ReservedNode = { ["OfferingType"] = true, ["FixedPrice"] = true, ["NodeType"] = true, ["NodeCount"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["ReservedNodeId"] = true, ["State"] = true, ["StartTime"] = true, ["Duration"] = true, ["ReservedNodeOfferingId"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNode to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["NodeCount"] then asserts.AssertInteger(struct["NodeCount"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedNodeId"] then asserts.AssertString(struct["ReservedNodeId"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["ReservedNodeOfferingId"] then asserts.AssertString(struct["ReservedNodeOfferingId"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNode[k], "ReservedNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNode
-- <p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. </p>
-- @param _OfferingType [String] <p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>
-- @param _FixedPrice [Double] <p>The fixed cost Amazon Redshift charges you for this reserved node.</p>
-- @param _NodeType [String] <p>The node type of the reserved node.</p>
-- @param _NodeCount [Integer] <p>The number of reserved compute nodes.</p>
-- @param _UsagePrice [Double] <p>The hourly rate Amazon Redshift charges you for this reserved node.</p>
-- @param _RecurringCharges [RecurringChargeList] <p>The recurring charges for the reserved node.</p>
-- @param _ReservedNodeId [String] <p>The unique identifier for the reservation.</p>
-- @param _State [String] <p>The state of the reserved compute node.</p> <p>Possible Values:</p> <ul> <li> <p>pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.</p> </li> <li> <p>active-This reserved node is owned by the caller and is available for use.</p> </li> <li> <p>payment-failed-Payment failed for the purchase attempt.</p> </li> </ul>
-- @param _StartTime [TStamp] <p>The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.</p>
-- @param _Duration [Integer] <p>The duration of the node reservation in seconds.</p>
-- @param _ReservedNodeOfferingId [String] <p>The identifier for the reserved node offering.</p>
-- @param _CurrencyCode [String] <p>The currency code for the reserved cluster.</p>
function M.ReservedNode(_OfferingType, _FixedPrice, _NodeType, _NodeCount, _UsagePrice, _RecurringCharges, _ReservedNodeId, _State, _StartTime, _Duration, _ReservedNodeOfferingId, _CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNode")
	local t = { 
		["OfferingType"] = _OfferingType,
		["FixedPrice"] = _FixedPrice,
		["NodeType"] = _NodeType,
		["NodeCount"] = _NodeCount,
		["UsagePrice"] = _UsagePrice,
		["RecurringCharges"] = _RecurringCharges,
		["ReservedNodeId"] = _ReservedNodeId,
		["State"] = _State,
		["StartTime"] = _StartTime,
		["Duration"] = _Duration,
		["ReservedNodeOfferingId"] = _ReservedNodeOfferingId,
		["CurrencyCode"] = _CurrencyCode,
	}
	asserts.AssertReservedNode(t)
	return t
end

keys.ResetClusterParameterGroupMessage = { ["ResetAllParameters"] = true, ["ParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertResetClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetClusterParameterGroupMessage[k], "ResetClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetClusterParameterGroupMessage
-- <p/>
-- @param _ResetAllParameters [Boolean] <p>If <code>true</code>, all parameters in the specified parameter group will be reset to their default values. </p> <p>Default: <code>true</code> </p>
-- @param _ParameterGroupName [String] <p>The name of the cluster parameter group to be reset.</p>
-- @param _Parameters [ParametersList] <p>An array of names of parameters to be reset. If <i>ResetAllParameters</i> option is not used, then at least one parameter name must be supplied. </p> <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>
-- Required parameter: ParameterGroupName
function M.ResetClusterParameterGroupMessage(_ResetAllParameters, _ParameterGroupName, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetClusterParameterGroupMessage")
	local t = { 
		["ResetAllParameters"] = _ResetAllParameters,
		["ParameterGroupName"] = _ParameterGroupName,
		["Parameters"] = _Parameters,
	}
	asserts.AssertResetClusterParameterGroupMessage(t)
	return t
end

keys.ModifyClusterResult = { ["Cluster"] = true, nil }

function asserts.AssertModifyClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterResult[k], "ModifyClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterResult
--  
-- @param _Cluster [Cluster] 
function M.ModifyClusterResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertModifyClusterResult(t)
	return t
end

keys.InvalidSubscriptionStateFault = { nil }

function asserts.AssertInvalidSubscriptionStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSubscriptionStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSubscriptionStateFault[k], "InvalidSubscriptionStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSubscriptionStateFault
-- <p>The subscription request is invalid because it is a duplicate request. This subscription request is already in progress.</p>
function M.InvalidSubscriptionStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubscriptionStateFault")
	local t = { 
	}
	asserts.AssertInvalidSubscriptionStateFault(t)
	return t
end

keys.InProgressTableRestoreQuotaExceededFault = { nil }

function asserts.AssertInProgressTableRestoreQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InProgressTableRestoreQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InProgressTableRestoreQuotaExceededFault[k], "InProgressTableRestoreQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InProgressTableRestoreQuotaExceededFault
-- <p>You have exceeded the allowed number of table restore requests. Wait for your current table restore requests to complete before making a new request.</p>
function M.InProgressTableRestoreQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InProgressTableRestoreQuotaExceededFault")
	local t = { 
	}
	asserts.AssertInProgressTableRestoreQuotaExceededFault(t)
	return t
end

keys.Parameter = { ["Description"] = true, ["DataType"] = true, ["IsModifiable"] = true, ["AllowedValues"] = true, ["Source"] = true, ["ParameterValue"] = true, ["ParameterName"] = true, ["MinimumEngineVersion"] = true, ["ApplyType"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then asserts.AssertString(struct["MinimumEngineVersion"]) end
	if struct["ApplyType"] then asserts.AssertParameterApplyType(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>Describes a parameter in a cluster parameter group.</p>
-- @param _Description [String] <p>A description of the parameter.</p>
-- @param _DataType [String] <p>The data type of the parameter.</p>
-- @param _IsModifiable [Boolean] <p>If <code>true</code>, the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- @param _AllowedValues [String] <p>The valid range of values for the parameter.</p>
-- @param _Source [String] <p>The source of the parameter value, such as "engine-default" or "user".</p>
-- @param _ParameterValue [String] <p>The value of the parameter.</p>
-- @param _ParameterName [String] <p>The name of the parameter.</p>
-- @param _MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- @param _ApplyType [ParameterApplyType] <p>Specifies how to apply the WLM configuration parameter. Some properties can be applied dynamically, while other properties require that any associated clusters be rebooted for the configuration changes to be applied. For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
function M.Parameter(_Description, _DataType, _IsModifiable, _AllowedValues, _Source, _ParameterValue, _ParameterName, _MinimumEngineVersion, _ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["Description"] = _Description,
		["DataType"] = _DataType,
		["IsModifiable"] = _IsModifiable,
		["AllowedValues"] = _AllowedValues,
		["Source"] = _Source,
		["ParameterValue"] = _ParameterValue,
		["ParameterName"] = _ParameterName,
		["MinimumEngineVersion"] = _MinimumEngineVersion,
		["ApplyType"] = _ApplyType,
	}
	asserts.AssertParameter(t)
	return t
end

keys.CopyClusterSnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertCopyClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyClusterSnapshotResult[k], "CopyClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyClusterSnapshotResult
--  
-- @param _Snapshot [Snapshot] 
function M.CopyClusterSnapshotResult(_Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyClusterSnapshotResult")
	local t = { 
		["Snapshot"] = _Snapshot,
	}
	asserts.AssertCopyClusterSnapshotResult(t)
	return t
end

keys.ClusterIamRole = { ["ApplyStatus"] = true, ["IamRoleArn"] = true, nil }

function asserts.AssertClusterIamRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterIamRole to be of type 'table'")
	if struct["ApplyStatus"] then asserts.AssertString(struct["ApplyStatus"]) end
	if struct["IamRoleArn"] then asserts.AssertString(struct["IamRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterIamRole[k], "ClusterIamRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterIamRole
-- <p>An AWS Identity and Access Management (IAM) role that can be used by the associated Amazon Redshift cluster to access other AWS services.</p>
-- @param _ApplyStatus [String] <p>A value that describes the status of the IAM role's association with an Amazon Redshift cluster.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The role is available for use by the cluster.</p> </li> <li> <p> <code>adding</code>: The role is in the process of being associated with the cluster.</p> </li> <li> <p> <code>removing</code>: The role is in the process of being disassociated with the cluster.</p> </li> </ul>
-- @param _IamRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role, for example, <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>
function M.ClusterIamRole(_ApplyStatus, _IamRoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterIamRole")
	local t = { 
		["ApplyStatus"] = _ApplyStatus,
		["IamRoleArn"] = _IamRoleArn,
	}
	asserts.AssertClusterIamRole(t)
	return t
end

keys.InvalidTableRestoreArgumentFault = { nil }

function asserts.AssertInvalidTableRestoreArgumentFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTableRestoreArgumentFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTableRestoreArgumentFault[k], "InvalidTableRestoreArgumentFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTableRestoreArgumentFault
-- <p>The value specified for the <code>sourceDatabaseName</code>, <code>sourceSchemaName</code>, or <code>sourceTableName</code> parameter, or a combination of these, doesn't exist in the snapshot.</p>
function M.InvalidTableRestoreArgumentFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTableRestoreArgumentFault")
	local t = { 
	}
	asserts.AssertInvalidTableRestoreArgumentFault(t)
	return t
end

keys.ClusterSubnetQuotaExceededFault = { nil }

function asserts.AssertClusterSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetQuotaExceededFault[k], "ClusterSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetQuotaExceededFault
-- <p>The request would result in user exceeding the allowed number of subnets in a cluster subnet groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ClusterSubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterSubnetQuotaExceededFault(t)
	return t
end

keys.UnsupportedOptionFault = { nil }

function asserts.AssertUnsupportedOptionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOptionFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOptionFault[k], "UnsupportedOptionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOptionFault
-- <p>A request option was specified that is not supported.</p>
function M.UnsupportedOptionFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOptionFault")
	local t = { 
	}
	asserts.AssertUnsupportedOptionFault(t)
	return t
end

keys.RestoreTableFromClusterSnapshotResult = { ["TableRestoreStatus"] = true, nil }

function asserts.AssertRestoreTableFromClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromClusterSnapshotResult to be of type 'table'")
	if struct["TableRestoreStatus"] then asserts.AssertTableRestoreStatus(struct["TableRestoreStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableFromClusterSnapshotResult[k], "RestoreTableFromClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromClusterSnapshotResult
--  
-- @param _TableRestoreStatus [TableRestoreStatus] 
function M.RestoreTableFromClusterSnapshotResult(_TableRestoreStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreTableFromClusterSnapshotResult")
	local t = { 
		["TableRestoreStatus"] = _TableRestoreStatus,
	}
	asserts.AssertRestoreTableFromClusterSnapshotResult(t)
	return t
end

keys.ModifyClusterSubnetGroupMessage = { ["SubnetIds"] = true, ["ClusterSubnetGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertModifyClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterSubnetGroupMessage[k], "ModifyClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterSubnetGroupMessage
-- <p/>
-- @param _SubnetIds [SubnetIdentifierList] <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>
-- @param _ClusterSubnetGroupName [String] <p>The name of the subnet group to be modified.</p>
-- @param _Description [String] <p>A text description of the subnet group to be modified.</p>
-- Required parameter: ClusterSubnetGroupName
-- Required parameter: SubnetIds
function M.ModifyClusterSubnetGroupMessage(_SubnetIds, _ClusterSubnetGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = _SubnetIds,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
		["Description"] = _Description,
	}
	asserts.AssertModifyClusterSubnetGroupMessage(t)
	return t
end

keys.HsmClientCertificateQuotaExceededFault = { nil }

function asserts.AssertHsmClientCertificateQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmClientCertificateQuotaExceededFault[k], "HsmClientCertificateQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateQuotaExceededFault
-- <p>The quota for HSM client certificates has been reached. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.HsmClientCertificateQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateQuotaExceededFault")
	local t = { 
	}
	asserts.AssertHsmClientCertificateQuotaExceededFault(t)
	return t
end

keys.ModifyClusterIamRolesResult = { ["Cluster"] = true, nil }

function asserts.AssertModifyClusterIamRolesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterIamRolesResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterIamRolesResult[k], "ModifyClusterIamRolesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterIamRolesResult
--  
-- @param _Cluster [Cluster] 
function M.ModifyClusterIamRolesResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterIamRolesResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertModifyClusterIamRolesResult(t)
	return t
end

keys.ModifyClusterIamRolesMessage = { ["AddIamRoles"] = true, ["RemoveIamRoles"] = true, ["ClusterIdentifier"] = true, nil }

function asserts.AssertModifyClusterIamRolesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterIamRolesMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["AddIamRoles"] then asserts.AssertIamRoleArnList(struct["AddIamRoles"]) end
	if struct["RemoveIamRoles"] then asserts.AssertIamRoleArnList(struct["RemoveIamRoles"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterIamRolesMessage[k], "ModifyClusterIamRolesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterIamRolesMessage
-- <p/>
-- @param _AddIamRoles [IamRoleArnList] <p>Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.</p>
-- @param _RemoveIamRoles [IamRoleArnList] <p>Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request.</p>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster for which you want to associate or disassociate IAM roles.</p>
-- Required parameter: ClusterIdentifier
function M.ModifyClusterIamRolesMessage(_AddIamRoles, _RemoveIamRoles, _ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterIamRolesMessage")
	local t = { 
		["AddIamRoles"] = _AddIamRoles,
		["RemoveIamRoles"] = _RemoveIamRoles,
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertModifyClusterIamRolesMessage(t)
	return t
end

keys.CreateClusterSecurityGroupMessage = { ["ClusterSecurityGroupName"] = true, ["Description"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSecurityGroupMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSecurityGroupMessage[k], "CreateClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSecurityGroupMessage
-- <p/>
-- @param _ClusterSecurityGroupName [String] <p>The name for the security group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be "Default".</p> </li> <li> <p>Must be unique for all security groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesecuritygroup</code> </p>
-- @param _Description [String] <p>A description for the security group.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- Required parameter: ClusterSecurityGroupName
-- Required parameter: Description
function M.CreateClusterSecurityGroupMessage(_ClusterSecurityGroupName, _Description, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSecurityGroupMessage")
	local t = { 
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
		["Description"] = _Description,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateClusterSecurityGroupMessage(t)
	return t
end

keys.HsmClientCertificateNotFoundFault = { nil }

function asserts.AssertHsmClientCertificateNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmClientCertificateNotFoundFault[k], "HsmClientCertificateNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateNotFoundFault
-- <p>There is no Amazon Redshift HSM client certificate with the specified identifier.</p>
function M.HsmClientCertificateNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateNotFoundFault")
	local t = { 
	}
	asserts.AssertHsmClientCertificateNotFoundFault(t)
	return t
end

keys.EventSubscriptionQuotaExceededFault = { nil }

function asserts.AssertEventSubscriptionQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EventSubscriptionQuotaExceededFault[k], "EventSubscriptionQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionQuotaExceededFault
-- <p>The request would exceed the allowed number of event subscriptions for this account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.EventSubscriptionQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionQuotaExceededFault")
	local t = { 
	}
	asserts.AssertEventSubscriptionQuotaExceededFault(t)
	return t
end

keys.DeleteClusterSnapshotMessage = { ["SnapshotClusterIdentifier"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertDeleteClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	if struct["SnapshotClusterIdentifier"] then asserts.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterSnapshotMessage[k], "DeleteClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSnapshotMessage
-- <p/>
-- @param _SnapshotClusterIdentifier [String] <p>The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints: Must be the name of valid cluster.</p>
-- @param _SnapshotIdentifier [String] <p>The unique identifier of the manual snapshot to be deleted.</p> <p>Constraints: Must be the name of an existing snapshot that is in the <code>available</code> state.</p>
-- Required parameter: SnapshotIdentifier
function M.DeleteClusterSnapshotMessage(_SnapshotClusterIdentifier, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSnapshotMessage")
	local t = { 
		["SnapshotClusterIdentifier"] = _SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertDeleteClusterSnapshotMessage(t)
	return t
end

keys.DescribeClusterVersionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["ClusterVersion"] = true, ["ClusterParameterGroupFamily"] = true, nil }

function asserts.AssertDescribeClusterVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterVersionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["ClusterParameterGroupFamily"] then asserts.AssertString(struct["ClusterParameterGroupFamily"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterVersionsMessage[k], "DescribeClusterVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterVersionsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterVersions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _ClusterVersion [String] <p>The specific cluster version to return.</p> <p>Example: <code>1.0</code> </p>
-- @param _ClusterParameterGroupFamily [String] <p>The name of a specific cluster parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeClusterVersionsMessage(_Marker, _MaxRecords, _ClusterVersion, _ClusterParameterGroupFamily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterVersionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["ClusterVersion"] = _ClusterVersion,
		["ClusterParameterGroupFamily"] = _ClusterParameterGroupFamily,
	}
	asserts.AssertDescribeClusterVersionsMessage(t)
	return t
end

keys.ClustersMessage = { ["Marker"] = true, ["Clusters"] = true, nil }

function asserts.AssertClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClustersMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Clusters"] then asserts.AssertClusterList(struct["Clusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClustersMessage[k], "ClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClustersMessage
-- <p>Contains the output from the <a>DescribeClusters</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _Clusters [ClusterList] <p>A list of <code>Cluster</code> objects, where each object describes one cluster. </p>
function M.ClustersMessage(_Marker, _Clusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClustersMessage")
	local t = { 
		["Marker"] = _Marker,
		["Clusters"] = _Clusters,
	}
	asserts.AssertClustersMessage(t)
	return t
end

keys.AuthorizationQuotaExceededFault = { nil }

function asserts.AssertAuthorizationQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationQuotaExceededFault[k], "AuthorizationQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationQuotaExceededFault
-- <p>The authorization quota for the cluster security group has been reached.</p>
function M.AuthorizationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationQuotaExceededFault")
	local t = { 
	}
	asserts.AssertAuthorizationQuotaExceededFault(t)
	return t
end

keys.DisableSnapshotCopyMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertDisableSnapshotCopyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSnapshotCopyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableSnapshotCopyMessage[k], "DisableSnapshotCopyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSnapshotCopyMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>
-- Required parameter: ClusterIdentifier
function M.DisableSnapshotCopyMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSnapshotCopyMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertDisableSnapshotCopyMessage(t)
	return t
end

keys.SourceNotFoundFault = { nil }

function asserts.AssertSourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SourceNotFoundFault[k], "SourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceNotFoundFault
-- <p>The specified Amazon Redshift event source could not be found.</p>
function M.SourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceNotFoundFault")
	local t = { 
	}
	asserts.AssertSourceNotFoundFault(t)
	return t
end

keys.ModifySnapshotCopyRetentionPeriodMessage = { ["ClusterIdentifier"] = true, ["RetentionPeriod"] = true, nil }

function asserts.AssertModifySnapshotCopyRetentionPeriodMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifySnapshotCopyRetentionPeriodMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["RetentionPeriod"], "Expected key RetentionPeriod to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["RetentionPeriod"] then asserts.AssertInteger(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifySnapshotCopyRetentionPeriodMessage[k], "ModifySnapshotCopyRetentionPeriodMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifySnapshotCopyRetentionPeriodMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster for which you want to change the retention period for automated snapshots that are copied to a destination region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>
-- @param _RetentionPeriod [Integer] <p>The number of days to retain automated snapshots in the destination region after they are copied from the source region.</p> <p>If you decrease the retention period for automated snapshots that are copied to a destination region, Amazon Redshift will delete any existing automated snapshots that were copied to the destination region and that fall outside of the new retention period.</p> <p>Constraints: Must be at least 1 and no more than 35.</p>
-- Required parameter: ClusterIdentifier
-- Required parameter: RetentionPeriod
function M.ModifySnapshotCopyRetentionPeriodMessage(_ClusterIdentifier, _RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifySnapshotCopyRetentionPeriodMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
		["RetentionPeriod"] = _RetentionPeriod,
	}
	asserts.AssertModifySnapshotCopyRetentionPeriodMessage(t)
	return t
end

keys.DisableSnapshotCopyResult = { ["Cluster"] = true, nil }

function asserts.AssertDisableSnapshotCopyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableSnapshotCopyResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableSnapshotCopyResult[k], "DisableSnapshotCopyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableSnapshotCopyResult
--  
-- @param _Cluster [Cluster] 
function M.DisableSnapshotCopyResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableSnapshotCopyResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertDisableSnapshotCopyResult(t)
	return t
end

keys.DeleteClusterSnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertDeleteClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterSnapshotResult[k], "DeleteClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSnapshotResult
--  
-- @param _Snapshot [Snapshot] 
function M.DeleteClusterSnapshotResult(_Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSnapshotResult")
	local t = { 
		["Snapshot"] = _Snapshot,
	}
	asserts.AssertDeleteClusterSnapshotResult(t)
	return t
end

keys.CreateHsmConfigurationMessage = { ["HsmPartitionName"] = true, ["Description"] = true, ["Tags"] = true, ["HsmPartitionPassword"] = true, ["HsmConfigurationIdentifier"] = true, ["HsmIpAddress"] = true, ["HsmServerPublicCertificate"] = true, nil }

function asserts.AssertCreateHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmConfigurationMessage to be of type 'table'")
	assert(struct["HsmConfigurationIdentifier"], "Expected key HsmConfigurationIdentifier to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["HsmIpAddress"], "Expected key HsmIpAddress to exist in table")
	assert(struct["HsmPartitionName"], "Expected key HsmPartitionName to exist in table")
	assert(struct["HsmPartitionPassword"], "Expected key HsmPartitionPassword to exist in table")
	assert(struct["HsmServerPublicCertificate"], "Expected key HsmServerPublicCertificate to exist in table")
	if struct["HsmPartitionName"] then asserts.AssertString(struct["HsmPartitionName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["HsmPartitionPassword"] then asserts.AssertString(struct["HsmPartitionPassword"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["HsmIpAddress"] then asserts.AssertString(struct["HsmIpAddress"]) end
	if struct["HsmServerPublicCertificate"] then asserts.AssertString(struct["HsmServerPublicCertificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmConfigurationMessage[k], "CreateHsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmConfigurationMessage
-- <p/>
-- @param _HsmPartitionName [String] <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>
-- @param _Description [String] <p>A text description of the HSM configuration to be created.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _HsmPartitionPassword [String] <p>The password required to access the HSM partition.</p>
-- @param _HsmConfigurationIdentifier [String] <p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>
-- @param _HsmIpAddress [String] <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
-- @param _HsmServerPublicCertificate [String] <p>The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.</p>
-- Required parameter: HsmConfigurationIdentifier
-- Required parameter: Description
-- Required parameter: HsmIpAddress
-- Required parameter: HsmPartitionName
-- Required parameter: HsmPartitionPassword
-- Required parameter: HsmServerPublicCertificate
function M.CreateHsmConfigurationMessage(_HsmPartitionName, _Description, _Tags, _HsmPartitionPassword, _HsmConfigurationIdentifier, _HsmIpAddress, _HsmServerPublicCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmConfigurationMessage")
	local t = { 
		["HsmPartitionName"] = _HsmPartitionName,
		["Description"] = _Description,
		["Tags"] = _Tags,
		["HsmPartitionPassword"] = _HsmPartitionPassword,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
		["HsmIpAddress"] = _HsmIpAddress,
		["HsmServerPublicCertificate"] = _HsmServerPublicCertificate,
	}
	asserts.AssertCreateHsmConfigurationMessage(t)
	return t
end

keys.EC2SecurityGroup = { ["Status"] = true, ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["Tags"] = true, nil }

function asserts.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2SecurityGroup[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- <p>Describes an Amazon EC2 security group.</p>
-- @param _Status [String] <p>The status of the EC2 security group.</p>
-- @param _EC2SecurityGroupName [String] <p>The name of the EC2 Security Group.</p>
-- @param _EC2SecurityGroupOwnerId [String] <p>The AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>
-- @param _Tags [TagList] <p>The list of tags for the EC2 security group.</p>
function M.EC2SecurityGroup(_Status, _EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2SecurityGroup")
	local t = { 
		["Status"] = _Status,
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["Tags"] = _Tags,
	}
	asserts.AssertEC2SecurityGroup(t)
	return t
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
-- <p>Describes a recurring charge.</p>
-- @param _RecurringChargeAmount [Double] <p>The amount charged per the period of time specified by the recurring charge frequency.</p>
-- @param _RecurringChargeFrequency [String] <p>The frequency at which the recurring charge amount is applied.</p>
function M.RecurringCharge(_RecurringChargeAmount, _RecurringChargeFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["RecurringChargeAmount"] = _RecurringChargeAmount,
		["RecurringChargeFrequency"] = _RecurringChargeFrequency,
	}
	asserts.AssertRecurringCharge(t)
	return t
end

keys.EventCategoriesMessage = { ["EventCategoriesMapList"] = true, nil }

function asserts.AssertEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMessage to be of type 'table'")
	if struct["EventCategoriesMapList"] then asserts.AssertEventCategoriesMapList(struct["EventCategoriesMapList"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoriesMessage[k], "EventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMessage
-- <p/>
-- @param _EventCategoriesMapList [EventCategoriesMapList] <p>A list of event categories descriptions.</p>
function M.EventCategoriesMessage(_EventCategoriesMapList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMessage")
	local t = { 
		["EventCategoriesMapList"] = _EventCategoriesMapList,
	}
	asserts.AssertEventCategoriesMessage(t)
	return t
end

keys.PendingModifiedValues = { ["ClusterVersion"] = true, ["PubliclyAccessible"] = true, ["EnhancedVpcRouting"] = true, ["ClusterType"] = true, ["MasterUserPassword"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["NodeType"] = true, ["ClusterIdentifier"] = true, ["NumberOfNodes"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerOptional(struct["NumberOfNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingModifiedValues[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- <p>Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.</p>
-- @param _ClusterVersion [String] <p>The pending or in-progress change of the service version.</p>
-- @param _PubliclyAccessible [BooleanOptional] <p>The pending or in-progress change of the ability to connect to the cluster from the public network.</p>
-- @param _EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _ClusterType [String] <p>The pending or in-progress change of the cluster type.</p>
-- @param _MasterUserPassword [String] <p>The pending or in-progress change of the master user password for the cluster.</p>
-- @param _AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The pending or in-progress change of the automated snapshot retention period.</p>
-- @param _NodeType [String] <p>The pending or in-progress change of the cluster's node type.</p>
-- @param _ClusterIdentifier [String] <p>The pending or in-progress change of the new identifier for the cluster.</p>
-- @param _NumberOfNodes [IntegerOptional] <p>The pending or in-progress change of the number of nodes in the cluster.</p>
function M.PendingModifiedValues(_ClusterVersion, _PubliclyAccessible, _EnhancedVpcRouting, _ClusterType, _MasterUserPassword, _AutomatedSnapshotRetentionPeriod, _NodeType, _ClusterIdentifier, _NumberOfNodes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingModifiedValues")
	local t = { 
		["ClusterVersion"] = _ClusterVersion,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["ClusterType"] = _ClusterType,
		["MasterUserPassword"] = _MasterUserPassword,
		["AutomatedSnapshotRetentionPeriod"] = _AutomatedSnapshotRetentionPeriod,
		["NodeType"] = _NodeType,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["NumberOfNodes"] = _NumberOfNodes,
	}
	asserts.AssertPendingModifiedValues(t)
	return t
end

keys.GetClusterCredentialsMessage = { ["DbGroups"] = true, ["AutoCreate"] = true, ["DurationSeconds"] = true, ["DbUser"] = true, ["ClusterIdentifier"] = true, ["DbName"] = true, nil }

function asserts.AssertGetClusterCredentialsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClusterCredentialsMessage to be of type 'table'")
	assert(struct["DbUser"], "Expected key DbUser to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["DbGroups"] then asserts.AssertDbGroupList(struct["DbGroups"]) end
	if struct["AutoCreate"] then asserts.AssertBooleanOptional(struct["AutoCreate"]) end
	if struct["DurationSeconds"] then asserts.AssertIntegerOptional(struct["DurationSeconds"]) end
	if struct["DbUser"] then asserts.AssertString(struct["DbUser"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["DbName"] then asserts.AssertString(struct["DbName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClusterCredentialsMessage[k], "GetClusterCredentialsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClusterCredentialsMessage
-- <p>The request parameters to get cluster credentials.</p>
-- @param _DbGroups [DbGroupList] <p>A list of the names of existing database groups that <code>DbUser</code> will join for the current session. If not specified, the new user is added only to PUBLIC.</p>
-- @param _AutoCreate [BooleanOptional] <p>Create a database user with the name specified for <code>DbUser</code> if one does not exist.</p>
-- @param _DurationSeconds [IntegerOptional] <p>The number of seconds until the returned temporary password expires.</p> <p>Constraint: minimum 900, maximum 3600.</p> <p>Default: 900</p>
-- @param _DbUser [String] <p>The name of a database user. If a user name matching <code>DbUser</code> exists in the database, the temporary user credentials have the same permissions as the existing user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code> is <code>True</code>, a new user is created using the value for <code>DbUser</code> with PUBLIC permissions. If a database user matching the value for <code>DbUser</code> doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/http:/docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE USER</a> in the Amazon Redshift Database Developer Guide. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 128 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.</p>
-- @param _DbName [String] <p>The name of a database that <code>DbUser</code> is authorized to log on to. If <code>DbName</code> is not specified, <code>DbUser</code> can log in to any existing database.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters.</p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>
-- Required parameter: DbUser
-- Required parameter: ClusterIdentifier
function M.GetClusterCredentialsMessage(_DbGroups, _AutoCreate, _DurationSeconds, _DbUser, _ClusterIdentifier, _DbName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetClusterCredentialsMessage")
	local t = { 
		["DbGroups"] = _DbGroups,
		["AutoCreate"] = _AutoCreate,
		["DurationSeconds"] = _DurationSeconds,
		["DbUser"] = _DbUser,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["DbName"] = _DbName,
	}
	asserts.AssertGetClusterCredentialsMessage(t)
	return t
end

keys.EventInfoMap = { ["EventId"] = true, ["EventCategories"] = true, ["Severity"] = true, ["EventDescription"] = true, nil }

function asserts.AssertEventInfoMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventInfoMap to be of type 'table'")
	if struct["EventId"] then asserts.AssertString(struct["EventId"]) end
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Severity"] then asserts.AssertString(struct["Severity"]) end
	if struct["EventDescription"] then asserts.AssertString(struct["EventDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventInfoMap[k], "EventInfoMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventInfoMap
-- <p>Describes event information.</p>
-- @param _EventId [String] <p>The identifier of an Amazon Redshift event.</p>
-- @param _EventCategories [EventCategoriesList] <p>The category of an Amazon Redshift event.</p>
-- @param _Severity [String] <p>The severity of the event.</p> <p>Values: ERROR, INFO</p>
-- @param _EventDescription [String] <p>The description of an Amazon Redshift event.</p>
function M.EventInfoMap(_EventId, _EventCategories, _Severity, _EventDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventInfoMap")
	local t = { 
		["EventId"] = _EventId,
		["EventCategories"] = _EventCategories,
		["Severity"] = _Severity,
		["EventDescription"] = _EventDescription,
	}
	asserts.AssertEventInfoMap(t)
	return t
end

keys.DeleteSnapshotCopyGrantMessage = { ["SnapshotCopyGrantName"] = true, nil }

function asserts.AssertDeleteSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSnapshotCopyGrantMessage to be of type 'table'")
	assert(struct["SnapshotCopyGrantName"], "Expected key SnapshotCopyGrantName to exist in table")
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSnapshotCopyGrantMessage[k], "DeleteSnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSnapshotCopyGrantMessage
-- <p>The result of the <code>DeleteSnapshotCopyGrant</code> action.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant to delete.</p>
-- Required parameter: SnapshotCopyGrantName
function M.DeleteSnapshotCopyGrantMessage(_SnapshotCopyGrantName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSnapshotCopyGrantMessage")
	local t = { 
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
	}
	asserts.AssertDeleteSnapshotCopyGrantMessage(t)
	return t
end

keys.InvalidClusterSubnetStateFault = { nil }

function asserts.AssertInvalidClusterSubnetStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSubnetStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterSubnetStateFault[k], "InvalidClusterSubnetStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSubnetStateFault
-- <p>The state of the subnet is invalid.</p>
function M.InvalidClusterSubnetStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSubnetStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterSubnetStateFault(t)
	return t
end

keys.UnauthorizedOperation = { nil }

function asserts.AssertUnauthorizedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedOperation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedOperation[k], "UnauthorizedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedOperation
-- <p>Your account is not authorized to perform the requested operation.</p>
function M.UnauthorizedOperation(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedOperation")
	local t = { 
	}
	asserts.AssertUnauthorizedOperation(t)
	return t
end

keys.RestoreFromClusterSnapshotResult = { ["Cluster"] = true, nil }

function asserts.AssertRestoreFromClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromClusterSnapshotResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreFromClusterSnapshotResult[k], "RestoreFromClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromClusterSnapshotResult
--  
-- @param _Cluster [Cluster] 
function M.RestoreFromClusterSnapshotResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromClusterSnapshotResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertRestoreFromClusterSnapshotResult(t)
	return t
end

keys.DescribeDefaultClusterParametersMessage = { ["Marker"] = true, ["ParameterGroupFamily"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeDefaultClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultClusterParametersMessage to be of type 'table'")
	assert(struct["ParameterGroupFamily"], "Expected key ParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ParameterGroupFamily"] then asserts.AssertString(struct["ParameterGroupFamily"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDefaultClusterParametersMessage[k], "DescribeDefaultClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultClusterParametersMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDefaultClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _ParameterGroupFamily [String] <p>The name of the cluster parameter group family.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- Required parameter: ParameterGroupFamily
function M.DescribeDefaultClusterParametersMessage(_Marker, _ParameterGroupFamily, _MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultClusterParametersMessage")
	local t = { 
		["Marker"] = _Marker,
		["ParameterGroupFamily"] = _ParameterGroupFamily,
		["MaxRecords"] = _MaxRecords,
	}
	asserts.AssertDescribeDefaultClusterParametersMessage(t)
	return t
end

keys.EventSubscriptionsMessage = { ["Marker"] = true, ["EventSubscriptionsList"] = true, nil }

function asserts.AssertEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EventSubscriptionsList"] then asserts.AssertEventSubscriptionsList(struct["EventSubscriptionsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscriptionsMessage[k], "EventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscriptionsMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _EventSubscriptionsList [EventSubscriptionsList] <p>A list of event subscriptions.</p>
function M.EventSubscriptionsMessage(_Marker, _EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["EventSubscriptionsList"] = _EventSubscriptionsList,
	}
	asserts.AssertEventSubscriptionsMessage(t)
	return t
end

keys.CreateHsmClientCertificateResult = { ["HsmClientCertificate"] = true, nil }

function asserts.AssertCreateHsmClientCertificateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmClientCertificateResult to be of type 'table'")
	if struct["HsmClientCertificate"] then asserts.AssertHsmClientCertificate(struct["HsmClientCertificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmClientCertificateResult[k], "CreateHsmClientCertificateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmClientCertificateResult
--  
-- @param _HsmClientCertificate [HsmClientCertificate] 
function M.CreateHsmClientCertificateResult(_HsmClientCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHsmClientCertificateResult")
	local t = { 
		["HsmClientCertificate"] = _HsmClientCertificate,
	}
	asserts.AssertCreateHsmClientCertificateResult(t)
	return t
end

keys.RestoreFromClusterSnapshotMessage = { ["ClusterParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["OwnerAccount"] = true, ["VpcSecurityGroupIds"] = true, ["SnapshotClusterIdentifier"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["EnhancedVpcRouting"] = true, ["PreferredMaintenanceWindow"] = true, ["AdditionalInfo"] = true, ["IamRoles"] = true, ["AllowVersionUpgrade"] = true, ["HsmConfigurationIdentifier"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmClientCertificateIdentifier"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["ElasticIp"] = true, ["KmsKeyId"] = true, ["SnapshotIdentifier"] = true, ["Port"] = true, ["ClusterSubnetGroupName"] = true, nil }

function asserts.AssertRestoreFromClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreFromClusterSnapshotMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	if struct["ClusterParameterGroupName"] then asserts.AssertString(struct["ClusterParameterGroupName"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["OwnerAccount"] then asserts.AssertString(struct["OwnerAccount"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["SnapshotClusterIdentifier"] then asserts.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertIntegerOptional(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["AdditionalInfo"] then asserts.AssertString(struct["AdditionalInfo"]) end
	if struct["IamRoles"] then asserts.AssertIamRoleArnList(struct["IamRoles"]) end
	if struct["AllowVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AllowVersionUpgrade"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	if struct["ClusterSecurityGroups"] then asserts.AssertClusterSecurityGroupNameList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreFromClusterSnapshotMessage[k], "RestoreFromClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreFromClusterSnapshotMessage
-- <p/>
-- @param _ClusterParameterGroupName [String] <p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon Redshift Parameter Groups</a>.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
-- @param _OwnerAccount [String] <p>The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.</p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p> <p>VPC security groups only apply to clusters in VPCs.</p>
-- @param _SnapshotClusterIdentifier [String] <p>The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- @param _AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: The value selected for the cluster from which the snapshot was taken.</p> <p>Constraints: Must be a value from 0 to 35.</p>
-- @param _EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _AdditionalInfo [String] <p>Reserved.</p>
-- @param _IamRoles [IamRoleArnList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>
-- @param _AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. </p> <p>Default: <code>true</code> </p>
-- @param _HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- @param _ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p> <p>Cluster security groups only apply to clusters outside of VPCs.</p>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster that will be created from restoring the snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>
-- @param _HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- @param _AvailabilityZone [String] <p>The Amazon EC2 Availability Zone in which to restore the cluster.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Example: <code>us-east-1a</code> </p>
-- @param _NodeType [String] <p>The node type that the restored cluster will be provisioned with.</p> <p>Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds2.xlarge into ds1.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type. For more information about node types, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes"> About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i> </p>
-- @param _ElasticIp [String] <p>The elastic IP (EIP) address for the cluster.</p>
-- @param _KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.</p>
-- @param _SnapshotIdentifier [String] <p>The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.</p> <p>Example: <code>my-snapshot-id</code> </p>
-- @param _Port [IntegerOptional] <p>The port number on which the cluster accepts connections.</p> <p>Default: The same port as the original cluster.</p> <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>
-- @param _ClusterSubnetGroupName [String] <p>The name of the subnet group where you want to cluster restored.</p> <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.</p>
-- Required parameter: ClusterIdentifier
-- Required parameter: SnapshotIdentifier
function M.RestoreFromClusterSnapshotMessage(_ClusterParameterGroupName, _PubliclyAccessible, _OwnerAccount, _VpcSecurityGroupIds, _SnapshotClusterIdentifier, _AutomatedSnapshotRetentionPeriod, _EnhancedVpcRouting, _PreferredMaintenanceWindow, _AdditionalInfo, _IamRoles, _AllowVersionUpgrade, _HsmConfigurationIdentifier, _ClusterSecurityGroups, _ClusterIdentifier, _HsmClientCertificateIdentifier, _AvailabilityZone, _NodeType, _ElasticIp, _KmsKeyId, _SnapshotIdentifier, _Port, _ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreFromClusterSnapshotMessage")
	local t = { 
		["ClusterParameterGroupName"] = _ClusterParameterGroupName,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["OwnerAccount"] = _OwnerAccount,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["SnapshotClusterIdentifier"] = _SnapshotClusterIdentifier,
		["AutomatedSnapshotRetentionPeriod"] = _AutomatedSnapshotRetentionPeriod,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["AdditionalInfo"] = _AdditionalInfo,
		["IamRoles"] = _IamRoles,
		["AllowVersionUpgrade"] = _AllowVersionUpgrade,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
		["ClusterSecurityGroups"] = _ClusterSecurityGroups,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["AvailabilityZone"] = _AvailabilityZone,
		["NodeType"] = _NodeType,
		["ElasticIp"] = _ElasticIp,
		["KmsKeyId"] = _KmsKeyId,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
		["Port"] = _Port,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
	}
	asserts.AssertRestoreFromClusterSnapshotMessage(t)
	return t
end

keys.HsmClientCertificate = { ["HsmClientCertificatePublicKey"] = true, ["HsmClientCertificateIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertHsmClientCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificate to be of type 'table'")
	if struct["HsmClientCertificatePublicKey"] then asserts.AssertString(struct["HsmClientCertificatePublicKey"]) end
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.HsmClientCertificate[k], "HsmClientCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificate
-- <p>Returns information about an HSM client certificate. The certificate is stored in a secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data files.</p>
-- @param _HsmClientCertificatePublicKey [String] <p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.</p>
-- @param _HsmClientCertificateIdentifier [String] <p>The identifier of the HSM client certificate.</p>
-- @param _Tags [TagList] <p>The list of tags for the HSM client certificate.</p>
function M.HsmClientCertificate(_HsmClientCertificatePublicKey, _HsmClientCertificateIdentifier, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificate")
	local t = { 
		["HsmClientCertificatePublicKey"] = _HsmClientCertificatePublicKey,
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
		["Tags"] = _Tags,
	}
	asserts.AssertHsmClientCertificate(t)
	return t
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
-- <p>Describes an availability zone.</p>
-- @param _Name [String] <p>The name of the availability zone.</p>
function M.AvailabilityZone(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertAvailabilityZone(t)
	return t
end

keys.DescribeHsmClientCertificatesMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["HsmClientCertificateIdentifier"] = true, nil }

function asserts.AssertDescribeHsmClientCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmClientCertificatesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHsmClientCertificatesMessage[k], "DescribeHsmClientCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmClientCertificatesMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmClientCertificates</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.</p>
-- @param _HsmClientCertificateIdentifier [String] <p>The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.</p>
function M.DescribeHsmClientCertificatesMessage(_Marker, _TagValues, _MaxRecords, _TagKeys, _HsmClientCertificateIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmClientCertificatesMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["TagKeys"] = _TagKeys,
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
	}
	asserts.AssertDescribeHsmClientCertificatesMessage(t)
	return t
end

keys.InvalidTagFault = { nil }

function asserts.AssertInvalidTagFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagFault[k], "InvalidTagFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagFault
-- <p>The tag is invalid.</p>
function M.InvalidTagFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagFault")
	local t = { 
	}
	asserts.AssertInvalidTagFault(t)
	return t
end

keys.IPRange = { ["Status"] = true, ["Tags"] = true, ["CIDRIP"] = true, nil }

function asserts.AssertIPRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPRange to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPRange[k], "IPRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPRange
-- <p>Describes an IP range used in a security group.</p>
-- @param _Status [String] <p>The status of the IP range, for example, "authorized".</p>
-- @param _Tags [TagList] <p>The list of tags for the IP range.</p>
-- @param _CIDRIP [String] <p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>
function M.IPRange(_Status, _Tags, _CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPRange")
	local t = { 
		["Status"] = _Status,
		["Tags"] = _Tags,
		["CIDRIP"] = _CIDRIP,
	}
	asserts.AssertIPRange(t)
	return t
end

keys.ModifySnapshotCopyRetentionPeriodResult = { ["Cluster"] = true, nil }

function asserts.AssertModifySnapshotCopyRetentionPeriodResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifySnapshotCopyRetentionPeriodResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifySnapshotCopyRetentionPeriodResult[k], "ModifySnapshotCopyRetentionPeriodResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifySnapshotCopyRetentionPeriodResult
--  
-- @param _Cluster [Cluster] 
function M.ModifySnapshotCopyRetentionPeriodResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifySnapshotCopyRetentionPeriodResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertModifySnapshotCopyRetentionPeriodResult(t)
	return t
end

keys.SnapshotCopyGrantAlreadyExistsFault = { nil }

function asserts.AssertSnapshotCopyGrantAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyGrantAlreadyExistsFault[k], "SnapshotCopyGrantAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantAlreadyExistsFault
-- <p>The snapshot copy grant can't be created because a grant with the same name already exists.</p>
function M.SnapshotCopyGrantAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyGrantAlreadyExistsFault(t)
	return t
end

keys.DeleteClusterSecurityGroupMessage = { ["ClusterSecurityGroupName"] = true, nil }

function asserts.AssertDeleteClusterSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSecurityGroupMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterSecurityGroupMessage[k], "DeleteClusterSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSecurityGroupMessage
-- <p/>
-- @param _ClusterSecurityGroupName [String] <p>The name of the cluster security group to be deleted.</p>
-- Required parameter: ClusterSecurityGroupName
function M.DeleteClusterSecurityGroupMessage(_ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSecurityGroupMessage")
	local t = { 
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
	}
	asserts.AssertDeleteClusterSecurityGroupMessage(t)
	return t
end

keys.DescribeReservedNodesMessage = { ["Marker"] = true, ["ReservedNodeId"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeReservedNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedNodesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedNodeId"] then asserts.AssertString(struct["ReservedNodeId"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedNodesMessage[k], "DescribeReservedNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedNodesMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodes</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _ReservedNodeId [String] <p>Identifier for the node reservation.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
function M.DescribeReservedNodesMessage(_Marker, _ReservedNodeId, _MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedNodesMessage")
	local t = { 
		["Marker"] = _Marker,
		["ReservedNodeId"] = _ReservedNodeId,
		["MaxRecords"] = _MaxRecords,
	}
	asserts.AssertDescribeReservedNodesMessage(t)
	return t
end

keys.DescribeReservedNodeOfferingsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["ReservedNodeOfferingId"] = true, nil }

function asserts.AssertDescribeReservedNodeOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedNodeOfferingsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ReservedNodeOfferingId"] then asserts.AssertString(struct["ReservedNodeOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedNodeOfferingsMessage[k], "DescribeReservedNodeOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedNodeOfferingsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodeOfferings</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _ReservedNodeOfferingId [String] <p>The unique identifier for the offering.</p>
function M.DescribeReservedNodeOfferingsMessage(_Marker, _MaxRecords, _ReservedNodeOfferingId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedNodeOfferingsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["ReservedNodeOfferingId"] = _ReservedNodeOfferingId,
	}
	asserts.AssertDescribeReservedNodeOfferingsMessage(t)
	return t
end

keys.CopyClusterSnapshotMessage = { ["SourceSnapshotIdentifier"] = true, ["SourceSnapshotClusterIdentifier"] = true, ["TargetSnapshotIdentifier"] = true, nil }

function asserts.AssertCopyClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceSnapshotIdentifier"], "Expected key SourceSnapshotIdentifier to exist in table")
	assert(struct["TargetSnapshotIdentifier"], "Expected key TargetSnapshotIdentifier to exist in table")
	if struct["SourceSnapshotIdentifier"] then asserts.AssertString(struct["SourceSnapshotIdentifier"]) end
	if struct["SourceSnapshotClusterIdentifier"] then asserts.AssertString(struct["SourceSnapshotClusterIdentifier"]) end
	if struct["TargetSnapshotIdentifier"] then asserts.AssertString(struct["TargetSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyClusterSnapshotMessage[k], "CopyClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyClusterSnapshotMessage
-- <p/>
-- @param _SourceSnapshotIdentifier [String] <p>The identifier for the source snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid automated snapshot whose state is <code>available</code>.</p> </li> </ul>
-- @param _SourceSnapshotClusterIdentifier [String] <p>The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid cluster.</p> </li> </ul>
-- @param _TargetSnapshotIdentifier [String] <p>The identifier given to the new manual snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for the AWS account that is making the request.</p> </li> </ul>
-- Required parameter: SourceSnapshotIdentifier
-- Required parameter: TargetSnapshotIdentifier
function M.CopyClusterSnapshotMessage(_SourceSnapshotIdentifier, _SourceSnapshotClusterIdentifier, _TargetSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyClusterSnapshotMessage")
	local t = { 
		["SourceSnapshotIdentifier"] = _SourceSnapshotIdentifier,
		["SourceSnapshotClusterIdentifier"] = _SourceSnapshotClusterIdentifier,
		["TargetSnapshotIdentifier"] = _TargetSnapshotIdentifier,
	}
	asserts.AssertCopyClusterSnapshotMessage(t)
	return t
end

keys.RevokeSnapshotAccessMessage = { ["AccountWithRestoreAccess"] = true, ["SnapshotClusterIdentifier"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertRevokeSnapshotAccessMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeSnapshotAccessMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["AccountWithRestoreAccess"], "Expected key AccountWithRestoreAccess to exist in table")
	if struct["AccountWithRestoreAccess"] then asserts.AssertString(struct["AccountWithRestoreAccess"]) end
	if struct["SnapshotClusterIdentifier"] then asserts.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeSnapshotAccessMessage[k], "RevokeSnapshotAccessMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeSnapshotAccessMessage
-- <p/>
-- @param _AccountWithRestoreAccess [String] <p>The identifier of the AWS customer account that can no longer restore the specified snapshot.</p>
-- @param _SnapshotClusterIdentifier [String] <p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- @param _SnapshotIdentifier [String] <p>The identifier of the snapshot that the account can no longer access.</p>
-- Required parameter: SnapshotIdentifier
-- Required parameter: AccountWithRestoreAccess
function M.RevokeSnapshotAccessMessage(_AccountWithRestoreAccess, _SnapshotClusterIdentifier, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeSnapshotAccessMessage")
	local t = { 
		["AccountWithRestoreAccess"] = _AccountWithRestoreAccess,
		["SnapshotClusterIdentifier"] = _SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertRevokeSnapshotAccessMessage(t)
	return t
end

keys.InvalidClusterSnapshotStateFault = { nil }

function asserts.AssertInvalidClusterSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterSnapshotStateFault[k], "InvalidClusterSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSnapshotStateFault
-- <p>The specified cluster snapshot is not in the <code>available</code> state, or other accounts are authorized to access the snapshot. </p>
function M.InvalidClusterSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSnapshotStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterSnapshotStateFault(t)
	return t
end

keys.Subnet = { ["SubnetStatus"] = true, ["SubnetIdentifier"] = true, ["SubnetAvailabilityZone"] = true, nil }

function asserts.AssertSubnet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subnet to be of type 'table'")
	if struct["SubnetStatus"] then asserts.AssertString(struct["SubnetStatus"]) end
	if struct["SubnetIdentifier"] then asserts.AssertString(struct["SubnetIdentifier"]) end
	if struct["SubnetAvailabilityZone"] then asserts.AssertAvailabilityZone(struct["SubnetAvailabilityZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subnet[k], "Subnet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subnet
-- <p>Describes a subnet.</p>
-- @param _SubnetStatus [String] <p>The status of the subnet.</p>
-- @param _SubnetIdentifier [String] <p>The identifier of the subnet.</p>
-- @param _SubnetAvailabilityZone [AvailabilityZone] 
function M.Subnet(_SubnetStatus, _SubnetIdentifier, _SubnetAvailabilityZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subnet")
	local t = { 
		["SubnetStatus"] = _SubnetStatus,
		["SubnetIdentifier"] = _SubnetIdentifier,
		["SubnetAvailabilityZone"] = _SubnetAvailabilityZone,
	}
	asserts.AssertSubnet(t)
	return t
end

keys.InvalidHsmClientCertificateStateFault = { nil }

function asserts.AssertInvalidHsmClientCertificateStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHsmClientCertificateStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidHsmClientCertificateStateFault[k], "InvalidHsmClientCertificateStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHsmClientCertificateStateFault
-- <p>The specified HSM client certificate is not in the <code>available</code> state, or it is still in use by one or more Amazon Redshift clusters.</p>
function M.InvalidHsmClientCertificateStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHsmClientCertificateStateFault")
	local t = { 
	}
	asserts.AssertInvalidHsmClientCertificateStateFault(t)
	return t
end

keys.InvalidS3BucketNameFault = { nil }

function asserts.AssertInvalidS3BucketNameFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketNameFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3BucketNameFault[k], "InvalidS3BucketNameFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketNameFault
-- <p>The S3 bucket name is invalid. For more information about naming rules, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket Restrictions and Limitations</a> in the Amazon Simple Storage Service (S3) Developer Guide.</p>
function M.InvalidS3BucketNameFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketNameFault")
	local t = { 
	}
	asserts.AssertInvalidS3BucketNameFault(t)
	return t
end

keys.SnapshotCopyGrantQuotaExceededFault = { nil }

function asserts.AssertSnapshotCopyGrantQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyGrantQuotaExceededFault[k], "SnapshotCopyGrantQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantQuotaExceededFault
-- <p>The AWS account has exceeded the maximum number of snapshot copy grants in this region.</p>
function M.SnapshotCopyGrantQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantQuotaExceededFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyGrantQuotaExceededFault(t)
	return t
end

keys.AuthorizationNotFoundFault = { nil }

function asserts.AssertAuthorizationNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationNotFoundFault[k], "AuthorizationNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationNotFoundFault
-- <p>The specified CIDR IP range or EC2 security group is not authorized for the specified cluster security group.</p>
function M.AuthorizationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationNotFoundFault")
	local t = { 
	}
	asserts.AssertAuthorizationNotFoundFault(t)
	return t
end

keys.LimitExceededFault = { nil }

function asserts.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededFault[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>The encryption key has exceeded its grant limit in AWS KMS.</p>
function M.LimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
	}
	asserts.AssertLimitExceededFault(t)
	return t
end

keys.AuthorizeClusterSecurityGroupIngressResult = { ["ClusterSecurityGroup"] = true, nil }

function asserts.AssertAuthorizeClusterSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeClusterSecurityGroupIngressResult to be of type 'table'")
	if struct["ClusterSecurityGroup"] then asserts.AssertClusterSecurityGroup(struct["ClusterSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeClusterSecurityGroupIngressResult[k], "AuthorizeClusterSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeClusterSecurityGroupIngressResult
--  
-- @param _ClusterSecurityGroup [ClusterSecurityGroup] 
function M.AuthorizeClusterSecurityGroupIngressResult(_ClusterSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeClusterSecurityGroupIngressResult")
	local t = { 
		["ClusterSecurityGroup"] = _ClusterSecurityGroup,
	}
	asserts.AssertAuthorizeClusterSecurityGroupIngressResult(t)
	return t
end

keys.ModifyClusterParameterGroupMessage = { ["ParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertModifyClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterParameterGroupMessage[k], "ModifyClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterParameterGroupMessage
-- <p/>
-- @param _ParameterGroupName [String] <p>The name of the parameter group to be modified.</p>
-- @param _Parameters [ParametersList] <p>An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.</p> <p>For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional.</p> <p>For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.</p>
-- Required parameter: ParameterGroupName
-- Required parameter: Parameters
function M.ModifyClusterParameterGroupMessage(_ParameterGroupName, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupName"] = _ParameterGroupName,
		["Parameters"] = _Parameters,
	}
	asserts.AssertModifyClusterParameterGroupMessage(t)
	return t
end

keys.DescribeClusterSnapshotsMessage = { ["TagKeys"] = true, ["OwnerAccount"] = true, ["TagValues"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["StartTime"] = true, ["SnapshotType"] = true, ["ClusterIdentifier"] = true, ["EndTime"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSnapshotsMessage to be of type 'table'")
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["OwnerAccount"] then asserts.AssertString(struct["OwnerAccount"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["EndTime"] then asserts.AssertTStamp(struct["EndTime"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterSnapshotsMessage[k], "DescribeClusterSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSnapshotsMessage
-- <p/>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.</p>
-- @param _OwnerAccount [String] <p>The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.</p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.</p>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSnapshots</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _StartTime [TStamp] <p>A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>
-- @param _SnapshotType [String] <p>The type of snapshots for which you are requesting information. By default, snapshots of all types are returned.</p> <p>Valid Values: <code>automated</code> | <code>manual</code> </p>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster for which information about snapshots is requested.</p>
-- @param _EndTime [TStamp] <p>A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>
-- @param _SnapshotIdentifier [String] <p>The snapshot identifier of the snapshot about which to return information.</p>
function M.DescribeClusterSnapshotsMessage(_TagKeys, _OwnerAccount, _TagValues, _Marker, _MaxRecords, _StartTime, _SnapshotType, _ClusterIdentifier, _EndTime, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSnapshotsMessage")
	local t = { 
		["TagKeys"] = _TagKeys,
		["OwnerAccount"] = _OwnerAccount,
		["TagValues"] = _TagValues,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["StartTime"] = _StartTime,
		["SnapshotType"] = _SnapshotType,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["EndTime"] = _EndTime,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertDescribeClusterSnapshotsMessage(t)
	return t
end

keys.ModifyClusterSubnetGroupResult = { ["ClusterSubnetGroup"] = true, nil }

function asserts.AssertModifyClusterSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterSubnetGroupResult to be of type 'table'")
	if struct["ClusterSubnetGroup"] then asserts.AssertClusterSubnetGroup(struct["ClusterSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterSubnetGroupResult[k], "ModifyClusterSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterSubnetGroupResult
--  
-- @param _ClusterSubnetGroup [ClusterSubnetGroup] 
function M.ModifyClusterSubnetGroupResult(_ClusterSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyClusterSubnetGroupResult")
	local t = { 
		["ClusterSubnetGroup"] = _ClusterSubnetGroup,
	}
	asserts.AssertModifyClusterSubnetGroupResult(t)
	return t
end

keys.CreateClusterSnapshotResult = { ["Snapshot"] = true, nil }

function asserts.AssertCreateClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSnapshotResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSnapshotResult[k], "CreateClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSnapshotResult
--  
-- @param _Snapshot [Snapshot] 
function M.CreateClusterSnapshotResult(_Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSnapshotResult")
	local t = { 
		["Snapshot"] = _Snapshot,
	}
	asserts.AssertCreateClusterSnapshotResult(t)
	return t
end

keys.ClusterSubnetGroupQuotaExceededFault = { nil }

function asserts.AssertClusterSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetGroupQuotaExceededFault[k], "ClusterSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupQuotaExceededFault
-- <p>The request would result in user exceeding the allowed number of cluster subnet groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ClusterSubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterSubnetGroupQuotaExceededFault(t)
	return t
end

keys.DependentServiceUnavailableFault = { nil }

function asserts.AssertDependentServiceUnavailableFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependentServiceUnavailableFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DependentServiceUnavailableFault[k], "DependentServiceUnavailableFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependentServiceUnavailableFault
-- <p>Your request cannot be completed because a dependent internal service is temporarily unavailable. Wait 30 to 60 seconds and try again.</p>
function M.DependentServiceUnavailableFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependentServiceUnavailableFault")
	local t = { 
	}
	asserts.AssertDependentServiceUnavailableFault(t)
	return t
end

keys.RestoreTableFromClusterSnapshotMessage = { ["SourceTableName"] = true, ["TargetDatabaseName"] = true, ["SourceSchemaName"] = true, ["NewTableName"] = true, ["TargetSchemaName"] = true, ["ClusterIdentifier"] = true, ["SourceDatabaseName"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertRestoreTableFromClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreTableFromClusterSnapshotMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["SourceDatabaseName"], "Expected key SourceDatabaseName to exist in table")
	assert(struct["SourceTableName"], "Expected key SourceTableName to exist in table")
	assert(struct["NewTableName"], "Expected key NewTableName to exist in table")
	if struct["SourceTableName"] then asserts.AssertString(struct["SourceTableName"]) end
	if struct["TargetDatabaseName"] then asserts.AssertString(struct["TargetDatabaseName"]) end
	if struct["SourceSchemaName"] then asserts.AssertString(struct["SourceSchemaName"]) end
	if struct["NewTableName"] then asserts.AssertString(struct["NewTableName"]) end
	if struct["TargetSchemaName"] then asserts.AssertString(struct["TargetSchemaName"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["SourceDatabaseName"] then asserts.AssertString(struct["SourceDatabaseName"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreTableFromClusterSnapshotMessage[k], "RestoreTableFromClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreTableFromClusterSnapshotMessage
-- <p/>
-- @param _SourceTableName [String] <p>The name of the source table to restore from.</p>
-- @param _TargetDatabaseName [String] <p>The name of the database to restore the table to.</p>
-- @param _SourceSchemaName [String] <p>The name of the source schema that contains the table to restore from. If you do not specify a <code>SourceSchemaName</code> value, the default is <code>public</code>.</p>
-- @param _NewTableName [String] <p>The name of the table to create as a result of the current request.</p>
-- @param _TargetSchemaName [String] <p>The name of the schema to restore the table to.</p>
-- @param _ClusterIdentifier [String] <p>The identifier of the Amazon Redshift cluster to restore the table to.</p>
-- @param _SourceDatabaseName [String] <p>The name of the source database that contains the table to restore from.</p>
-- @param _SnapshotIdentifier [String] <p>The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the <code>ClusterIdentifier</code> parameter.</p>
-- Required parameter: ClusterIdentifier
-- Required parameter: SnapshotIdentifier
-- Required parameter: SourceDatabaseName
-- Required parameter: SourceTableName
-- Required parameter: NewTableName
function M.RestoreTableFromClusterSnapshotMessage(_SourceTableName, _TargetDatabaseName, _SourceSchemaName, _NewTableName, _TargetSchemaName, _ClusterIdentifier, _SourceDatabaseName, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreTableFromClusterSnapshotMessage")
	local t = { 
		["SourceTableName"] = _SourceTableName,
		["TargetDatabaseName"] = _TargetDatabaseName,
		["SourceSchemaName"] = _SourceSchemaName,
		["NewTableName"] = _NewTableName,
		["TargetSchemaName"] = _TargetSchemaName,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["SourceDatabaseName"] = _SourceDatabaseName,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertRestoreTableFromClusterSnapshotMessage(t)
	return t
end

keys.DescribeResizeMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertDescribeResizeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResizeMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResizeMessage[k], "DescribeResizeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResizeMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive.</p> <p>By default, resize operations for all clusters defined for an AWS account are returned.</p>
-- Required parameter: ClusterIdentifier
function M.DescribeResizeMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResizeMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertDescribeResizeMessage(t)
	return t
end

keys.DescribeEventSubscriptionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventSubscriptionsMessage[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeEventSubscriptions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _SubscriptionName [String] <p>The name of the Amazon Redshift event notification subscription to be described.</p>
function M.DescribeEventSubscriptionsMessage(_Marker, _MaxRecords, _SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertDescribeEventSubscriptionsMessage(t)
	return t
end

keys.EnableSnapshotCopyResult = { ["Cluster"] = true, nil }

function asserts.AssertEnableSnapshotCopyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSnapshotCopyResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableSnapshotCopyResult[k], "EnableSnapshotCopyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSnapshotCopyResult
--  
-- @param _Cluster [Cluster] 
function M.EnableSnapshotCopyResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSnapshotCopyResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertEnableSnapshotCopyResult(t)
	return t
end

keys.SnapshotCopyDisabledFault = { nil }

function asserts.AssertSnapshotCopyDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyDisabledFault[k], "SnapshotCopyDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyDisabledFault
-- <p>Cross-region snapshot copy was temporarily disabled. Try your request again.</p>
function M.SnapshotCopyDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyDisabledFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyDisabledFault(t)
	return t
end

keys.DescribeTagsMessage = { ["ResourceType"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["Marker"] = true, ["ResourceName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDescribeTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsMessage to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertString(struct["ResourceType"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsMessage[k], "DescribeTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsMessage
-- <p/>
-- @param _ResourceType [String] <p>The type of resource with which you want to view tags. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> <li> <p>Snapshot copy grant</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/constructing-redshift-arn.html">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the Amazon Redshift Cluster Management Guide. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned <code>marker</code> value. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ResourceName [String] <p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>
function M.DescribeTagsMessage(_ResourceType, _TagValues, _MaxRecords, _Marker, _ResourceName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsMessage")
	local t = { 
		["ResourceType"] = _ResourceType,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["Marker"] = _Marker,
		["ResourceName"] = _ResourceName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertDescribeTagsMessage(t)
	return t
end

keys.ClusterParameterGroupAlreadyExistsFault = { nil }

function asserts.AssertClusterParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupAlreadyExistsFault[k], "ClusterParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupAlreadyExistsFault
-- <p>A cluster parameter group with the same name already exists.</p>
function M.ClusterParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterParameterGroupAlreadyExistsFault(t)
	return t
end

keys.SnapshotCopyGrantNotFoundFault = { nil }

function asserts.AssertSnapshotCopyGrantNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyGrantNotFoundFault[k], "SnapshotCopyGrantNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantNotFoundFault
-- <p>The specified snapshot copy grant can't be found. Make sure that the name is typed correctly and that the grant exists in the destination region.</p>
function M.SnapshotCopyGrantNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantNotFoundFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyGrantNotFoundFault(t)
	return t
end

keys.OrderableClusterOptionsMessage = { ["Marker"] = true, ["OrderableClusterOptions"] = true, nil }

function asserts.AssertOrderableClusterOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableClusterOptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OrderableClusterOptions"] then asserts.AssertOrderableClusterOptionsList(struct["OrderableClusterOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableClusterOptionsMessage[k], "OrderableClusterOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableClusterOptionsMessage
-- <p>Contains the output from the <a>DescribeOrderableClusterOptions</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _OrderableClusterOptions [OrderableClusterOptionsList] <p>An <code>OrderableClusterOption</code> structure containing information about orderable options for the cluster.</p>
function M.OrderableClusterOptionsMessage(_Marker, _OrderableClusterOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableClusterOptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["OrderableClusterOptions"] = _OrderableClusterOptions,
	}
	asserts.AssertOrderableClusterOptionsMessage(t)
	return t
end

keys.InvalidRestoreFault = { nil }

function asserts.AssertInvalidRestoreFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRestoreFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRestoreFault[k], "InvalidRestoreFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRestoreFault
-- <p>The restore is invalid.</p>
function M.InvalidRestoreFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRestoreFault")
	local t = { 
	}
	asserts.AssertInvalidRestoreFault(t)
	return t
end

keys.DeleteClusterResult = { ["Cluster"] = true, nil }

function asserts.AssertDeleteClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterResult[k], "DeleteClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResult
--  
-- @param _Cluster [Cluster] 
function M.DeleteClusterResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertDeleteClusterResult(t)
	return t
end

keys.SubscriptionCategoryNotFoundFault = { nil }

function asserts.AssertSubscriptionCategoryNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionCategoryNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionCategoryNotFoundFault[k], "SubscriptionCategoryNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionCategoryNotFoundFault
-- <p>The value specified for the event category was not one of the allowed values, or it specified a category that does not apply to the specified source type. The allowed values are Configuration, Management, Monitoring, and Security.</p>
function M.SubscriptionCategoryNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionCategoryNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionCategoryNotFoundFault(t)
	return t
end

keys.SubscriptionSeverityNotFoundFault = { nil }

function asserts.AssertSubscriptionSeverityNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionSeverityNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionSeverityNotFoundFault[k], "SubscriptionSeverityNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionSeverityNotFoundFault
-- <p>The value specified for the event severity was not one of the allowed values, or it specified a severity that does not apply to the specified source type. The allowed values are ERROR and INFO.</p>
function M.SubscriptionSeverityNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionSeverityNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionSeverityNotFoundFault(t)
	return t
end

keys.InvalidSnapshotCopyGrantStateFault = { nil }

function asserts.AssertInvalidSnapshotCopyGrantStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnapshotCopyGrantStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSnapshotCopyGrantStateFault[k], "InvalidSnapshotCopyGrantStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnapshotCopyGrantStateFault
-- <p>The snapshot copy grant can't be deleted because it is used by one or more clusters.</p>
function M.InvalidSnapshotCopyGrantStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnapshotCopyGrantStateFault")
	local t = { 
	}
	asserts.AssertInvalidSnapshotCopyGrantStateFault(t)
	return t
end

keys.DescribeOrderableClusterOptionsMessage = { ["Marker"] = true, ["NodeType"] = true, ["MaxRecords"] = true, ["ClusterVersion"] = true, nil }

function asserts.AssertDescribeOrderableClusterOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableClusterOptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrderableClusterOptionsMessage[k], "DescribeOrderableClusterOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableClusterOptionsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeOrderableClusterOptions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _NodeType [String] <p>The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _ClusterVersion [String] <p>The version filter value. Specify this parameter to show only the available offerings matching the specified version.</p> <p>Default: All versions.</p> <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>
function M.DescribeOrderableClusterOptionsMessage(_Marker, _NodeType, _MaxRecords, _ClusterVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableClusterOptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["NodeType"] = _NodeType,
		["MaxRecords"] = _MaxRecords,
		["ClusterVersion"] = _ClusterVersion,
	}
	asserts.AssertDescribeOrderableClusterOptionsMessage(t)
	return t
end

keys.ClusterSnapshotAlreadyExistsFault = { nil }

function asserts.AssertClusterSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSnapshotAlreadyExistsFault[k], "ClusterSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSnapshotAlreadyExistsFault
-- <p>The value specified as a snapshot identifier is already used by an existing snapshot.</p>
function M.ClusterSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSnapshotAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterSnapshotAlreadyExistsFault(t)
	return t
end

keys.TagLimitExceededFault = { nil }

function asserts.AssertTagLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagLimitExceededFault[k], "TagLimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLimitExceededFault
-- <p>The request exceeds the limit of 10 tags for the resource.</p>
function M.TagLimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLimitExceededFault")
	local t = { 
	}
	asserts.AssertTagLimitExceededFault(t)
	return t
end

keys.ReservedNodeQuotaExceededFault = { nil }

function asserts.AssertReservedNodeQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeQuotaExceededFault[k], "ReservedNodeQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeQuotaExceededFault
-- <p>Request would exceed the user's compute node quota. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ReservedNodeQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeQuotaExceededFault")
	local t = { 
	}
	asserts.AssertReservedNodeQuotaExceededFault(t)
	return t
end

keys.CreateClusterSubnetGroupMessage = { ["SubnetIds"] = true, ["Tags"] = true, ["ClusterSubnetGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSubnetGroupMessage[k], "CreateClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSubnetGroupMessage
-- <p/>
-- @param _SubnetIds [SubnetIdentifierList] <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _ClusterSubnetGroupName [String] <p>The name for the subnet group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be "Default".</p> </li> <li> <p>Must be unique for all subnet groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesubnetgroup</code> </p>
-- @param _Description [String] <p>A description for the subnet group.</p>
-- Required parameter: ClusterSubnetGroupName
-- Required parameter: Description
-- Required parameter: SubnetIds
function M.CreateClusterSubnetGroupMessage(_SubnetIds, _Tags, _ClusterSubnetGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSubnetGroupMessage")
	local t = { 
		["SubnetIds"] = _SubnetIds,
		["Tags"] = _Tags,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
		["Description"] = _Description,
	}
	asserts.AssertCreateClusterSubnetGroupMessage(t)
	return t
end

keys.ClusterSecurityGroup = { ["IPRanges"] = true, ["Tags"] = true, ["ClusterSecurityGroupName"] = true, ["Description"] = true, ["EC2SecurityGroups"] = true, nil }

function asserts.AssertClusterSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroup to be of type 'table'")
	if struct["IPRanges"] then asserts.AssertIPRangeList(struct["IPRanges"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EC2SecurityGroups"] then asserts.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroup[k], "ClusterSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroup
-- <p>Describes a security group.</p>
-- @param _IPRanges [IPRangeList] <p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.</p>
-- @param _Tags [TagList] <p>The list of tags for the cluster security group.</p>
-- @param _ClusterSecurityGroupName [String] <p>The name of the cluster security group to which the operation was applied.</p>
-- @param _Description [String] <p>A description of the security group.</p>
-- @param _EC2SecurityGroups [EC2SecurityGroupList] <p>A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.</p>
function M.ClusterSecurityGroup(_IPRanges, _Tags, _ClusterSecurityGroupName, _Description, _EC2SecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroup")
	local t = { 
		["IPRanges"] = _IPRanges,
		["Tags"] = _Tags,
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
		["Description"] = _Description,
		["EC2SecurityGroups"] = _EC2SecurityGroups,
	}
	asserts.AssertClusterSecurityGroup(t)
	return t
end

keys.DescribeClusterSubnetGroupsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["ClusterSubnetGroupName"] = true, nil }

function asserts.AssertDescribeClusterSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterSubnetGroupsMessage[k], "DescribeClusterSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSubnetGroupsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSubnetGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them.</p>
-- @param _ClusterSubnetGroupName [String] <p>The name of the cluster subnet group for which information is requested.</p>
function M.DescribeClusterSubnetGroupsMessage(_Marker, _TagValues, _MaxRecords, _TagKeys, _ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSubnetGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["TagKeys"] = _TagKeys,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
	}
	asserts.AssertDescribeClusterSubnetGroupsMessage(t)
	return t
end

keys.HsmClientCertificateAlreadyExistsFault = { nil }

function asserts.AssertHsmClientCertificateAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmClientCertificateAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmClientCertificateAlreadyExistsFault[k], "HsmClientCertificateAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmClientCertificateAlreadyExistsFault
-- <p>There is already an existing Amazon Redshift HSM client certificate with the specified identifier.</p>
function M.HsmClientCertificateAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmClientCertificateAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertHsmClientCertificateAlreadyExistsFault(t)
	return t
end

keys.EnableLoggingMessage = { ["S3KeyPrefix"] = true, ["ClusterIdentifier"] = true, ["BucketName"] = true, nil }

function asserts.AssertEnableLoggingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableLoggingMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["BucketName"], "Expected key BucketName to exist in table")
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["BucketName"] then asserts.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableLoggingMessage[k], "EnableLoggingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableLoggingMessage
-- <p/>
-- @param _S3KeyPrefix [String] <p>The prefix applied to the log file names.</p> <p>Constraints:</p> <ul> <li> <p>Cannot exceed 512 characters</p> </li> <li> <p>Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash (\), or control characters. The hexadecimal codes for invalid characters are: </p> <ul> <li> <p>x00 to x20</p> </li> <li> <p>x22</p> </li> <li> <p>x27</p> </li> <li> <p>x5c</p> </li> <li> <p>x7f or larger</p> </li> </ul> </li> </ul>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster on which logging is to be started.</p> <p>Example: <code>examplecluster</code> </p>
-- @param _BucketName [String] <p>The name of an existing S3 bucket where the log files are to be stored.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the same region as the cluster</p> </li> <li> <p>The cluster must have read bucket and put object permissions</p> </li> </ul>
-- Required parameter: ClusterIdentifier
-- Required parameter: BucketName
function M.EnableLoggingMessage(_S3KeyPrefix, _ClusterIdentifier, _BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableLoggingMessage")
	local t = { 
		["S3KeyPrefix"] = _S3KeyPrefix,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["BucketName"] = _BucketName,
	}
	asserts.AssertEnableLoggingMessage(t)
	return t
end

keys.AuthorizeClusterSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["ClusterSecurityGroupName"] = true, ["CIDRIP"] = true, nil }

function asserts.AssertAuthorizeClusterSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeClusterSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeClusterSecurityGroupIngressMessage[k], "AuthorizeClusterSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeClusterSecurityGroupIngressMessage
-- <p/>
-- @param _EC2SecurityGroupName [String] <p>The EC2 security group to be added the Amazon Redshift security group.</p>
-- @param _EC2SecurityGroupOwnerId [String] <p>The AWS account number of the owner of the security group specified by the <i>EC2SecurityGroupName</i> parameter. The AWS Access Key ID is not an acceptable value. </p> <p>Example: <code>111122223333</code> </p>
-- @param _ClusterSecurityGroupName [String] <p>The name of the security group to which the ingress rule is added.</p>
-- @param _CIDRIP [String] <p>The IP range to be added the Amazon Redshift security group.</p>
-- Required parameter: ClusterSecurityGroupName
function M.AuthorizeClusterSecurityGroupIngressMessage(_EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _ClusterSecurityGroupName, _CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeClusterSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
		["CIDRIP"] = _CIDRIP,
	}
	asserts.AssertAuthorizeClusterSecurityGroupIngressMessage(t)
	return t
end

keys.DescribeLoggingStatusMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertDescribeLoggingStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLoggingStatusMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLoggingStatusMessage[k], "DescribeLoggingStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLoggingStatusMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster from which to get the logging status.</p> <p>Example: <code>examplecluster</code> </p>
-- Required parameter: ClusterIdentifier
function M.DescribeLoggingStatusMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLoggingStatusMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertDescribeLoggingStatusMessage(t)
	return t
end

keys.ClusterParameterGroupDetails = { ["Marker"] = true, ["Parameters"] = true, nil }

function asserts.AssertClusterParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupDetails[k], "ClusterParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupDetails
-- <p>Contains the output from the <a>DescribeClusterParameters</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _Parameters [ParametersList] <p>A list of <a>Parameter</a> instances. Each instance lists the parameters of one cluster parameter group. </p>
function M.ClusterParameterGroupDetails(_Marker, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupDetails")
	local t = { 
		["Marker"] = _Marker,
		["Parameters"] = _Parameters,
	}
	asserts.AssertClusterParameterGroupDetails(t)
	return t
end

keys.Snapshot = { ["MasterUsername"] = true, ["OwnerAccount"] = true, ["CurrentBackupRateInMegaBytesPerSecond"] = true, ["ActualIncrementalBackupSizeInMegaBytes"] = true, ["NumberOfNodes"] = true, ["Status"] = true, ["VpcId"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["EnhancedVpcRouting"] = true, ["EstimatedSecondsToCompletion"] = true, ["SourceRegion"] = true, ["AccountsWithRestoreAccess"] = true, ["TotalBackupSizeInMegaBytes"] = true, ["DBName"] = true, ["BackupProgressInMegaBytes"] = true, ["ClusterCreateTime"] = true, ["RestorableNodeTypes"] = true, ["EncryptedWithHSM"] = true, ["ClusterIdentifier"] = true, ["SnapshotCreateTime"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["Encrypted"] = true, ["ElapsedTimeInSeconds"] = true, ["KmsKeyId"] = true, ["SnapshotType"] = true, ["Port"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Snapshot to be of type 'table'")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["OwnerAccount"] then asserts.AssertString(struct["OwnerAccount"]) end
	if struct["CurrentBackupRateInMegaBytesPerSecond"] then asserts.AssertDouble(struct["CurrentBackupRateInMegaBytesPerSecond"]) end
	if struct["ActualIncrementalBackupSizeInMegaBytes"] then asserts.AssertDouble(struct["ActualIncrementalBackupSizeInMegaBytes"]) end
	if struct["NumberOfNodes"] then asserts.AssertInteger(struct["NumberOfNodes"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBoolean(struct["EnhancedVpcRouting"]) end
	if struct["EstimatedSecondsToCompletion"] then asserts.AssertLong(struct["EstimatedSecondsToCompletion"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["AccountsWithRestoreAccess"] then asserts.AssertAccountsWithRestoreAccessList(struct["AccountsWithRestoreAccess"]) end
	if struct["TotalBackupSizeInMegaBytes"] then asserts.AssertDouble(struct["TotalBackupSizeInMegaBytes"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["BackupProgressInMegaBytes"] then asserts.AssertDouble(struct["BackupProgressInMegaBytes"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["RestorableNodeTypes"] then asserts.AssertRestorableNodeTypeList(struct["RestorableNodeTypes"]) end
	if struct["EncryptedWithHSM"] then asserts.AssertBoolean(struct["EncryptedWithHSM"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
	if struct["ElapsedTimeInSeconds"] then asserts.AssertLong(struct["ElapsedTimeInSeconds"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.Snapshot[k], "Snapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Snapshot
-- <p>Describes a snapshot.</p>
-- @param _MasterUsername [String] <p>The master user name for the cluster.</p>
-- @param _OwnerAccount [String] <p>For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.</p>
-- @param _CurrentBackupRateInMegaBytesPerSecond [Double] <p>The number of megabytes per second being transferred to the snapshot backup. Returns <code>0</code> for a completed backup. </p>
-- @param _ActualIncrementalBackupSizeInMegaBytes [Double] <p>The size of the incremental backup.</p>
-- @param _NumberOfNodes [Integer] <p>The number of nodes in the cluster.</p>
-- @param _Status [String] <p>The snapshot status. The value of the status depends on the API operation used. </p> <ul> <li> <p> <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as "creating". </p> </li> <li> <p> <a>DescribeClusterSnapshots</a> returns status as "creating", "available", "final snapshot", or "failed".</p> </li> <li> <p> <a>DeleteClusterSnapshot</a> returns status as "deleted".</p> </li> </ul>
-- @param _VpcId [String] <p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.</p>
-- @param _ClusterVersion [String] <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
-- @param _Tags [TagList] <p>The list of tags for the cluster snapshot.</p>
-- @param _EnhancedVpcRouting [Boolean] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _EstimatedSecondsToCompletion [Long] <p>The estimate of the time remaining before the snapshot backup will complete. Returns <code>0</code> for a completed backup. </p>
-- @param _SourceRegion [String] <p>The source region from which the snapshot was copied.</p>
-- @param _AccountsWithRestoreAccess [AccountsWithRestoreAccessList] <p>A list of the AWS customer accounts authorized to restore the snapshot. Returns <code>null</code> if no accounts are authorized. Visible only to the snapshot owner. </p>
-- @param _TotalBackupSizeInMegaBytes [Double] <p>The size of the complete set of backup data that would be used to restore the cluster.</p>
-- @param _DBName [String] <p>The name of the database that was created when the cluster was created.</p>
-- @param _BackupProgressInMegaBytes [Double] <p>The number of megabytes that have been transferred to the snapshot backup.</p>
-- @param _ClusterCreateTime [TStamp] <p>The time (UTC) when the cluster was originally created.</p>
-- @param _RestorableNodeTypes [RestorableNodeTypeList] <p>The list of node types that this cluster snapshot is able to restore into.</p>
-- @param _EncryptedWithHSM [Boolean] <p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. <code>true</code> indicates that the data is encrypted using HSM keys.</p>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster for which the snapshot was taken.</p>
-- @param _SnapshotCreateTime [TStamp] <p>The time (UTC) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.</p>
-- @param _AvailabilityZone [String] <p>The Availability Zone in which the cluster was created.</p>
-- @param _NodeType [String] <p>The node type of the nodes in the cluster.</p>
-- @param _Encrypted [Boolean] <p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>
-- @param _ElapsedTimeInSeconds [Long] <p>The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.</p>
-- @param _KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.</p>
-- @param _SnapshotType [String] <p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> will be of type "manual". </p>
-- @param _Port [Integer] <p>The port that the cluster is listening on.</p>
-- @param _SnapshotIdentifier [String] <p>The snapshot identifier that is provided in the request.</p>
function M.Snapshot(_MasterUsername, _OwnerAccount, _CurrentBackupRateInMegaBytesPerSecond, _ActualIncrementalBackupSizeInMegaBytes, _NumberOfNodes, _Status, _VpcId, _ClusterVersion, _Tags, _EnhancedVpcRouting, _EstimatedSecondsToCompletion, _SourceRegion, _AccountsWithRestoreAccess, _TotalBackupSizeInMegaBytes, _DBName, _BackupProgressInMegaBytes, _ClusterCreateTime, _RestorableNodeTypes, _EncryptedWithHSM, _ClusterIdentifier, _SnapshotCreateTime, _AvailabilityZone, _NodeType, _Encrypted, _ElapsedTimeInSeconds, _KmsKeyId, _SnapshotType, _Port, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Snapshot")
	local t = { 
		["MasterUsername"] = _MasterUsername,
		["OwnerAccount"] = _OwnerAccount,
		["CurrentBackupRateInMegaBytesPerSecond"] = _CurrentBackupRateInMegaBytesPerSecond,
		["ActualIncrementalBackupSizeInMegaBytes"] = _ActualIncrementalBackupSizeInMegaBytes,
		["NumberOfNodes"] = _NumberOfNodes,
		["Status"] = _Status,
		["VpcId"] = _VpcId,
		["ClusterVersion"] = _ClusterVersion,
		["Tags"] = _Tags,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["EstimatedSecondsToCompletion"] = _EstimatedSecondsToCompletion,
		["SourceRegion"] = _SourceRegion,
		["AccountsWithRestoreAccess"] = _AccountsWithRestoreAccess,
		["TotalBackupSizeInMegaBytes"] = _TotalBackupSizeInMegaBytes,
		["DBName"] = _DBName,
		["BackupProgressInMegaBytes"] = _BackupProgressInMegaBytes,
		["ClusterCreateTime"] = _ClusterCreateTime,
		["RestorableNodeTypes"] = _RestorableNodeTypes,
		["EncryptedWithHSM"] = _EncryptedWithHSM,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["SnapshotCreateTime"] = _SnapshotCreateTime,
		["AvailabilityZone"] = _AvailabilityZone,
		["NodeType"] = _NodeType,
		["Encrypted"] = _Encrypted,
		["ElapsedTimeInSeconds"] = _ElapsedTimeInSeconds,
		["KmsKeyId"] = _KmsKeyId,
		["SnapshotType"] = _SnapshotType,
		["Port"] = _Port,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertSnapshot(t)
	return t
end

keys.DeleteHsmClientCertificateMessage = { ["HsmClientCertificateIdentifier"] = true, nil }

function asserts.AssertDeleteHsmClientCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmClientCertificateMessage to be of type 'table'")
	assert(struct["HsmClientCertificateIdentifier"], "Expected key HsmClientCertificateIdentifier to exist in table")
	if struct["HsmClientCertificateIdentifier"] then asserts.AssertString(struct["HsmClientCertificateIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmClientCertificateMessage[k], "DeleteHsmClientCertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmClientCertificateMessage
-- <p/>
-- @param _HsmClientCertificateIdentifier [String] <p>The identifier of the HSM client certificate to be deleted.</p>
-- Required parameter: HsmClientCertificateIdentifier
function M.DeleteHsmClientCertificateMessage(_HsmClientCertificateIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHsmClientCertificateMessage")
	local t = { 
		["HsmClientCertificateIdentifier"] = _HsmClientCertificateIdentifier,
	}
	asserts.AssertDeleteHsmClientCertificateMessage(t)
	return t
end

keys.AuthorizeSnapshotAccessMessage = { ["AccountWithRestoreAccess"] = true, ["SnapshotClusterIdentifier"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertAuthorizeSnapshotAccessMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeSnapshotAccessMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["AccountWithRestoreAccess"], "Expected key AccountWithRestoreAccess to exist in table")
	if struct["AccountWithRestoreAccess"] then asserts.AssertString(struct["AccountWithRestoreAccess"]) end
	if struct["SnapshotClusterIdentifier"] then asserts.AssertString(struct["SnapshotClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeSnapshotAccessMessage[k], "AuthorizeSnapshotAccessMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeSnapshotAccessMessage
-- <p/>
-- @param _AccountWithRestoreAccess [String] <p>The identifier of the AWS customer account authorized to restore the specified snapshot.</p> <p>To share a snapshot with AWS support, specify amazon-redshift-support.</p>
-- @param _SnapshotClusterIdentifier [String] <p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- @param _SnapshotIdentifier [String] <p>The identifier of the snapshot the account is authorized to restore.</p>
-- Required parameter: SnapshotIdentifier
-- Required parameter: AccountWithRestoreAccess
function M.AuthorizeSnapshotAccessMessage(_AccountWithRestoreAccess, _SnapshotClusterIdentifier, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeSnapshotAccessMessage")
	local t = { 
		["AccountWithRestoreAccess"] = _AccountWithRestoreAccess,
		["SnapshotClusterIdentifier"] = _SnapshotClusterIdentifier,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertAuthorizeSnapshotAccessMessage(t)
	return t
end

keys.AuthorizeSnapshotAccessResult = { ["Snapshot"] = true, nil }

function asserts.AssertAuthorizeSnapshotAccessResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeSnapshotAccessResult to be of type 'table'")
	if struct["Snapshot"] then asserts.AssertSnapshot(struct["Snapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeSnapshotAccessResult[k], "AuthorizeSnapshotAccessResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeSnapshotAccessResult
--  
-- @param _Snapshot [Snapshot] 
function M.AuthorizeSnapshotAccessResult(_Snapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeSnapshotAccessResult")
	local t = { 
		["Snapshot"] = _Snapshot,
	}
	asserts.AssertAuthorizeSnapshotAccessResult(t)
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
-- <p>The cluster subnet group does not cover all Availability Zones.</p>
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	asserts.AssertInvalidVPCNetworkStateFault(t)
	return t
end

keys.ClusterSecurityGroupNotFoundFault = { nil }

function asserts.AssertClusterSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroupNotFoundFault[k], "ClusterSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupNotFoundFault
-- <p>The cluster security group name does not refer to an existing cluster security group.</p>
function M.ClusterSecurityGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterSecurityGroupNotFoundFault(t)
	return t
end

keys.RevokeClusterSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["ClusterSecurityGroupName"] = true, ["CIDRIP"] = true, nil }

function asserts.AssertRevokeClusterSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeClusterSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["ClusterSecurityGroupName"], "Expected key ClusterSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeClusterSecurityGroupIngressMessage[k], "RevokeClusterSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeClusterSecurityGroupIngressMessage
-- <p/>
-- @param _EC2SecurityGroupName [String] <p>The name of the EC2 Security Group whose access is to be revoked. If <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code> must also be provided and <code>CIDRIP</code> cannot be provided. </p>
-- @param _EC2SecurityGroupOwnerId [String] <p>The AWS account number of the owner of the security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS access key ID is not an acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified, <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code> cannot be provided. </p> <p>Example: <code>111122223333</code> </p>
-- @param _ClusterSecurityGroupName [String] <p>The name of the security Group from which to revoke the ingress rule.</p>
-- @param _CIDRIP [String] <p>The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>
-- Required parameter: ClusterSecurityGroupName
function M.RevokeClusterSecurityGroupIngressMessage(_EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _ClusterSecurityGroupName, _CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeClusterSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
		["CIDRIP"] = _CIDRIP,
	}
	asserts.AssertRevokeClusterSecurityGroupIngressMessage(t)
	return t
end

keys.SnapshotCopyGrant = { ["Tags"] = true, ["SnapshotCopyGrantName"] = true, ["KmsKeyId"] = true, nil }

function asserts.AssertSnapshotCopyGrant(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrant to be of type 'table'")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyGrant[k], "SnapshotCopyGrant contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrant
-- <p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied snapshots with the specified customer master key (CMK) from AWS KMS in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- @param _KmsKeyId [String] <p>The unique identifier of the customer master key (CMK) in AWS KMS to which Amazon Redshift is granted permission.</p>
function M.SnapshotCopyGrant(_Tags, _SnapshotCopyGrantName, _KmsKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrant")
	local t = { 
		["Tags"] = _Tags,
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
		["KmsKeyId"] = _KmsKeyId,
	}
	asserts.AssertSnapshotCopyGrant(t)
	return t
end

keys.NumberOfNodesPerClusterLimitExceededFault = { nil }

function asserts.AssertNumberOfNodesPerClusterLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberOfNodesPerClusterLimitExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NumberOfNodesPerClusterLimitExceededFault[k], "NumberOfNodesPerClusterLimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberOfNodesPerClusterLimitExceededFault
-- <p>The operation would exceed the number of nodes allowed for a cluster.</p>
function M.NumberOfNodesPerClusterLimitExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating NumberOfNodesPerClusterLimitExceededFault")
	local t = { 
	}
	asserts.AssertNumberOfNodesPerClusterLimitExceededFault(t)
	return t
end

keys.EnableSnapshotCopyMessage = { ["ClusterIdentifier"] = true, ["SnapshotCopyGrantName"] = true, ["DestinationRegion"] = true, ["RetentionPeriod"] = true, nil }

function asserts.AssertEnableSnapshotCopyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableSnapshotCopyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["DestinationRegion"], "Expected key DestinationRegion to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["DestinationRegion"] then asserts.AssertString(struct["DestinationRegion"]) end
	if struct["RetentionPeriod"] then asserts.AssertIntegerOptional(struct["RetentionPeriod"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableSnapshotCopyMessage[k], "EnableSnapshotCopyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableSnapshotCopyMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the source cluster to copy snapshots from.</p> <p>Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.</p>
-- @param _DestinationRegion [String] <p>The destination region that you want to copy snapshots to.</p> <p>Constraints: Must be the name of a valid region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region">Regions and Endpoints</a> in the Amazon Web Services General Reference. </p>
-- @param _RetentionPeriod [IntegerOptional] <p>The number of days to retain automated snapshots in the destination region after they are copied from the source region.</p> <p>Default: 7.</p> <p>Constraints: Must be at least 1 and no more than 35.</p>
-- Required parameter: ClusterIdentifier
-- Required parameter: DestinationRegion
function M.EnableSnapshotCopyMessage(_ClusterIdentifier, _SnapshotCopyGrantName, _DestinationRegion, _RetentionPeriod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableSnapshotCopyMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
		["DestinationRegion"] = _DestinationRegion,
		["RetentionPeriod"] = _RetentionPeriod,
	}
	asserts.AssertEnableSnapshotCopyMessage(t)
	return t
end

keys.Cluster = { ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["VpcSecurityGroups"] = true, ["HsmStatus"] = true, ["ClusterPublicKey"] = true, ["ModifyStatus"] = true, ["NumberOfNodes"] = true, ["PendingModifiedValues"] = true, ["IamRoles"] = true, ["VpcId"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["ClusterParameterGroups"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["Endpoint"] = true, ["RestoreStatus"] = true, ["ElasticIpStatus"] = true, ["AllowVersionUpgrade"] = true, ["ClusterCreateTime"] = true, ["ClusterSubnetGroupName"] = true, ["EnhancedVpcRouting"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["ClusterNodes"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["Encrypted"] = true, ["ClusterRevisionNumber"] = true, ["ClusterSnapshotCopyStatus"] = true, ["KmsKeyId"] = true, ["ClusterStatus"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["PubliclyAccessible"] then asserts.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["HsmStatus"] then asserts.AssertHsmStatus(struct["HsmStatus"]) end
	if struct["ClusterPublicKey"] then asserts.AssertString(struct["ClusterPublicKey"]) end
	if struct["ModifyStatus"] then asserts.AssertString(struct["ModifyStatus"]) end
	if struct["NumberOfNodes"] then asserts.AssertInteger(struct["NumberOfNodes"]) end
	if struct["PendingModifiedValues"] then asserts.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["IamRoles"] then asserts.AssertClusterIamRoleList(struct["IamRoles"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertInteger(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["ClusterParameterGroups"] then asserts.AssertClusterParameterGroupStatusList(struct["ClusterParameterGroups"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["RestoreStatus"] then asserts.AssertRestoreStatus(struct["RestoreStatus"]) end
	if struct["ElasticIpStatus"] then asserts.AssertElasticIpStatus(struct["ElasticIpStatus"]) end
	if struct["AllowVersionUpgrade"] then asserts.AssertBoolean(struct["AllowVersionUpgrade"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBoolean(struct["EnhancedVpcRouting"]) end
	if struct["ClusterSecurityGroups"] then asserts.AssertClusterSecurityGroupMembershipList(struct["ClusterSecurityGroups"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["ClusterNodes"] then asserts.AssertClusterNodesList(struct["ClusterNodes"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
	if struct["ClusterRevisionNumber"] then asserts.AssertString(struct["ClusterRevisionNumber"]) end
	if struct["ClusterSnapshotCopyStatus"] then asserts.AssertClusterSnapshotCopyStatus(struct["ClusterSnapshotCopyStatus"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ClusterStatus"] then asserts.AssertString(struct["ClusterStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>Describes a cluster.</p>
-- @param _PubliclyAccessible [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that the cluster can be accessed from a public network.</p>
-- @param _MasterUsername [String] <p>The master user name for the cluster. This name is used to connect to the database that is specified in the <b>DBName</b> parameter. </p>
-- @param _VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are associated with the cluster. This parameter is returned only if the cluster is in a VPC.</p>
-- @param _HsmStatus [HsmStatus] <p>A value that reports whether the Amazon Redshift cluster has finished applying any hardware security module (HSM) settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>
-- @param _ClusterPublicKey [String] <p>The public key for the cluster.</p>
-- @param _ModifyStatus [String] <p>The status of a modify operation, if any, initiated for the cluster.</p>
-- @param _NumberOfNodes [Integer] <p>The number of compute nodes in the cluster.</p>
-- @param _PendingModifiedValues [PendingModifiedValues] <p>A value that, if present, indicates that changes to the cluster are pending. Specific pending changes are identified by subelements.</p>
-- @param _IamRoles [ClusterIamRoleList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p>
-- @param _VpcId [String] <p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>
-- @param _ClusterVersion [String] <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
-- @param _Tags [TagList] <p>The list of tags for the cluster.</p>
-- @param _AutomatedSnapshotRetentionPeriod [Integer] <p>The number of days that automatic cluster snapshots are retained.</p>
-- @param _ClusterParameterGroups [ClusterParameterGroupStatusList] <p>The list of cluster parameter groups that are associated with this cluster. Each parameter group in the list is returned with its status.</p>
-- @param _DBName [String] <p>The name of the initial database that was created when the cluster was created. This same name is returned for the life of the cluster. If an initial database was not specified, a database named <code>dev</code>dev was created by default. </p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range, in Universal Coordinated Time (UTC), during which system maintenance can occur.</p>
-- @param _Endpoint [Endpoint] <p>The connection endpoint.</p>
-- @param _RestoreStatus [RestoreStatus] <p>A value that describes the status of a cluster restore action. This parameter returns null if the cluster was not created by restoring a snapshot.</p>
-- @param _ElasticIpStatus [ElasticIpStatus] <p>The status of the elastic IP (EIP) address.</p>
-- @param _AllowVersionUpgrade [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that major version upgrades will be applied automatically to the cluster during the maintenance window. </p>
-- @param _ClusterCreateTime [TStamp] <p>The date and time that the cluster was created.</p>
-- @param _ClusterSubnetGroupName [String] <p>The name of the subnet group that is associated with the cluster. This parameter is valid only when the cluster is in a VPC.</p>
-- @param _EnhancedVpcRouting [Boolean] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- @param _ClusterSecurityGroups [ClusterSecurityGroupMembershipList] <p>A list of cluster security group that are associated with the cluster. Each security group is represented by an element that contains <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code> subelements. </p> <p>Cluster security groups are used when the cluster is not created in an Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups, which are listed by the <b>VpcSecurityGroups</b> parameter. </p>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster.</p>
-- @param _ClusterNodes [ClusterNodesList] <p>The nodes in the cluster.</p>
-- @param _AvailabilityZone [String] <p>The name of the Availability Zone in which the cluster is located.</p>
-- @param _NodeType [String] <p>The node type for the nodes in the cluster.</p>
-- @param _Encrypted [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that data in the cluster is encrypted at rest.</p>
-- @param _ClusterRevisionNumber [String] <p>The specific revision number of the database in the cluster.</p>
-- @param _ClusterSnapshotCopyStatus [ClusterSnapshotCopyStatus] <p>A value that returns the destination region and retention period that are configured for cross-region snapshot copy.</p>
-- @param _KmsKeyId [String] <p>The AWS Key Management Service (AWS KMS) key ID of the encryption key used to encrypt data in the cluster.</p>
-- @param _ClusterStatus [String] <p> The current state of the cluster. Possible values are the following:</p> <ul> <li> <p> <code>available</code> </p> </li> <li> <p> <code>creating</code> </p> </li> <li> <p> <code>deleting</code> </p> </li> <li> <p> <code>final-snapshot</code> </p> </li> <li> <p> <code>hardware-failure</code> </p> </li> <li> <p> <code>incompatible-hsm</code> </p> </li> <li> <p> <code>incompatible-network</code> </p> </li> <li> <p> <code>incompatible-parameters</code> </p> </li> <li> <p> <code>incompatible-restore</code> </p> </li> <li> <p> <code>modifying</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>renaming</code> </p> </li> <li> <p> <code>resizing</code> </p> </li> <li> <p> <code>rotating-keys</code> </p> </li> <li> <p> <code>storage-full</code> </p> </li> <li> <p> <code>updating-hsm</code> </p> </li> </ul>
function M.Cluster(_PubliclyAccessible, _MasterUsername, _VpcSecurityGroups, _HsmStatus, _ClusterPublicKey, _ModifyStatus, _NumberOfNodes, _PendingModifiedValues, _IamRoles, _VpcId, _ClusterVersion, _Tags, _AutomatedSnapshotRetentionPeriod, _ClusterParameterGroups, _DBName, _PreferredMaintenanceWindow, _Endpoint, _RestoreStatus, _ElasticIpStatus, _AllowVersionUpgrade, _ClusterCreateTime, _ClusterSubnetGroupName, _EnhancedVpcRouting, _ClusterSecurityGroups, _ClusterIdentifier, _ClusterNodes, _AvailabilityZone, _NodeType, _Encrypted, _ClusterRevisionNumber, _ClusterSnapshotCopyStatus, _KmsKeyId, _ClusterStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Cluster")
	local t = { 
		["PubliclyAccessible"] = _PubliclyAccessible,
		["MasterUsername"] = _MasterUsername,
		["VpcSecurityGroups"] = _VpcSecurityGroups,
		["HsmStatus"] = _HsmStatus,
		["ClusterPublicKey"] = _ClusterPublicKey,
		["ModifyStatus"] = _ModifyStatus,
		["NumberOfNodes"] = _NumberOfNodes,
		["PendingModifiedValues"] = _PendingModifiedValues,
		["IamRoles"] = _IamRoles,
		["VpcId"] = _VpcId,
		["ClusterVersion"] = _ClusterVersion,
		["Tags"] = _Tags,
		["AutomatedSnapshotRetentionPeriod"] = _AutomatedSnapshotRetentionPeriod,
		["ClusterParameterGroups"] = _ClusterParameterGroups,
		["DBName"] = _DBName,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["Endpoint"] = _Endpoint,
		["RestoreStatus"] = _RestoreStatus,
		["ElasticIpStatus"] = _ElasticIpStatus,
		["AllowVersionUpgrade"] = _AllowVersionUpgrade,
		["ClusterCreateTime"] = _ClusterCreateTime,
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
		["EnhancedVpcRouting"] = _EnhancedVpcRouting,
		["ClusterSecurityGroups"] = _ClusterSecurityGroups,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["ClusterNodes"] = _ClusterNodes,
		["AvailabilityZone"] = _AvailabilityZone,
		["NodeType"] = _NodeType,
		["Encrypted"] = _Encrypted,
		["ClusterRevisionNumber"] = _ClusterRevisionNumber,
		["ClusterSnapshotCopyStatus"] = _ClusterSnapshotCopyStatus,
		["KmsKeyId"] = _KmsKeyId,
		["ClusterStatus"] = _ClusterStatus,
	}
	asserts.AssertCluster(t)
	return t
end

keys.RestoreStatus = { ["Status"] = true, ["ProgressInMegaBytes"] = true, ["CurrentRestoreRateInMegaBytesPerSecond"] = true, ["EstimatedTimeToCompletionInSeconds"] = true, ["ElapsedTimeInSeconds"] = true, ["SnapshotSizeInMegaBytes"] = true, nil }

function asserts.AssertRestoreStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ProgressInMegaBytes"] then asserts.AssertLong(struct["ProgressInMegaBytes"]) end
	if struct["CurrentRestoreRateInMegaBytesPerSecond"] then asserts.AssertDouble(struct["CurrentRestoreRateInMegaBytesPerSecond"]) end
	if struct["EstimatedTimeToCompletionInSeconds"] then asserts.AssertLong(struct["EstimatedTimeToCompletionInSeconds"]) end
	if struct["ElapsedTimeInSeconds"] then asserts.AssertLong(struct["ElapsedTimeInSeconds"]) end
	if struct["SnapshotSizeInMegaBytes"] then asserts.AssertLong(struct["SnapshotSizeInMegaBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreStatus[k], "RestoreStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreStatus
-- <p>Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.</p>
-- @param _Status [String] <p>The status of the restore action. Returns starting, restoring, completed, or failed.</p>
-- @param _ProgressInMegaBytes [Long] <p>The number of megabytes that have been transferred from snapshot storage.</p>
-- @param _CurrentRestoreRateInMegaBytesPerSecond [Double] <p>The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup.</p>
-- @param _EstimatedTimeToCompletionInSeconds [Long] <p>The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore.</p>
-- @param _ElapsedTimeInSeconds [Long] <p>The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish.</p>
-- @param _SnapshotSizeInMegaBytes [Long] <p>The size of the set of snapshot data used to restore the cluster.</p>
function M.RestoreStatus(_Status, _ProgressInMegaBytes, _CurrentRestoreRateInMegaBytesPerSecond, _EstimatedTimeToCompletionInSeconds, _ElapsedTimeInSeconds, _SnapshotSizeInMegaBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreStatus")
	local t = { 
		["Status"] = _Status,
		["ProgressInMegaBytes"] = _ProgressInMegaBytes,
		["CurrentRestoreRateInMegaBytesPerSecond"] = _CurrentRestoreRateInMegaBytesPerSecond,
		["EstimatedTimeToCompletionInSeconds"] = _EstimatedTimeToCompletionInSeconds,
		["ElapsedTimeInSeconds"] = _ElapsedTimeInSeconds,
		["SnapshotSizeInMegaBytes"] = _SnapshotSizeInMegaBytes,
	}
	asserts.AssertRestoreStatus(t)
	return t
end

keys.DescribeClusterParametersMessage = { ["Marker"] = true, ["Source"] = true, ["MaxRecords"] = true, ["ParameterGroupName"] = true, nil }

function asserts.AssertDescribeClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterParametersMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterParametersMessage[k], "DescribeClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterParametersMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _Source [String] <p>The parameter types to return. Specify <code>user</code> to show parameters that are different form the default. Similarly, specify <code>engine-default</code> to show parameters that are the same as the default parameter group. </p> <p>Default: All parameter types returned.</p> <p>Valid Values: <code>user</code> | <code>engine-default</code> </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _ParameterGroupName [String] <p>The name of a cluster parameter group for which to return details.</p>
-- Required parameter: ParameterGroupName
function M.DescribeClusterParametersMessage(_Marker, _Source, _MaxRecords, _ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterParametersMessage")
	local t = { 
		["Marker"] = _Marker,
		["Source"] = _Source,
		["MaxRecords"] = _MaxRecords,
		["ParameterGroupName"] = _ParameterGroupName,
	}
	asserts.AssertDescribeClusterParametersMessage(t)
	return t
end

keys.DescribeDefaultClusterParametersResult = { ["DefaultClusterParameters"] = true, nil }

function asserts.AssertDescribeDefaultClusterParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDefaultClusterParametersResult to be of type 'table'")
	if struct["DefaultClusterParameters"] then asserts.AssertDefaultClusterParameters(struct["DefaultClusterParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDefaultClusterParametersResult[k], "DescribeDefaultClusterParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDefaultClusterParametersResult
--  
-- @param _DefaultClusterParameters [DefaultClusterParameters] 
function M.DescribeDefaultClusterParametersResult(_DefaultClusterParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDefaultClusterParametersResult")
	local t = { 
		["DefaultClusterParameters"] = _DefaultClusterParameters,
	}
	asserts.AssertDescribeDefaultClusterParametersResult(t)
	return t
end

keys.ReservedNodeNotFoundFault = { nil }

function asserts.AssertReservedNodeNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeNotFoundFault[k], "ReservedNodeNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeNotFoundFault
-- <p>The specified reserved compute node not found.</p>
function M.ReservedNodeNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeNotFoundFault")
	local t = { 
	}
	asserts.AssertReservedNodeNotFoundFault(t)
	return t
end

keys.UnsupportedOperationFault = { nil }

function asserts.AssertUnsupportedOperationFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationFault[k], "UnsupportedOperationFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationFault
-- <p>The requested operation isn't supported.</p>
function M.UnsupportedOperationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationFault")
	local t = { 
	}
	asserts.AssertUnsupportedOperationFault(t)
	return t
end

keys.LoggingStatus = { ["LastFailureMessage"] = true, ["LoggingEnabled"] = true, ["LastFailureTime"] = true, ["LastSuccessfulDeliveryTime"] = true, ["S3KeyPrefix"] = true, ["BucketName"] = true, nil }

function asserts.AssertLoggingStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingStatus to be of type 'table'")
	if struct["LastFailureMessage"] then asserts.AssertString(struct["LastFailureMessage"]) end
	if struct["LoggingEnabled"] then asserts.AssertBoolean(struct["LoggingEnabled"]) end
	if struct["LastFailureTime"] then asserts.AssertTStamp(struct["LastFailureTime"]) end
	if struct["LastSuccessfulDeliveryTime"] then asserts.AssertTStamp(struct["LastSuccessfulDeliveryTime"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["BucketName"] then asserts.AssertString(struct["BucketName"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingStatus[k], "LoggingStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingStatus
-- <p>Describes the status of logging for a cluster.</p>
-- @param _LastFailureMessage [String] <p>The message indicating that logs failed to be delivered.</p>
-- @param _LoggingEnabled [Boolean] <p> <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
-- @param _LastFailureTime [TStamp] <p>The last time when logs failed to be delivered.</p>
-- @param _LastSuccessfulDeliveryTime [TStamp] <p>The last time that logs were delivered.</p>
-- @param _S3KeyPrefix [String] <p>The prefix applied to the log file names.</p>
-- @param _BucketName [String] <p>The name of the S3 bucket where the log files are stored.</p>
function M.LoggingStatus(_LastFailureMessage, _LoggingEnabled, _LastFailureTime, _LastSuccessfulDeliveryTime, _S3KeyPrefix, _BucketName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingStatus")
	local t = { 
		["LastFailureMessage"] = _LastFailureMessage,
		["LoggingEnabled"] = _LoggingEnabled,
		["LastFailureTime"] = _LastFailureTime,
		["LastSuccessfulDeliveryTime"] = _LastSuccessfulDeliveryTime,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["BucketName"] = _BucketName,
	}
	asserts.AssertLoggingStatus(t)
	return t
end

keys.ResizeProgressMessage = { ["Status"] = true, ["ImportTablesCompleted"] = true, ["EstimatedTimeToCompletionInSeconds"] = true, ["ProgressInMegaBytes"] = true, ["TargetClusterType"] = true, ["TotalResizeDataInMegaBytes"] = true, ["TargetNumberOfNodes"] = true, ["ImportTablesInProgress"] = true, ["ImportTablesNotStarted"] = true, ["AvgResizeRateInMegaBytesPerSecond"] = true, ["ElapsedTimeInSeconds"] = true, ["TargetNodeType"] = true, nil }

function asserts.AssertResizeProgressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeProgressMessage to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ImportTablesCompleted"] then asserts.AssertImportTablesCompleted(struct["ImportTablesCompleted"]) end
	if struct["EstimatedTimeToCompletionInSeconds"] then asserts.AssertLongOptional(struct["EstimatedTimeToCompletionInSeconds"]) end
	if struct["ProgressInMegaBytes"] then asserts.AssertLongOptional(struct["ProgressInMegaBytes"]) end
	if struct["TargetClusterType"] then asserts.AssertString(struct["TargetClusterType"]) end
	if struct["TotalResizeDataInMegaBytes"] then asserts.AssertLongOptional(struct["TotalResizeDataInMegaBytes"]) end
	if struct["TargetNumberOfNodes"] then asserts.AssertIntegerOptional(struct["TargetNumberOfNodes"]) end
	if struct["ImportTablesInProgress"] then asserts.AssertImportTablesInProgress(struct["ImportTablesInProgress"]) end
	if struct["ImportTablesNotStarted"] then asserts.AssertImportTablesNotStarted(struct["ImportTablesNotStarted"]) end
	if struct["AvgResizeRateInMegaBytesPerSecond"] then asserts.AssertDoubleOptional(struct["AvgResizeRateInMegaBytesPerSecond"]) end
	if struct["ElapsedTimeInSeconds"] then asserts.AssertLongOptional(struct["ElapsedTimeInSeconds"]) end
	if struct["TargetNodeType"] then asserts.AssertString(struct["TargetNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResizeProgressMessage[k], "ResizeProgressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeProgressMessage
-- <p>Describes the result of a cluster resize operation.</p>
-- @param _Status [String] <p>The status of the resize operation.</p> <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> | <code>SUCCEEDED</code> </p>
-- @param _ImportTablesCompleted [ImportTablesCompleted] <p>The names of tables that have been completely imported .</p> <p>Valid Values: List of table names.</p>
-- @param _EstimatedTimeToCompletionInSeconds [LongOptional] <p>The estimated time remaining, in seconds, until the resize operation is complete. This value is calculated based on the average resize rate and the estimated amount of data remaining to be processed. Once the resize operation is complete, this value will be 0.</p>
-- @param _ProgressInMegaBytes [LongOptional] <p>While the resize operation is in progress, this value shows the current amount of data, in megabytes, that has been processed so far. When the resize operation is complete, this value shows the total amount of data, in megabytes, on the cluster, which may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data before resize).</p>
-- @param _TargetClusterType [String] <p>The cluster type after the resize operation is complete.</p> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p>
-- @param _TotalResizeDataInMegaBytes [LongOptional] <p>The estimated total amount of data, in megabytes, on the cluster before the resize operation began.</p>
-- @param _TargetNumberOfNodes [IntegerOptional] <p>The number of nodes that the cluster will have after the resize operation is complete.</p>
-- @param _ImportTablesInProgress [ImportTablesInProgress] <p>The names of tables that are being currently imported.</p> <p>Valid Values: List of table names.</p>
-- @param _ImportTablesNotStarted [ImportTablesNotStarted] <p>The names of tables that have not been yet imported.</p> <p>Valid Values: List of table names</p>
-- @param _AvgResizeRateInMegaBytesPerSecond [DoubleOptional] <p>The average rate of the resize operation over the last few minutes, measured in megabytes per second. After the resize operation completes, this value shows the average rate of the entire resize operation.</p>
-- @param _ElapsedTimeInSeconds [LongOptional] <p>The amount of seconds that have elapsed since the resize operation began. After the resize operation completes, this value shows the total actual time, in seconds, for the resize operation.</p>
-- @param _TargetNodeType [String] <p>The node type that the cluster will have after the resize operation is complete.</p>
function M.ResizeProgressMessage(_Status, _ImportTablesCompleted, _EstimatedTimeToCompletionInSeconds, _ProgressInMegaBytes, _TargetClusterType, _TotalResizeDataInMegaBytes, _TargetNumberOfNodes, _ImportTablesInProgress, _ImportTablesNotStarted, _AvgResizeRateInMegaBytesPerSecond, _ElapsedTimeInSeconds, _TargetNodeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResizeProgressMessage")
	local t = { 
		["Status"] = _Status,
		["ImportTablesCompleted"] = _ImportTablesCompleted,
		["EstimatedTimeToCompletionInSeconds"] = _EstimatedTimeToCompletionInSeconds,
		["ProgressInMegaBytes"] = _ProgressInMegaBytes,
		["TargetClusterType"] = _TargetClusterType,
		["TotalResizeDataInMegaBytes"] = _TotalResizeDataInMegaBytes,
		["TargetNumberOfNodes"] = _TargetNumberOfNodes,
		["ImportTablesInProgress"] = _ImportTablesInProgress,
		["ImportTablesNotStarted"] = _ImportTablesNotStarted,
		["AvgResizeRateInMegaBytesPerSecond"] = _AvgResizeRateInMegaBytesPerSecond,
		["ElapsedTimeInSeconds"] = _ElapsedTimeInSeconds,
		["TargetNodeType"] = _TargetNodeType,
	}
	asserts.AssertResizeProgressMessage(t)
	return t
end

keys.ResourceNotFoundFault = { nil }

function asserts.AssertResourceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundFault[k], "ResourceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundFault
-- <p>The resource could not be found.</p>
function M.ResourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
	}
	asserts.AssertResourceNotFoundFault(t)
	return t
end

keys.HsmConfigurationAlreadyExistsFault = { nil }

function asserts.AssertHsmConfigurationAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmConfigurationAlreadyExistsFault[k], "HsmConfigurationAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationAlreadyExistsFault
-- <p>There is already an existing Amazon Redshift HSM configuration with the specified identifier.</p>
function M.HsmConfigurationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertHsmConfigurationAlreadyExistsFault(t)
	return t
end

keys.DescribeHsmConfigurationsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["HsmConfigurationIdentifier"] = true, nil }

function asserts.AssertDescribeHsmConfigurationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHsmConfigurationsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["HsmConfigurationIdentifier"] then asserts.AssertString(struct["HsmConfigurationIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHsmConfigurationsMessage[k], "DescribeHsmConfigurationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHsmConfigurationsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmConfigurations</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.</p>
-- @param _HsmConfigurationIdentifier [String] <p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.</p>
function M.DescribeHsmConfigurationsMessage(_Marker, _TagValues, _MaxRecords, _TagKeys, _HsmConfigurationIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHsmConfigurationsMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["TagKeys"] = _TagKeys,
		["HsmConfigurationIdentifier"] = _HsmConfigurationIdentifier,
	}
	asserts.AssertDescribeHsmConfigurationsMessage(t)
	return t
end

keys.DescribeTableRestoreStatusMessage = { ["Marker"] = true, ["ClusterIdentifier"] = true, ["MaxRecords"] = true, ["TableRestoreRequestId"] = true, nil }

function asserts.AssertDescribeTableRestoreStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTableRestoreStatusMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TableRestoreRequestId"] then asserts.AssertString(struct["TableRestoreRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTableRestoreStatusMessage[k], "DescribeTableRestoreStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTableRestoreStatusMessage
-- <p/>
-- @param _Marker [String] <p>An optional pagination token provided by a previous <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the <code>MaxRecords</code> parameter.</p>
-- @param _ClusterIdentifier [String] <p>The Amazon Redshift cluster that the table is being restored to.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
-- @param _TableRestoreRequestId [String] <p>The identifier of the table restore request to return status for. If you don't specify a <code>TableRestoreRequestId</code> value, then <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table restore requests.</p>
function M.DescribeTableRestoreStatusMessage(_Marker, _ClusterIdentifier, _MaxRecords, _TableRestoreRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTableRestoreStatusMessage")
	local t = { 
		["Marker"] = _Marker,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["MaxRecords"] = _MaxRecords,
		["TableRestoreRequestId"] = _TableRestoreRequestId,
	}
	asserts.AssertDescribeTableRestoreStatusMessage(t)
	return t
end

keys.ClusterCredentials = { ["DbUser"] = true, ["Expiration"] = true, ["DbPassword"] = true, nil }

function asserts.AssertClusterCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterCredentials to be of type 'table'")
	if struct["DbUser"] then asserts.AssertString(struct["DbUser"]) end
	if struct["Expiration"] then asserts.AssertTStamp(struct["Expiration"]) end
	if struct["DbPassword"] then asserts.AssertSensitiveString(struct["DbPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterCredentials[k], "ClusterCredentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterCredentials
-- <p>Temporary credentials with authorization to log in to an Amazon Redshift database. </p>
-- @param _DbUser [String] <p>A database user name that is authorized to log on to the database <code>DbName</code> using the password <code>DbPassword</code>. If the <code>DbGroups</code> parameter is specifed, <code>DbUser</code> is added to the listed groups for the current session. The user name is prefixed with <code>IAM:</code> for an existing user name or <code>IAMA:</code> if the user was auto-created. </p>
-- @param _Expiration [TStamp] <p>The date and time <code>DbPassword</code> expires.</p>
-- @param _DbPassword [SensitiveString] <p>A temporary password that authorizes the user name returned by <code>DbUser</code> to log on to the database <code>DbName</code>. </p>
function M.ClusterCredentials(_DbUser, _Expiration, _DbPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterCredentials")
	local t = { 
		["DbUser"] = _DbUser,
		["Expiration"] = _Expiration,
		["DbPassword"] = _DbPassword,
	}
	asserts.AssertClusterCredentials(t)
	return t
end

keys.ModifyEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertModifyEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionResult[k], "ModifyEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionResult
--  
-- @param _EventSubscription [EventSubscription] 
function M.ModifyEventSubscriptionResult(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertModifyEventSubscriptionResult(t)
	return t
end

keys.SnapshotCopyGrantMessage = { ["Marker"] = true, ["SnapshotCopyGrants"] = true, nil }

function asserts.AssertSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyGrantMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["SnapshotCopyGrants"] then asserts.AssertSnapshotCopyGrantList(struct["SnapshotCopyGrants"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyGrantMessage[k], "SnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyGrantMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- @param _SnapshotCopyGrants [SnapshotCopyGrantList] <p>The list of <code>SnapshotCopyGrant</code> objects.</p>
function M.SnapshotCopyGrantMessage(_Marker, _SnapshotCopyGrants, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyGrantMessage")
	local t = { 
		["Marker"] = _Marker,
		["SnapshotCopyGrants"] = _SnapshotCopyGrants,
	}
	asserts.AssertSnapshotCopyGrantMessage(t)
	return t
end

keys.HsmConfigurationQuotaExceededFault = { nil }

function asserts.AssertHsmConfigurationQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.HsmConfigurationQuotaExceededFault[k], "HsmConfigurationQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationQuotaExceededFault
-- <p>The quota for HSM configurations has been reached. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.HsmConfigurationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationQuotaExceededFault")
	local t = { 
	}
	asserts.AssertHsmConfigurationQuotaExceededFault(t)
	return t
end

keys.TableRestoreStatus = { ["Status"] = true, ["RequestTime"] = true, ["TotalDataInMegaBytes"] = true, ["SourceSchemaName"] = true, ["TargetDatabaseName"] = true, ["ProgressInMegaBytes"] = true, ["SourceTableName"] = true, ["TableRestoreRequestId"] = true, ["NewTableName"] = true, ["TargetSchemaName"] = true, ["Message"] = true, ["SourceDatabaseName"] = true, ["ClusterIdentifier"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertTableRestoreStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertTableRestoreStatusType(struct["Status"]) end
	if struct["RequestTime"] then asserts.AssertTStamp(struct["RequestTime"]) end
	if struct["TotalDataInMegaBytes"] then asserts.AssertLongOptional(struct["TotalDataInMegaBytes"]) end
	if struct["SourceSchemaName"] then asserts.AssertString(struct["SourceSchemaName"]) end
	if struct["TargetDatabaseName"] then asserts.AssertString(struct["TargetDatabaseName"]) end
	if struct["ProgressInMegaBytes"] then asserts.AssertLongOptional(struct["ProgressInMegaBytes"]) end
	if struct["SourceTableName"] then asserts.AssertString(struct["SourceTableName"]) end
	if struct["TableRestoreRequestId"] then asserts.AssertString(struct["TableRestoreRequestId"]) end
	if struct["NewTableName"] then asserts.AssertString(struct["NewTableName"]) end
	if struct["TargetSchemaName"] then asserts.AssertString(struct["TargetSchemaName"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceDatabaseName"] then asserts.AssertString(struct["SourceDatabaseName"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableRestoreStatus[k], "TableRestoreStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreStatus
-- <p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a> operation.</p>
-- @param _Status [TableRestoreStatusType] <p>A value that describes the current state of the table restore request.</p> <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code> </p>
-- @param _RequestTime [TStamp] <p>The time that the table restore request was made, in Universal Coordinated Time (UTC).</p>
-- @param _TotalDataInMegaBytes [LongOptional] <p>The total amount of data to restore to the new table, in megabytes (MB).</p>
-- @param _SourceSchemaName [String] <p>The name of the source schema that contains the table being restored.</p>
-- @param _TargetDatabaseName [String] <p>The name of the database to restore the table to.</p>
-- @param _ProgressInMegaBytes [LongOptional] <p>The amount of data restored to the new table so far, in megabytes (MB).</p>
-- @param _SourceTableName [String] <p>The name of the source table being restored.</p>
-- @param _TableRestoreRequestId [String] <p>The unique identifier for the table restore request.</p>
-- @param _NewTableName [String] <p>The name of the table to create as a result of the table restore request.</p>
-- @param _TargetSchemaName [String] <p>The name of the schema to restore the table to.</p>
-- @param _Message [String] <p>A description of the status of the table restore request. Status values include <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>
-- @param _SourceDatabaseName [String] <p>The name of the source database that contains the table being restored.</p>
-- @param _ClusterIdentifier [String] <p>The identifier of the Amazon Redshift cluster that the table is being restored to.</p>
-- @param _SnapshotIdentifier [String] <p>The identifier of the snapshot that the table is being restored from.</p>
function M.TableRestoreStatus(_Status, _RequestTime, _TotalDataInMegaBytes, _SourceSchemaName, _TargetDatabaseName, _ProgressInMegaBytes, _SourceTableName, _TableRestoreRequestId, _NewTableName, _TargetSchemaName, _Message, _SourceDatabaseName, _ClusterIdentifier, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreStatus")
	local t = { 
		["Status"] = _Status,
		["RequestTime"] = _RequestTime,
		["TotalDataInMegaBytes"] = _TotalDataInMegaBytes,
		["SourceSchemaName"] = _SourceSchemaName,
		["TargetDatabaseName"] = _TargetDatabaseName,
		["ProgressInMegaBytes"] = _ProgressInMegaBytes,
		["SourceTableName"] = _SourceTableName,
		["TableRestoreRequestId"] = _TableRestoreRequestId,
		["NewTableName"] = _NewTableName,
		["TargetSchemaName"] = _TargetSchemaName,
		["Message"] = _Message,
		["SourceDatabaseName"] = _SourceDatabaseName,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertTableRestoreStatus(t)
	return t
end

keys.SnapshotCopyAlreadyEnabledFault = { nil }

function asserts.AssertSnapshotCopyAlreadyEnabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotCopyAlreadyEnabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotCopyAlreadyEnabledFault[k], "SnapshotCopyAlreadyEnabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotCopyAlreadyEnabledFault
-- <p>The cluster already has cross-region snapshot copy enabled.</p>
function M.SnapshotCopyAlreadyEnabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotCopyAlreadyEnabledFault")
	local t = { 
	}
	asserts.AssertSnapshotCopyAlreadyEnabledFault(t)
	return t
end

keys.DeleteClusterMessage = { ["FinalClusterSnapshotIdentifier"] = true, ["ClusterIdentifier"] = true, ["SkipFinalClusterSnapshot"] = true, nil }

function asserts.AssertDeleteClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["FinalClusterSnapshotIdentifier"] then asserts.AssertString(struct["FinalClusterSnapshotIdentifier"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["SkipFinalClusterSnapshot"] then asserts.AssertBoolean(struct["SkipFinalClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterMessage[k], "DeleteClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterMessage
-- <p/>
-- @param _FinalClusterSnapshotIdentifier [String] <p>The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _ClusterIdentifier [String] <p>The identifier of the cluster to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must contain lowercase characters.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _SkipFinalClusterSnapshot [Boolean] <p>Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If <code>false</code>, a final cluster snapshot is created before the cluster is deleted. </p> <note> <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be specified if <i>SkipFinalClusterSnapshot</i> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- Required parameter: ClusterIdentifier
function M.DeleteClusterMessage(_FinalClusterSnapshotIdentifier, _ClusterIdentifier, _SkipFinalClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterMessage")
	local t = { 
		["FinalClusterSnapshotIdentifier"] = _FinalClusterSnapshotIdentifier,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["SkipFinalClusterSnapshot"] = _SkipFinalClusterSnapshot,
	}
	asserts.AssertDeleteClusterMessage(t)
	return t
end

keys.DefaultClusterParameters = { ["Marker"] = true, ["ParameterGroupFamily"] = true, ["Parameters"] = true, nil }

function asserts.AssertDefaultClusterParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultClusterParameters to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ParameterGroupFamily"] then asserts.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultClusterParameters[k], "DefaultClusterParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultClusterParameters
-- <p>Describes the default cluster parameters for a parameter group family.</p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ParameterGroupFamily [String] <p>The name of the cluster parameter group family to which the engine default parameters apply.</p>
-- @param _Parameters [ParametersList] <p>The list of cluster default parameters.</p>
function M.DefaultClusterParameters(_Marker, _ParameterGroupFamily, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultClusterParameters")
	local t = { 
		["Marker"] = _Marker,
		["ParameterGroupFamily"] = _ParameterGroupFamily,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDefaultClusterParameters(t)
	return t
end

keys.ClusterParameterGroupNameMessage = { ["ParameterGroupStatus"] = true, ["ParameterGroupName"] = true, nil }

function asserts.AssertClusterParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupNameMessage to be of type 'table'")
	if struct["ParameterGroupStatus"] then asserts.AssertString(struct["ParameterGroupStatus"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupNameMessage[k], "ClusterParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupNameMessage
-- <p/>
-- @param _ParameterGroupStatus [String] <p>The status of the parameter group. For example, if you made a change to a parameter group name-value pair, then the change could be pending a reboot of an associated cluster.</p>
-- @param _ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
function M.ClusterParameterGroupNameMessage(_ParameterGroupStatus, _ParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupNameMessage")
	local t = { 
		["ParameterGroupStatus"] = _ParameterGroupStatus,
		["ParameterGroupName"] = _ParameterGroupName,
	}
	asserts.AssertClusterParameterGroupNameMessage(t)
	return t
end

keys.InvalidClusterSecurityGroupStateFault = { nil }

function asserts.AssertInvalidClusterSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterSecurityGroupStateFault[k], "InvalidClusterSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSecurityGroupStateFault
-- <p>The state of the cluster security group is not <code>available</code>. </p>
function M.InvalidClusterSecurityGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSecurityGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterSecurityGroupStateFault(t)
	return t
end

keys.CreateTagsMessage = { ["ResourceName"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateTagsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsMessage[k], "CreateTagsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsMessage
-- <p>Contains the output from the <code>CreateTags</code> action. </p>
-- @param _ResourceName [String] <p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- @param _Tags [TagList] <p>One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter <code>Key</code> and the corresponding value is passed in with the parameter <code>Value</code>. The <code>Key</code> and <code>Value</code> parameters are separated by a comma (,). Separate multiple tags with a space. For example, <code>--tags "Key"="owner","Value"="admin" "Key"="environment","Value"="test" "Key"="version","Value"="1.0"</code>. </p>
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.CreateTagsMessage(_ResourceName, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsMessage")
	local t = { 
		["ResourceName"] = _ResourceName,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateTagsMessage(t)
	return t
end

keys.InsufficientS3BucketPolicyFault = { nil }

function asserts.AssertInsufficientS3BucketPolicyFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientS3BucketPolicyFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientS3BucketPolicyFault[k], "InsufficientS3BucketPolicyFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientS3BucketPolicyFault
-- <p>The cluster does not have read bucket or put object permissions on the S3 bucket specified when enabling logging.</p>
function M.InsufficientS3BucketPolicyFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientS3BucketPolicyFault")
	local t = { 
	}
	asserts.AssertInsufficientS3BucketPolicyFault(t)
	return t
end

keys.RotateEncryptionKeyResult = { ["Cluster"] = true, nil }

function asserts.AssertRotateEncryptionKeyResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateEncryptionKeyResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateEncryptionKeyResult[k], "RotateEncryptionKeyResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateEncryptionKeyResult
--  
-- @param _Cluster [Cluster] 
function M.RotateEncryptionKeyResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RotateEncryptionKeyResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertRotateEncryptionKeyResult(t)
	return t
end

keys.DeleteClusterSubnetGroupMessage = { ["ClusterSubnetGroupName"] = true, nil }

function asserts.AssertDeleteClusterSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterSubnetGroupMessage to be of type 'table'")
	assert(struct["ClusterSubnetGroupName"], "Expected key ClusterSubnetGroupName to exist in table")
	if struct["ClusterSubnetGroupName"] then asserts.AssertString(struct["ClusterSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterSubnetGroupMessage[k], "DeleteClusterSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterSubnetGroupMessage
-- <p/>
-- @param _ClusterSubnetGroupName [String] <p>The name of the cluster subnet group name to be deleted.</p>
-- Required parameter: ClusterSubnetGroupName
function M.DeleteClusterSubnetGroupMessage(_ClusterSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteClusterSubnetGroupMessage")
	local t = { 
		["ClusterSubnetGroupName"] = _ClusterSubnetGroupName,
	}
	asserts.AssertDeleteClusterSubnetGroupMessage(t)
	return t
end

keys.DescribeClusterSecurityGroupsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["ClusterSecurityGroupName"] = true, nil }

function asserts.AssertDescribeClusterSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["ClusterSecurityGroupName"] then asserts.AssertString(struct["ClusterSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterSecurityGroupsMessage[k], "DescribeClusterSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterSecurityGroupsMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSecurityGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them.</p>
-- @param _ClusterSecurityGroupName [String] <p>The name of a cluster security group for which you are requesting details. You can specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p> <p> Example: <code>securitygroup1</code> </p>
function M.DescribeClusterSecurityGroupsMessage(_Marker, _TagValues, _MaxRecords, _TagKeys, _ClusterSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClusterSecurityGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["TagKeys"] = _TagKeys,
		["ClusterSecurityGroupName"] = _ClusterSecurityGroupName,
	}
	asserts.AssertDescribeClusterSecurityGroupsMessage(t)
	return t
end

keys.CopyToRegionDisabledFault = { nil }

function asserts.AssertCopyToRegionDisabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyToRegionDisabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CopyToRegionDisabledFault[k], "CopyToRegionDisabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyToRegionDisabledFault
-- <p>Cross-region snapshot copy was temporarily disabled. Try your request again.</p>
function M.CopyToRegionDisabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyToRegionDisabledFault")
	local t = { 
	}
	asserts.AssertCopyToRegionDisabledFault(t)
	return t
end

keys.InvalidHsmConfigurationStateFault = { nil }

function asserts.AssertInvalidHsmConfigurationStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHsmConfigurationStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidHsmConfigurationStateFault[k], "InvalidHsmConfigurationStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHsmConfigurationStateFault
-- <p>The specified HSM configuration is not in the <code>available</code> state, or it is still in use by one or more Amazon Redshift clusters.</p>
function M.InvalidHsmConfigurationStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHsmConfigurationStateFault")
	local t = { 
	}
	asserts.AssertInvalidHsmConfigurationStateFault(t)
	return t
end

keys.CreateClusterSnapshotMessage = { ["ClusterIdentifier"] = true, ["Tags"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertCreateClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSnapshotMessage to be of type 'table'")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSnapshotMessage[k], "CreateClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSnapshotMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The cluster identifier for which you want a snapshot.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _SnapshotIdentifier [String] <p>A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- Required parameter: SnapshotIdentifier
-- Required parameter: ClusterIdentifier
function M.CreateClusterSnapshotMessage(_ClusterIdentifier, _Tags, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSnapshotMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
		["Tags"] = _Tags,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertCreateClusterSnapshotMessage(t)
	return t
end

keys.SnapshotMessage = { ["Marker"] = true, ["Snapshots"] = true, nil }

function asserts.AssertSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Snapshots"] then asserts.AssertSnapshotList(struct["Snapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnapshotMessage[k], "SnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotMessage
-- <p>Contains the output from the <a>DescribeClusterSnapshots</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _Snapshots [SnapshotList] <p>A list of <a>Snapshot</a> instances. </p>
function M.SnapshotMessage(_Marker, _Snapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotMessage")
	local t = { 
		["Marker"] = _Marker,
		["Snapshots"] = _Snapshots,
	}
	asserts.AssertSnapshotMessage(t)
	return t
end

keys.AuthorizationAlreadyExistsFault = { nil }

function asserts.AssertAuthorizationAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationAlreadyExistsFault[k], "AuthorizationAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationAlreadyExistsFault
-- <p>The specified CIDR block or EC2 security group is already authorized for the specified cluster security group.</p>
function M.AuthorizationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertAuthorizationAlreadyExistsFault(t)
	return t
end

keys.InvalidClusterParameterGroupStateFault = { nil }

function asserts.AssertInvalidClusterParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterParameterGroupStateFault[k], "InvalidClusterParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterParameterGroupStateFault
-- <p>The cluster parameter group action can not be completed because another task is in progress that involves the parameter group. Wait a few moments and try the operation again.</p>
function M.InvalidClusterParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterParameterGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterParameterGroupStateFault(t)
	return t
end

keys.CreateSnapshotCopyGrantMessage = { ["Tags"] = true, ["SnapshotCopyGrantName"] = true, ["KmsKeyId"] = true, nil }

function asserts.AssertCreateSnapshotCopyGrantMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSnapshotCopyGrantMessage to be of type 'table'")
	assert(struct["SnapshotCopyGrantName"], "Expected key SnapshotCopyGrantName to exist in table")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSnapshotCopyGrantMessage[k], "CreateSnapshotCopyGrantMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSnapshotCopyGrantMessage
-- <p>The result of the <code>CreateSnapshotCopyGrant</code> action.</p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant. This name must be unique in the region for the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>
-- @param _KmsKeyId [String] <p>The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used.</p>
-- Required parameter: SnapshotCopyGrantName
function M.CreateSnapshotCopyGrantMessage(_Tags, _SnapshotCopyGrantName, _KmsKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSnapshotCopyGrantMessage")
	local t = { 
		["Tags"] = _Tags,
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
		["KmsKeyId"] = _KmsKeyId,
	}
	asserts.AssertCreateSnapshotCopyGrantMessage(t)
	return t
end

keys.ElasticIpStatus = { ["Status"] = true, ["ElasticIp"] = true, nil }

function asserts.AssertElasticIpStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticIpStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ElasticIp"] then asserts.AssertString(struct["ElasticIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticIpStatus[k], "ElasticIpStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticIpStatus
-- <p>Describes the status of the elastic IP (EIP) address.</p>
-- @param _Status [String] <p>The status of the elastic IP (EIP) address.</p>
-- @param _ElasticIp [String] <p>The elastic IP (EIP) address for the cluster.</p>
function M.ElasticIpStatus(_Status, _ElasticIp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticIpStatus")
	local t = { 
		["Status"] = _Status,
		["ElasticIp"] = _ElasticIp,
	}
	asserts.AssertElasticIpStatus(t)
	return t
end

keys.ClusterVersionsMessage = { ["Marker"] = true, ["ClusterVersions"] = true, nil }

function asserts.AssertClusterVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterVersionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterVersions"] then asserts.AssertClusterVersionList(struct["ClusterVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterVersionsMessage[k], "ClusterVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterVersionsMessage
-- <p>Contains the output from the <a>DescribeClusterVersions</a> action. </p>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ClusterVersions [ClusterVersionList] <p>A list of <code>Version</code> elements. </p>
function M.ClusterVersionsMessage(_Marker, _ClusterVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterVersionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["ClusterVersions"] = _ClusterVersions,
	}
	asserts.AssertClusterVersionsMessage(t)
	return t
end

keys.ReservedNodeAlreadyExistsFault = { nil }

function asserts.AssertReservedNodeAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeAlreadyExistsFault[k], "ReservedNodeAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeAlreadyExistsFault
-- <p>User already has a reservation with the given identifier.</p>
function M.ReservedNodeAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertReservedNodeAlreadyExistsFault(t)
	return t
end

keys.ClusterSecurityGroupAlreadyExistsFault = { nil }

function asserts.AssertClusterSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSecurityGroupAlreadyExistsFault[k], "ClusterSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSecurityGroupAlreadyExistsFault
-- <p>A cluster security group with the same name already exists.</p>
function M.ClusterSecurityGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSecurityGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterSecurityGroupAlreadyExistsFault(t)
	return t
end

keys.ClusterParameterGroupNotFoundFault = { nil }

function asserts.AssertClusterParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupNotFoundFault[k], "ClusterParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupNotFoundFault
-- <p>The parameter group name does not refer to an existing parameter group.</p>
function M.ClusterParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterParameterGroupNotFoundFault(t)
	return t
end

keys.RebootClusterResult = { ["Cluster"] = true, nil }

function asserts.AssertRebootClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootClusterResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootClusterResult[k], "RebootClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootClusterResult
--  
-- @param _Cluster [Cluster] 
function M.RebootClusterResult(_Cluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootClusterResult")
	local t = { 
		["Cluster"] = _Cluster,
	}
	asserts.AssertRebootClusterResult(t)
	return t
end

keys.ClusterQuotaExceededFault = { nil }

function asserts.AssertClusterQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterQuotaExceededFault[k], "ClusterQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterQuotaExceededFault
-- <p>The request would exceed the allowed number of cluster instances for this account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ClusterQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterQuotaExceededFault(t)
	return t
end

keys.CreateClusterParameterGroupMessage = { ["ParameterGroupFamily"] = true, ["Tags"] = true, ["ParameterGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertCreateClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterParameterGroupMessage to be of type 'table'")
	assert(struct["ParameterGroupName"], "Expected key ParameterGroupName to exist in table")
	assert(struct["ParameterGroupFamily"], "Expected key ParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["ParameterGroupFamily"] then asserts.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterParameterGroupMessage[k], "CreateClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterParameterGroupMessage
-- <p/>
-- @param _ParameterGroupFamily [String] <p>The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.</p> <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is "redshift-1.0". </p>
-- @param _Tags [TagList] <p>A list of tag instances.</p>
-- @param _ParameterGroupName [String] <p>The name of the cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique withing your AWS account.</p> </li> </ul> <note> <p>This value is stored as a lower-case string.</p> </note>
-- @param _Description [String] <p>A description of the parameter group.</p>
-- Required parameter: ParameterGroupName
-- Required parameter: ParameterGroupFamily
-- Required parameter: Description
function M.CreateClusterParameterGroupMessage(_ParameterGroupFamily, _Tags, _ParameterGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterParameterGroupMessage")
	local t = { 
		["ParameterGroupFamily"] = _ParameterGroupFamily,
		["Tags"] = _Tags,
		["ParameterGroupName"] = _ParameterGroupName,
		["Description"] = _Description,
	}
	asserts.AssertCreateClusterParameterGroupMessage(t)
	return t
end

keys.SNSTopicArnNotFoundFault = { nil }

function asserts.AssertSNSTopicArnNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSTopicArnNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SNSTopicArnNotFoundFault[k], "SNSTopicArnNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSTopicArnNotFoundFault
-- <p>An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not exist.</p>
function M.SNSTopicArnNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSTopicArnNotFoundFault")
	local t = { 
	}
	asserts.AssertSNSTopicArnNotFoundFault(t)
	return t
end

keys.ReservedNodesMessage = { ["Marker"] = true, ["ReservedNodes"] = true, nil }

function asserts.AssertReservedNodesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedNodes"] then asserts.AssertReservedNodeList(struct["ReservedNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodesMessage[k], "ReservedNodesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodesMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _ReservedNodes [ReservedNodeList] <p>The list of <code>ReservedNode</code> objects.</p>
function M.ReservedNodesMessage(_Marker, _ReservedNodes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodesMessage")
	local t = { 
		["Marker"] = _Marker,
		["ReservedNodes"] = _ReservedNodes,
	}
	asserts.AssertReservedNodesMessage(t)
	return t
end

keys.TableRestoreNotFoundFault = { nil }

function asserts.AssertTableRestoreNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TableRestoreNotFoundFault[k], "TableRestoreNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreNotFoundFault
-- <p>The specified <code>TableRestoreRequestId</code> value was not found.</p>
function M.TableRestoreNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreNotFoundFault")
	local t = { 
	}
	asserts.AssertTableRestoreNotFoundFault(t)
	return t
end

keys.RotateEncryptionKeyMessage = { ["ClusterIdentifier"] = true, nil }

function asserts.AssertRotateEncryptionKeyMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateEncryptionKeyMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateEncryptionKeyMessage[k], "RotateEncryptionKeyMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateEncryptionKeyMessage
-- <p/>
-- @param _ClusterIdentifier [String] <p>The unique identifier of the cluster that you want to rotate the encryption keys for.</p> <p>Constraints: Must be the name of valid cluster that has encryption enabled.</p>
-- Required parameter: ClusterIdentifier
function M.RotateEncryptionKeyMessage(_ClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RotateEncryptionKeyMessage")
	local t = { 
		["ClusterIdentifier"] = _ClusterIdentifier,
	}
	asserts.AssertRotateEncryptionKeyMessage(t)
	return t
end

keys.DescribeSnapshotCopyGrantsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["SnapshotCopyGrantName"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDescribeSnapshotCopyGrantsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSnapshotCopyGrantsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["SnapshotCopyGrantName"] then asserts.AssertString(struct["SnapshotCopyGrantName"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSnapshotCopyGrantsMessage[k], "DescribeSnapshotCopyGrantsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSnapshotCopyGrantsMessage
-- <p>The result of the <code>DescribeSnapshotCopyGrants</code> action.</p>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @param _SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>
function M.DescribeSnapshotCopyGrantsMessage(_Marker, _TagValues, _MaxRecords, _SnapshotCopyGrantName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSnapshotCopyGrantsMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["MaxRecords"] = _MaxRecords,
		["SnapshotCopyGrantName"] = _SnapshotCopyGrantName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertDescribeSnapshotCopyGrantsMessage(t)
	return t
end

keys.ReservedNodeOffering = { ["OfferingType"] = true, ["FixedPrice"] = true, ["NodeType"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["Duration"] = true, ["ReservedNodeOfferingId"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedNodeOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOffering to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["ReservedNodeOfferingId"] then asserts.AssertString(struct["ReservedNodeOfferingId"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeOffering[k], "ReservedNodeOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOffering
-- <p>Describes a reserved node offering.</p>
-- @param _OfferingType [String] <p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>
-- @param _FixedPrice [Double] <p>The upfront fixed charge you will pay to purchase the specific reserved node offering.</p>
-- @param _NodeType [String] <p>The node type offered by the reserved node offering.</p>
-- @param _UsagePrice [Double] <p>The rate you are charged for each hour the cluster that is using the offering is running.</p>
-- @param _RecurringCharges [RecurringChargeList] <p>The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.</p>
-- @param _Duration [Integer] <p>The duration, in seconds, for which the offering will reserve the node.</p>
-- @param _ReservedNodeOfferingId [String] <p>The offering identifier.</p>
-- @param _CurrencyCode [String] <p>The currency code for the compute nodes offering.</p>
function M.ReservedNodeOffering(_OfferingType, _FixedPrice, _NodeType, _UsagePrice, _RecurringCharges, _Duration, _ReservedNodeOfferingId, _CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedNodeOffering")
	local t = { 
		["OfferingType"] = _OfferingType,
		["FixedPrice"] = _FixedPrice,
		["NodeType"] = _NodeType,
		["UsagePrice"] = _UsagePrice,
		["RecurringCharges"] = _RecurringCharges,
		["Duration"] = _Duration,
		["ReservedNodeOfferingId"] = _ReservedNodeOfferingId,
		["CurrencyCode"] = _CurrencyCode,
	}
	asserts.AssertReservedNodeOffering(t)
	return t
end

keys.ClusterParameterGroup = { ["ParameterGroupFamily"] = true, ["Tags"] = true, ["ParameterGroupName"] = true, ["Description"] = true, nil }

function asserts.AssertClusterParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroup to be of type 'table'")
	if struct["ParameterGroupFamily"] then asserts.AssertString(struct["ParameterGroupFamily"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ParameterGroupName"] then asserts.AssertString(struct["ParameterGroupName"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroup[k], "ClusterParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroup
-- <p>Describes a parameter group.</p>
-- @param _ParameterGroupFamily [String] <p>The name of the cluster parameter group family that this cluster parameter group is compatible with.</p>
-- @param _Tags [TagList] <p>The list of tags for the cluster parameter group.</p>
-- @param _ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
-- @param _Description [String] <p>The description of the parameter group.</p>
function M.ClusterParameterGroup(_ParameterGroupFamily, _Tags, _ParameterGroupName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroup")
	local t = { 
		["ParameterGroupFamily"] = _ParameterGroupFamily,
		["Tags"] = _Tags,
		["ParameterGroupName"] = _ParameterGroupName,
		["Description"] = _Description,
	}
	asserts.AssertClusterParameterGroup(t)
	return t
end

keys.CreateClusterParameterGroupResult = { ["ClusterParameterGroup"] = true, nil }

function asserts.AssertCreateClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterParameterGroupResult to be of type 'table'")
	if struct["ClusterParameterGroup"] then asserts.AssertClusterParameterGroup(struct["ClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterParameterGroupResult[k], "CreateClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterParameterGroupResult
--  
-- @param _ClusterParameterGroup [ClusterParameterGroup] 
function M.CreateClusterParameterGroupResult(_ClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterParameterGroupResult")
	local t = { 
		["ClusterParameterGroup"] = _ClusterParameterGroup,
	}
	asserts.AssertCreateClusterParameterGroupResult(t)
	return t
end

keys.CreateClusterSubnetGroupResult = { ["ClusterSubnetGroup"] = true, nil }

function asserts.AssertCreateClusterSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterSubnetGroupResult to be of type 'table'")
	if struct["ClusterSubnetGroup"] then asserts.AssertClusterSubnetGroup(struct["ClusterSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterSubnetGroupResult[k], "CreateClusterSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterSubnetGroupResult
--  
-- @param _ClusterSubnetGroup [ClusterSubnetGroup] 
function M.CreateClusterSubnetGroupResult(_ClusterSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateClusterSubnetGroupResult")
	local t = { 
		["ClusterSubnetGroup"] = _ClusterSubnetGroup,
	}
	asserts.AssertCreateClusterSubnetGroupResult(t)
	return t
end

keys.TableRestoreStatusMessage = { ["Marker"] = true, ["TableRestoreStatusDetails"] = true, nil }

function asserts.AssertTableRestoreStatusMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableRestoreStatusMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TableRestoreStatusDetails"] then asserts.AssertTableRestoreStatusList(struct["TableRestoreStatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableRestoreStatusMessage[k], "TableRestoreStatusMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableRestoreStatusMessage
-- <p/>
-- @param _Marker [String] <p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>
-- @param _TableRestoreStatusDetails [TableRestoreStatusList] <p>A list of status details for one or more table restore requests.</p>
function M.TableRestoreStatusMessage(_Marker, _TableRestoreStatusDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TableRestoreStatusMessage")
	local t = { 
		["Marker"] = _Marker,
		["TableRestoreStatusDetails"] = _TableRestoreStatusDetails,
	}
	asserts.AssertTableRestoreStatusMessage(t)
	return t
end

keys.InvalidClusterSubnetGroupStateFault = { nil }

function asserts.AssertInvalidClusterSubnetGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidClusterSubnetGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidClusterSubnetGroupStateFault[k], "InvalidClusterSubnetGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidClusterSubnetGroupStateFault
-- <p>The cluster subnet group cannot be deleted because it is in use.</p>
function M.InvalidClusterSubnetGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidClusterSubnetGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidClusterSubnetGroupStateFault(t)
	return t
end

keys.DescribeClustersMessage = { ["Marker"] = true, ["TagValues"] = true, ["ClusterIdentifier"] = true, ["TagKeys"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersMessage[k], "DescribeClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersMessage
-- <p/>
-- @param _Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- @param _TagValues [TagValueList] <p>A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.</p>
-- @param _ClusterIdentifier [String] <p>The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive.</p> <p>The default is that all clusters defined for an account are returned.</p>
-- @param _TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
function M.DescribeClustersMessage(_Marker, _TagValues, _ClusterIdentifier, _TagKeys, _MaxRecords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeClustersMessage")
	local t = { 
		["Marker"] = _Marker,
		["TagValues"] = _TagValues,
		["ClusterIdentifier"] = _ClusterIdentifier,
		["TagKeys"] = _TagKeys,
		["MaxRecords"] = _MaxRecords,
	}
	asserts.AssertDescribeClustersMessage(t)
	return t
end

keys.UnknownSnapshotCopyRegionFault = { nil }

function asserts.AssertUnknownSnapshotCopyRegionFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnknownSnapshotCopyRegionFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnknownSnapshotCopyRegionFault[k], "UnknownSnapshotCopyRegionFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnknownSnapshotCopyRegionFault
-- <p>The specified region is incorrect or does not exist.</p>
function M.UnknownSnapshotCopyRegionFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnknownSnapshotCopyRegionFault")
	local t = { 
	}
	asserts.AssertUnknownSnapshotCopyRegionFault(t)
	return t
end

keys.OrderableClusterOption = { ["NodeType"] = true, ["AvailabilityZones"] = true, ["ClusterVersion"] = true, ["ClusterType"] = true, nil }

function asserts.AssertOrderableClusterOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableClusterOption to be of type 'table'")
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableClusterOption[k], "OrderableClusterOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableClusterOption
-- <p>Describes an orderable cluster option.</p>
-- @param _NodeType [String] <p>The node type for the orderable cluster.</p>
-- @param _AvailabilityZones [AvailabilityZoneList] <p>A list of availability zones for the orderable cluster.</p>
-- @param _ClusterVersion [String] <p>The version of the orderable cluster.</p>
-- @param _ClusterType [String] <p>The cluster type, for example <code>multi-node</code>. </p>
function M.OrderableClusterOption(_NodeType, _AvailabilityZones, _ClusterVersion, _ClusterType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableClusterOption")
	local t = { 
		["NodeType"] = _NodeType,
		["AvailabilityZones"] = _AvailabilityZones,
		["ClusterVersion"] = _ClusterVersion,
		["ClusterType"] = _ClusterType,
	}
	asserts.AssertOrderableClusterOption(t)
	return t
end

keys.ClusterSubnetGroupNotFoundFault = { nil }

function asserts.AssertClusterSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterSubnetGroupNotFoundFault[k], "ClusterSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterSubnetGroupNotFoundFault
-- <p>The cluster subnet group name does not refer to an existing cluster subnet group.</p>
function M.ClusterSubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterSubnetGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertClusterSubnetGroupNotFoundFault(t)
	return t
end

keys.HsmConfigurationMessage = { ["Marker"] = true, ["HsmConfigurations"] = true, nil }

function asserts.AssertHsmConfigurationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HsmConfigurationMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["HsmConfigurations"] then asserts.AssertHsmConfigurationList(struct["HsmConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.HsmConfigurationMessage[k], "HsmConfigurationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HsmConfigurationMessage
-- <p/>
-- @param _Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- @param _HsmConfigurations [HsmConfigurationList] <p>A list of <code>HsmConfiguration</code> objects.</p>
function M.HsmConfigurationMessage(_Marker, _HsmConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HsmConfigurationMessage")
	local t = { 
		["Marker"] = _Marker,
		["HsmConfigurations"] = _HsmConfigurations,
	}
	asserts.AssertHsmConfigurationMessage(t)
	return t
end

keys.ClusterParameterGroupQuotaExceededFault = { nil }

function asserts.AssertClusterParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ClusterParameterGroupQuotaExceededFault[k], "ClusterParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterParameterGroupQuotaExceededFault
-- <p>The request would result in the user exceeding the allowed number of cluster parameter groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
function M.ClusterParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterParameterGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertClusterParameterGroupQuotaExceededFault(t)
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
-- <p>The account already has a cluster with the given identifier.</p>
function M.ClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ClusterAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertClusterAlreadyExistsFault(t)
	return t
end

keys.EventSubscription = { ["Status"] = true, ["Tags"] = true, ["SubscriptionCreationTime"] = true, ["SourceType"] = true, ["EventCategoriesList"] = true, ["SourceIdsList"] = true, ["CustSubscriptionId"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["CustomerAwsId"] = true, ["Severity"] = true, nil }

function asserts.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SubscriptionCreationTime"] then asserts.AssertTStamp(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then asserts.AssertEventCategoriesList(struct["EventCategoriesList"]) end
	if struct["SourceIdsList"] then asserts.AssertSourceIdsList(struct["SourceIdsList"]) end
	if struct["CustSubscriptionId"] then asserts.AssertString(struct["CustSubscriptionId"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["CustomerAwsId"] then asserts.AssertString(struct["CustomerAwsId"]) end
	if struct["Severity"] then asserts.AssertString(struct["Severity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscription[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>Describes event subscriptions.</p>
-- @param _Status [String] <p>The status of the Amazon Redshift event notification subscription.</p> <p>Constraints:</p> <ul> <li> <p>Can be one of the following: active | no-permission | topic-not-exist</p> </li> <li> <p>The status "no-permission" indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p> </li> </ul>
-- @param _Tags [TagList] <p>The list of tags for the event subscription.</p>
-- @param _SubscriptionCreationTime [TStamp] <p>The date and time the Amazon Redshift event notification subscription was created.</p>
-- @param _SourceType [String] <p>The source type of the events returned the Amazon Redshift event notification, such as cluster, or cluster-snapshot.</p>
-- @param _EventCategoriesList [EventCategoriesList] <p>The list of Amazon Redshift event categories specified in the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- @param _SourceIdsList [SourceIdsList] <p>A list of the sources that publish events to the Amazon Redshift event notification subscription.</p>
-- @param _CustSubscriptionId [String] <p>The name of the Amazon Redshift event notification subscription.</p>
-- @param _Enabled [Boolean] <p>A Boolean value indicating whether the subscription is enabled. <code>true</code> indicates the subscription is enabled.</p>
-- @param _SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.</p>
-- @param _CustomerAwsId [String] <p>The AWS customer account associated with the Amazon Redshift event notification subscription.</p>
-- @param _Severity [String] <p>The event severity specified in the Amazon Redshift event notification subscription.</p> <p>Values: ERROR, INFO</p>
function M.EventSubscription(_Status, _Tags, _SubscriptionCreationTime, _SourceType, _EventCategoriesList, _SourceIdsList, _CustSubscriptionId, _Enabled, _SnsTopicArn, _CustomerAwsId, _Severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = _Status,
		["Tags"] = _Tags,
		["SubscriptionCreationTime"] = _SubscriptionCreationTime,
		["SourceType"] = _SourceType,
		["EventCategoriesList"] = _EventCategoriesList,
		["SourceIdsList"] = _SourceIdsList,
		["CustSubscriptionId"] = _CustSubscriptionId,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["CustomerAwsId"] = _CustomerAwsId,
		["Severity"] = _Severity,
	}
	asserts.AssertEventSubscription(t)
	return t
end

keys.TaggedResource = { ["ResourceType"] = true, ["ResourceName"] = true, ["Tag"] = true, nil }

function asserts.AssertTaggedResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaggedResource to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertString(struct["ResourceType"]) end
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Tag"] then asserts.AssertTag(struct["Tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaggedResource[k], "TaggedResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaggedResource
-- <p>A tag and its associated resource.</p>
-- @param _ResourceType [String] <p>The type of resource with which the tag is associated. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/constructing-redshift-arn.html">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the Amazon Redshift Cluster Management Guide. </p>
-- @param _ResourceName [String] <p>The Amazon Resource Name (ARN) with which the tag is associated. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>.</p>
-- @param _Tag [Tag] <p>The tag for the resource.</p>
function M.TaggedResource(_ResourceType, _ResourceName, _Tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaggedResource")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceName"] = _ResourceName,
		["Tag"] = _Tag,
	}
	asserts.AssertTaggedResource(t)
	return t
end

keys.BucketNotFoundFault = { nil }

function asserts.AssertBucketNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BucketNotFoundFault[k], "BucketNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketNotFoundFault
-- <p>Could not find the specified S3 bucket.</p>
function M.BucketNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketNotFoundFault")
	local t = { 
	}
	asserts.AssertBucketNotFoundFault(t)
	return t
end

keys.SubnetAlreadyInUse = { nil }

function asserts.AssertSubnetAlreadyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubnetAlreadyInUse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubnetAlreadyInUse[k], "SubnetAlreadyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubnetAlreadyInUse
-- <p>A specified subnet is already in use by another cluster.</p>
function M.SubnetAlreadyInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
	}
	asserts.AssertSubnetAlreadyInUse(t)
	return t
end

function asserts.AssertTableRestoreStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected TableRestoreStatusType to be of type 'string'")
end

--  
function M.TableRestoreStatusType(str)
	asserts.AssertTableRestoreStatusType(str)
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

function asserts.AssertParameterApplyType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterApplyType to be of type 'string'")
end

--  
function M.ParameterApplyType(str)
	asserts.AssertParameterApplyType(str)
	return str
end

function asserts.AssertSensitiveString(str)
	assert(str)
	assert(type(str) == "string", "Expected SensitiveString to be of type 'string'")
end

--  
function M.SensitiveString(str)
	asserts.AssertSensitiveString(str)
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

function asserts.AssertDoubleOptional(double)
	assert(double)
	assert(type(double) == "number", "Expected DoubleOptional to be of type 'number'")
end

function M.DoubleOptional(double)
	asserts.AssertDoubleOptional(double)
	return double
end

function asserts.AssertLongOptional(long)
	assert(long)
	assert(type(long) == "number", "Expected LongOptional to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LongOptional(long)
	asserts.AssertLongOptional(long)
	return long
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

function asserts.AssertVpcSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVpcSecurityGroupMembership(v)
	end
end

--  
-- List of VpcSecurityGroupMembership objects
function M.VpcSecurityGroupMembershipList(list)
	asserts.AssertVpcSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertSnapshotCopyGrantList(list)
	assert(list)
	assert(type(list) == "table", "Expected SnapshotCopyGrantList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSnapshotCopyGrant(v)
	end
end

--  
-- List of SnapshotCopyGrant objects
function M.SnapshotCopyGrantList(list)
	asserts.AssertSnapshotCopyGrantList(list)
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

function asserts.AssertClusterNodesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterNodesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterNode(v)
	end
end

--  
-- List of ClusterNode objects
function M.ClusterNodesList(list)
	asserts.AssertClusterNodesList(list)
	return list
end

function asserts.AssertEventInfoMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventInfoMapList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventInfoMap(v)
	end
end

--  
-- List of EventInfoMap objects
function M.EventInfoMapList(list)
	asserts.AssertEventInfoMapList(list)
	return list
end

function asserts.AssertTableRestoreStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableRestoreStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableRestoreStatus(v)
	end
end

--  
-- List of TableRestoreStatus objects
function M.TableRestoreStatusList(list)
	asserts.AssertTableRestoreStatusList(list)
	return list
end

function asserts.AssertImportTablesNotStarted(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesNotStarted to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesNotStarted(list)
	asserts.AssertImportTablesNotStarted(list)
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

function asserts.AssertImportTablesCompleted(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesCompleted to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesCompleted(list)
	asserts.AssertImportTablesCompleted(list)
	return list
end

function asserts.AssertClusterIamRoleList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterIamRoleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterIamRole(v)
	end
end

--  
-- List of ClusterIamRole objects
function M.ClusterIamRoleList(list)
	asserts.AssertClusterIamRoleList(list)
	return list
end

function asserts.AssertVpcSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected VpcSecurityGroupIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.VpcSecurityGroupIdList(list)
	asserts.AssertVpcSecurityGroupIdList(list)
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

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertEventCategoriesMapList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesMapList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventCategoriesMap(v)
	end
end

--  
-- List of EventCategoriesMap objects
function M.EventCategoriesMapList(list)
	asserts.AssertEventCategoriesMapList(list)
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

function asserts.AssertEventCategoriesList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventCategoriesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.EventCategoriesList(list)
	asserts.AssertEventCategoriesList(list)
	return list
end

function asserts.AssertDbGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DbGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DbGroupList(list)
	asserts.AssertDbGroupList(list)
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

function asserts.AssertClusterParameterStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterParameterStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterParameterStatus(v)
	end
end

--  
-- List of ClusterParameterStatus objects
function M.ClusterParameterStatusList(list)
	asserts.AssertClusterParameterStatusList(list)
	return list
end

function asserts.AssertSourceIdsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceIdsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.SourceIdsList(list)
	asserts.AssertSourceIdsList(list)
	return list
end

function asserts.AssertImportTablesInProgress(list)
	assert(list)
	assert(type(list) == "table", "Expected ImportTablesInProgress to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ImportTablesInProgress(list)
	asserts.AssertImportTablesInProgress(list)
	return list
end

function asserts.AssertOrderableClusterOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableClusterOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrderableClusterOption(v)
	end
end

--  
-- List of OrderableClusterOption objects
function M.OrderableClusterOptionsList(list)
	asserts.AssertOrderableClusterOptionsList(list)
	return list
end

function asserts.AssertTagValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.TagValueList(list)
	asserts.AssertTagValueList(list)
	return list
end

function asserts.AssertIPRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected IPRangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIPRange(v)
	end
end

--  
-- List of IPRange objects
function M.IPRangeList(list)
	asserts.AssertIPRangeList(list)
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

function asserts.AssertRestorableNodeTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RestorableNodeTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.RestorableNodeTypeList(list)
	asserts.AssertRestorableNodeTypeList(list)
	return list
end

function asserts.AssertClusterSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterSecurityGroupMembership(v)
	end
end

--  
-- List of ClusterSecurityGroupMembership objects
function M.ClusterSecurityGroupMembershipList(list)
	asserts.AssertClusterSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertClusterSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterSecurityGroup(v)
	end
end

--  
-- List of ClusterSecurityGroup objects
function M.ClusterSecurityGroups(list)
	asserts.AssertClusterSecurityGroups(list)
	return list
end

function asserts.AssertTaggedResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected TaggedResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTaggedResource(v)
	end
end

--  
-- List of TaggedResource objects
function M.TaggedResourceList(list)
	asserts.AssertTaggedResourceList(list)
	return list
end

function asserts.AssertClusterVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterVersion(v)
	end
end

--  
-- List of ClusterVersion objects
function M.ClusterVersionList(list)
	asserts.AssertClusterVersionList(list)
	return list
end

function asserts.AssertReservedNodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedNodeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedNode(v)
	end
end

--  
-- List of ReservedNode objects
function M.ReservedNodeList(list)
	asserts.AssertReservedNodeList(list)
	return list
end

function asserts.AssertClusterSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ClusterSecurityGroupNameList(list)
	asserts.AssertClusterSecurityGroupNameList(list)
	return list
end

function asserts.AssertReservedNodeOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedNodeOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedNodeOffering(v)
	end
end

--  
-- List of ReservedNodeOffering objects
function M.ReservedNodeOfferingList(list)
	asserts.AssertReservedNodeOfferingList(list)
	return list
end

function asserts.AssertEventSubscriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSubscriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventSubscription(v)
	end
end

--  
-- List of EventSubscription objects
function M.EventSubscriptionsList(list)
	asserts.AssertEventSubscriptionsList(list)
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

function asserts.AssertAccountsWithRestoreAccessList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountsWithRestoreAccessList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountWithRestoreAccess(v)
	end
end

--  
-- List of AccountWithRestoreAccess objects
function M.AccountsWithRestoreAccessList(list)
	asserts.AssertAccountsWithRestoreAccessList(list)
	return list
end

function asserts.AssertHsmConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHsmConfiguration(v)
	end
end

--  
-- List of HsmConfiguration objects
function M.HsmConfigurationList(list)
	asserts.AssertHsmConfigurationList(list)
	return list
end

function asserts.AssertHsmClientCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected HsmClientCertificateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHsmClientCertificate(v)
	end
end

--  
-- List of HsmClientCertificate objects
function M.HsmClientCertificateList(list)
	asserts.AssertHsmClientCertificateList(list)
	return list
end

function asserts.AssertClusterSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterSubnetGroup(v)
	end
end

--  
-- List of ClusterSubnetGroup objects
function M.ClusterSubnetGroups(list)
	asserts.AssertClusterSubnetGroups(list)
	return list
end

function asserts.AssertIamRoleArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected IamRoleArnList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.IamRoleArnList(list)
	asserts.AssertIamRoleArnList(list)
	return list
end

function asserts.AssertAvailabilityZoneList(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZoneList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAvailabilityZone(v)
	end
end

--  
-- List of AvailabilityZone objects
function M.AvailabilityZoneList(list)
	asserts.AssertAvailabilityZoneList(list)
	return list
end

function asserts.AssertParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterParameterGroup(v)
	end
end

--  
-- List of ClusterParameterGroup objects
function M.ParameterGroupList(list)
	asserts.AssertParameterGroupList(list)
	return list
end

function asserts.AssertClusterParameterGroupStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterParameterGroupStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterParameterGroupStatus(v)
	end
end

--  
-- List of ClusterParameterGroupStatus objects
function M.ClusterParameterGroupStatusList(list)
	asserts.AssertClusterParameterGroupStatusList(list)
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
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsMessage, cb)
	assert(DeleteTagsMessage, "You must provide a DeleteTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsMessage
-- @return response
-- @return error_message
function M.DeleteTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDefaultClusterParameters asynchronously, invoking a callback when done
-- @param DescribeDefaultClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDefaultClusterParametersAsync(DescribeDefaultClusterParametersMessage, cb)
	assert(DescribeDefaultClusterParametersMessage, "You must provide a DescribeDefaultClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDefaultClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDefaultClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDefaultClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDefaultClusterParametersMessage
-- @return response
-- @return error_message
function M.DescribeDefaultClusterParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDefaultClusterParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterParameterGroups asynchronously, invoking a callback when done
-- @param DescribeClusterParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterParameterGroupsAsync(DescribeClusterParameterGroupsMessage, cb)
	assert(DescribeClusterParameterGroupsMessage, "You must provide a DescribeClusterParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterParameterGroupsMessage
-- @return response
-- @return error_message
function M.DescribeClusterParameterGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterParameterGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreFromClusterSnapshot asynchronously, invoking a callback when done
-- @param RestoreFromClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreFromClusterSnapshotAsync(RestoreFromClusterSnapshotMessage, cb)
	assert(RestoreFromClusterSnapshotMessage, "You must provide a RestoreFromClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreFromClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreFromClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreFromClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreFromClusterSnapshotMessage
-- @return response
-- @return error_message
function M.RestoreFromClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreFromClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterAsync(CreateClusterMessage, cb)
	assert(CreateClusterMessage, "You must provide a CreateClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterMessage
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

--- Call CopyClusterSnapshot asynchronously, invoking a callback when done
-- @param CopyClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyClusterSnapshotAsync(CopyClusterSnapshotMessage, cb)
	assert(CopyClusterSnapshotMessage, "You must provide a CopyClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyClusterSnapshotMessage
-- @return response
-- @return error_message
function M.CopyClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterParameterGroup asynchronously, invoking a callback when done
-- @param CreateClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterParameterGroupAsync(CreateClusterParameterGroupMessage, cb)
	assert(CreateClusterParameterGroupMessage, "You must provide a CreateClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.CreateClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsMessage, cb)
	assert(DescribeEventsMessage, "You must provide a DescribeEventsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeEventsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventSubscriptions asynchronously, invoking a callback when done
-- @param DescribeEventSubscriptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, cb)
	assert(DescribeEventSubscriptionsMessage, "You must provide a DescribeEventSubscriptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventSubscriptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventSubscriptionsMessage
-- @return response
-- @return error_message
function M.DescribeEventSubscriptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventSubscriptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEventSubscription asynchronously, invoking a callback when done
-- @param CreateEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, cb)
	assert(CreateEventSubscriptionMessage, "You must provide a CreateEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateEventSubscriptionMessage
-- @return response
-- @return error_message
function M.CreateEventSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEventSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsmClientCertificates asynchronously, invoking a callback when done
-- @param DescribeHsmClientCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmClientCertificatesAsync(DescribeHsmClientCertificatesMessage, cb)
	assert(DescribeHsmClientCertificatesMessage, "You must provide a DescribeHsmClientCertificatesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeHsmClientCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHsmClientCertificatesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHsmClientCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHsmClientCertificatesMessage
-- @return response
-- @return error_message
function M.DescribeHsmClientCertificatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmClientCertificatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCluster asynchronously, invoking a callback when done
-- @param DeleteClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterAsync(DeleteClusterMessage, cb)
	assert(DeleteClusterMessage, "You must provide a DeleteClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterMessage
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

--- Call CreateSnapshotCopyGrant asynchronously, invoking a callback when done
-- @param CreateSnapshotCopyGrantMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSnapshotCopyGrantAsync(CreateSnapshotCopyGrantMessage, cb)
	assert(CreateSnapshotCopyGrantMessage, "You must provide a CreateSnapshotCopyGrantMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSnapshotCopyGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSnapshotCopyGrantMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSnapshotCopyGrant synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSnapshotCopyGrantMessage
-- @return response
-- @return error_message
function M.CreateSnapshotCopyGrantSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotCopyGrantAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventCategories asynchronously, invoking a callback when done
-- @param DescribeEventCategoriesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, cb)
	assert(DescribeEventCategoriesMessage, "You must provide a DescribeEventCategoriesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventCategories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventCategoriesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventCategories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventCategoriesMessage
-- @return response
-- @return error_message
function M.DescribeEventCategoriesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventCategoriesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifySnapshotCopyRetentionPeriod asynchronously, invoking a callback when done
-- @param ModifySnapshotCopyRetentionPeriodMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifySnapshotCopyRetentionPeriodAsync(ModifySnapshotCopyRetentionPeriodMessage, cb)
	assert(ModifySnapshotCopyRetentionPeriodMessage, "You must provide a ModifySnapshotCopyRetentionPeriodMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifySnapshotCopyRetentionPeriod",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifySnapshotCopyRetentionPeriodMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifySnapshotCopyRetentionPeriod synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifySnapshotCopyRetentionPeriodMessage
-- @return response
-- @return error_message
function M.ModifySnapshotCopyRetentionPeriodSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifySnapshotCopyRetentionPeriodAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClusterCredentials asynchronously, invoking a callback when done
-- @param GetClusterCredentialsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.GetClusterCredentialsAsync(GetClusterCredentialsMessage, cb)
	assert(GetClusterCredentialsMessage, "You must provide a GetClusterCredentialsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClusterCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetClusterCredentialsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetClusterCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetClusterCredentialsMessage
-- @return response
-- @return error_message
function M.GetClusterCredentialsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClusterCredentialsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshotCopyGrant asynchronously, invoking a callback when done
-- @param DeleteSnapshotCopyGrantMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSnapshotCopyGrantAsync(DeleteSnapshotCopyGrantMessage, cb)
	assert(DeleteSnapshotCopyGrantMessage, "You must provide a DeleteSnapshotCopyGrantMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSnapshotCopyGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSnapshotCopyGrantMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSnapshotCopyGrant synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSnapshotCopyGrantMessage
-- @return response
-- @return error_message
function M.DeleteSnapshotCopyGrantSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotCopyGrantAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedNodes asynchronously, invoking a callback when done
-- @param DescribeReservedNodesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedNodesAsync(DescribeReservedNodesMessage, cb)
	assert(DescribeReservedNodesMessage, "You must provide a DescribeReservedNodesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedNodesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedNodes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedNodesMessage
-- @return response
-- @return error_message
function M.DescribeReservedNodesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedNodesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeSnapshotAccess asynchronously, invoking a callback when done
-- @param AuthorizeSnapshotAccessMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeSnapshotAccessAsync(AuthorizeSnapshotAccessMessage, cb)
	assert(AuthorizeSnapshotAccessMessage, "You must provide a AuthorizeSnapshotAccessMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeSnapshotAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeSnapshotAccessMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeSnapshotAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeSnapshotAccessMessage
-- @return response
-- @return error_message
function M.AuthorizeSnapshotAccessSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeSnapshotAccessAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableLogging asynchronously, invoking a callback when done
-- @param EnableLoggingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.EnableLoggingAsync(EnableLoggingMessage, cb)
	assert(EnableLoggingMessage, "You must provide a EnableLoggingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableLoggingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableLoggingMessage
-- @return response
-- @return error_message
function M.EnableLoggingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableLoggingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableSnapshotCopy asynchronously, invoking a callback when done
-- @param DisableSnapshotCopyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DisableSnapshotCopyAsync(DisableSnapshotCopyMessage, cb)
	assert(DisableSnapshotCopyMessage, "You must provide a DisableSnapshotCopyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableSnapshotCopy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableSnapshotCopyMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableSnapshotCopy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableSnapshotCopyMessage
-- @return response
-- @return error_message
function M.DisableSnapshotCopySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableSnapshotCopyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsmClientCertificate asynchronously, invoking a callback when done
-- @param DeleteHsmClientCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmClientCertificateAsync(DeleteHsmClientCertificateMessage, cb)
	assert(DeleteHsmClientCertificateMessage, "You must provide a DeleteHsmClientCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHsmClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHsmClientCertificateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHsmClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHsmClientCertificateMessage
-- @return response
-- @return error_message
function M.DeleteHsmClientCertificateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmClientCertificateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootCluster asynchronously, invoking a callback when done
-- @param RebootClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootClusterAsync(RebootClusterMessage, cb)
	assert(RebootClusterMessage, "You must provide a RebootClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootClusterMessage
-- @return response
-- @return error_message
function M.RebootClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHsmConfiguration asynchronously, invoking a callback when done
-- @param CreateHsmConfigurationMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmConfigurationAsync(CreateHsmConfigurationMessage, cb)
	assert(CreateHsmConfigurationMessage, "You must provide a CreateHsmConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHsmConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHsmConfigurationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHsmConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHsmConfigurationMessage
-- @return response
-- @return error_message
function M.CreateHsmConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeSnapshotAccess asynchronously, invoking a callback when done
-- @param RevokeSnapshotAccessMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeSnapshotAccessAsync(RevokeSnapshotAccessMessage, cb)
	assert(RevokeSnapshotAccessMessage, "You must provide a RevokeSnapshotAccessMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeSnapshotAccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeSnapshotAccessMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeSnapshotAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeSnapshotAccessMessage
-- @return response
-- @return error_message
function M.RevokeSnapshotAccessSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeSnapshotAccessAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusters asynchronously, invoking a callback when done
-- @param DescribeClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClustersAsync(DescribeClustersMessage, cb)
	assert(DescribeClustersMessage, "You must provide a DescribeClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClustersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClustersMessage
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

--- Call ModifyClusterIamRoles asynchronously, invoking a callback when done
-- @param ModifyClusterIamRolesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterIamRolesAsync(ModifyClusterIamRolesMessage, cb)
	assert(ModifyClusterIamRolesMessage, "You must provide a ModifyClusterIamRolesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterIamRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyClusterIamRolesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyClusterIamRoles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyClusterIamRolesMessage
-- @return response
-- @return error_message
function M.ModifyClusterIamRolesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterIamRolesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetClusterParameterGroup asynchronously, invoking a callback when done
-- @param ResetClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetClusterParameterGroupAsync(ResetClusterParameterGroupMessage, cb)
	assert(ResetClusterParameterGroupMessage, "You must provide a ResetClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.ResetClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTableRestoreStatus asynchronously, invoking a callback when done
-- @param DescribeTableRestoreStatusMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTableRestoreStatusAsync(DescribeTableRestoreStatusMessage, cb)
	assert(DescribeTableRestoreStatusMessage, "You must provide a DescribeTableRestoreStatusMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTableRestoreStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTableRestoreStatusMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTableRestoreStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTableRestoreStatusMessage
-- @return response
-- @return error_message
function M.DescribeTableRestoreStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableRestoreStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteClusterSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSecurityGroupAsync(DeleteClusterSecurityGroupMessage, cb)
	assert(DeleteClusterSecurityGroupMessage, "You must provide a DeleteClusterSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClusterSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterSecurityGroupMessage
-- @return response
-- @return error_message
function M.DeleteClusterSecurityGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSecurityGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterParameterGroup asynchronously, invoking a callback when done
-- @param ModifyClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterParameterGroupAsync(ModifyClusterParameterGroupMessage, cb)
	assert(ModifyClusterParameterGroupMessage, "You must provide a ModifyClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.ModifyClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSnapshots asynchronously, invoking a callback when done
-- @param DescribeClusterSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSnapshotsAsync(DescribeClusterSnapshotsMessage, cb)
	assert(DescribeClusterSnapshotsMessage, "You must provide a DescribeClusterSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterSnapshotsMessage
-- @return response
-- @return error_message
function M.DescribeClusterSnapshotsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSnapshotsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSecurityGroup asynchronously, invoking a callback when done
-- @param CreateClusterSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSecurityGroupAsync(CreateClusterSecurityGroupMessage, cb)
	assert(CreateClusterSecurityGroupMessage, "You must provide a CreateClusterSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateClusterSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterSecurityGroupMessage
-- @return response
-- @return error_message
function M.CreateClusterSecurityGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSecurityGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableLogging asynchronously, invoking a callback when done
-- @param DisableLoggingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DisableLoggingAsync(DisableLoggingMessage, cb)
	assert(DisableLoggingMessage, "You must provide a DisableLoggingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableLoggingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableLoggingMessage
-- @return response
-- @return error_message
function M.DisableLoggingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableLoggingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterVersions asynchronously, invoking a callback when done
-- @param DescribeClusterVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterVersionsAsync(DescribeClusterVersionsMessage, cb)
	assert(DescribeClusterVersionsMessage, "You must provide a DescribeClusterVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterVersionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterVersionsMessage
-- @return response
-- @return error_message
function M.DescribeClusterVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResize asynchronously, invoking a callback when done
-- @param DescribeResizeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeResizeAsync(DescribeResizeMessage, cb)
	assert(DescribeResizeMessage, "You must provide a DescribeResizeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeResize",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeResizeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResize synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResizeMessage
-- @return response
-- @return error_message
function M.DescribeResizeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResizeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeClusterSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSubnetGroupsAsync(DescribeClusterSubnetGroupsMessage, cb)
	assert(DescribeClusterSubnetGroupsMessage, "You must provide a DescribeClusterSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterSubnetGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterSubnetGroupsMessage
-- @return response
-- @return error_message
function M.DescribeClusterSubnetGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSubnetGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeClusterSecurityGroupIngress asynchronously, invoking a callback when done
-- @param AuthorizeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeClusterSecurityGroupIngressAsync(AuthorizeClusterSecurityGroupIngressMessage, cb)
	assert(AuthorizeClusterSecurityGroupIngressMessage, "You must provide a AuthorizeClusterSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeClusterSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeClusterSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeClusterSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeClusterSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.AuthorizeClusterSecurityGroupIngressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeClusterSecurityGroupIngressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsmConfigurations asynchronously, invoking a callback when done
-- @param DescribeHsmConfigurationsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHsmConfigurationsAsync(DescribeHsmConfigurationsMessage, cb)
	assert(DescribeHsmConfigurationsMessage, "You must provide a DescribeHsmConfigurationsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeHsmConfigurations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHsmConfigurationsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHsmConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHsmConfigurationsMessage
-- @return response
-- @return error_message
function M.DescribeHsmConfigurationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmConfigurationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventSubscription asynchronously, invoking a callback when done
-- @param DeleteEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, cb)
	assert(DeleteEventSubscriptionMessage, "You must provide a DeleteEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventSubscriptionMessage
-- @return response
-- @return error_message
function M.DeleteEventSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsMessage, cb)
	assert(DescribeTagsMessage, "You must provide a DescribeTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsMessage
-- @return response
-- @return error_message
function M.DescribeTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsmConfiguration asynchronously, invoking a callback when done
-- @param DeleteHsmConfigurationMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHsmConfigurationAsync(DeleteHsmConfigurationMessage, cb)
	assert(DeleteHsmConfigurationMessage, "You must provide a DeleteHsmConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHsmConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHsmConfigurationMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHsmConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHsmConfigurationMessage
-- @return response
-- @return error_message
function M.DeleteHsmConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSubnetGroup asynchronously, invoking a callback when done
-- @param CreateClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSubnetGroupAsync(CreateClusterSubnetGroupMessage, cb)
	assert(CreateClusterSubnetGroupMessage, "You must provide a CreateClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateClusterSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterSubnetGroupMessage
-- @return response
-- @return error_message
function M.CreateClusterSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterParameters asynchronously, invoking a callback when done
-- @param DescribeClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterParametersAsync(DescribeClusterParametersMessage, cb)
	assert(DescribeClusterParametersMessage, "You must provide a DescribeClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterParametersMessage
-- @return response
-- @return error_message
function M.DescribeClusterParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHsmClientCertificate asynchronously, invoking a callback when done
-- @param CreateHsmClientCertificateMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHsmClientCertificateAsync(CreateHsmClientCertificateMessage, cb)
	assert(CreateHsmClientCertificateMessage, "You must provide a CreateHsmClientCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHsmClientCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHsmClientCertificateMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHsmClientCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHsmClientCertificateMessage
-- @return response
-- @return error_message
function M.CreateHsmClientCertificateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmClientCertificateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterSubnetGroupAsync(ModifyClusterSubnetGroupMessage, cb)
	assert(ModifyClusterSubnetGroupMessage, "You must provide a ModifyClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyClusterSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyClusterSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyClusterSubnetGroupMessage
-- @return response
-- @return error_message
function M.ModifyClusterSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshotCopyGrants asynchronously, invoking a callback when done
-- @param DescribeSnapshotCopyGrantsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSnapshotCopyGrantsAsync(DescribeSnapshotCopyGrantsMessage, cb)
	assert(DescribeSnapshotCopyGrantsMessage, "You must provide a DescribeSnapshotCopyGrantsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSnapshotCopyGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSnapshotCopyGrantsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSnapshotCopyGrants synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSnapshotCopyGrantsMessage
-- @return response
-- @return error_message
function M.DescribeSnapshotCopyGrantsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotCopyGrantsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableClusterOptions asynchronously, invoking a callback when done
-- @param DescribeOrderableClusterOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableClusterOptionsAsync(DescribeOrderableClusterOptionsMessage, cb)
	assert(DescribeOrderableClusterOptionsMessage, "You must provide a DescribeOrderableClusterOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOrderableClusterOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrderableClusterOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrderableClusterOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrderableClusterOptionsMessage
-- @return response
-- @return error_message
function M.DescribeOrderableClusterOptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableClusterOptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyCluster asynchronously, invoking a callback when done
-- @param ModifyClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyClusterAsync(ModifyClusterMessage, cb)
	assert(ModifyClusterMessage, "You must provide a ModifyClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyClusterMessage
-- @return response
-- @return error_message
function M.ModifyClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RotateEncryptionKey asynchronously, invoking a callback when done
-- @param RotateEncryptionKeyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RotateEncryptionKeyAsync(RotateEncryptionKeyMessage, cb)
	assert(RotateEncryptionKeyMessage, "You must provide a RotateEncryptionKeyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RotateEncryptionKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RotateEncryptionKeyMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RotateEncryptionKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RotateEncryptionKeyMessage
-- @return response
-- @return error_message
function M.RotateEncryptionKeySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RotateEncryptionKeyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableSnapshotCopy asynchronously, invoking a callback when done
-- @param EnableSnapshotCopyMessage
-- @param cb Callback function accepting two args: response, error_message
function M.EnableSnapshotCopyAsync(EnableSnapshotCopyMessage, cb)
	assert(EnableSnapshotCopyMessage, "You must provide a EnableSnapshotCopyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableSnapshotCopy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableSnapshotCopyMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableSnapshotCopy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableSnapshotCopyMessage
-- @return response
-- @return error_message
function M.EnableSnapshotCopySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableSnapshotCopyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSnapshot asynchronously, invoking a callback when done
-- @param CreateClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateClusterSnapshotAsync(CreateClusterSnapshotMessage, cb)
	assert(CreateClusterSnapshotMessage, "You must provide a CreateClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterSnapshotMessage
-- @return response
-- @return error_message
function M.CreateClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSnapshot asynchronously, invoking a callback when done
-- @param DeleteClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSnapshotAsync(DeleteClusterSnapshotMessage, cb)
	assert(DeleteClusterSnapshotMessage, "You must provide a DeleteClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterSnapshotMessage
-- @return response
-- @return error_message
function M.DeleteClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTags asynchronously, invoking a callback when done
-- @param CreateTagsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagsAsync(CreateTagsMessage, cb)
	assert(CreateTagsMessage, "You must provide a CreateTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTagsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTagsMessage
-- @return response
-- @return error_message
function M.CreateTagsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedNodeOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedNodeOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedNodeOfferingsAsync(DescribeReservedNodeOfferingsMessage, cb)
	assert(DescribeReservedNodeOfferingsMessage, "You must provide a DescribeReservedNodeOfferingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodeOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedNodeOfferingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedNodeOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedNodeOfferingsMessage
-- @return response
-- @return error_message
function M.DescribeReservedNodeOfferingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedNodeOfferingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoggingStatus asynchronously, invoking a callback when done
-- @param DescribeLoggingStatusMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLoggingStatusAsync(DescribeLoggingStatusMessage, cb)
	assert(DescribeLoggingStatusMessage, "You must provide a DescribeLoggingStatusMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoggingStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLoggingStatusMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLoggingStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLoggingStatusMessage
-- @return response
-- @return error_message
function M.DescribeLoggingStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoggingStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyEventSubscription asynchronously, invoking a callback when done
-- @param ModifyEventSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, cb)
	assert(ModifyEventSubscriptionMessage, "You must provide a ModifyEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyEventSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyEventSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyEventSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyEventSubscriptionMessage
-- @return response
-- @return error_message
function M.ModifyEventSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyEventSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreTableFromClusterSnapshot asynchronously, invoking a callback when done
-- @param RestoreTableFromClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreTableFromClusterSnapshotAsync(RestoreTableFromClusterSnapshotMessage, cb)
	assert(RestoreTableFromClusterSnapshotMessage, "You must provide a RestoreTableFromClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreTableFromClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreTableFromClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreTableFromClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreTableFromClusterSnapshotMessage
-- @return response
-- @return error_message
function M.RestoreTableFromClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreTableFromClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeClusterSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeClusterSecurityGroupsAsync(DescribeClusterSecurityGroupsMessage, cb)
	assert(DescribeClusterSecurityGroupsMessage, "You must provide a DescribeClusterSecurityGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterSecurityGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterSecurityGroupsMessage
-- @return response
-- @return error_message
function M.DescribeClusterSecurityGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSecurityGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeClusterSecurityGroupIngress asynchronously, invoking a callback when done
-- @param RevokeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeClusterSecurityGroupIngressAsync(RevokeClusterSecurityGroupIngressMessage, cb)
	assert(RevokeClusterSecurityGroupIngressMessage, "You must provide a RevokeClusterSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeClusterSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeClusterSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeClusterSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeClusterSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.RevokeClusterSecurityGroupIngressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeClusterSecurityGroupIngressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterParameterGroup asynchronously, invoking a callback when done
-- @param DeleteClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterParameterGroupAsync(DeleteClusterParameterGroupMessage, cb)
	assert(DeleteClusterParameterGroupMessage, "You must provide a DeleteClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterParameterGroupMessage
-- @return response
-- @return error_message
function M.DeleteClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteClusterSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteClusterSubnetGroupAsync(DeleteClusterSubnetGroupMessage, cb)
	assert(DeleteClusterSubnetGroupMessage, "You must provide a DeleteClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClusterSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterSubnetGroupMessage
-- @return response
-- @return error_message
function M.DeleteClusterSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedNodeOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedNodeOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedNodeOfferingAsync(PurchaseReservedNodeOfferingMessage, cb)
	assert(PurchaseReservedNodeOfferingMessage, "You must provide a PurchaseReservedNodeOfferingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedNodeOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PurchaseReservedNodeOfferingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseReservedNodeOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseReservedNodeOfferingMessage
-- @return response
-- @return error_message
function M.PurchaseReservedNodeOfferingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedNodeOfferingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
