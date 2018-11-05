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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSecurityGroup [ClusterSecurityGroup] 
-- @return RevokeClusterSecurityGroupIngressResult structure as a key-value pair table
function M.RevokeClusterSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating RevokeClusterSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSecurityGroup"] = args["ClusterSecurityGroup"],
	}
	asserts.AssertRevokeClusterSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeRole [String] <p>Whether the node is a leader node or a compute node.</p>
-- * PrivateIPAddress [String] <p>The private IP address of a node within a cluster.</p>
-- * PublicIPAddress [String] <p>The public IP address of a node within a cluster.</p>
-- @return ClusterNode structure as a key-value pair table
function M.ClusterNode(args)
	assert(args, "You must provide an argument table when creating ClusterNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeRole"] = args["NodeRole"],
		["PrivateIPAddress"] = args["PrivateIPAddress"],
		["PublicIPAddress"] = args["PublicIPAddress"],
	}
	asserts.AssertClusterNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSubnetGroupName [String] <p>The name of the cluster subnet group name to be deleted.</p>
-- Required key: ClusterSubnetGroupName
-- @return DeleteClusterSubnetGroupMessage structure as a key-value pair table
function M.DeleteClusterSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteClusterSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
	}
	asserts.AssertDeleteClusterSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [SubnetList] <p>A list of the VPC <a>Subnet</a> elements. </p>
-- * VpcId [String] <p>The VPC ID of the cluster subnet group.</p>
-- * Description [String] <p>The description of the cluster subnet group.</p>
-- * Tags [TagList] <p>The list of tags for the cluster subnet group.</p>
-- * SubnetGroupStatus [String] <p>The status of the cluster subnet group. Possible values are <code>Complete</code>, <code>Incomplete</code> and <code>Invalid</code>. </p>
-- * ClusterSubnetGroupName [String] <p>The name of the cluster subnet group.</p>
-- @return ClusterSubnetGroup structure as a key-value pair table
function M.ClusterSubnetGroup(args)
	assert(args, "You must provide an argument table when creating ClusterSubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["VpcId"] = args["VpcId"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["SubnetGroupStatus"] = args["SubnetGroupStatus"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
	}
	asserts.AssertClusterSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSecurityGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster security groups that are associated with the specified tag value or values. For example, suppose that you have security groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster security groups that are associated with the specified key or keys. For example, suppose that you have security groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the security groups that have either or both of these tag keys associated with them.</p>
-- * ClusterSecurityGroupName [String] <p>The name of a cluster security group for which you are requesting details. You can specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p> <p> Example: <code>securitygroup1</code> </p>
-- @return DescribeClusterSecurityGroupsMessage structure as a key-value pair table
function M.DescribeClusterSecurityGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterSecurityGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
	}
	asserts.AssertDescribeClusterSecurityGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * Clusters [ClusterList] <p>A list of <code>Cluster</code> objects, where each object describes one cluster. </p>
-- @return ClustersMessage structure as a key-value pair table
function M.ClustersMessage(args)
	assert(args, "You must provide an argument table when creating ClustersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Clusters"] = args["Clusters"],
	}
	asserts.AssertClustersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [String] <p>The source type, such as cluster or cluster-snapshot, that the returned categories belong to.</p>
-- * Events [EventInfoMapList] <p>The events in the event category.</p>
-- @return EventCategoriesMap structure as a key-value pair table
function M.EventCategoriesMap(args)
	assert(args, "You must provide an argument table when creating EventCategoriesMap")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceType"] = args["SourceType"],
		["Events"] = args["Events"],
	}
	asserts.AssertEventCategoriesMap(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedNode [ReservedNode] 
-- @return PurchaseReservedNodeOfferingResult structure as a key-value pair table
function M.PurchaseReservedNodeOfferingResult(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedNodeOfferingResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedNode"] = args["ReservedNode"],
	}
	asserts.AssertPurchaseReservedNodeOfferingResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmConfigurationIdentifier [String] <p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>
-- Required key: HsmConfigurationIdentifier
-- @return DeleteHsmConfigurationMessage structure as a key-value pair table
function M.DeleteHsmConfigurationMessage(args)
	assert(args, "You must provide an argument table when creating DeleteHsmConfigurationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
	}
	asserts.AssertDeleteHsmConfigurationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterDbRevisionsMessage = { ["Marker"] = true, ["ClusterIdentifier"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertDescribeClusterDbRevisionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterDbRevisionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterDbRevisionsMessage[k], "DescribeClusterDbRevisionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterDbRevisionsMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point for returning a set of response records. When the results of a <code>DescribeClusterDbRevisions</code> request exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the <code>marker</code> field of the response. You can retrieve the next set of response records by providing the returned <code>marker</code> value in the <code>marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or the <code>marker</code> parameter, but not both.</p>
-- * ClusterIdentifier [String] <p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are requesting. This parameter is case sensitive. All clusters defined for an account are returned by default.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified MaxRecords value, a value is returned in the <code>marker</code> field of the response. You can retrieve the next set of response records by providing the returned <code>marker</code> value in the <code>marker</code> parameter and retrying the request. </p> <p>Default: 100</p> <p>Constraints: minimum 20, maximum 100.</p>
-- @return DescribeClusterDbRevisionsMessage structure as a key-value pair table
function M.DescribeClusterDbRevisionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterDbRevisionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeClusterDbRevisionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- * Severity [String] <p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>
-- * Enabled [BooleanOptional] <p>A Boolean value indicating if the subscription is enabled. <code>true</code> indicates the subscription is enabled </p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event notification subscription.</p>
-- * SubscriptionName [String] <p>The name of the modified Amazon Redshift event notification subscription.</p>
-- * SourceIds [SourceIdsList] <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>
-- * SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.</p>
-- Required key: SubscriptionName
-- @return ModifyEventSubscriptionMessage structure as a key-value pair table
function M.ModifyEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating ModifyEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["Severity"] = args["Severity"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SourceIds"] = args["SourceIds"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertModifyEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing cluster parameter group.</p> </li> <li> <p>Cannot delete a default cluster parameter group.</p> </li> </ul>
-- Required key: ParameterGroupName
-- @return DeleteClusterParameterGroupMessage structure as a key-value pair table
function M.DeleteClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
	}
	asserts.AssertDeleteClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * HsmClientCertificates [HsmClientCertificateList] <p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.</p>
-- @return HsmClientCertificateMessage structure as a key-value pair table
function M.HsmClientCertificateMessage(args)
	assert(args, "You must provide an argument table when creating HsmClientCertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["HsmClientCertificates"] = args["HsmClientCertificates"],
	}
	asserts.AssertHsmClientCertificateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [String] <p>The source type, such as cluster or parameter group, to which the described event categories apply.</p> <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, and cluster-security-group.</p>
-- @return DescribeEventCategoriesMessage structure as a key-value pair table
function M.DescribeEventCategoriesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventCategoriesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertDescribeEventCategoriesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSecurityGroup [ClusterSecurityGroup] 
-- @return CreateClusterSecurityGroupResult structure as a key-value pair table
function M.CreateClusterSecurityGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterSecurityGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSecurityGroup"] = args["ClusterSecurityGroup"],
	}
	asserts.AssertCreateClusterSecurityGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterName [String] <p>The name of the parameter.</p>
-- * ParameterApplyStatus [String] <p>The status of the parameter that indicates whether the parameter is in sync with the database, waiting for a cluster reboot, or encountered an error when being applied.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The parameter value is in sync with the database.</p> </li> <li> <p> <code>pending-reboot</code>: The parameter value will be applied after the cluster reboots.</p> </li> <li> <p> <code>applying</code>: The parameter value is being applied to the database.</p> </li> <li> <p> <code>invalid-parameter</code>: Cannot apply the parameter value because it has an invalid value or syntax.</p> </li> <li> <p> <code>apply-deferred</code>: The parameter contains static property changes. The changes are deferred until the cluster reboots.</p> </li> <li> <p> <code>apply-error</code>: Cannot connect to the cluster. The parameter change will be applied after the cluster reboots.</p> </li> <li> <p> <code>unknown-error</code>: Cannot apply the parameter change right now. The change will be applied after the cluster reboots.</p> </li> </ul>
-- * ParameterApplyErrorDescription [String] <p>The error that prevented the parameter from being applied to the database.</p>
-- @return ClusterParameterStatus structure as a key-value pair table
function M.ClusterParameterStatus(args)
	assert(args, "You must provide an argument table when creating ClusterParameterStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterName"] = args["ParameterName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
		["ParameterApplyErrorDescription"] = args["ParameterApplyErrorDescription"],
	}
	asserts.AssertClusterParameterStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterVersion [String] <p>The version number used by the cluster.</p>
-- * Description [String] <p>The description of the cluster version.</p>
-- * ClusterParameterGroupFamily [String] <p>The name of the cluster parameter group family for the cluster.</p>
-- @return ClusterVersion structure as a key-value pair table
function M.ClusterVersion(args)
	assert(args, "You must provide an argument table when creating ClusterVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterVersion"] = args["ClusterVersion"],
		["Description"] = args["Description"],
		["ClusterParameterGroupFamily"] = args["ClusterParameterGroupFamily"],
	}
	asserts.AssertClusterVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyClusterMessage = { ["Encrypted"] = true, ["HsmClientCertificateIdentifier"] = true, ["NodeType"] = true, ["PubliclyAccessible"] = true, ["ClusterParameterGroupName"] = true, ["EnhancedVpcRouting"] = true, ["ElasticIp"] = true, ["ClusterType"] = true, ["MasterUserPassword"] = true, ["VpcSecurityGroupIds"] = true, ["AllowVersionUpgrade"] = true, ["KmsKeyId"] = true, ["MaintenanceTrackName"] = true, ["PreferredMaintenanceWindow"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmConfigurationIdentifier"] = true, ["NewClusterIdentifier"] = true, ["NumberOfNodes"] = true, ["ClusterVersion"] = true, nil }

function asserts.AssertModifyClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	if struct["Encrypted"] then asserts.AssertBooleanOptional(struct["Encrypted"]) end
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
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encrypted [BooleanOptional] <p>Indicates whether the cluster is encrypted. If the cluster is encrypted and you provide a value for the <code>KmsKeyId</code> parameter, we will encrypt the cluster with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>, we will encrypt with the default key. In the China region we will use legacy encryption if you specify that the cluster is encrypted.</p>
-- * HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- * NodeType [String] <p>The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter.</p> <p>When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code> | <code>dc2.large</code> | <code>dc2.8xlarge</code> </p>
-- * PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.</p>
-- * ClusterParameterGroupName [String] <p>The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p> <p>Default: Uses existing setting.</p> <p>Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.</p>
-- * EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * ElasticIp [String] <p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
-- * ClusterType [String] <p>The new cluster type.</p> <p>When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: <code> multi-node | single-node </code> </p>
-- * MasterUserPassword [String] <p>The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <note> <p>Operations never return the password, so this operation provides a way to regain access to the master user account for a cluster if the password is lost.</p> </note> <p>Default: Uses existing setting.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.</p> </li> </ul>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.</p>
-- * AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades will be applied automatically to the cluster during the maintenance window. </p> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.</p>
-- * MaintenanceTrackName [String] <p>The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the <code>PendingModifiedValues</code> for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.</p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage.</p> <p>This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied.</p> <p>Default: Uses existing setting.</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example <code>wed:07:30-wed:08:00</code>.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes.</p>
-- * AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted.</p> <p>Default: Uses existing setting.</p> <p>Constraints: Must be a value from 0 to 35.</p>
-- * ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible.</p> <p>Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster to be modified.</p> <p>Example: <code>examplecluster</code> </p>
-- * HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- * NewClusterIdentifier [String] <p>The new identifier for the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>examplecluster</code> </p>
-- * NumberOfNodes [IntegerOptional] <p>The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter.</p> <p>When you submit your request to resize a cluster, Amazon Redshift sets access permissions for the cluster to read-only. After Amazon Redshift provisions a new cluster according to your resize requirements, there will be a temporary outage while the old cluster is deleted and your connection is switched to the new cluster. When the new connection is complete, the original access permissions for the cluster are restored. You can use <a>DescribeResize</a> to track the progress of the resize request. </p> <p>Valid Values: Integer greater than <code>0</code>.</p>
-- * ClusterVersion [String] <p>The new version number of the Amazon Redshift engine to upgrade to.</p> <p>For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>Example: <code>1.0</code> </p>
-- Required key: ClusterIdentifier
-- @return ModifyClusterMessage structure as a key-value pair table
function M.ModifyClusterMessage(args)
	assert(args, "You must provide an argument table when creating ModifyClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encrypted"] = args["Encrypted"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["NodeType"] = args["NodeType"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["ClusterParameterGroupName"] = args["ClusterParameterGroupName"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["ElasticIp"] = args["ElasticIp"],
		["ClusterType"] = args["ClusterType"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["AllowVersionUpgrade"] = args["AllowVersionUpgrade"],
		["KmsKeyId"] = args["KmsKeyId"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["AutomatedSnapshotRetentionPeriod"] = args["AutomatedSnapshotRetentionPeriod"],
		["ClusterSecurityGroups"] = args["ClusterSecurityGroups"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
		["NewClusterIdentifier"] = args["NewClusterIdentifier"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["ClusterVersion"] = args["ClusterVersion"],
	}
	asserts.AssertModifyClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterParameterStatusList [ClusterParameterStatusList] <p>The list of parameter statuses.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
-- * ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
-- * ParameterApplyStatus [String] <p>The status of parameter updates.</p>
-- @return ClusterParameterGroupStatus structure as a key-value pair table
function M.ClusterParameterGroupStatus(args)
	assert(args, "You must provide an argument table when creating ClusterParameterGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterParameterStatusList"] = args["ClusterParameterStatusList"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
	}
	asserts.AssertClusterParameterGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the VPC security group.</p>
-- * VpcSecurityGroupId [String] <p>The identifier of the VPC security group.</p>
-- @return VpcSecurityGroupMembership structure as a key-value pair table
function M.VpcSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating VpcSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["VpcSecurityGroupId"] = args["VpcSecurityGroupId"],
	}
	asserts.AssertVpcSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return CreateClusterResult structure as a key-value pair table
function M.CreateClusterResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertCreateClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the cluster security group.</p>
-- * ClusterSecurityGroupName [String] <p>The name of the cluster security group.</p>
-- @return ClusterSecurityGroupMembership structure as a key-value pair table
function M.ClusterSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating ClusterSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
	}
	asserts.AssertClusterSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountAlias [String] <p>The identifier of an AWS support account authorized to restore a snapshot. For AWS support, the identifier is <code>amazon-redshift-support</code>. </p>
-- * AccountId [String] <p>The identifier of an AWS customer account authorized to restore a snapshot.</p>
-- @return AccountWithRestoreAccess structure as a key-value pair table
function M.AccountWithRestoreAccess(args)
	assert(args, "You must provide an argument table when creating AccountWithRestoreAccess")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountAlias"] = args["AccountAlias"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertAccountWithRestoreAccess(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return RevokeSnapshotAccessResult structure as a key-value pair table
function M.RevokeSnapshotAccessResult(args)
	assert(args, "You must provide an argument table when creating RevokeSnapshotAccessResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertRevokeSnapshotAccessResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeCount [IntegerOptional] <p>The number of reserved nodes that you want to purchase.</p> <p>Default: <code>1</code> </p>
-- * ReservedNodeOfferingId [String] <p>The unique identifier of the reserved node offering you want to purchase.</p>
-- Required key: ReservedNodeOfferingId
-- @return PurchaseReservedNodeOfferingMessage structure as a key-value pair table
function M.PurchaseReservedNodeOfferingMessage(args)
	assert(args, "You must provide an argument table when creating PurchaseReservedNodeOfferingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeCount"] = args["NodeCount"],
		["ReservedNodeOfferingId"] = args["ReservedNodeOfferingId"],
	}
	asserts.AssertPurchaseReservedNodeOfferingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return CreateEventSubscriptionResult structure as a key-value pair table
function M.CreateEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating CreateEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertCreateEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>
-- * HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- * HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- @return HsmStatus structure as a key-value pair table
function M.HsmStatus(args)
	assert(args, "You must provide an argument table when creating HsmStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
	}
	asserts.AssertHsmStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ReservedNodeOfferings [ReservedNodeOfferingList] <p>A list of <code>ReservedNodeOffering</code> objects.</p>
-- @return ReservedNodeOfferingsMessage structure as a key-value pair table
function M.ReservedNodeOfferingsMessage(args)
	assert(args, "You must provide an argument table when creating ReservedNodeOfferingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedNodeOfferings"] = args["ReservedNodeOfferings"],
	}
	asserts.AssertReservedNodeOfferingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>Specifies the Amazon Redshift event categories to be published by the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- * Severity [String] <p>Specifies the Amazon Redshift event severity to be published by the event notification subscription.</p> <p>Values: ERROR, INFO</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * Enabled [BooleanOptional] <p>A Boolean value; set to <code>true</code> to activate the subscription, set to <code>false</code> to create the subscription but not active it. </p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- * SubscriptionName [String] <p>The name of the event subscription to be created.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * SourceIds [SourceIdsList] <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects must be of the same type as was specified in the source type parameter. The event subscription will return only events generated by the specified objects. If not specified, then events are returned for all objects within the source type specified.</p> <p>Example: my-cluster-1, my-cluster-2</p> <p>Example: my-snapshot-20131010</p>
-- * SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a cluster, you would set this parameter to cluster. If this value is not specified, events are returned for all Amazon Redshift objects in your AWS account. You must specify a source type in order to specify source IDs.</p> <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, and cluster-snapshot.</p>
-- Required key: SubscriptionName
-- Required key: SnsTopicArn
-- @return CreateEventSubscriptionMessage structure as a key-value pair table
function M.CreateEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating CreateEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategories"] = args["EventCategories"],
		["Severity"] = args["Severity"],
		["Tags"] = args["Tags"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SourceIds"] = args["SourceIds"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertCreateEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameterGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster parameter groups that are associated with the specified tag value or values. For example, suppose that you have parameter groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster parameter groups that are associated with the specified key or keys. For example, suppose that you have parameter groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the parameter groups that have either or both of these tag keys associated with them.</p>
-- * ParameterGroupName [String] <p>The name of a specific parameter group for which to return details. By default, details about all parameter groups and the default parameter group are returned.</p>
-- @return DescribeClusterParameterGroupsMessage structure as a key-value pair table
function M.DescribeClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["ParameterGroupName"] = args["ParameterGroupName"],
	}
	asserts.AssertDescribeClusterParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmClientCertificateIdentifier [String] <p>The identifier to be assigned to the new HSM client certificate that the cluster will use to connect to the HSM to use the database encryption keys.</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- Required key: HsmClientCertificateIdentifier
-- @return CreateHsmClientCertificateMessage structure as a key-value pair table
function M.CreateHsmClientCertificateMessage(args)
	assert(args, "You must provide an argument table when creating CreateHsmClientCertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateHsmClientCertificateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The cluster identifier.</p>
-- Required key: ClusterIdentifier
-- @return RebootClusterMessage structure as a key-value pair table
function M.RebootClusterMessage(args)
	assert(args, "You must provide an argument table when creating RebootClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertRebootClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ClusterSecurityGroups [ClusterSecurityGroups] <p>A list of <a>ClusterSecurityGroup</a> instances. </p>
-- @return ClusterSecurityGroupMessage structure as a key-value pair table
function M.ClusterSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating ClusterSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterSecurityGroups"] = args["ClusterSecurityGroups"],
	}
	asserts.AssertClusterSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResizeClusterResult = { ["Cluster"] = true, nil }

function asserts.AssertResizeClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeClusterResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResizeClusterResult[k], "ResizeClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return ResizeClusterResult structure as a key-value pair table
function M.ResizeClusterResult(args)
	assert(args, "You must provide an argument table when creating ResizeClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertResizeClusterResult(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * Events [EventList] <p>A list of <code>Event</code> instances. </p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p> <p>Constraints:</p> <p>If <i>SourceType</i> is supplied, <i>SourceIdentifier</i> must also be provided.</p> <ul> <li> <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is a cluster identifier.</p> </li> <li> <p>Specify <code>cluster-security-group</code> when <i>SourceIdentifier</i> is a cluster security group name.</p> </li> <li> <p>Specify <code>cluster-parameter-group</code> when <i>SourceIdentifier</i> is a cluster parameter group name.</p> </li> <li> <p>Specify <code>cluster-snapshot</code> when <i>SourceIdentifier</i> is a cluster snapshot identifier.</p> </li> </ul>
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeEvents</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * StartTime [TStamp] <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>
-- * Duration [IntegerOptional] <p>The number of minutes prior to the time of the request for which to retrieve events. For example, if the request is sent at 18:00 and you specify a duration of 60, then only events which have occurred after 17:00 will be returned.</p> <p>Default: <code>60</code> </p>
-- * SourceIdentifier [String] <p>The identifier of the event source for which events will be returned. If this parameter is not specified, then all sources are included in the response.</p> <p>Constraints:</p> <p>If <i>SourceIdentifier</i> is supplied, <i>SourceType</i> must also be provided.</p> <ul> <li> <p>Specify a cluster identifier when <i>SourceType</i> is <code>cluster</code>.</p> </li> <li> <p>Specify a cluster security group name when <i>SourceType</i> is <code>cluster-security-group</code>.</p> </li> <li> <p>Specify a cluster parameter group name when <i>SourceType</i> is <code>cluster-parameter-group</code>.</p> </li> <li> <p>Specify a cluster snapshot identifier when <i>SourceType</i> is <code>cluster-snapshot</code>.</p> </li> </ul>
-- * EndTime [TStamp] <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2009-07-08T18:00Z</code> </p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ParameterGroups [ParameterGroupList] <p>A list of <a>ClusterParameterGroup</a> instances. Each instance describes one cluster parameter group. </p>
-- @return ClusterParameterGroupsMessage structure as a key-value pair table
function M.ClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating ClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ParameterGroups"] = args["ParameterGroups"],
	}
	asserts.AssertClusterParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservedNodeExchangeOfferingsOutputMessage = { ["Marker"] = true, ["ReservedNodeOfferings"] = true, nil }

function asserts.AssertGetReservedNodeExchangeOfferingsOutputMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservedNodeExchangeOfferingsOutputMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedNodeOfferings"] then asserts.AssertReservedNodeOfferingList(struct["ReservedNodeOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservedNodeExchangeOfferingsOutputMessage[k], "GetReservedNodeExchangeOfferingsOutputMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservedNodeExchangeOfferingsOutputMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point for returning a set of response records. When the results of a <code>GetReservedNodeExchangeOfferings</code> request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request. </p>
-- * ReservedNodeOfferings [ReservedNodeOfferingList] <p>Returns an array of <a>ReservedNodeOffering</a> objects.</p>
-- @return GetReservedNodeExchangeOfferingsOutputMessage structure as a key-value pair table
function M.GetReservedNodeExchangeOfferingsOutputMessage(args)
	assert(args, "You must provide an argument table when creating GetReservedNodeExchangeOfferingsOutputMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedNodeOfferings"] = args["ReservedNodeOfferings"],
	}
	asserts.AssertGetReservedNodeExchangeOfferingsOutputMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- * DestinationRegion [String] <p>The destination region that snapshots are automatically copied to when cross-region snapshot copy is enabled.</p>
-- * RetentionPeriod [Long] <p>The number of days that automated snapshots are retained in the destination region after they are copied from a source region.</p>
-- @return ClusterSnapshotCopyStatus structure as a key-value pair table
function M.ClusterSnapshotCopyStatus(args)
	assert(args, "You must provide an argument table when creating ClusterSnapshotCopyStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
		["DestinationRegion"] = args["DestinationRegion"],
		["RetentionPeriod"] = args["RetentionPeriod"],
	}
	asserts.AssertClusterSnapshotCopyStatus(all_args)
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
-- <p>A tag consisting of a name/value pair for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The value for the resource tag.</p>
-- * Key [String] <p>The key, or name, for the resource tag.</p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ClusterSubnetGroups [ClusterSubnetGroups] <p>A list of <a>ClusterSubnetGroup</a> instances. </p>
-- @return ClusterSubnetGroupMessage structure as a key-value pair table
function M.ClusterSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ClusterSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterSubnetGroups"] = args["ClusterSubnetGroups"],
	}
	asserts.AssertClusterSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [String] <p>The identifier of the event.</p>
-- * EventCategories [EventCategoriesList] <p>A list of the event categories.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- * SourceType [SourceType] <p>The source type for this event.</p>
-- * Date [TStamp] <p>The date and time of the event.</p>
-- * Message [String] <p>The text of this event.</p>
-- * SourceIdentifier [String] <p>The identifier for the source of the event.</p>
-- * Severity [String] <p>The severity of the event.</p> <p>Values: ERROR, INFO</p>
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
		["EventId"] = args["EventId"],
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["Date"] = args["Date"],
		["Message"] = args["Message"],
		["SourceIdentifier"] = args["SourceIdentifier"],
		["Severity"] = args["Severity"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The identifier of the cluster on which logging is to be stopped.</p> <p>Example: <code>examplecluster</code> </p>
-- Required key: ClusterIdentifier
-- @return DisableLoggingMessage structure as a key-value pair table
function M.DisableLoggingMessage(args)
	assert(args, "You must provide an argument table when creating DisableLoggingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertDisableLoggingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastFailureMessage [String] <p>The message indicating that logs failed to be delivered.</p>
-- * LoggingEnabled [Boolean] <p> <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
-- * LastFailureTime [TStamp] <p>The last time when logs failed to be delivered.</p>
-- * LastSuccessfulDeliveryTime [TStamp] <p>The last time that logs were delivered.</p>
-- * S3KeyPrefix [String] <p>The prefix applied to the log file names.</p>
-- * BucketName [String] <p>The name of the S3 bucket where the log files are stored.</p>
-- @return LoggingStatus structure as a key-value pair table
function M.LoggingStatus(args)
	assert(args, "You must provide an argument table when creating LoggingStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastFailureMessage"] = args["LastFailureMessage"],
		["LoggingEnabled"] = args["LoggingEnabled"],
		["LastFailureTime"] = args["LastFailureTime"],
		["LastSuccessfulDeliveryTime"] = args["LastSuccessfulDeliveryTime"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["BucketName"] = args["BucketName"],
	}
	asserts.AssertLoggingStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterMessage = { ["ClusterParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["NumberOfNodes"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["EnhancedVpcRouting"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["AdditionalInfo"] = true, ["ClusterType"] = true, ["IamRoles"] = true, ["AllowVersionUpgrade"] = true, ["MaintenanceTrackName"] = true, ["HsmConfigurationIdentifier"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmClientCertificateIdentifier"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["ElasticIp"] = true, ["Encrypted"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["Port"] = true, ["ClusterSubnetGroupName"] = true, nil }

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
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterParameterGroupName [String] <p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon Redshift Parameter Groups</a> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
-- * MasterUsername [String] <p>The user name associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 - 128 alphanumeric characters. The user name can't be <code>PUBLIC</code>.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p>
-- * NumberOfNodes [IntegerOptional] <p>The number of compute nodes in the cluster. This parameter is required when the <b>ClusterType</b> parameter is specified as <code>multi-node</code>. </p> <p>For information about determining how many nodes you need, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>If you don't specify this parameter, you get a single-node cluster. When requesting a multi-node cluster, you must specify the number of nodes that you want in the cluster.</p> <p>Default: <code>1</code> </p> <p>Constraints: Value must be at least 1 and no more than 100.</p>
-- * ClusterVersion [String] <p>The version of the Amazon Redshift engine software that you want to deploy on the cluster.</p> <p>The version selected runs on all the nodes in the cluster.</p> <p>Constraints: Only version 1.0 is currently available.</p> <p>Example: <code>1.0</code> </p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: <code>1</code> </p> <p>Constraints: Must be a value from 0 to 35.</p>
-- * EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * DBName [String] <p>The name of the first database to be created when the cluster is created.</p> <p>To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database. For more information, go to <a href="http://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html">Create a Database</a> in the Amazon Redshift Database Developer Guide. </p> <p>Default: <code>dev</code> </p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters.</p> </li> <li> <p>Must contain only lowercase letters.</p> </li> <li> <p>Cannot be a word that is reserved by the service. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide. </p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. For more information about the time blocks for each region, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * AdditionalInfo [String] <p>Reserved.</p>
-- * ClusterType [String] <p>The type of the cluster. When cluster type is specified as</p> <ul> <li> <p> <code>single-node</code>, the <b>NumberOfNodes</b> parameter is not required.</p> </li> <li> <p> <code>multi-node</code>, the <b>NumberOfNodes</b> parameter is required.</p> </li> </ul> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p> <p>Default: <code>multi-node</code> </p>
-- * IamRoles [IamRoleArnList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated with it at any time.</p>
-- * AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.</p> <p>When a new major version of the Amazon Redshift engine is released, you can request that the service automatically apply upgrades during the maintenance window to the Amazon Redshift engine that is running on your cluster.</p> <p>Default: <code>true</code> </p>
-- * MaintenanceTrackName [String] <p>An optional parameter for the name of the maintenance track for the cluster. If you don't provide a maintenance track name, the cluster is assigned to the <code>current</code> track.</p>
-- * HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- * ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p>
-- * ClusterIdentifier [String] <p>A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. The identifier also appears in the Amazon Redshift console.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul> <p>Example: <code>myexamplecluster</code> </p>
-- * HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- * AvailabilityZone [String] <p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency.</p> <p>Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint.</p> <p>Example: <code>us-east-1d</code> </p> <p>Constraint: The specified Availability Zone must be in the same region as the current endpoint.</p>
-- * NodeType [String] <p>The node type to be provisioned for the cluster. For information about node types, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes"> Working with Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p> <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> | <code>dc1.large</code> | <code>dc1.8xlarge</code> | <code>dc2.large</code> | <code>dc2.8xlarge</code> </p>
-- * ElasticIp [String] <p>The Elastic IP (EIP) address for the cluster.</p> <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
-- * Encrypted [BooleanOptional] <p>If <code>true</code>, the data in the cluster is encrypted at rest. </p> <p>Default: false</p>
-- * MasterUserPassword [String] <p>The password associated with the master user account for the cluster that is being created.</p> <p>Constraints:</p> <ul> <li> <p>Must be between 8 and 64 characters in length.</p> </li> <li> <p>Must contain at least one uppercase letter.</p> </li> <li> <p>Must contain at least one lowercase letter.</p> </li> <li> <p>Must contain one number.</p> </li> <li> <p>Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.</p> </li> </ul>
-- * KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.</p>
-- * Port [IntegerOptional] <p>The port number on which the cluster accepts incoming connections.</p> <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of the connection string requires the port on which the cluster will listen for incoming connections.</p> <p>Default: <code>5439</code> </p> <p>Valid Values: <code>1150-65535</code> </p>
-- * ClusterSubnetGroupName [String] <p>The name of a cluster subnet group to be associated with this cluster.</p> <p>If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).</p>
-- Required key: ClusterIdentifier
-- Required key: NodeType
-- Required key: MasterUsername
-- Required key: MasterUserPassword
-- @return CreateClusterMessage structure as a key-value pair table
function M.CreateClusterMessage(args)
	assert(args, "You must provide an argument table when creating CreateClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterParameterGroupName"] = args["ClusterParameterGroupName"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["MasterUsername"] = args["MasterUsername"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["ClusterVersion"] = args["ClusterVersion"],
		["Tags"] = args["Tags"],
		["AutomatedSnapshotRetentionPeriod"] = args["AutomatedSnapshotRetentionPeriod"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["AdditionalInfo"] = args["AdditionalInfo"],
		["ClusterType"] = args["ClusterType"],
		["IamRoles"] = args["IamRoles"],
		["AllowVersionUpgrade"] = args["AllowVersionUpgrade"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
		["ClusterSecurityGroups"] = args["ClusterSecurityGroups"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["NodeType"] = args["NodeType"],
		["ElasticIp"] = args["ElasticIp"],
		["Encrypted"] = args["Encrypted"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Port"] = args["Port"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
	}
	asserts.AssertCreateClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The identifier of the cluster from which to get the logging status.</p> <p>Example: <code>examplecluster</code> </p>
-- Required key: ClusterIdentifier
-- @return DescribeLoggingStatusMessage structure as a key-value pair table
function M.DescribeLoggingStatusMessage(args)
	assert(args, "You must provide an argument table when creating DescribeLoggingStatusMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertDescribeLoggingStatusMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- * TagKeys [TagKeyList] <p>The tag key that you want to delete.</p>
-- Required key: ResourceName
-- Required key: TagKeys
-- @return DeleteTagsMessage structure as a key-value pair table
function M.DeleteTagsMessage(args)
	assert(args, "You must provide an argument table when creating DeleteTagsMessage")
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
	asserts.AssertDeleteTagsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotCopyGrant [SnapshotCopyGrant] 
-- @return CreateSnapshotCopyGrantResult structure as a key-value pair table
function M.CreateSnapshotCopyGrantResult(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotCopyGrantResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotCopyGrant"] = args["SnapshotCopyGrant"],
	}
	asserts.AssertCreateSnapshotCopyGrantResult(all_args)
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
-- <p>Describes a connection endpoint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Port [Integer] <p>The port that the database engine is listening on.</p>
-- * Address [String] <p>The DNS address of the Cluster.</p>
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>The list of tags for the HSM configuration.</p>
-- * HsmIpAddress [String] <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
-- * HsmPartitionName [String] <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>
-- * HsmConfigurationIdentifier [String] <p>The name of the Amazon Redshift HSM configuration.</p>
-- * Description [String] <p>A text description of the HSM configuration.</p>
-- @return HsmConfiguration structure as a key-value pair table
function M.HsmConfiguration(args)
	assert(args, "You must provide an argument table when creating HsmConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["HsmIpAddress"] = args["HsmIpAddress"],
		["HsmPartitionName"] = args["HsmPartitionName"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
		["Description"] = args["Description"],
	}
	asserts.AssertHsmConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedNode = { ["OfferingType"] = true, ["FixedPrice"] = true, ["NodeType"] = true, ["ReservedNodeOfferingType"] = true, ["NodeCount"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["ReservedNodeId"] = true, ["State"] = true, ["StartTime"] = true, ["Duration"] = true, ["ReservedNodeOfferingId"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNode to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["ReservedNodeOfferingType"] then asserts.AssertReservedNodeOfferingType(struct["ReservedNodeOfferingType"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>
-- * FixedPrice [Double] <p>The fixed cost Amazon Redshift charges you for this reserved node.</p>
-- * NodeType [String] <p>The node type of the reserved node.</p>
-- * ReservedNodeOfferingType [ReservedNodeOfferingType] 
-- * NodeCount [Integer] <p>The number of reserved compute nodes.</p>
-- * UsagePrice [Double] <p>The hourly rate Amazon Redshift charges you for this reserved node.</p>
-- * RecurringCharges [RecurringChargeList] <p>The recurring charges for the reserved node.</p>
-- * ReservedNodeId [String] <p>The unique identifier for the reservation.</p>
-- * State [String] <p>The state of the reserved compute node.</p> <p>Possible Values:</p> <ul> <li> <p>pending-payment-This reserved node has recently been purchased, and the sale has been approved, but payment has not yet been confirmed.</p> </li> <li> <p>active-This reserved node is owned by the caller and is available for use.</p> </li> <li> <p>payment-failed-Payment failed for the purchase attempt.</p> </li> <li> <p>retired-The reserved node is no longer available. </p> </li> <li> <p>exchanging-The owner is exchanging the reserved node for another reserved node.</p> </li> </ul>
-- * StartTime [TStamp] <p>The time the reservation started. You purchase a reserved node offering for a duration. This is the start time of that duration.</p>
-- * Duration [Integer] <p>The duration of the node reservation in seconds.</p>
-- * ReservedNodeOfferingId [String] <p>The identifier for the reserved node offering.</p>
-- * CurrencyCode [String] <p>The currency code for the reserved cluster.</p>
-- @return ReservedNode structure as a key-value pair table
function M.ReservedNode(args)
	assert(args, "You must provide an argument table when creating ReservedNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["NodeType"] = args["NodeType"],
		["ReservedNodeOfferingType"] = args["ReservedNodeOfferingType"],
		["NodeCount"] = args["NodeCount"],
		["UsagePrice"] = args["UsagePrice"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ReservedNodeId"] = args["ReservedNodeId"],
		["State"] = args["State"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["ReservedNodeOfferingId"] = args["ReservedNodeOfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
	}
	asserts.AssertReservedNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResetAllParameters [Boolean] <p>If <code>true</code>, all parameters in the specified parameter group will be reset to their default values. </p> <p>Default: <code>true</code> </p>
-- * ParameterGroupName [String] <p>The name of the cluster parameter group to be reset.</p>
-- * Parameters [ParametersList] <p>An array of names of parameters to be reset. If <i>ResetAllParameters</i> option is not used, then at least one parameter name must be supplied. </p> <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>
-- Required key: ParameterGroupName
-- @return ResetClusterParameterGroupMessage structure as a key-value pair table
function M.ResetClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResetAllParameters"] = args["ResetAllParameters"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertResetClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return ModifyClusterResult structure as a key-value pair table
function M.ModifyClusterResult(args)
	assert(args, "You must provide an argument table when creating ModifyClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertModifyClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description of the parameter.</p>
-- * DataType [String] <p>The data type of the parameter.</p>
-- * IsModifiable [Boolean] <p>If <code>true</code>, the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- * AllowedValues [String] <p>The valid range of values for the parameter.</p>
-- * Source [String] <p>The source of the parameter value, such as "engine-default" or "user".</p>
-- * ParameterValue [String] <p>The value of the parameter.</p>
-- * ParameterName [String] <p>The name of the parameter.</p>
-- * MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- * ApplyType [ParameterApplyType] <p>Specifies how to apply the WLM configuration parameter. Some properties can be applied dynamically, while other properties require that any associated clusters be rebooted for the configuration changes to be applied. For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
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
		["IsModifiable"] = args["IsModifiable"],
		["AllowedValues"] = args["AllowedValues"],
		["Source"] = args["Source"],
		["ParameterValue"] = args["ParameterValue"],
		["ParameterName"] = args["ParameterName"],
		["MinimumEngineVersion"] = args["MinimumEngineVersion"],
		["ApplyType"] = args["ApplyType"],
	}
	asserts.AssertParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return CopyClusterSnapshotResult structure as a key-value pair table
function M.CopyClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CopyClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertCopyClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyStatus [String] <p>A value that describes the status of the IAM role's association with an Amazon Redshift cluster.</p> <p>The following are possible statuses and descriptions.</p> <ul> <li> <p> <code>in-sync</code>: The role is available for use by the cluster.</p> </li> <li> <p> <code>adding</code>: The role is in the process of being associated with the cluster.</p> </li> <li> <p> <code>removing</code>: The role is in the process of being disassociated with the cluster.</p> </li> </ul>
-- * IamRoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role, for example, <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>
-- @return ClusterIamRole structure as a key-value pair table
function M.ClusterIamRole(args)
	assert(args, "You must provide an argument table when creating ClusterIamRole")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplyStatus"] = args["ApplyStatus"],
		["IamRoleArn"] = args["IamRoleArn"],
	}
	asserts.AssertClusterIamRole(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>
-- * ClusterSubnetGroupName [String] <p>The name of the subnet group to be modified.</p>
-- * Description [String] <p>A text description of the subnet group to be modified.</p>
-- Required key: ClusterSubnetGroupName
-- Required key: SubnetIds
-- @return ModifyClusterSubnetGroupMessage structure as a key-value pair table
function M.ModifyClusterSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyClusterSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertModifyClusterSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return ModifyClusterIamRolesResult structure as a key-value pair table
function M.ModifyClusterIamRolesResult(args)
	assert(args, "You must provide an argument table when creating ModifyClusterIamRolesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertModifyClusterIamRolesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSecurityGroupName [String] <p>The name for the security group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be "Default".</p> </li> <li> <p>Must be unique for all security groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesecuritygroup</code> </p>
-- * Description [String] <p>A description for the security group.</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- Required key: ClusterSecurityGroupName
-- Required key: Description
-- @return CreateClusterSecurityGroupMessage structure as a key-value pair table
function M.CreateClusterSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateClusterSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateClusterSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyClusterDbRevisionResult = { ["Cluster"] = true, nil }

function asserts.AssertModifyClusterDbRevisionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterDbRevisionResult to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterDbRevisionResult[k], "ModifyClusterDbRevisionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterDbRevisionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return ModifyClusterDbRevisionResult structure as a key-value pair table
function M.ModifyClusterDbRevisionResult(args)
	assert(args, "You must provide an argument table when creating ModifyClusterDbRevisionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertModifyClusterDbRevisionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotClusterIdentifier [String] <p>The unique identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints: Must be the name of valid cluster.</p>
-- * SnapshotIdentifier [String] <p>The unique identifier of the manual snapshot to be deleted.</p> <p>Constraints: Must be the name of an existing snapshot that is in the <code>available</code> state.</p>
-- Required key: SnapshotIdentifier
-- @return DeleteClusterSnapshotMessage structure as a key-value pair table
function M.DeleteClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DeleteClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotClusterIdentifier"] = args["SnapshotClusterIdentifier"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertDeleteClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterVersions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * ClusterVersion [String] <p>The specific cluster version to return.</p> <p>Example: <code>1.0</code> </p>
-- * ClusterParameterGroupFamily [String] <p>The name of a specific cluster parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @return DescribeClusterVersionsMessage structure as a key-value pair table
function M.DescribeClusterVersionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["ClusterVersion"] = args["ClusterVersion"],
		["ClusterParameterGroupFamily"] = args["ClusterParameterGroupFamily"],
	}
	asserts.AssertDescribeClusterVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of the source cluster that you want to disable copying of snapshots to a destination region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>
-- Required key: ClusterIdentifier
-- @return DisableSnapshotCopyMessage structure as a key-value pair table
function M.DisableSnapshotCopyMessage(args)
	assert(args, "You must provide an argument table when creating DisableSnapshotCopyMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertDisableSnapshotCopyMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategoriesMapList [EventCategoriesMapList] <p>A list of event categories descriptions.</p>
-- @return EventCategoriesMessage structure as a key-value pair table
function M.EventCategoriesMessage(args)
	assert(args, "You must provide an argument table when creating EventCategoriesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventCategoriesMapList"] = args["EventCategoriesMapList"],
	}
	asserts.AssertEventCategoriesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster for which you want to change the retention period for automated snapshots that are copied to a destination region.</p> <p>Constraints: Must be the valid name of an existing cluster that has cross-region snapshot copy enabled.</p>
-- * RetentionPeriod [Integer] <p>The number of days to retain automated snapshots in the destination region after they are copied from the source region.</p> <p>If you decrease the retention period for automated snapshots that are copied to a destination region, Amazon Redshift will delete any existing automated snapshots that were copied to the destination region and that fall outside of the new retention period.</p> <p>Constraints: Must be at least 1 and no more than 35.</p>
-- Required key: ClusterIdentifier
-- Required key: RetentionPeriod
-- @return ModifySnapshotCopyRetentionPeriodMessage structure as a key-value pair table
function M.ModifySnapshotCopyRetentionPeriodMessage(args)
	assert(args, "You must provide an argument table when creating ModifySnapshotCopyRetentionPeriodMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["RetentionPeriod"] = args["RetentionPeriod"],
	}
	asserts.AssertModifySnapshotCopyRetentionPeriodMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return DisableSnapshotCopyResult structure as a key-value pair table
function M.DisableSnapshotCopyResult(args)
	assert(args, "You must provide an argument table when creating DisableSnapshotCopyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDisableSnapshotCopyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return DeleteClusterSnapshotResult structure as a key-value pair table
function M.DeleteClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertDeleteClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmPartitionName [String] <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.</p>
-- * Description [String] <p>A text description of the HSM configuration to be created.</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * HsmPartitionPassword [String] <p>The password required to access the HSM partition.</p>
-- * HsmConfigurationIdentifier [String] <p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>
-- * HsmIpAddress [String] <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
-- * HsmServerPublicCertificate [String] <p>The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.</p>
-- Required key: HsmConfigurationIdentifier
-- Required key: Description
-- Required key: HsmIpAddress
-- Required key: HsmPartitionName
-- Required key: HsmPartitionPassword
-- Required key: HsmServerPublicCertificate
-- @return CreateHsmConfigurationMessage structure as a key-value pair table
function M.CreateHsmConfigurationMessage(args)
	assert(args, "You must provide an argument table when creating CreateHsmConfigurationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmPartitionName"] = args["HsmPartitionName"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["HsmPartitionPassword"] = args["HsmPartitionPassword"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
		["HsmIpAddress"] = args["HsmIpAddress"],
		["HsmServerPublicCertificate"] = args["HsmServerPublicCertificate"],
	}
	asserts.AssertCreateHsmConfigurationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the EC2 security group.</p>
-- * EC2SecurityGroupName [String] <p>The name of the EC2 Security Group.</p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>
-- * Tags [TagList] <p>The list of tags for the EC2 security group.</p>
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
		["Tags"] = args["Tags"],
	}
	asserts.AssertEC2SecurityGroup(all_args)
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
-- <p>Describes a recurring charge.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecurringChargeAmount [Double] <p>The amount charged per the period of time specified by the recurring charge frequency.</p>
-- * RecurringChargeFrequency [String] <p>The frequency at which the recurring charge amount is applied.</p>
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

keys.PendingModifiedValues = { ["ClusterVersion"] = true, ["EncryptionType"] = true, ["PubliclyAccessible"] = true, ["EnhancedVpcRouting"] = true, ["ClusterType"] = true, ["MasterUserPassword"] = true, ["MaintenanceTrackName"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["NodeType"] = true, ["ClusterIdentifier"] = true, ["NumberOfNodes"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["ClusterVersion"] then asserts.AssertString(struct["ClusterVersion"]) end
	if struct["EncryptionType"] then asserts.AssertString(struct["EncryptionType"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["EnhancedVpcRouting"] then asserts.AssertBooleanOptional(struct["EnhancedVpcRouting"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterVersion [String] <p>The pending or in-progress change of the service version.</p>
-- * EncryptionType [String] <p>The encryption type for a cluster. Possible values are: KMS and None. For the China region the possible values are None, and Legacy. </p>
-- * PubliclyAccessible [BooleanOptional] <p>The pending or in-progress change of the ability to connect to the cluster from the public network.</p>
-- * EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * ClusterType [String] <p>The pending or in-progress change of the cluster type.</p>
-- * MasterUserPassword [String] <p>The pending or in-progress change of the master user password for the cluster.</p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track that the cluster will change to during the next maintenance window.</p>
-- * AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The pending or in-progress change of the automated snapshot retention period.</p>
-- * NodeType [String] <p>The pending or in-progress change of the cluster's node type.</p>
-- * ClusterIdentifier [String] <p>The pending or in-progress change of the new identifier for the cluster.</p>
-- * NumberOfNodes [IntegerOptional] <p>The pending or in-progress change of the number of nodes in the cluster.</p>
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
		["ClusterVersion"] = args["ClusterVersion"],
		["EncryptionType"] = args["EncryptionType"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["ClusterType"] = args["ClusterType"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["AutomatedSnapshotRetentionPeriod"] = args["AutomatedSnapshotRetentionPeriod"],
		["NodeType"] = args["NodeType"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["NumberOfNodes"] = args["NumberOfNodes"],
	}
	asserts.AssertPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DbGroups [DbGroupList] <p>A list of the names of existing database groups that the user named in <code>DbUser</code> will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to PUBLIC.</p> <p>Database group name constraints</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>
-- * AutoCreate [BooleanOptional] <p>Create a database user with the name specified for the user named in <code>DbUser</code> if one does not exist.</p>
-- * DurationSeconds [IntegerOptional] <p>The number of seconds until the returned temporary password expires.</p> <p>Constraint: minimum 900, maximum 3600.</p> <p>Default: 900</p>
-- * DbUser [String] <p>The name of a database user. If a user name matching <code>DbUser</code> exists in the database, the temporary user credentials have the same permissions as the existing user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code> is <code>True</code>, a new user is created using the value for <code>DbUser</code> with PUBLIC permissions. If a database user matching the value for <code>DbUser</code> doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE USER</a> in the Amazon Redshift Database Developer Guide. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be <code>PUBLIC</code>.</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster that contains the database for which your are requesting credentials. This parameter is case sensitive.</p>
-- * DbName [String] <p>The name of a database that <code>DbUser</code> is authorized to log on to. If <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing database.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 64 alphanumeric characters or hyphens</p> </li> <li> <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Must not contain a colon ( : ) or slash ( / ). </p> </li> <li> <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon Redshift Database Developer Guide.</p> </li> </ul>
-- Required key: DbUser
-- Required key: ClusterIdentifier
-- @return GetClusterCredentialsMessage structure as a key-value pair table
function M.GetClusterCredentialsMessage(args)
	assert(args, "You must provide an argument table when creating GetClusterCredentialsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DbGroups"] = args["DbGroups"],
		["AutoCreate"] = args["AutoCreate"],
		["DurationSeconds"] = args["DurationSeconds"],
		["DbUser"] = args["DbUser"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["DbName"] = args["DbName"],
	}
	asserts.AssertGetClusterCredentialsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [String] <p>The identifier of an Amazon Redshift event.</p>
-- * EventCategories [EventCategoriesList] <p>The category of an Amazon Redshift event.</p>
-- * Severity [String] <p>The severity of the event.</p> <p>Values: ERROR, INFO</p>
-- * EventDescription [String] <p>The description of an Amazon Redshift event.</p>
-- @return EventInfoMap structure as a key-value pair table
function M.EventInfoMap(args)
	assert(args, "You must provide an argument table when creating EventInfoMap")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventId"] = args["EventId"],
		["EventCategories"] = args["EventCategories"],
		["Severity"] = args["Severity"],
		["EventDescription"] = args["EventDescription"],
	}
	asserts.AssertEventInfoMap(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant to delete.</p>
-- Required key: SnapshotCopyGrantName
-- @return DeleteSnapshotCopyGrantMessage structure as a key-value pair table
function M.DeleteSnapshotCopyGrantMessage(args)
	assert(args, "You must provide an argument table when creating DeleteSnapshotCopyGrantMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
	}
	asserts.AssertDeleteSnapshotCopyGrantMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return RestoreFromClusterSnapshotResult structure as a key-value pair table
function M.RestoreFromClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating RestoreFromClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertRestoreFromClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDefaultClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * ParameterGroupFamily [String] <p>The name of the cluster parameter group family.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- Required key: ParameterGroupFamily
-- @return DescribeDefaultClusterParametersMessage structure as a key-value pair table
function M.DescribeDefaultClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDefaultClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ParameterGroupFamily"] = args["ParameterGroupFamily"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeDefaultClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * EventSubscriptionsList [EventSubscriptionsList] <p>A list of event subscriptions.</p>
-- @return EventSubscriptionsMessage structure as a key-value pair table
function M.EventSubscriptionsMessage(args)
	assert(args, "You must provide an argument table when creating EventSubscriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EventSubscriptionsList"] = args["EventSubscriptionsList"],
	}
	asserts.AssertEventSubscriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmClientCertificate [HsmClientCertificate] 
-- @return CreateHsmClientCertificateResult structure as a key-value pair table
function M.CreateHsmClientCertificateResult(args)
	assert(args, "You must provide an argument table when creating CreateHsmClientCertificateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmClientCertificate"] = args["HsmClientCertificate"],
	}
	asserts.AssertCreateHsmClientCertificateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreFromClusterSnapshotMessage = { ["ClusterParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["OwnerAccount"] = true, ["VpcSecurityGroupIds"] = true, ["SnapshotClusterIdentifier"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["EnhancedVpcRouting"] = true, ["PreferredMaintenanceWindow"] = true, ["AdditionalInfo"] = true, ["IamRoles"] = true, ["AllowVersionUpgrade"] = true, ["MaintenanceTrackName"] = true, ["HsmConfigurationIdentifier"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["HsmClientCertificateIdentifier"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["ElasticIp"] = true, ["KmsKeyId"] = true, ["SnapshotIdentifier"] = true, ["Port"] = true, ["ClusterSubnetGroupName"] = true, nil }

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
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterParameterGroupName [String] <p>The name of the parameter group to be associated with this cluster.</p> <p>Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon Redshift Parameter Groups</a>.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * PubliclyAccessible [BooleanOptional] <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
-- * OwnerAccount [String] <p>The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.</p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.</p> <p>Default: The default VPC security group is associated with the cluster.</p> <p>VPC security groups only apply to clusters in VPCs.</p>
-- * SnapshotClusterIdentifier [String] <p>The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- * AutomatedSnapshotRetentionPeriod [IntegerOptional] <p>The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p> <p>Default: The value selected for the cluster from which the snapshot was taken.</p> <p>Constraints: Must be a value from 0 to 35.</p>
-- * EnhancedVpcRouting [BooleanOptional] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which automated cluster maintenance can occur.</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- * AdditionalInfo [String] <p>Reserved.</p>
-- * IamRoles [IamRoleArnList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>
-- * AllowVersionUpgrade [BooleanOptional] <p>If <code>true</code>, major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. </p> <p>Default: <code>true</code> </p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.</p>
-- * HsmConfigurationIdentifier [String] <p>Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
-- * ClusterSecurityGroups [ClusterSecurityGroupNameList] <p>A list of security groups to be associated with this cluster.</p> <p>Default: The default cluster security group for Amazon Redshift.</p> <p>Cluster security groups only apply to clusters outside of VPCs.</p>
-- * ClusterIdentifier [String] <p>The identifier of the cluster that will be created from restoring the snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>
-- * HsmClientCertificateIdentifier [String] <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.</p>
-- * AvailabilityZone [String] <p>The Amazon EC2 Availability Zone in which to restore the cluster.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Example: <code>us-east-1a</code> </p>
-- * NodeType [String] <p>The node type that the restored cluster will be provisioned with.</p> <p>Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlareg cluster, then resize to a dc2.8large cluster. For more information about node types, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes"> About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-- * ElasticIp [String] <p>The elastic IP (EIP) address for the cluster.</p>
-- * KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.</p>
-- * SnapshotIdentifier [String] <p>The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.</p> <p>Example: <code>my-snapshot-id</code> </p>
-- * Port [IntegerOptional] <p>The port number on which the cluster accepts connections.</p> <p>Default: The same port as the original cluster.</p> <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>
-- * ClusterSubnetGroupName [String] <p>The name of the subnet group where you want to cluster restored.</p> <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.</p>
-- Required key: ClusterIdentifier
-- Required key: SnapshotIdentifier
-- @return RestoreFromClusterSnapshotMessage structure as a key-value pair table
function M.RestoreFromClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating RestoreFromClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterParameterGroupName"] = args["ClusterParameterGroupName"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["OwnerAccount"] = args["OwnerAccount"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["SnapshotClusterIdentifier"] = args["SnapshotClusterIdentifier"],
		["AutomatedSnapshotRetentionPeriod"] = args["AutomatedSnapshotRetentionPeriod"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["AdditionalInfo"] = args["AdditionalInfo"],
		["IamRoles"] = args["IamRoles"],
		["AllowVersionUpgrade"] = args["AllowVersionUpgrade"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
		["ClusterSecurityGroups"] = args["ClusterSecurityGroups"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["NodeType"] = args["NodeType"],
		["ElasticIp"] = args["ElasticIp"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
		["Port"] = args["Port"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
	}
	asserts.AssertRestoreFromClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmClientCertificatePublicKey [String] <p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.</p>
-- * HsmClientCertificateIdentifier [String] <p>The identifier of the HSM client certificate.</p>
-- * Tags [TagList] <p>The list of tags for the HSM client certificate.</p>
-- @return HsmClientCertificate structure as a key-value pair table
function M.HsmClientCertificate(args)
	assert(args, "You must provide an argument table when creating HsmClientCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmClientCertificatePublicKey"] = args["HsmClientCertificatePublicKey"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertHsmClientCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailabilityZone = { ["SupportedPlatforms"] = true, ["Name"] = true, nil }

function asserts.AssertAvailabilityZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailabilityZone to be of type 'table'")
	if struct["SupportedPlatforms"] then asserts.AssertSupportedPlatformsList(struct["SupportedPlatforms"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailabilityZone[k], "AvailabilityZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailabilityZone
-- <p>Describes an availability zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportedPlatforms [SupportedPlatformsList] 
-- * Name [String] <p>The name of the availability zone.</p>
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
		["SupportedPlatforms"] = args["SupportedPlatforms"],
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmClientCertificates</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.</p>
-- * HsmClientCertificateIdentifier [String] <p>The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.</p>
-- @return DescribeHsmClientCertificatesMessage structure as a key-value pair table
function M.DescribeHsmClientCertificatesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeHsmClientCertificatesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
	}
	asserts.AssertDescribeHsmClientCertificatesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the IP range, for example, "authorized".</p>
-- * Tags [TagList] <p>The list of tags for the IP range.</p>
-- * CIDRIP [String] <p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>
-- @return IPRange structure as a key-value pair table
function M.IPRange(args)
	assert(args, "You must provide an argument table when creating IPRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Tags"] = args["Tags"],
		["CIDRIP"] = args["CIDRIP"],
	}
	asserts.AssertIPRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return ModifySnapshotCopyRetentionPeriodResult structure as a key-value pair table
function M.ModifySnapshotCopyRetentionPeriodResult(args)
	assert(args, "You must provide an argument table when creating ModifySnapshotCopyRetentionPeriodResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertModifySnapshotCopyRetentionPeriodResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSecurityGroupName [String] <p>The name of the cluster security group to be deleted.</p>
-- Required key: ClusterSecurityGroupName
-- @return DeleteClusterSecurityGroupMessage structure as a key-value pair table
function M.DeleteClusterSecurityGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteClusterSecurityGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
	}
	asserts.AssertDeleteClusterSecurityGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodes</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * ReservedNodeId [String] <p>Identifier for the node reservation.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @return DescribeReservedNodesMessage structure as a key-value pair table
function M.DescribeReservedNodesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedNodesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedNodeId"] = args["ReservedNodeId"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeReservedNodesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeReservedNodeOfferings</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * ReservedNodeOfferingId [String] <p>The unique identifier for the offering.</p>
-- @return DescribeReservedNodeOfferingsMessage structure as a key-value pair table
function M.DescribeReservedNodeOfferingsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeReservedNodeOfferingsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["ReservedNodeOfferingId"] = args["ReservedNodeOfferingId"],
	}
	asserts.AssertDescribeReservedNodeOfferingsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceSnapshotIdentifier [String] <p>The identifier for the source snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid automated snapshot whose state is <code>available</code>.</p> </li> </ul>
-- * SourceSnapshotClusterIdentifier [String] <p>The identifier of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for a valid cluster.</p> </li> </ul>
-- * TargetSnapshotIdentifier [String] <p>The identifier given to the new manual snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for the AWS account that is making the request.</p> </li> </ul>
-- Required key: SourceSnapshotIdentifier
-- Required key: TargetSnapshotIdentifier
-- @return CopyClusterSnapshotMessage structure as a key-value pair table
function M.CopyClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CopyClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceSnapshotIdentifier"] = args["SourceSnapshotIdentifier"],
		["SourceSnapshotClusterIdentifier"] = args["SourceSnapshotClusterIdentifier"],
		["TargetSnapshotIdentifier"] = args["TargetSnapshotIdentifier"],
	}
	asserts.AssertCopyClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountWithRestoreAccess [String] <p>The identifier of the AWS customer account that can no longer restore the specified snapshot.</p>
-- * SnapshotClusterIdentifier [String] <p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- * SnapshotIdentifier [String] <p>The identifier of the snapshot that the account can no longer access.</p>
-- Required key: SnapshotIdentifier
-- Required key: AccountWithRestoreAccess
-- @return RevokeSnapshotAccessMessage structure as a key-value pair table
function M.RevokeSnapshotAccessMessage(args)
	assert(args, "You must provide an argument table when creating RevokeSnapshotAccessMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountWithRestoreAccess"] = args["AccountWithRestoreAccess"],
		["SnapshotClusterIdentifier"] = args["SnapshotClusterIdentifier"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertRevokeSnapshotAccessMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetStatus [String] <p>The status of the subnet.</p>
-- * SubnetIdentifier [String] <p>The identifier of the subnet.</p>
-- * SubnetAvailabilityZone [AvailabilityZone] 
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
		["SubnetStatus"] = args["SubnetStatus"],
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

keys.MaintenanceTrack = { ["DatabaseVersion"] = true, ["MaintenanceTrackName"] = true, ["UpdateTargets"] = true, nil }

function asserts.AssertMaintenanceTrack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceTrack to be of type 'table'")
	if struct["DatabaseVersion"] then asserts.AssertString(struct["DatabaseVersion"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
	if struct["UpdateTargets"] then asserts.AssertEligibleTracksToUpdateList(struct["UpdateTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceTrack[k], "MaintenanceTrack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceTrack
-- <p>Defines a maintenance track that determines which Amazon Redshift version to apply during a maintenance window. If the value for <code>MaintenanceTrack</code> is <code>current</code>, the cluster is updated to the most recently certified maintenance release. If the value is <code>trailing</code>, the cluster is updated to the previously certified maintenance release. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseVersion [String] <p>The version number for the cluster release.</p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track. Possible values are <code>current</code> and <code>trailing</code>.</p>
-- * UpdateTargets [EligibleTracksToUpdateList] <p>An array of <a>UpdateTarget</a> objects to update with the maintenance track. </p>
-- @return MaintenanceTrack structure as a key-value pair table
function M.MaintenanceTrack(args)
	assert(args, "You must provide an argument table when creating MaintenanceTrack")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseVersion"] = args["DatabaseVersion"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["UpdateTargets"] = args["UpdateTargets"],
	}
	asserts.AssertMaintenanceTrack(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptReservedNodeExchangeOutputMessage = { ["ExchangedReservedNode"] = true, nil }

function asserts.AssertAcceptReservedNodeExchangeOutputMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptReservedNodeExchangeOutputMessage to be of type 'table'")
	if struct["ExchangedReservedNode"] then asserts.AssertReservedNode(struct["ExchangedReservedNode"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptReservedNodeExchangeOutputMessage[k], "AcceptReservedNodeExchangeOutputMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptReservedNodeExchangeOutputMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExchangedReservedNode [ReservedNode] 
-- @return AcceptReservedNodeExchangeOutputMessage structure as a key-value pair table
function M.AcceptReservedNodeExchangeOutputMessage(args)
	assert(args, "You must provide an argument table when creating AcceptReservedNodeExchangeOutputMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExchangedReservedNode"] = args["ExchangedReservedNode"],
	}
	asserts.AssertAcceptReservedNodeExchangeOutputMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSecurityGroup [ClusterSecurityGroup] 
-- @return AuthorizeClusterSecurityGroupIngressResult structure as a key-value pair table
function M.AuthorizeClusterSecurityGroupIngressResult(args)
	assert(args, "You must provide an argument table when creating AuthorizeClusterSecurityGroupIngressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSecurityGroup"] = args["ClusterSecurityGroup"],
	}
	asserts.AssertAuthorizeClusterSecurityGroupIngressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupName [String] <p>The name of the parameter group to be modified.</p>
-- * Parameters [ParametersList] <p>An array of parameters to be modified. A maximum of 20 parameters can be modified in a single request.</p> <p>For each parameter to be modified, you must supply at least the parameter name and parameter value; other name-value pairs of the parameter are optional.</p> <p>For the workload management (WLM) configuration, you must supply all the name-value pairs in the wlm_json_configuration parameter.</p>
-- Required key: ParameterGroupName
-- Required key: Parameters
-- @return ModifyClusterParameterGroupMessage structure as a key-value pair table
function M.ModifyClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertModifyClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterSnapshotsMessage = { ["TagKeys"] = true, ["OwnerAccount"] = true, ["TagValues"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["ClusterExists"] = true, ["StartTime"] = true, ["SnapshotType"] = true, ["ClusterIdentifier"] = true, ["EndTime"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterSnapshotsMessage to be of type 'table'")
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["OwnerAccount"] then asserts.AssertString(struct["OwnerAccount"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["ClusterExists"] then asserts.AssertBooleanOptional(struct["ClusterExists"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster snapshots that are associated with the specified key or keys. For example, suppose that you have snapshots that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag keys associated with them.</p>
-- * OwnerAccount [String] <p>The AWS customer account used to create or copy the snapshot. Use this field to filter the results to snapshots owned by a particular account. To describe snapshots you own, either specify your AWS customer account, or do not specify the parameter.</p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster snapshots that are associated with the specified tag value or values. For example, suppose that you have snapshots that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the snapshots that have either or both of these tag values associated with them.</p>
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSnapshots</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * ClusterExists [BooleanOptional] <p>A value that indicates whether to return snapshots only for an existing cluster. Table-level restore can be performed only using a snapshot of an existing cluster, that is, a cluster that has not been deleted. If <code>ClusterExists</code> is set to <code>true</code>, <code>ClusterIdentifier</code> is required.</p>
-- * StartTime [TStamp] <p>A value that requests only snapshots created at or after the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>
-- * SnapshotType [String] <p>The type of snapshots for which you are requesting information. By default, snapshots of all types are returned.</p> <p>Valid Values: <code>automated</code> | <code>manual</code> </p>
-- * ClusterIdentifier [String] <p>The identifier of the cluster for which information about snapshots is requested.</p>
-- * EndTime [TStamp] <p>A time value that requests only snapshots created at or before the specified time. The time value is specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: <code>2012-07-16T18:00:00Z</code> </p>
-- * SnapshotIdentifier [String] <p>The snapshot identifier of the snapshot about which to return information.</p>
-- @return DescribeClusterSnapshotsMessage structure as a key-value pair table
function M.DescribeClusterSnapshotsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterSnapshotsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["OwnerAccount"] = args["OwnerAccount"],
		["TagValues"] = args["TagValues"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["ClusterExists"] = args["ClusterExists"],
		["StartTime"] = args["StartTime"],
		["SnapshotType"] = args["SnapshotType"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["EndTime"] = args["EndTime"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertDescribeClusterSnapshotsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSubnetGroup [ClusterSubnetGroup] 
-- @return ModifyClusterSubnetGroupResult structure as a key-value pair table
function M.ModifyClusterSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyClusterSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSubnetGroup"] = args["ClusterSubnetGroup"],
	}
	asserts.AssertModifyClusterSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return CreateClusterSnapshotResult structure as a key-value pair table
function M.CreateClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertCreateClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceTableName [String] <p>The name of the source table to restore from.</p>
-- * TargetDatabaseName [String] <p>The name of the database to restore the table to.</p>
-- * SourceSchemaName [String] <p>The name of the source schema that contains the table to restore from. If you do not specify a <code>SourceSchemaName</code> value, the default is <code>public</code>.</p>
-- * NewTableName [String] <p>The name of the table to create as a result of the current request.</p>
-- * TargetSchemaName [String] <p>The name of the schema to restore the table to.</p>
-- * ClusterIdentifier [String] <p>The identifier of the Amazon Redshift cluster to restore the table to.</p>
-- * SourceDatabaseName [String] <p>The name of the source database that contains the table to restore from.</p>
-- * SnapshotIdentifier [String] <p>The identifier of the snapshot to restore the table from. This snapshot must have been created from the Amazon Redshift cluster specified by the <code>ClusterIdentifier</code> parameter.</p>
-- Required key: ClusterIdentifier
-- Required key: SnapshotIdentifier
-- Required key: SourceDatabaseName
-- Required key: SourceTableName
-- Required key: NewTableName
-- @return RestoreTableFromClusterSnapshotMessage structure as a key-value pair table
function M.RestoreTableFromClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating RestoreTableFromClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceTableName"] = args["SourceTableName"],
		["TargetDatabaseName"] = args["TargetDatabaseName"],
		["SourceSchemaName"] = args["SourceSchemaName"],
		["NewTableName"] = args["NewTableName"],
		["TargetSchemaName"] = args["TargetSchemaName"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["SourceDatabaseName"] = args["SourceDatabaseName"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertRestoreTableFromClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of a cluster whose resize progress you are requesting. This parameter is case-sensitive.</p> <p>By default, resize operations for all clusters defined for an AWS account are returned.</p>
-- Required key: ClusterIdentifier
-- @return DescribeResizeMessage structure as a key-value pair table
function M.DescribeResizeMessage(args)
	assert(args, "You must provide an argument table when creating DescribeResizeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertDescribeResizeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventSubscriptionsMessage = { ["Marker"] = true, ["TagValues"] = true, ["MaxRecords"] = true, ["TagKeys"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["TagValues"] then asserts.AssertTagValueList(struct["TagValues"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventSubscriptionsMessage[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them.</p>
-- * SubscriptionName [String] <p>The name of the Amazon Redshift event notification subscription to be described.</p>
-- @return DescribeEventSubscriptionsMessage structure as a key-value pair table
function M.DescribeEventSubscriptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEventSubscriptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertDescribeEventSubscriptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return EnableSnapshotCopyResult structure as a key-value pair table
function M.EnableSnapshotCopyResult(args)
	assert(args, "You must provide an argument table when creating EnableSnapshotCopyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertEnableSnapshotCopyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [String] <p>The type of resource with which you want to view tags. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> <li> <p>Snapshot copy grant</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in the Amazon Redshift Cluster Management Guide. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number or response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned <code>marker</code> value. </p>
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>
-- @return DescribeTagsMessage structure as a key-value pair table
function M.DescribeTagsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeTagsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["Marker"] = args["Marker"],
		["ResourceName"] = args["ResourceName"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertDescribeTagsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SupportedPlatform = { ["Name"] = true, nil }

function asserts.AssertSupportedPlatform(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SupportedPlatform to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SupportedPlatform[k], "SupportedPlatform contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SupportedPlatform
-- <p>A list of supported platforms for orderable clusters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] 
-- @return SupportedPlatform structure as a key-value pair table
function M.SupportedPlatform(args)
	assert(args, "You must provide an argument table when creating SupportedPlatform")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertSupportedPlatform(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * OrderableClusterOptions [OrderableClusterOptionsList] <p>An <code>OrderableClusterOption</code> structure containing information about orderable options for the cluster.</p>
-- @return OrderableClusterOptionsMessage structure as a key-value pair table
function M.OrderableClusterOptionsMessage(args)
	assert(args, "You must provide an argument table when creating OrderableClusterOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["OrderableClusterOptions"] = args["OrderableClusterOptions"],
	}
	asserts.AssertOrderableClusterOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetReservedNodeExchangeOfferingsInputMessage = { ["Marker"] = true, ["ReservedNodeId"] = true, ["MaxRecords"] = true, nil }

function asserts.AssertGetReservedNodeExchangeOfferingsInputMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReservedNodeExchangeOfferingsInputMessage to be of type 'table'")
	assert(struct["ReservedNodeId"], "Expected key ReservedNodeId to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedNodeId"] then asserts.AssertString(struct["ReservedNodeId"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReservedNodeExchangeOfferingsInputMessage[k], "GetReservedNodeExchangeOfferingsInputMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReservedNodeExchangeOfferingsInputMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of ReservedNodeOfferings.</p>
-- * ReservedNodeId [String] <p>A string representing the node identifier for the DC1 Reserved Node to be exchanged.</p>
-- * MaxRecords [IntegerOptional] <p>An integer setting the maximum number of ReservedNodeOfferings to retrieve.</p>
-- Required key: ReservedNodeId
-- @return GetReservedNodeExchangeOfferingsInputMessage structure as a key-value pair table
function M.GetReservedNodeExchangeOfferingsInputMessage(args)
	assert(args, "You must provide an argument table when creating GetReservedNodeExchangeOfferingsInputMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedNodeId"] = args["ReservedNodeId"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertGetReservedNodeExchangeOfferingsInputMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return DeleteClusterResult structure as a key-value pair table
function M.DeleteClusterResult(args)
	assert(args, "You must provide an argument table when creating DeleteClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDeleteClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeOrderableClusterOptions</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * NodeType [String] <p>The node type filter value. Specify this parameter to show only the available offerings matching the specified node type.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * ClusterVersion [String] <p>The version filter value. Specify this parameter to show only the available offerings matching the specified version.</p> <p>Default: All versions.</p> <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>
-- @return DescribeOrderableClusterOptionsMessage structure as a key-value pair table
function M.DescribeOrderableClusterOptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOrderableClusterOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["NodeType"] = args["NodeType"],
		["MaxRecords"] = args["MaxRecords"],
		["ClusterVersion"] = args["ClusterVersion"],
	}
	asserts.AssertDescribeOrderableClusterOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetIds [SubnetIdentifierList] <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * ClusterSubnetGroupName [String] <p>The name for the subnet group. Amazon Redshift stores the value as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain no more than 255 alphanumeric characters or hyphens.</p> </li> <li> <p>Must not be "Default".</p> </li> <li> <p>Must be unique for all subnet groups that are created by your AWS account.</p> </li> </ul> <p>Example: <code>examplesubnetgroup</code> </p>
-- * Description [String] <p>A description for the subnet group.</p>
-- Required key: ClusterSubnetGroupName
-- Required key: Description
-- Required key: SubnetIds
-- @return CreateClusterSubnetGroupMessage structure as a key-value pair table
function M.CreateClusterSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateClusterSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetIds"] = args["SubnetIds"],
		["Tags"] = args["Tags"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateClusterSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IPRanges [IPRangeList] <p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated with this cluster security group.</p>
-- * Tags [TagList] <p>The list of tags for the cluster security group.</p>
-- * ClusterSecurityGroupName [String] <p>The name of the cluster security group to which the operation was applied.</p>
-- * Description [String] <p>A description of the security group.</p>
-- * EC2SecurityGroups [EC2SecurityGroupList] <p>A list of EC2 security groups that are permitted to access clusters associated with this cluster security group.</p>
-- @return ClusterSecurityGroup structure as a key-value pair table
function M.ClusterSecurityGroup(args)
	assert(args, "You must provide an argument table when creating ClusterSecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IPRanges"] = args["IPRanges"],
		["Tags"] = args["Tags"],
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
		["Description"] = args["Description"],
		["EC2SecurityGroups"] = args["EC2SecurityGroups"],
	}
	asserts.AssertClusterSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterSubnetGroups</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching cluster subnet groups that are associated with the specified tag value or values. For example, suppose that you have subnet groups that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching cluster subnet groups that are associated with the specified key or keys. For example, suppose that you have subnet groups that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subnet groups that have either or both of these tag keys associated with them.</p>
-- * ClusterSubnetGroupName [String] <p>The name of the cluster subnet group for which information is requested.</p>
-- @return DescribeClusterSubnetGroupsMessage structure as a key-value pair table
function M.DescribeClusterSubnetGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterSubnetGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
	}
	asserts.AssertDescribeClusterSubnetGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyClusterDbRevisionMessage = { ["ClusterIdentifier"] = true, ["RevisionTarget"] = true, nil }

function asserts.AssertModifyClusterDbRevisionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyClusterDbRevisionMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["RevisionTarget"], "Expected key RevisionTarget to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["RevisionTarget"] then asserts.AssertString(struct["RevisionTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyClusterDbRevisionMessage[k], "ModifyClusterDbRevisionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyClusterDbRevisionMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of a cluster whose database revision you want to modify. </p> <p>Example: <code>examplecluster</code> </p>
-- * RevisionTarget [String] <p>The identifier of the database revision. You can retrieve this value from the response to the <a>DescribeClusterDbRevisions</a> request.</p>
-- Required key: ClusterIdentifier
-- Required key: RevisionTarget
-- @return ModifyClusterDbRevisionMessage structure as a key-value pair table
function M.ModifyClusterDbRevisionMessage(args)
	assert(args, "You must provide an argument table when creating ModifyClusterDbRevisionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["RevisionTarget"] = args["RevisionTarget"],
	}
	asserts.AssertModifyClusterDbRevisionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3KeyPrefix [String] <p>The prefix applied to the log file names.</p> <p>Constraints:</p> <ul> <li> <p>Cannot exceed 512 characters</p> </li> <li> <p>Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash (\), or control characters. The hexadecimal codes for invalid characters are: </p> <ul> <li> <p>x00 to x20</p> </li> <li> <p>x22</p> </li> <li> <p>x27</p> </li> <li> <p>x5c</p> </li> <li> <p>x7f or larger</p> </li> </ul> </li> </ul>
-- * ClusterIdentifier [String] <p>The identifier of the cluster on which logging is to be started.</p> <p>Example: <code>examplecluster</code> </p>
-- * BucketName [String] <p>The name of an existing S3 bucket where the log files are to be stored.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the same region as the cluster</p> </li> <li> <p>The cluster must have read bucket and put object permissions</p> </li> </ul>
-- Required key: ClusterIdentifier
-- Required key: BucketName
-- @return EnableLoggingMessage structure as a key-value pair table
function M.EnableLoggingMessage(args)
	assert(args, "You must provide an argument table when creating EnableLoggingMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["BucketName"] = args["BucketName"],
	}
	asserts.AssertEnableLoggingMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterDbRevisionsMessage = { ["Marker"] = true, ["ClusterDbRevisions"] = true, nil }

function asserts.AssertClusterDbRevisionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterDbRevisionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ClusterDbRevisions"] then asserts.AssertClusterDbRevisionsList(struct["ClusterDbRevisions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterDbRevisionsMessage[k], "ClusterDbRevisionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterDbRevisionsMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A string representing the starting point for the next set of revisions. If a value is returned in a response, you can retrieve the next set of revisions by providing the value in the <code>marker</code> parameter and retrying the command. If the <code>marker</code> field is empty, all revisions have already been returned.</p>
-- * ClusterDbRevisions [ClusterDbRevisionsList] <p>A list of revisions.</p>
-- @return ClusterDbRevisionsMessage structure as a key-value pair table
function M.ClusterDbRevisionsMessage(args)
	assert(args, "You must provide an argument table when creating ClusterDbRevisionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterDbRevisions"] = args["ClusterDbRevisions"],
	}
	asserts.AssertClusterDbRevisionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p>The EC2 security group to be added the Amazon Redshift security group.</p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS account number of the owner of the security group specified by the <i>EC2SecurityGroupName</i> parameter. The AWS Access Key ID is not an acceptable value. </p> <p>Example: <code>111122223333</code> </p>
-- * ClusterSecurityGroupName [String] <p>The name of the security group to which the ingress rule is added.</p>
-- * CIDRIP [String] <p>The IP range to be added the Amazon Redshift security group.</p>
-- Required key: ClusterSecurityGroupName
-- @return AuthorizeClusterSecurityGroupIngressMessage structure as a key-value pair table
function M.AuthorizeClusterSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating AuthorizeClusterSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
		["CIDRIP"] = args["CIDRIP"],
	}
	asserts.AssertAuthorizeClusterSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * Parameters [ParametersList] <p>A list of <a>Parameter</a> instances. Each instance lists the parameters of one cluster parameter group. </p>
-- @return ClusterParameterGroupDetails structure as a key-value pair table
function M.ClusterParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating ClusterParameterGroupDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertClusterParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Snapshot = { ["MasterUsername"] = true, ["OwnerAccount"] = true, ["CurrentBackupRateInMegaBytesPerSecond"] = true, ["ActualIncrementalBackupSizeInMegaBytes"] = true, ["NumberOfNodes"] = true, ["Status"] = true, ["VpcId"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["EnhancedVpcRouting"] = true, ["EstimatedSecondsToCompletion"] = true, ["SourceRegion"] = true, ["AccountsWithRestoreAccess"] = true, ["TotalBackupSizeInMegaBytes"] = true, ["DBName"] = true, ["BackupProgressInMegaBytes"] = true, ["MaintenanceTrackName"] = true, ["ClusterCreateTime"] = true, ["RestorableNodeTypes"] = true, ["EncryptedWithHSM"] = true, ["ClusterIdentifier"] = true, ["SnapshotCreateTime"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["Encrypted"] = true, ["ElapsedTimeInSeconds"] = true, ["KmsKeyId"] = true, ["SnapshotType"] = true, ["Port"] = true, ["SnapshotIdentifier"] = true, nil }

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
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>The master user name for the cluster.</p>
-- * OwnerAccount [String] <p>For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.</p>
-- * CurrentBackupRateInMegaBytesPerSecond [Double] <p>The number of megabytes per second being transferred to the snapshot backup. Returns <code>0</code> for a completed backup. </p>
-- * ActualIncrementalBackupSizeInMegaBytes [Double] <p>The size of the incremental backup.</p>
-- * NumberOfNodes [Integer] <p>The number of nodes in the cluster.</p>
-- * Status [String] <p>The snapshot status. The value of the status depends on the API operation used. </p> <ul> <li> <p> <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as "creating". </p> </li> <li> <p> <a>DescribeClusterSnapshots</a> returns status as "creating", "available", "final snapshot", or "failed".</p> </li> <li> <p> <a>DeleteClusterSnapshot</a> returns status as "deleted".</p> </li> </ul>
-- * VpcId [String] <p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.</p>
-- * ClusterVersion [String] <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
-- * Tags [TagList] <p>The list of tags for the cluster snapshot.</p>
-- * EnhancedVpcRouting [Boolean] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * EstimatedSecondsToCompletion [Long] <p>The estimate of the time remaining before the snapshot backup will complete. Returns <code>0</code> for a completed backup. </p>
-- * SourceRegion [String] <p>The source region from which the snapshot was copied.</p>
-- * AccountsWithRestoreAccess [AccountsWithRestoreAccessList] <p>A list of the AWS customer accounts authorized to restore the snapshot. Returns <code>null</code> if no accounts are authorized. Visible only to the snapshot owner. </p>
-- * TotalBackupSizeInMegaBytes [Double] <p>The size of the complete set of backup data that would be used to restore the cluster.</p>
-- * DBName [String] <p>The name of the database that was created when the cluster was created.</p>
-- * BackupProgressInMegaBytes [Double] <p>The number of megabytes that have been transferred to the snapshot backup.</p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track for the snapshot.</p>
-- * ClusterCreateTime [TStamp] <p>The time (UTC) when the cluster was originally created.</p>
-- * RestorableNodeTypes [RestorableNodeTypeList] <p>The list of node types that this cluster snapshot is able to restore into.</p>
-- * EncryptedWithHSM [Boolean] <p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. <code>true</code> indicates that the data is encrypted using HSM keys.</p>
-- * ClusterIdentifier [String] <p>The identifier of the cluster for which the snapshot was taken.</p>
-- * SnapshotCreateTime [TStamp] <p>The time (UTC) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.</p>
-- * AvailabilityZone [String] <p>The Availability Zone in which the cluster was created.</p>
-- * NodeType [String] <p>The node type of the nodes in the cluster.</p>
-- * Encrypted [Boolean] <p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>
-- * ElapsedTimeInSeconds [Long] <p>The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.</p>
-- * KmsKeyId [String] <p>The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.</p>
-- * SnapshotType [String] <p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> will be of type "manual". </p>
-- * Port [Integer] <p>The port that the cluster is listening on.</p>
-- * SnapshotIdentifier [String] <p>The snapshot identifier that is provided in the request.</p>
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
		["MasterUsername"] = args["MasterUsername"],
		["OwnerAccount"] = args["OwnerAccount"],
		["CurrentBackupRateInMegaBytesPerSecond"] = args["CurrentBackupRateInMegaBytesPerSecond"],
		["ActualIncrementalBackupSizeInMegaBytes"] = args["ActualIncrementalBackupSizeInMegaBytes"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["Status"] = args["Status"],
		["VpcId"] = args["VpcId"],
		["ClusterVersion"] = args["ClusterVersion"],
		["Tags"] = args["Tags"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["EstimatedSecondsToCompletion"] = args["EstimatedSecondsToCompletion"],
		["SourceRegion"] = args["SourceRegion"],
		["AccountsWithRestoreAccess"] = args["AccountsWithRestoreAccess"],
		["TotalBackupSizeInMegaBytes"] = args["TotalBackupSizeInMegaBytes"],
		["DBName"] = args["DBName"],
		["BackupProgressInMegaBytes"] = args["BackupProgressInMegaBytes"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["RestorableNodeTypes"] = args["RestorableNodeTypes"],
		["EncryptedWithHSM"] = args["EncryptedWithHSM"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["SnapshotCreateTime"] = args["SnapshotCreateTime"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["NodeType"] = args["NodeType"],
		["Encrypted"] = args["Encrypted"],
		["ElapsedTimeInSeconds"] = args["ElapsedTimeInSeconds"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SnapshotType"] = args["SnapshotType"],
		["Port"] = args["Port"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmClientCertificateIdentifier [String] <p>The identifier of the HSM client certificate to be deleted.</p>
-- Required key: HsmClientCertificateIdentifier
-- @return DeleteHsmClientCertificateMessage structure as a key-value pair table
function M.DeleteHsmClientCertificateMessage(args)
	assert(args, "You must provide an argument table when creating DeleteHsmClientCertificateMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmClientCertificateIdentifier"] = args["HsmClientCertificateIdentifier"],
	}
	asserts.AssertDeleteHsmClientCertificateMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountWithRestoreAccess [String] <p>The identifier of the AWS customer account authorized to restore the specified snapshot.</p> <p>To share a snapshot with AWS support, specify amazon-redshift-support.</p>
-- * SnapshotClusterIdentifier [String] <p>The identifier of the cluster the snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.</p>
-- * SnapshotIdentifier [String] <p>The identifier of the snapshot the account is authorized to restore.</p>
-- Required key: SnapshotIdentifier
-- Required key: AccountWithRestoreAccess
-- @return AuthorizeSnapshotAccessMessage structure as a key-value pair table
function M.AuthorizeSnapshotAccessMessage(args)
	assert(args, "You must provide an argument table when creating AuthorizeSnapshotAccessMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountWithRestoreAccess"] = args["AccountWithRestoreAccess"],
		["SnapshotClusterIdentifier"] = args["SnapshotClusterIdentifier"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertAuthorizeSnapshotAccessMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResizeClusterMessage = { ["ClusterIdentifier"] = true, ["NodeType"] = true, ["ClusterType"] = true, ["NumberOfNodes"] = true, ["Classic"] = true, nil }

function asserts.AssertResizeClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeClusterMessage to be of type 'table'")
	assert(struct["ClusterIdentifier"], "Expected key ClusterIdentifier to exist in table")
	assert(struct["NumberOfNodes"], "Expected key NumberOfNodes to exist in table")
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["ClusterType"] then asserts.AssertString(struct["ClusterType"]) end
	if struct["NumberOfNodes"] then asserts.AssertInteger(struct["NumberOfNodes"]) end
	if struct["Classic"] then asserts.AssertBooleanOptional(struct["Classic"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResizeClusterMessage[k], "ResizeClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeClusterMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier for the cluster to resize.</p>
-- * NodeType [String] <p>The new node type for the nodes you are adding.</p>
-- * ClusterType [String] <p>The new cluster type for the specified cluster.</p>
-- * NumberOfNodes [Integer] <p>The new number of nodes for the cluster.</p>
-- * Classic [BooleanOptional] <p>A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to <code>false</code> the resize type is elastic. </p>
-- Required key: ClusterIdentifier
-- Required key: NumberOfNodes
-- @return ResizeClusterMessage structure as a key-value pair table
function M.ResizeClusterMessage(args)
	assert(args, "You must provide an argument table when creating ResizeClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["NodeType"] = args["NodeType"],
		["ClusterType"] = args["ClusterType"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["Classic"] = args["Classic"],
	}
	asserts.AssertResizeClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Snapshot [Snapshot] 
-- @return AuthorizeSnapshotAccessResult structure as a key-value pair table
function M.AuthorizeSnapshotAccessResult(args)
	assert(args, "You must provide an argument table when creating AuthorizeSnapshotAccessResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Snapshot"] = args["Snapshot"],
	}
	asserts.AssertAuthorizeSnapshotAccessResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTarget = { ["DatabaseVersion"] = true, ["MaintenanceTrackName"] = true, nil }

function asserts.AssertUpdateTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTarget to be of type 'table'")
	if struct["DatabaseVersion"] then asserts.AssertString(struct["DatabaseVersion"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTarget[k], "UpdateTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTarget
-- <p>A maintenance track that you can switch the current track to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseVersion [String] <p>The cluster version for the new maintenance track.</p>
-- * MaintenanceTrackName [String] <p>The name of the new maintenance track.</p>
-- @return UpdateTarget structure as a key-value pair table
function M.UpdateTarget(args)
	assert(args, "You must provide an argument table when creating UpdateTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseVersion"] = args["DatabaseVersion"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
	}
	asserts.AssertUpdateTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * TaggedResources [TaggedResourceList] <p>A list of tags with their associated resources.</p>
-- @return TaggedResourceListMessage structure as a key-value pair table
function M.TaggedResourceListMessage(args)
	assert(args, "You must provide an argument table when creating TaggedResourceListMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TaggedResources"] = args["TaggedResources"],
	}
	asserts.AssertTaggedResourceListMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- * KmsKeyId [String] <p>The unique identifier of the customer master key (CMK) in AWS KMS to which Amazon Redshift is granted permission.</p>
-- @return SnapshotCopyGrant structure as a key-value pair table
function M.SnapshotCopyGrant(args)
	assert(args, "You must provide an argument table when creating SnapshotCopyGrant")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
		["KmsKeyId"] = args["KmsKeyId"],
	}
	asserts.AssertSnapshotCopyGrant(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of the source cluster to copy snapshots from.</p> <p>Constraints: Must be the valid name of an existing cluster that does not already have cross-region snapshot copy enabled.</p>
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.</p>
-- * DestinationRegion [String] <p>The destination region that you want to copy snapshots to.</p> <p>Constraints: Must be the name of a valid region. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region">Regions and Endpoints</a> in the Amazon Web Services General Reference. </p>
-- * RetentionPeriod [IntegerOptional] <p>The number of days to retain automated snapshots in the destination region after they are copied from the source region.</p> <p>Default: 7.</p> <p>Constraints: Must be at least 1 and no more than 35.</p>
-- Required key: ClusterIdentifier
-- Required key: DestinationRegion
-- @return EnableSnapshotCopyMessage structure as a key-value pair table
function M.EnableSnapshotCopyMessage(args)
	assert(args, "You must provide an argument table when creating EnableSnapshotCopyMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
		["DestinationRegion"] = args["DestinationRegion"],
		["RetentionPeriod"] = args["RetentionPeriod"],
	}
	asserts.AssertEnableSnapshotCopyMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["VpcSecurityGroups"] = true, ["HsmStatus"] = true, ["ClusterPublicKey"] = true, ["ModifyStatus"] = true, ["NumberOfNodes"] = true, ["PendingModifiedValues"] = true, ["IamRoles"] = true, ["VpcId"] = true, ["ClusterVersion"] = true, ["Tags"] = true, ["PendingActions"] = true, ["AutomatedSnapshotRetentionPeriod"] = true, ["ClusterParameterGroups"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["Endpoint"] = true, ["RestoreStatus"] = true, ["ElasticIpStatus"] = true, ["AllowVersionUpgrade"] = true, ["MaintenanceTrackName"] = true, ["ClusterCreateTime"] = true, ["ClusterSubnetGroupName"] = true, ["EnhancedVpcRouting"] = true, ["ClusterSecurityGroups"] = true, ["ClusterIdentifier"] = true, ["ClusterNodes"] = true, ["AvailabilityZone"] = true, ["NodeType"] = true, ["Encrypted"] = true, ["ClusterRevisionNumber"] = true, ["ClusterSnapshotCopyStatus"] = true, ["KmsKeyId"] = true, ["ElasticResizeNumberOfNodeOptions"] = true, ["ClusterStatus"] = true, nil }

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
	if struct["PendingActions"] then asserts.AssertPendingActionsList(struct["PendingActions"]) end
	if struct["AutomatedSnapshotRetentionPeriod"] then asserts.AssertInteger(struct["AutomatedSnapshotRetentionPeriod"]) end
	if struct["ClusterParameterGroups"] then asserts.AssertClusterParameterGroupStatusList(struct["ClusterParameterGroups"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["RestoreStatus"] then asserts.AssertRestoreStatus(struct["RestoreStatus"]) end
	if struct["ElasticIpStatus"] then asserts.AssertElasticIpStatus(struct["ElasticIpStatus"]) end
	if struct["AllowVersionUpgrade"] then asserts.AssertBoolean(struct["AllowVersionUpgrade"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
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
	if struct["ElasticResizeNumberOfNodeOptions"] then asserts.AssertString(struct["ElasticResizeNumberOfNodeOptions"]) end
	if struct["ClusterStatus"] then asserts.AssertString(struct["ClusterStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>Describes a cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PubliclyAccessible [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that the cluster can be accessed from a public network.</p>
-- * MasterUsername [String] <p>The master user name for the cluster. This name is used to connect to the database that is specified in the <b>DBName</b> parameter. </p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are associated with the cluster. This parameter is returned only if the cluster is in a VPC.</p>
-- * HsmStatus [HsmStatus] <p>A value that reports whether the Amazon Redshift cluster has finished applying any hardware security module (HSM) settings changes specified in a modify cluster command.</p> <p>Values: active, applying</p>
-- * ClusterPublicKey [String] <p>The public key for the cluster.</p>
-- * ModifyStatus [String] <p>The status of a modify operation, if any, initiated for the cluster.</p>
-- * NumberOfNodes [Integer] <p>The number of compute nodes in the cluster.</p>
-- * PendingModifiedValues [PendingModifiedValues] <p>A value that, if present, indicates that changes to the cluster are pending. Specific pending changes are identified by subelements.</p>
-- * IamRoles [ClusterIamRoleList] <p>A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p>
-- * VpcId [String] <p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>
-- * ClusterVersion [String] <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
-- * Tags [TagList] <p>The list of tags for the cluster.</p>
-- * PendingActions [PendingActionsList] <p>Cluster operations that are waiting to be started.</p>
-- * AutomatedSnapshotRetentionPeriod [Integer] <p>The number of days that automatic cluster snapshots are retained.</p>
-- * ClusterParameterGroups [ClusterParameterGroupStatusList] <p>The list of cluster parameter groups that are associated with this cluster. Each parameter group in the list is returned with its status.</p>
-- * DBName [String] <p>The name of the initial database that was created when the cluster was created. This same name is returned for the life of the cluster. If an initial database was not specified, a database named <code>dev</code>dev was created by default. </p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range, in Universal Coordinated Time (UTC), during which system maintenance can occur.</p>
-- * Endpoint [Endpoint] <p>The connection endpoint.</p>
-- * RestoreStatus [RestoreStatus] <p>A value that describes the status of a cluster restore action. This parameter returns null if the cluster was not created by restoring a snapshot.</p>
-- * ElasticIpStatus [ElasticIpStatus] <p>The status of the elastic IP (EIP) address.</p>
-- * AllowVersionUpgrade [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that major version upgrades will be applied automatically to the cluster during the maintenance window. </p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track for the cluster.</p>
-- * ClusterCreateTime [TStamp] <p>The date and time that the cluster was created.</p>
-- * ClusterSubnetGroupName [String] <p>The name of the subnet group that is associated with the cluster. This parameter is valid only when the cluster is in a VPC.</p>
-- * EnhancedVpcRouting [Boolean] <p>An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p> <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p> <p>Default: false</p>
-- * ClusterSecurityGroups [ClusterSecurityGroupMembershipList] <p>A list of cluster security group that are associated with the cluster. Each security group is represented by an element that contains <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code> subelements. </p> <p>Cluster security groups are used when the cluster is not created in an Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups, which are listed by the <b>VpcSecurityGroups</b> parameter. </p>
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster.</p>
-- * ClusterNodes [ClusterNodesList] <p>The nodes in the cluster.</p>
-- * AvailabilityZone [String] <p>The name of the Availability Zone in which the cluster is located.</p>
-- * NodeType [String] <p>The node type for the nodes in the cluster.</p>
-- * Encrypted [Boolean] <p>A Boolean value that, if <code>true</code>, indicates that data in the cluster is encrypted at rest.</p>
-- * ClusterRevisionNumber [String] <p>The specific revision number of the database in the cluster.</p>
-- * ClusterSnapshotCopyStatus [ClusterSnapshotCopyStatus] <p>A value that returns the destination region and retention period that are configured for cross-region snapshot copy.</p>
-- * KmsKeyId [String] <p>The AWS Key Management Service (AWS KMS) key ID of the encryption key used to encrypt data in the cluster.</p>
-- * ElasticResizeNumberOfNodeOptions [String] <p>Indicates the number of nodes the cluster can be resized to with the elastic resize method. </p>
-- * ClusterStatus [String] <p> The current state of the cluster. Possible values are the following:</p> <ul> <li> <p> <code>available</code> </p> </li> <li> <p> <code>creating</code> </p> </li> <li> <p> <code>deleting</code> </p> </li> <li> <p> <code>final-snapshot</code> </p> </li> <li> <p> <code>hardware-failure</code> </p> </li> <li> <p> <code>incompatible-hsm</code> </p> </li> <li> <p> <code>incompatible-network</code> </p> </li> <li> <p> <code>incompatible-parameters</code> </p> </li> <li> <p> <code>incompatible-restore</code> </p> </li> <li> <p> <code>modifying</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>renaming</code> </p> </li> <li> <p> <code>resizing</code> </p> </li> <li> <p> <code>rotating-keys</code> </p> </li> <li> <p> <code>storage-full</code> </p> </li> <li> <p> <code>updating-hsm</code> </p> </li> </ul>
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
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["MasterUsername"] = args["MasterUsername"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["HsmStatus"] = args["HsmStatus"],
		["ClusterPublicKey"] = args["ClusterPublicKey"],
		["ModifyStatus"] = args["ModifyStatus"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
		["IamRoles"] = args["IamRoles"],
		["VpcId"] = args["VpcId"],
		["ClusterVersion"] = args["ClusterVersion"],
		["Tags"] = args["Tags"],
		["PendingActions"] = args["PendingActions"],
		["AutomatedSnapshotRetentionPeriod"] = args["AutomatedSnapshotRetentionPeriod"],
		["ClusterParameterGroups"] = args["ClusterParameterGroups"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Endpoint"] = args["Endpoint"],
		["RestoreStatus"] = args["RestoreStatus"],
		["ElasticIpStatus"] = args["ElasticIpStatus"],
		["AllowVersionUpgrade"] = args["AllowVersionUpgrade"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["ClusterSubnetGroupName"] = args["ClusterSubnetGroupName"],
		["EnhancedVpcRouting"] = args["EnhancedVpcRouting"],
		["ClusterSecurityGroups"] = args["ClusterSecurityGroups"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["ClusterNodes"] = args["ClusterNodes"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["NodeType"] = args["NodeType"],
		["Encrypted"] = args["Encrypted"],
		["ClusterRevisionNumber"] = args["ClusterRevisionNumber"],
		["ClusterSnapshotCopyStatus"] = args["ClusterSnapshotCopyStatus"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ElasticResizeNumberOfNodeOptions"] = args["ElasticResizeNumberOfNodeOptions"],
		["ClusterStatus"] = args["ClusterStatus"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the restore action. Returns starting, restoring, completed, or failed.</p>
-- * ProgressInMegaBytes [Long] <p>The number of megabytes that have been transferred from snapshot storage.</p>
-- * CurrentRestoreRateInMegaBytesPerSecond [Double] <p>The number of megabytes per second being transferred from the backup storage. Returns the average rate for a completed backup.</p>
-- * EstimatedTimeToCompletionInSeconds [Long] <p>The estimate of the time remaining before the restore will complete. Returns 0 for a completed restore.</p>
-- * ElapsedTimeInSeconds [Long] <p>The amount of time an in-progress restore has been running, or the amount of time it took a completed restore to finish.</p>
-- * SnapshotSizeInMegaBytes [Long] <p>The size of the set of snapshot data used to restore the cluster.</p>
-- @return RestoreStatus structure as a key-value pair table
function M.RestoreStatus(args)
	assert(args, "You must provide an argument table when creating RestoreStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ProgressInMegaBytes"] = args["ProgressInMegaBytes"],
		["CurrentRestoreRateInMegaBytesPerSecond"] = args["CurrentRestoreRateInMegaBytesPerSecond"],
		["EstimatedTimeToCompletionInSeconds"] = args["EstimatedTimeToCompletionInSeconds"],
		["ElapsedTimeInSeconds"] = args["ElapsedTimeInSeconds"],
		["SnapshotSizeInMegaBytes"] = args["SnapshotSizeInMegaBytes"],
	}
	asserts.AssertRestoreStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusterParameters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * Source [String] <p>The parameter types to return. Specify <code>user</code> to show parameters that are different form the default. Similarly, specify <code>engine-default</code> to show parameters that are the same as the default parameter group. </p> <p>Default: All parameter types returned.</p> <p>Valid Values: <code>user</code> | <code>engine-default</code> </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * ParameterGroupName [String] <p>The name of a cluster parameter group for which to return details.</p>
-- Required key: ParameterGroupName
-- @return DescribeClusterParametersMessage structure as a key-value pair table
function M.DescribeClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["Source"] = args["Source"],
		["MaxRecords"] = args["MaxRecords"],
		["ParameterGroupName"] = args["ParameterGroupName"],
	}
	asserts.AssertDescribeClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultClusterParameters [DefaultClusterParameters] 
-- @return DescribeDefaultClusterParametersResult structure as a key-value pair table
function M.DescribeDefaultClusterParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeDefaultClusterParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultClusterParameters"] = args["DefaultClusterParameters"],
	}
	asserts.AssertDescribeDefaultClusterParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResizeProgressMessage = { ["Status"] = true, ["ImportTablesCompleted"] = true, ["TargetEncryptionType"] = true, ["EstimatedTimeToCompletionInSeconds"] = true, ["ProgressInMegaBytes"] = true, ["TargetClusterType"] = true, ["TotalResizeDataInMegaBytes"] = true, ["TargetNumberOfNodes"] = true, ["ImportTablesInProgress"] = true, ["ImportTablesNotStarted"] = true, ["ResizeType"] = true, ["AvgResizeRateInMegaBytesPerSecond"] = true, ["ElapsedTimeInSeconds"] = true, ["Message"] = true, ["TargetNodeType"] = true, nil }

function asserts.AssertResizeProgressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResizeProgressMessage to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["ImportTablesCompleted"] then asserts.AssertImportTablesCompleted(struct["ImportTablesCompleted"]) end
	if struct["TargetEncryptionType"] then asserts.AssertString(struct["TargetEncryptionType"]) end
	if struct["EstimatedTimeToCompletionInSeconds"] then asserts.AssertLongOptional(struct["EstimatedTimeToCompletionInSeconds"]) end
	if struct["ProgressInMegaBytes"] then asserts.AssertLongOptional(struct["ProgressInMegaBytes"]) end
	if struct["TargetClusterType"] then asserts.AssertString(struct["TargetClusterType"]) end
	if struct["TotalResizeDataInMegaBytes"] then asserts.AssertLongOptional(struct["TotalResizeDataInMegaBytes"]) end
	if struct["TargetNumberOfNodes"] then asserts.AssertIntegerOptional(struct["TargetNumberOfNodes"]) end
	if struct["ImportTablesInProgress"] then asserts.AssertImportTablesInProgress(struct["ImportTablesInProgress"]) end
	if struct["ImportTablesNotStarted"] then asserts.AssertImportTablesNotStarted(struct["ImportTablesNotStarted"]) end
	if struct["ResizeType"] then asserts.AssertString(struct["ResizeType"]) end
	if struct["AvgResizeRateInMegaBytesPerSecond"] then asserts.AssertDoubleOptional(struct["AvgResizeRateInMegaBytesPerSecond"]) end
	if struct["ElapsedTimeInSeconds"] then asserts.AssertLongOptional(struct["ElapsedTimeInSeconds"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["TargetNodeType"] then asserts.AssertString(struct["TargetNodeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResizeProgressMessage[k], "ResizeProgressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResizeProgressMessage
-- <p>Describes the result of a cluster resize operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the resize operation.</p> <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> | <code>SUCCEEDED</code> </p>
-- * ImportTablesCompleted [ImportTablesCompleted] <p>The names of tables that have been completely imported .</p> <p>Valid Values: List of table names.</p>
-- * TargetEncryptionType [String] <p>The type of encryption for the cluster after the resize is complete.</p> <p>Possible values are <code>KMS</code> and <code>None</code>. In the China region possible values are: <code>Legacy</code> and <code>None</code>.</p>
-- * EstimatedTimeToCompletionInSeconds [LongOptional] <p>The estimated time remaining, in seconds, until the resize operation is complete. This value is calculated based on the average resize rate and the estimated amount of data remaining to be processed. Once the resize operation is complete, this value will be 0.</p>
-- * ProgressInMegaBytes [LongOptional] <p>While the resize operation is in progress, this value shows the current amount of data, in megabytes, that has been processed so far. When the resize operation is complete, this value shows the total amount of data, in megabytes, on the cluster, which may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data before resize).</p>
-- * TargetClusterType [String] <p>The cluster type after the resize operation is complete.</p> <p>Valid Values: <code>multi-node</code> | <code>single-node</code> </p>
-- * TotalResizeDataInMegaBytes [LongOptional] <p>The estimated total amount of data, in megabytes, on the cluster before the resize operation began.</p>
-- * TargetNumberOfNodes [IntegerOptional] <p>The number of nodes that the cluster will have after the resize operation is complete.</p>
-- * ImportTablesInProgress [ImportTablesInProgress] <p>The names of tables that are being currently imported.</p> <p>Valid Values: List of table names.</p>
-- * ImportTablesNotStarted [ImportTablesNotStarted] <p>The names of tables that have not been yet imported.</p> <p>Valid Values: List of table names</p>
-- * ResizeType [String] <p>An enum with possible values of ClassicResize and ElasticResize. These values describe the type of resize operation being performed. </p>
-- * AvgResizeRateInMegaBytesPerSecond [DoubleOptional] <p>The average rate of the resize operation over the last few minutes, measured in megabytes per second. After the resize operation completes, this value shows the average rate of the entire resize operation.</p>
-- * ElapsedTimeInSeconds [LongOptional] <p>The amount of seconds that have elapsed since the resize operation began. After the resize operation completes, this value shows the total actual time, in seconds, for the resize operation.</p>
-- * Message [String] <p>An optional string to provide additional details about the resize action.</p>
-- * TargetNodeType [String] <p>The node type that the cluster will have after the resize operation is complete.</p>
-- @return ResizeProgressMessage structure as a key-value pair table
function M.ResizeProgressMessage(args)
	assert(args, "You must provide an argument table when creating ResizeProgressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ImportTablesCompleted"] = args["ImportTablesCompleted"],
		["TargetEncryptionType"] = args["TargetEncryptionType"],
		["EstimatedTimeToCompletionInSeconds"] = args["EstimatedTimeToCompletionInSeconds"],
		["ProgressInMegaBytes"] = args["ProgressInMegaBytes"],
		["TargetClusterType"] = args["TargetClusterType"],
		["TotalResizeDataInMegaBytes"] = args["TotalResizeDataInMegaBytes"],
		["TargetNumberOfNodes"] = args["TargetNumberOfNodes"],
		["ImportTablesInProgress"] = args["ImportTablesInProgress"],
		["ImportTablesNotStarted"] = args["ImportTablesNotStarted"],
		["ResizeType"] = args["ResizeType"],
		["AvgResizeRateInMegaBytesPerSecond"] = args["AvgResizeRateInMegaBytesPerSecond"],
		["ElapsedTimeInSeconds"] = args["ElapsedTimeInSeconds"],
		["Message"] = args["Message"],
		["TargetNodeType"] = args["TargetNodeType"],
	}
	asserts.AssertResizeProgressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeHsmConfigurations</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching HSM configurations that are associated with the specified tag value or values. For example, suppose that you have HSM configurations that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching HSM configurations that are associated with the specified key or keys. For example, suppose that you have HSM configurations that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM configurations that have either or both of these tag keys associated with them.</p>
-- * HsmConfigurationIdentifier [String] <p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no identifier is specified, information is returned for all HSM configurations owned by your AWS customer account.</p>
-- @return DescribeHsmConfigurationsMessage structure as a key-value pair table
function M.DescribeHsmConfigurationsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeHsmConfigurationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["TagKeys"] = args["TagKeys"],
		["HsmConfigurationIdentifier"] = args["HsmConfigurationIdentifier"],
	}
	asserts.AssertDescribeHsmConfigurationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional pagination token provided by a previous <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the <code>MaxRecords</code> parameter.</p>
-- * ClusterIdentifier [String] <p>The Amazon Redshift cluster that the table is being restored to.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
-- * TableRestoreRequestId [String] <p>The identifier of the table restore request to return status for. If you don't specify a <code>TableRestoreRequestId</code> value, then <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table restore requests.</p>
-- @return DescribeTableRestoreStatusMessage structure as a key-value pair table
function M.DescribeTableRestoreStatusMessage(args)
	assert(args, "You must provide an argument table when creating DescribeTableRestoreStatusMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["MaxRecords"] = args["MaxRecords"],
		["TableRestoreRequestId"] = args["TableRestoreRequestId"],
	}
	asserts.AssertDescribeTableRestoreStatusMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Temporary credentials with authorization to log on to an Amazon Redshift database. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DbUser [String] <p>A database user name that is authorized to log on to the database <code>DbName</code> using the password <code>DbPassword</code>. If the specified DbUser exists in the database, the new user name has the same database privileges as the the user named in DbUser. By default, the user is added to PUBLIC. If the <code>DbGroups</code> parameter is specifed, <code>DbUser</code> is added to the listed groups for any sessions created using these credentials.</p>
-- * Expiration [TStamp] <p>The date and time the password in <code>DbPassword</code> expires.</p>
-- * DbPassword [SensitiveString] <p>A temporary password that authorizes the user name returned by <code>DbUser</code> to log on to the database <code>DbName</code>. </p>
-- @return ClusterCredentials structure as a key-value pair table
function M.ClusterCredentials(args)
	assert(args, "You must provide an argument table when creating ClusterCredentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DbUser"] = args["DbUser"],
		["Expiration"] = args["Expiration"],
		["DbPassword"] = args["DbPassword"],
	}
	asserts.AssertClusterCredentials(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return ModifyEventSubscriptionResult structure as a key-value pair table
function M.ModifyEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating ModifyEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertModifyEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- * SnapshotCopyGrants [SnapshotCopyGrantList] <p>The list of <code>SnapshotCopyGrant</code> objects.</p>
-- @return SnapshotCopyGrantMessage structure as a key-value pair table
function M.SnapshotCopyGrantMessage(args)
	assert(args, "You must provide an argument table when creating SnapshotCopyGrantMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SnapshotCopyGrants"] = args["SnapshotCopyGrants"],
	}
	asserts.AssertSnapshotCopyGrantMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EC2SecurityGroupName [String] <p>The name of the EC2 Security Group whose access is to be revoked. If <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code> must also be provided and <code>CIDRIP</code> cannot be provided. </p>
-- * EC2SecurityGroupOwnerId [String] <p>The AWS account number of the owner of the security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS access key ID is not an acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified, <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code> cannot be provided. </p> <p>Example: <code>111122223333</code> </p>
-- * ClusterSecurityGroupName [String] <p>The name of the security Group from which to revoke the ingress rule.</p>
-- * CIDRIP [String] <p>The IP range for which to revoke access. This range must be a valid Classless Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>
-- Required key: ClusterSecurityGroupName
-- @return RevokeClusterSecurityGroupIngressMessage structure as a key-value pair table
function M.RevokeClusterSecurityGroupIngressMessage(args)
	assert(args, "You must provide an argument table when creating RevokeClusterSecurityGroupIngressMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EC2SecurityGroupName"] = args["EC2SecurityGroupName"],
		["EC2SecurityGroupOwnerId"] = args["EC2SecurityGroupOwnerId"],
		["ClusterSecurityGroupName"] = args["ClusterSecurityGroupName"],
		["CIDRIP"] = args["CIDRIP"],
	}
	asserts.AssertRevokeClusterSecurityGroupIngressMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [TableRestoreStatusType] <p>A value that describes the current state of the table restore request.</p> <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code> </p>
-- * RequestTime [TStamp] <p>The time that the table restore request was made, in Universal Coordinated Time (UTC).</p>
-- * TotalDataInMegaBytes [LongOptional] <p>The total amount of data to restore to the new table, in megabytes (MB).</p>
-- * SourceSchemaName [String] <p>The name of the source schema that contains the table being restored.</p>
-- * TargetDatabaseName [String] <p>The name of the database to restore the table to.</p>
-- * ProgressInMegaBytes [LongOptional] <p>The amount of data restored to the new table so far, in megabytes (MB).</p>
-- * SourceTableName [String] <p>The name of the source table being restored.</p>
-- * TableRestoreRequestId [String] <p>The unique identifier for the table restore request.</p>
-- * NewTableName [String] <p>The name of the table to create as a result of the table restore request.</p>
-- * TargetSchemaName [String] <p>The name of the schema to restore the table to.</p>
-- * Message [String] <p>A description of the status of the table restore request. Status values include <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>, <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>
-- * SourceDatabaseName [String] <p>The name of the source database that contains the table being restored.</p>
-- * ClusterIdentifier [String] <p>The identifier of the Amazon Redshift cluster that the table is being restored to.</p>
-- * SnapshotIdentifier [String] <p>The identifier of the snapshot that the table is being restored from.</p>
-- @return TableRestoreStatus structure as a key-value pair table
function M.TableRestoreStatus(args)
	assert(args, "You must provide an argument table when creating TableRestoreStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["RequestTime"] = args["RequestTime"],
		["TotalDataInMegaBytes"] = args["TotalDataInMegaBytes"],
		["SourceSchemaName"] = args["SourceSchemaName"],
		["TargetDatabaseName"] = args["TargetDatabaseName"],
		["ProgressInMegaBytes"] = args["ProgressInMegaBytes"],
		["SourceTableName"] = args["SourceTableName"],
		["TableRestoreRequestId"] = args["TableRestoreRequestId"],
		["NewTableName"] = args["NewTableName"],
		["TargetSchemaName"] = args["TargetSchemaName"],
		["Message"] = args["Message"],
		["SourceDatabaseName"] = args["SourceDatabaseName"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertTableRestoreStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterDbRevision = { ["CurrentDatabaseRevision"] = true, ["DatabaseRevisionReleaseDate"] = true, ["ClusterIdentifier"] = true, ["RevisionTargets"] = true, nil }

function asserts.AssertClusterDbRevision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterDbRevision to be of type 'table'")
	if struct["CurrentDatabaseRevision"] then asserts.AssertString(struct["CurrentDatabaseRevision"]) end
	if struct["DatabaseRevisionReleaseDate"] then asserts.AssertTStamp(struct["DatabaseRevisionReleaseDate"]) end
	if struct["ClusterIdentifier"] then asserts.AssertString(struct["ClusterIdentifier"]) end
	if struct["RevisionTargets"] then asserts.AssertRevisionTargetsList(struct["RevisionTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterDbRevision[k], "ClusterDbRevision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterDbRevision
-- <p>Describes a <code>ClusterDbRevision</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentDatabaseRevision [String] <p>A string representing the current cluster version.</p>
-- * DatabaseRevisionReleaseDate [TStamp] <p>The date on which the database revision was released.</p>
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster.</p>
-- * RevisionTargets [RevisionTargetsList] <p>A list of <code>RevisionTarget</code> objects, where each object describes the database revision that a cluster can be updated to.</p>
-- @return ClusterDbRevision structure as a key-value pair table
function M.ClusterDbRevision(args)
	assert(args, "You must provide an argument table when creating ClusterDbRevision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentDatabaseRevision"] = args["CurrentDatabaseRevision"],
		["DatabaseRevisionReleaseDate"] = args["DatabaseRevisionReleaseDate"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["RevisionTargets"] = args["RevisionTargets"],
	}
	asserts.AssertClusterDbRevision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalClusterSnapshotIdentifier [String] <p>The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * ClusterIdentifier [String] <p>The identifier of the cluster to be deleted.</p> <p>Constraints:</p> <ul> <li> <p>Must contain lowercase characters.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * SkipFinalClusterSnapshot [Boolean] <p>Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If <code>false</code>, a final cluster snapshot is created before the cluster is deleted. </p> <note> <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be specified if <i>SkipFinalClusterSnapshot</i> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- Required key: ClusterIdentifier
-- @return DeleteClusterMessage structure as a key-value pair table
function M.DeleteClusterMessage(args)
	assert(args, "You must provide an argument table when creating DeleteClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalClusterSnapshotIdentifier"] = args["FinalClusterSnapshotIdentifier"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["SkipFinalClusterSnapshot"] = args["SkipFinalClusterSnapshot"],
	}
	asserts.AssertDeleteClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ParameterGroupFamily [String] <p>The name of the cluster parameter group family to which the engine default parameters apply.</p>
-- * Parameters [ParametersList] <p>The list of cluster default parameters.</p>
-- @return DefaultClusterParameters structure as a key-value pair table
function M.DefaultClusterParameters(args)
	assert(args, "You must provide an argument table when creating DefaultClusterParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ParameterGroupFamily"] = args["ParameterGroupFamily"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDefaultClusterParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterTracksMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["MaintenanceTrackName"] = true, nil }

function asserts.AssertDescribeClusterTracksMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterTracksMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["MaintenanceTrackName"] then asserts.AssertString(struct["MaintenanceTrackName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterTracksMessage[k], "DescribeClusterTracksMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterTracksMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeClusterTracks</code> request exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
-- * MaxRecords [IntegerOptional] <p>An integer value for the maximum number of maintenance tracks to return.</p>
-- * MaintenanceTrackName [String] <p>The name of the maintenance track. </p>
-- @return DescribeClusterTracksMessage structure as a key-value pair table
function M.DescribeClusterTracksMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClusterTracksMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["MaintenanceTrackName"] = args["MaintenanceTrackName"],
	}
	asserts.AssertDescribeClusterTracksMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupStatus [String] <p>The status of the parameter group. For example, if you made a change to a parameter group name-value pair, then the change could be pending a reboot of an associated cluster.</p>
-- * ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
-- @return ClusterParameterGroupNameMessage structure as a key-value pair table
function M.ClusterParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating ClusterParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupStatus"] = args["ParameterGroupStatus"],
		["ParameterGroupName"] = args["ParameterGroupName"],
	}
	asserts.AssertClusterParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>. </p>
-- * Tags [TagList] <p>One or more name/value pairs to add as tags to the specified resource. Each tag name is passed in with the parameter <code>Key</code> and the corresponding value is passed in with the parameter <code>Value</code>. The <code>Key</code> and <code>Value</code> parameters are separated by a comma (,). Separate multiple tags with a space. For example, <code>--tags "Key"="owner","Value"="admin" "Key"="environment","Value"="test" "Key"="version","Value"="1.0"</code>. </p>
-- Required key: ResourceName
-- Required key: Tags
-- @return CreateTagsMessage structure as a key-value pair table
function M.CreateTagsMessage(args)
	assert(args, "You must provide an argument table when creating CreateTagsMessage")
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
	asserts.AssertCreateTagsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return RotateEncryptionKeyResult structure as a key-value pair table
function M.RotateEncryptionKeyResult(args)
	assert(args, "You must provide an argument table when creating RotateEncryptionKeyResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertRotateEncryptionKeyResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionName [String] <p>The name of the Amazon Redshift event notification subscription to be deleted.</p>
-- Required key: SubscriptionName
-- @return DeleteEventSubscriptionMessage structure as a key-value pair table
function M.DeleteEventSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating DeleteEventSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertDeleteEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmConfiguration [HsmConfiguration] 
-- @return CreateHsmConfigurationResult structure as a key-value pair table
function M.CreateHsmConfigurationResult(args)
	assert(args, "You must provide an argument table when creating CreateHsmConfigurationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmConfiguration"] = args["HsmConfiguration"],
	}
	asserts.AssertCreateHsmConfigurationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The cluster identifier for which you want a snapshot.</p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * SnapshotIdentifier [String] <p>A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- Required key: SnapshotIdentifier
-- Required key: ClusterIdentifier
-- @return CreateClusterSnapshotMessage structure as a key-value pair table
function M.CreateClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CreateClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["Tags"] = args["Tags"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertCreateClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrackListMessage = { ["Marker"] = true, ["MaintenanceTracks"] = true, nil }

function asserts.AssertTrackListMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrackListMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaintenanceTracks"] then asserts.AssertTrackList(struct["MaintenanceTracks"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrackListMessage[k], "TrackListMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrackListMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>The starting point to return a set of response tracklist records. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request.</p>
-- * MaintenanceTracks [TrackList] <p>A list of maintenance tracks output by the <code>DescribeClusterTracks</code> operation. </p>
-- @return TrackListMessage structure as a key-value pair table
function M.TrackListMessage(args)
	assert(args, "You must provide an argument table when creating TrackListMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaintenanceTracks"] = args["MaintenanceTracks"],
	}
	asserts.AssertTrackListMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * Snapshots [SnapshotList] <p>A list of <a>Snapshot</a> instances. </p>
-- @return SnapshotMessage structure as a key-value pair table
function M.SnapshotMessage(args)
	assert(args, "You must provide an argument table when creating SnapshotMessage")
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
	asserts.AssertSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant. This name must be unique in the region for the AWS account.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>Alphabetic characters must be lowercase.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique for all clusters within an AWS account.</p> </li> </ul>
-- * KmsKeyId [String] <p>The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift permission. If no key is specified, the default key is used.</p>
-- Required key: SnapshotCopyGrantName
-- @return CreateSnapshotCopyGrantMessage structure as a key-value pair table
function M.CreateSnapshotCopyGrantMessage(args)
	assert(args, "You must provide an argument table when creating CreateSnapshotCopyGrantMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
		["KmsKeyId"] = args["KmsKeyId"],
	}
	asserts.AssertCreateSnapshotCopyGrantMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the elastic IP (EIP) address.</p>
-- * ElasticIp [String] <p>The elastic IP (EIP) address for the cluster.</p>
-- @return ElasticIpStatus structure as a key-value pair table
function M.ElasticIpStatus(args)
	assert(args, "You must provide an argument table when creating ElasticIpStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ElasticIp"] = args["ElasticIp"],
	}
	asserts.AssertElasticIpStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ClusterVersions [ClusterVersionList] <p>A list of <code>Version</code> elements. </p>
-- @return ClusterVersionsMessage structure as a key-value pair table
function M.ClusterVersionsMessage(args)
	assert(args, "You must provide an argument table when creating ClusterVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ClusterVersions"] = args["ClusterVersions"],
	}
	asserts.AssertClusterVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableRestoreStatus [TableRestoreStatus] 
-- @return RestoreTableFromClusterSnapshotResult structure as a key-value pair table
function M.RestoreTableFromClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating RestoreTableFromClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableRestoreStatus"] = args["TableRestoreStatus"],
	}
	asserts.AssertRestoreTableFromClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddIamRoles [IamRoleArnList] <p>Zero or more IAM roles to associate with the cluster. The roles must be in their Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single cluster in a single request.</p>
-- * RemoveIamRoles [IamRoleArnList] <p>Zero or more IAM roles in ARN format to disassociate from the cluster. You can disassociate up to 10 IAM roles from a single cluster in a single request.</p>
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster for which you want to associate or disassociate IAM roles.</p>
-- Required key: ClusterIdentifier
-- @return ModifyClusterIamRolesMessage structure as a key-value pair table
function M.ModifyClusterIamRolesMessage(args)
	assert(args, "You must provide an argument table when creating ModifyClusterIamRolesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddIamRoles"] = args["AddIamRoles"],
		["RemoveIamRoles"] = args["RemoveIamRoles"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertModifyClusterIamRolesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] 
-- @return RebootClusterResult structure as a key-value pair table
function M.RebootClusterResult(args)
	assert(args, "You must provide an argument table when creating RebootClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertRebootClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupFamily [String] <p>The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.</p> <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of all the parameter groups that are owned by your AWS account, including the default parameter groups for each Amazon Redshift engine version. The parameter group family names associated with the default parameter groups provide you the valid values. For example, a valid family name is "redshift-1.0". </p>
-- * Tags [TagList] <p>A list of tag instances.</p>
-- * ParameterGroupName [String] <p>The name of the cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must be unique withing your AWS account.</p> </li> </ul> <note> <p>This value is stored as a lower-case string.</p> </note>
-- * Description [String] <p>A description of the parameter group.</p>
-- Required key: ParameterGroupName
-- Required key: ParameterGroupFamily
-- Required key: Description
-- @return CreateClusterParameterGroupMessage structure as a key-value pair table
function M.CreateClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupFamily"] = args["ParameterGroupFamily"],
		["Tags"] = args["Tags"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * ReservedNodes [ReservedNodeList] <p>The list of <code>ReservedNode</code> objects.</p>
-- @return ReservedNodesMessage structure as a key-value pair table
function M.ReservedNodesMessage(args)
	assert(args, "You must provide an argument table when creating ReservedNodesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["ReservedNodes"] = args["ReservedNodes"],
	}
	asserts.AssertReservedNodesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevisionTarget = { ["DatabaseRevision"] = true, ["DatabaseRevisionReleaseDate"] = true, ["Description"] = true, nil }

function asserts.AssertRevisionTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevisionTarget to be of type 'table'")
	if struct["DatabaseRevision"] then asserts.AssertString(struct["DatabaseRevision"]) end
	if struct["DatabaseRevisionReleaseDate"] then asserts.AssertTStamp(struct["DatabaseRevisionReleaseDate"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevisionTarget[k], "RevisionTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevisionTarget
-- <p>Describes a <code>RevisionTarget</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseRevision [String] <p>A unique string that identifies the version to update the cluster to. You can use this value in <a>ModifyClusterDbRevision</a>.</p>
-- * DatabaseRevisionReleaseDate [TStamp] <p>The date on which the database revision was released.</p>
-- * Description [String] <p>A string that describes the changes and features that will be applied to the cluster when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>
-- @return RevisionTarget structure as a key-value pair table
function M.RevisionTarget(args)
	assert(args, "You must provide an argument table when creating RevisionTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseRevision"] = args["DatabaseRevision"],
		["DatabaseRevisionReleaseDate"] = args["DatabaseRevisionReleaseDate"],
		["Description"] = args["Description"],
	}
	asserts.AssertRevisionTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterIdentifier [String] <p>The unique identifier of the cluster that you want to rotate the encryption keys for.</p> <p>Constraints: Must be the name of valid cluster that has encryption enabled.</p>
-- Required key: ClusterIdentifier
-- @return RotateEncryptionKeyMessage structure as a key-value pair table
function M.RotateEncryptionKeyMessage(args)
	assert(args, "You must provide an argument table when creating RotateEncryptionKeyMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterIdentifier"] = args["ClusterIdentifier"],
	}
	asserts.AssertRotateEncryptionKeyMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- * SnapshotCopyGrantName [String] <p>The name of the snapshot copy grant.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.</p>
-- @return DescribeSnapshotCopyGrantsMessage structure as a key-value pair table
function M.DescribeSnapshotCopyGrantsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeSnapshotCopyGrantsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["MaxRecords"] = args["MaxRecords"],
		["SnapshotCopyGrantName"] = args["SnapshotCopyGrantName"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertDescribeSnapshotCopyGrantsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedNodeOffering = { ["OfferingType"] = true, ["FixedPrice"] = true, ["NodeType"] = true, ["UsagePrice"] = true, ["RecurringCharges"] = true, ["ReservedNodeOfferingType"] = true, ["Duration"] = true, ["ReservedNodeOfferingId"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedNodeOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNodeOffering to be of type 'table'")
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["NodeType"] then asserts.AssertString(struct["NodeType"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedNodeOfferingType"] then asserts.AssertReservedNodeOfferingType(struct["ReservedNodeOfferingType"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["ReservedNodeOfferingId"] then asserts.AssertString(struct["ReservedNodeOfferingId"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNodeOffering[k], "ReservedNodeOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNodeOffering
-- <p>Describes a reserved node offering.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingType [String] <p>The anticipated utilization of the reserved node, as defined in the reserved node offering.</p>
-- * FixedPrice [Double] <p>The upfront fixed charge you will pay to purchase the specific reserved node offering.</p>
-- * NodeType [String] <p>The node type offered by the reserved node offering.</p>
-- * UsagePrice [Double] <p>The rate you are charged for each hour the cluster that is using the offering is running.</p>
-- * RecurringCharges [RecurringChargeList] <p>The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.</p>
-- * ReservedNodeOfferingType [ReservedNodeOfferingType] 
-- * Duration [Integer] <p>The duration, in seconds, for which the offering will reserve the node.</p>
-- * ReservedNodeOfferingId [String] <p>The offering identifier.</p>
-- * CurrencyCode [String] <p>The currency code for the compute nodes offering.</p>
-- @return ReservedNodeOffering structure as a key-value pair table
function M.ReservedNodeOffering(args)
	assert(args, "You must provide an argument table when creating ReservedNodeOffering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["NodeType"] = args["NodeType"],
		["UsagePrice"] = args["UsagePrice"],
		["RecurringCharges"] = args["RecurringCharges"],
		["ReservedNodeOfferingType"] = args["ReservedNodeOfferingType"],
		["Duration"] = args["Duration"],
		["ReservedNodeOfferingId"] = args["ReservedNodeOfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
	}
	asserts.AssertReservedNodeOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterGroupFamily [String] <p>The name of the cluster parameter group family that this cluster parameter group is compatible with.</p>
-- * Tags [TagList] <p>The list of tags for the cluster parameter group.</p>
-- * ParameterGroupName [String] <p>The name of the cluster parameter group.</p>
-- * Description [String] <p>The description of the parameter group.</p>
-- @return ClusterParameterGroup structure as a key-value pair table
function M.ClusterParameterGroup(args)
	assert(args, "You must provide an argument table when creating ClusterParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterGroupFamily"] = args["ParameterGroupFamily"],
		["Tags"] = args["Tags"],
		["ParameterGroupName"] = args["ParameterGroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertClusterParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterParameterGroup [ClusterParameterGroup] 
-- @return CreateClusterParameterGroupResult structure as a key-value pair table
function M.CreateClusterParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterParameterGroup"] = args["ClusterParameterGroup"],
	}
	asserts.AssertCreateClusterParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterSubnetGroup [ClusterSubnetGroup] 
-- @return CreateClusterSubnetGroupResult structure as a key-value pair table
function M.CreateClusterSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterSubnetGroup"] = args["ClusterSubnetGroup"],
	}
	asserts.AssertCreateClusterSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>
-- * TableRestoreStatusDetails [TableRestoreStatusList] <p>A list of status details for one or more table restore requests.</p>
-- @return TableRestoreStatusMessage structure as a key-value pair table
function M.TableRestoreStatusMessage(args)
	assert(args, "You must provide an argument table when creating TableRestoreStatusMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TableRestoreStatusDetails"] = args["TableRestoreStatusDetails"],
	}
	asserts.AssertTableRestoreStatusMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeClusters</a> request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p> <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>
-- * TagValues [TagValueList] <p>A tag value or values for which you want to return all matching clusters that are associated with the specified tag value or values. For example, suppose that you have clusters that are tagged with values called <code>admin</code> and <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag values associated with them.</p>
-- * ClusterIdentifier [String] <p>The unique identifier of a cluster whose properties you are requesting. This parameter is case sensitive.</p> <p>The default is that all clusters defined for an account are returned.</p>
-- * TagKeys [TagKeyList] <p>A tag key or keys for which you want to return all matching clusters that are associated with the specified key or keys. For example, suppose that you have clusters that are tagged with keys called <code>owner</code> and <code>environment</code>. If you specify both of these tag keys in the request, Amazon Redshift returns a response with the clusters that have either or both of these tag keys associated with them.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified <code>MaxRecords</code> value, a value is returned in a <code>marker</code> field of the response. You can retrieve the next set of records by retrying the command with the returned marker value. </p> <p>Default: <code>100</code> </p> <p>Constraints: minimum 20, maximum 100.</p>
-- @return DescribeClustersMessage structure as a key-value pair table
function M.DescribeClustersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeClustersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["TagValues"] = args["TagValues"],
		["ClusterIdentifier"] = args["ClusterIdentifier"],
		["TagKeys"] = args["TagKeys"],
		["MaxRecords"] = args["MaxRecords"],
	}
	asserts.AssertDescribeClustersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NodeType [String] <p>The node type for the orderable cluster.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>A list of availability zones for the orderable cluster.</p>
-- * ClusterVersion [String] <p>The version of the orderable cluster.</p>
-- * ClusterType [String] <p>The cluster type, for example <code>multi-node</code>. </p>
-- @return OrderableClusterOption structure as a key-value pair table
function M.OrderableClusterOption(args)
	assert(args, "You must provide an argument table when creating OrderableClusterOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NodeType"] = args["NodeType"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["ClusterVersion"] = args["ClusterVersion"],
		["ClusterType"] = args["ClusterType"],
	}
	asserts.AssertOrderableClusterOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptReservedNodeExchangeInputMessage = { ["ReservedNodeId"] = true, ["TargetReservedNodeOfferingId"] = true, nil }

function asserts.AssertAcceptReservedNodeExchangeInputMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptReservedNodeExchangeInputMessage to be of type 'table'")
	assert(struct["ReservedNodeId"], "Expected key ReservedNodeId to exist in table")
	assert(struct["TargetReservedNodeOfferingId"], "Expected key TargetReservedNodeOfferingId to exist in table")
	if struct["ReservedNodeId"] then asserts.AssertString(struct["ReservedNodeId"]) end
	if struct["TargetReservedNodeOfferingId"] then asserts.AssertString(struct["TargetReservedNodeOfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptReservedNodeExchangeInputMessage[k], "AcceptReservedNodeExchangeInputMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptReservedNodeExchangeInputMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservedNodeId [String] <p>A string representing the node identifier of the DC1 Reserved Node to be exchanged.</p>
-- * TargetReservedNodeOfferingId [String] <p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange. You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a> </p>
-- Required key: ReservedNodeId
-- Required key: TargetReservedNodeOfferingId
-- @return AcceptReservedNodeExchangeInputMessage structure as a key-value pair table
function M.AcceptReservedNodeExchangeInputMessage(args)
	assert(args, "You must provide an argument table when creating AcceptReservedNodeExchangeInputMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservedNodeId"] = args["ReservedNodeId"],
		["TargetReservedNodeOfferingId"] = args["TargetReservedNodeOfferingId"],
	}
	asserts.AssertAcceptReservedNodeExchangeInputMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. If the <code>Marker</code> field is empty, all response records have been retrieved for the request. </p>
-- * HsmConfigurations [HsmConfigurationList] <p>A list of <code>HsmConfiguration</code> objects.</p>
-- @return HsmConfigurationMessage structure as a key-value pair table
function M.HsmConfigurationMessage(args)
	assert(args, "You must provide an argument table when creating HsmConfigurationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["HsmConfigurations"] = args["HsmConfigurations"],
	}
	asserts.AssertHsmConfigurationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the Amazon Redshift event notification subscription.</p> <p>Constraints:</p> <ul> <li> <p>Can be one of the following: active | no-permission | topic-not-exist</p> </li> <li> <p>The status "no-permission" indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p> </li> </ul>
-- * Tags [TagList] <p>The list of tags for the event subscription.</p>
-- * SubscriptionCreationTime [TStamp] <p>The date and time the Amazon Redshift event notification subscription was created.</p>
-- * SourceType [String] <p>The source type of the events returned the Amazon Redshift event notification, such as cluster, or cluster-snapshot.</p>
-- * EventCategoriesList [EventCategoriesList] <p>The list of Amazon Redshift event categories specified in the event notification subscription.</p> <p>Values: Configuration, Management, Monitoring, Security</p>
-- * SourceIdsList [SourceIdsList] <p>A list of the sources that publish events to the Amazon Redshift event notification subscription.</p>
-- * CustSubscriptionId [String] <p>The name of the Amazon Redshift event notification subscription.</p>
-- * Enabled [Boolean] <p>A Boolean value indicating whether the subscription is enabled. <code>true</code> indicates the subscription is enabled.</p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.</p>
-- * CustomerAwsId [String] <p>The AWS customer account associated with the Amazon Redshift event notification subscription.</p>
-- * Severity [String] <p>The event severity specified in the Amazon Redshift event notification subscription.</p> <p>Values: ERROR, INFO</p>
-- @return EventSubscription structure as a key-value pair table
function M.EventSubscription(args)
	assert(args, "You must provide an argument table when creating EventSubscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Tags"] = args["Tags"],
		["SubscriptionCreationTime"] = args["SubscriptionCreationTime"],
		["SourceType"] = args["SourceType"],
		["EventCategoriesList"] = args["EventCategoriesList"],
		["SourceIdsList"] = args["SourceIdsList"],
		["CustSubscriptionId"] = args["CustSubscriptionId"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["CustomerAwsId"] = args["CustomerAwsId"],
		["Severity"] = args["Severity"],
	}
	asserts.AssertEventSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [String] <p>The type of resource with which the tag is associated. Valid resource types are: </p> <ul> <li> <p>Cluster</p> </li> <li> <p>CIDR/IP</p> </li> <li> <p>EC2 security group</p> </li> <li> <p>Snapshot</p> </li> <li> <p>Cluster security group</p> </li> <li> <p>Subnet group</p> </li> <li> <p>HSM connection</p> </li> <li> <p>HSM certificate</p> </li> <li> <p>Parameter group</p> </li> </ul> <p>For more information about Amazon Redshift resource types and constructing ARNs, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the Amazon Redshift Cluster Management Guide. </p>
-- * ResourceName [String] <p>The Amazon Resource Name (ARN) with which the tag is associated. For example, <code>arn:aws:redshift:us-east-1:123456789:cluster:t1</code>.</p>
-- * Tag [Tag] <p>The tag for the resource.</p>
-- @return TaggedResource structure as a key-value pair table
function M.TaggedResource(args)
	assert(args, "You must provide an argument table when creating TaggedResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceName"] = args["ResourceName"],
		["Tag"] = args["Tag"],
	}
	asserts.AssertTaggedResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertReservedNodeOfferingType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservedNodeOfferingType to be of type 'string'")
end

--  
function M.ReservedNodeOfferingType(str)
	asserts.AssertReservedNodeOfferingType(str)
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

function asserts.AssertClusterDbRevisionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterDbRevisionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterDbRevision(v)
	end
end

--  
-- List of ClusterDbRevision objects
function M.ClusterDbRevisionsList(list)
	asserts.AssertClusterDbRevisionsList(list)
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

function asserts.AssertEligibleTracksToUpdateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EligibleTracksToUpdateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpdateTarget(v)
	end
end

--  
-- List of UpdateTarget objects
function M.EligibleTracksToUpdateList(list)
	asserts.AssertEligibleTracksToUpdateList(list)
	return list
end

function asserts.AssertSupportedPlatformsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedPlatformsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSupportedPlatform(v)
	end
end

--  
-- List of SupportedPlatform objects
function M.SupportedPlatformsList(list)
	asserts.AssertSupportedPlatformsList(list)
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

function asserts.AssertTrackList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrackList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceTrack(v)
	end
end

--  
-- List of MaintenanceTrack objects
function M.TrackList(list)
	asserts.AssertTrackList(list)
	return list
end

function asserts.AssertRevisionTargetsList(list)
	assert(list)
	assert(type(list) == "table", "Expected RevisionTargetsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRevisionTarget(v)
	end
end

--  
-- List of RevisionTarget objects
function M.RevisionTargetsList(list)
	asserts.AssertRevisionTargetsList(list)
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

function asserts.AssertPendingActionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingActionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.PendingActionsList(list)
	asserts.AssertPendingActionsList(list)
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsAsync(DeleteTagsMessage, cb)
	assert(DeleteTagsMessage, "You must provide a DeleteTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTags",
	}
	for header,value in pairs(DeleteTagsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteTagsSync(DeleteTagsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(DeleteTagsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDefaultClusterParameters asynchronously, invoking a callback when done
-- @param DescribeDefaultClusterParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDefaultClusterParametersAsync(DescribeDefaultClusterParametersMessage, cb)
	assert(DescribeDefaultClusterParametersMessage, "You must provide a DescribeDefaultClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDefaultClusterParameters",
	}
	for header,value in pairs(DescribeDefaultClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeDefaultClusterParametersSync(DescribeDefaultClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDefaultClusterParametersAsync(DescribeDefaultClusterParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterParameterGroups asynchronously, invoking a callback when done
-- @param DescribeClusterParameterGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterParameterGroupsAsync(DescribeClusterParameterGroupsMessage, cb)
	assert(DescribeClusterParameterGroupsMessage, "You must provide a DescribeClusterParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameterGroups",
	}
	for header,value in pairs(DescribeClusterParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterParameterGroupsSync(DescribeClusterParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterParameterGroupsAsync(DescribeClusterParameterGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreFromClusterSnapshot asynchronously, invoking a callback when done
-- @param RestoreFromClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreFromClusterSnapshotAsync(RestoreFromClusterSnapshotMessage, cb)
	assert(RestoreFromClusterSnapshotMessage, "You must provide a RestoreFromClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreFromClusterSnapshot",
	}
	for header,value in pairs(RestoreFromClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RestoreFromClusterSnapshotSync(RestoreFromClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreFromClusterSnapshotAsync(RestoreFromClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterAsync(CreateClusterMessage, cb)
	assert(CreateClusterMessage, "You must provide a CreateClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCluster",
	}
	for header,value in pairs(CreateClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateClusterSync(CreateClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(CreateClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyClusterSnapshot asynchronously, invoking a callback when done
-- @param CopyClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyClusterSnapshotAsync(CopyClusterSnapshotMessage, cb)
	assert(CopyClusterSnapshotMessage, "You must provide a CopyClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyClusterSnapshot",
	}
	for header,value in pairs(CopyClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CopyClusterSnapshotSync(CopyClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyClusterSnapshotAsync(CopyClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSecurityGroup asynchronously, invoking a callback when done
-- @param CreateClusterSecurityGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterSecurityGroupAsync(CreateClusterSecurityGroupMessage, cb)
	assert(CreateClusterSecurityGroupMessage, "You must provide a CreateClusterSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSecurityGroup",
	}
	for header,value in pairs(CreateClusterSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateClusterSecurityGroupSync(CreateClusterSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSecurityGroupAsync(CreateClusterSecurityGroupMessage, function(response, error_type, error_message)
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

--- Call DescribeEventSubscriptions asynchronously, invoking a callback when done
-- @param DescribeEventSubscriptionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, cb)
	assert(DescribeEventSubscriptionsMessage, "You must provide a DescribeEventSubscriptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventSubscriptions",
	}
	for header,value in pairs(DescribeEventSubscriptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeEventSubscriptionsSync(DescribeEventSubscriptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventSubscriptionsAsync(DescribeEventSubscriptionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateEventSubscription asynchronously, invoking a callback when done
-- @param CreateEventSubscriptionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, cb)
	assert(CreateEventSubscriptionMessage, "You must provide a CreateEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateEventSubscription",
	}
	for header,value in pairs(CreateEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateEventSubscriptionSync(CreateEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateEventSubscriptionAsync(CreateEventSubscriptionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsmClientCertificates asynchronously, invoking a callback when done
-- @param DescribeHsmClientCertificatesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHsmClientCertificatesAsync(DescribeHsmClientCertificatesMessage, cb)
	assert(DescribeHsmClientCertificatesMessage, "You must provide a DescribeHsmClientCertificatesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeHsmClientCertificates",
	}
	for header,value in pairs(DescribeHsmClientCertificatesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeHsmClientCertificatesSync(DescribeHsmClientCertificatesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmClientCertificatesAsync(DescribeHsmClientCertificatesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCluster asynchronously, invoking a callback when done
-- @param DeleteClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterAsync(DeleteClusterMessage, cb)
	assert(DeleteClusterMessage, "You must provide a DeleteClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCluster",
	}
	for header,value in pairs(DeleteClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteClusterSync(DeleteClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterAsync(DeleteClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSnapshotCopyGrant asynchronously, invoking a callback when done
-- @param CreateSnapshotCopyGrantMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSnapshotCopyGrantAsync(CreateSnapshotCopyGrantMessage, cb)
	assert(CreateSnapshotCopyGrantMessage, "You must provide a CreateSnapshotCopyGrantMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSnapshotCopyGrant",
	}
	for header,value in pairs(CreateSnapshotCopyGrantMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateSnapshotCopyGrantSync(CreateSnapshotCopyGrantMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSnapshotCopyGrantAsync(CreateSnapshotCopyGrantMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventCategories asynchronously, invoking a callback when done
-- @param DescribeEventCategoriesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, cb)
	assert(DescribeEventCategoriesMessage, "You must provide a DescribeEventCategoriesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEventCategories",
	}
	for header,value in pairs(DescribeEventCategoriesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeEventCategoriesSync(DescribeEventCategoriesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventCategoriesAsync(DescribeEventCategoriesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifySnapshotCopyRetentionPeriod asynchronously, invoking a callback when done
-- @param ModifySnapshotCopyRetentionPeriodMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifySnapshotCopyRetentionPeriodAsync(ModifySnapshotCopyRetentionPeriodMessage, cb)
	assert(ModifySnapshotCopyRetentionPeriodMessage, "You must provide a ModifySnapshotCopyRetentionPeriodMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifySnapshotCopyRetentionPeriod",
	}
	for header,value in pairs(ModifySnapshotCopyRetentionPeriodMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifySnapshotCopyRetentionPeriodSync(ModifySnapshotCopyRetentionPeriodMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifySnapshotCopyRetentionPeriodAsync(ModifySnapshotCopyRetentionPeriodMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClusterCredentials asynchronously, invoking a callback when done
-- @param GetClusterCredentialsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetClusterCredentialsAsync(GetClusterCredentialsMessage, cb)
	assert(GetClusterCredentialsMessage, "You must provide a GetClusterCredentialsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetClusterCredentials",
	}
	for header,value in pairs(GetClusterCredentialsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetClusterCredentialsSync(GetClusterCredentialsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClusterCredentialsAsync(GetClusterCredentialsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSnapshotCopyGrant asynchronously, invoking a callback when done
-- @param DeleteSnapshotCopyGrantMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSnapshotCopyGrantAsync(DeleteSnapshotCopyGrantMessage, cb)
	assert(DeleteSnapshotCopyGrantMessage, "You must provide a DeleteSnapshotCopyGrantMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSnapshotCopyGrant",
	}
	for header,value in pairs(DeleteSnapshotCopyGrantMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteSnapshotCopyGrantSync(DeleteSnapshotCopyGrantMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSnapshotCopyGrantAsync(DeleteSnapshotCopyGrantMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedNodes asynchronously, invoking a callback when done
-- @param DescribeReservedNodesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedNodesAsync(DescribeReservedNodesMessage, cb)
	assert(DescribeReservedNodesMessage, "You must provide a DescribeReservedNodesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodes",
	}
	for header,value in pairs(DescribeReservedNodesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeReservedNodesSync(DescribeReservedNodesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedNodesAsync(DescribeReservedNodesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeSnapshotAccess asynchronously, invoking a callback when done
-- @param AuthorizeSnapshotAccessMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AuthorizeSnapshotAccessAsync(AuthorizeSnapshotAccessMessage, cb)
	assert(AuthorizeSnapshotAccessMessage, "You must provide a AuthorizeSnapshotAccessMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeSnapshotAccess",
	}
	for header,value in pairs(AuthorizeSnapshotAccessMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.AuthorizeSnapshotAccessSync(AuthorizeSnapshotAccessMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeSnapshotAccessAsync(AuthorizeSnapshotAccessMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableLogging asynchronously, invoking a callback when done
-- @param EnableLoggingMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableLoggingAsync(EnableLoggingMessage, cb)
	assert(EnableLoggingMessage, "You must provide a EnableLoggingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableLogging",
	}
	for header,value in pairs(EnableLoggingMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.EnableLoggingSync(EnableLoggingMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableLoggingAsync(EnableLoggingMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableSnapshotCopy asynchronously, invoking a callback when done
-- @param DisableSnapshotCopyMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableSnapshotCopyAsync(DisableSnapshotCopyMessage, cb)
	assert(DisableSnapshotCopyMessage, "You must provide a DisableSnapshotCopyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableSnapshotCopy",
	}
	for header,value in pairs(DisableSnapshotCopyMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DisableSnapshotCopySync(DisableSnapshotCopyMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableSnapshotCopyAsync(DisableSnapshotCopyMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsmClientCertificate asynchronously, invoking a callback when done
-- @param DeleteHsmClientCertificateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHsmClientCertificateAsync(DeleteHsmClientCertificateMessage, cb)
	assert(DeleteHsmClientCertificateMessage, "You must provide a DeleteHsmClientCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHsmClientCertificate",
	}
	for header,value in pairs(DeleteHsmClientCertificateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteHsmClientCertificateSync(DeleteHsmClientCertificateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmClientCertificateAsync(DeleteHsmClientCertificateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootCluster asynchronously, invoking a callback when done
-- @param RebootClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootClusterAsync(RebootClusterMessage, cb)
	assert(RebootClusterMessage, "You must provide a RebootClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootCluster",
	}
	for header,value in pairs(RebootClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RebootClusterSync(RebootClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootClusterAsync(RebootClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterDbRevisions asynchronously, invoking a callback when done
-- @param DescribeClusterDbRevisionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterDbRevisionsAsync(DescribeClusterDbRevisionsMessage, cb)
	assert(DescribeClusterDbRevisionsMessage, "You must provide a DescribeClusterDbRevisionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterDbRevisions",
	}
	for header,value in pairs(DescribeClusterDbRevisionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterDbRevisionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterDbRevisions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterDbRevisionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeClusterDbRevisionsSync(DescribeClusterDbRevisionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterDbRevisionsAsync(DescribeClusterDbRevisionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHsmConfiguration asynchronously, invoking a callback when done
-- @param CreateHsmConfigurationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHsmConfigurationAsync(CreateHsmConfigurationMessage, cb)
	assert(CreateHsmConfigurationMessage, "You must provide a CreateHsmConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHsmConfiguration",
	}
	for header,value in pairs(CreateHsmConfigurationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateHsmConfigurationSync(CreateHsmConfigurationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmConfigurationAsync(CreateHsmConfigurationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeSnapshotAccess asynchronously, invoking a callback when done
-- @param RevokeSnapshotAccessMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeSnapshotAccessAsync(RevokeSnapshotAccessMessage, cb)
	assert(RevokeSnapshotAccessMessage, "You must provide a RevokeSnapshotAccessMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeSnapshotAccess",
	}
	for header,value in pairs(RevokeSnapshotAccessMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RevokeSnapshotAccessSync(RevokeSnapshotAccessMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeSnapshotAccessAsync(RevokeSnapshotAccessMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusters asynchronously, invoking a callback when done
-- @param DescribeClustersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClustersAsync(DescribeClustersMessage, cb)
	assert(DescribeClustersMessage, "You must provide a DescribeClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusters",
	}
	for header,value in pairs(DescribeClustersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClustersSync(DescribeClustersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClustersAsync(DescribeClustersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterIamRoles asynchronously, invoking a callback when done
-- @param ModifyClusterIamRolesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyClusterIamRolesAsync(ModifyClusterIamRolesMessage, cb)
	assert(ModifyClusterIamRolesMessage, "You must provide a ModifyClusterIamRolesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterIamRoles",
	}
	for header,value in pairs(ModifyClusterIamRolesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyClusterIamRolesSync(ModifyClusterIamRolesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterIamRolesAsync(ModifyClusterIamRolesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetClusterParameterGroup asynchronously, invoking a callback when done
-- @param ResetClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetClusterParameterGroupAsync(ResetClusterParameterGroupMessage, cb)
	assert(ResetClusterParameterGroupMessage, "You must provide a ResetClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetClusterParameterGroup",
	}
	for header,value in pairs(ResetClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ResetClusterParameterGroupSync(ResetClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetClusterParameterGroupAsync(ResetClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTableRestoreStatus asynchronously, invoking a callback when done
-- @param DescribeTableRestoreStatusMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTableRestoreStatusAsync(DescribeTableRestoreStatusMessage, cb)
	assert(DescribeTableRestoreStatusMessage, "You must provide a DescribeTableRestoreStatusMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTableRestoreStatus",
	}
	for header,value in pairs(DescribeTableRestoreStatusMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeTableRestoreStatusSync(DescribeTableRestoreStatusMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTableRestoreStatusAsync(DescribeTableRestoreStatusMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteClusterSecurityGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterSecurityGroupAsync(DeleteClusterSecurityGroupMessage, cb)
	assert(DeleteClusterSecurityGroupMessage, "You must provide a DeleteClusterSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSecurityGroup",
	}
	for header,value in pairs(DeleteClusterSecurityGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteClusterSecurityGroupSync(DeleteClusterSecurityGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSecurityGroupAsync(DeleteClusterSecurityGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterParameterGroup asynchronously, invoking a callback when done
-- @param ModifyClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyClusterParameterGroupAsync(ModifyClusterParameterGroupMessage, cb)
	assert(ModifyClusterParameterGroupMessage, "You must provide a ModifyClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterParameterGroup",
	}
	for header,value in pairs(ModifyClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyClusterParameterGroupSync(ModifyClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterParameterGroupAsync(ModifyClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSnapshots asynchronously, invoking a callback when done
-- @param DescribeClusterSnapshotsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterSnapshotsAsync(DescribeClusterSnapshotsMessage, cb)
	assert(DescribeClusterSnapshotsMessage, "You must provide a DescribeClusterSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSnapshots",
	}
	for header,value in pairs(DescribeClusterSnapshotsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterSnapshotsSync(DescribeClusterSnapshotsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSnapshotsAsync(DescribeClusterSnapshotsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterParameterGroup asynchronously, invoking a callback when done
-- @param CreateClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterParameterGroupAsync(CreateClusterParameterGroupMessage, cb)
	assert(CreateClusterParameterGroupMessage, "You must provide a CreateClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterParameterGroup",
	}
	for header,value in pairs(CreateClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateClusterParameterGroupSync(CreateClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterParameterGroupAsync(CreateClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableLogging asynchronously, invoking a callback when done
-- @param DisableLoggingMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableLoggingAsync(DisableLoggingMessage, cb)
	assert(DisableLoggingMessage, "You must provide a DisableLoggingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableLogging",
	}
	for header,value in pairs(DisableLoggingMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DisableLoggingSync(DisableLoggingMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableLoggingAsync(DisableLoggingMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterVersions asynchronously, invoking a callback when done
-- @param DescribeClusterVersionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterVersionsAsync(DescribeClusterVersionsMessage, cb)
	assert(DescribeClusterVersionsMessage, "You must provide a DescribeClusterVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterVersions",
	}
	for header,value in pairs(DescribeClusterVersionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterVersionsSync(DescribeClusterVersionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterVersionsAsync(DescribeClusterVersionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResize asynchronously, invoking a callback when done
-- @param DescribeResizeMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResizeAsync(DescribeResizeMessage, cb)
	assert(DescribeResizeMessage, "You must provide a DescribeResizeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeResize",
	}
	for header,value in pairs(DescribeResizeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeResizeSync(DescribeResizeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResizeAsync(DescribeResizeMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeClusterSubnetGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterSubnetGroupsAsync(DescribeClusterSubnetGroupsMessage, cb)
	assert(DescribeClusterSubnetGroupsMessage, "You must provide a DescribeClusterSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSubnetGroups",
	}
	for header,value in pairs(DescribeClusterSubnetGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterSubnetGroupsSync(DescribeClusterSubnetGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSubnetGroupsAsync(DescribeClusterSubnetGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeClusterSecurityGroupIngress asynchronously, invoking a callback when done
-- @param AuthorizeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AuthorizeClusterSecurityGroupIngressAsync(AuthorizeClusterSecurityGroupIngressMessage, cb)
	assert(AuthorizeClusterSecurityGroupIngressMessage, "You must provide a AuthorizeClusterSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeClusterSecurityGroupIngress",
	}
	for header,value in pairs(AuthorizeClusterSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.AuthorizeClusterSecurityGroupIngressSync(AuthorizeClusterSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeClusterSecurityGroupIngressAsync(AuthorizeClusterSecurityGroupIngressMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHsmConfigurations asynchronously, invoking a callback when done
-- @param DescribeHsmConfigurationsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHsmConfigurationsAsync(DescribeHsmConfigurationsMessage, cb)
	assert(DescribeHsmConfigurationsMessage, "You must provide a DescribeHsmConfigurationsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeHsmConfigurations",
	}
	for header,value in pairs(DescribeHsmConfigurationsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeHsmConfigurationsSync(DescribeHsmConfigurationsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHsmConfigurationsAsync(DescribeHsmConfigurationsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventSubscription asynchronously, invoking a callback when done
-- @param DeleteEventSubscriptionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, cb)
	assert(DeleteEventSubscriptionMessage, "You must provide a DeleteEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventSubscription",
	}
	for header,value in pairs(DeleteEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteEventSubscriptionSync(DeleteEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventSubscriptionAsync(DeleteEventSubscriptionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsMessage, cb)
	assert(DescribeTagsMessage, "You must provide a DescribeTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeTags",
	}
	for header,value in pairs(DescribeTagsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHsmConfiguration asynchronously, invoking a callback when done
-- @param DeleteHsmConfigurationMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHsmConfigurationAsync(DeleteHsmConfigurationMessage, cb)
	assert(DeleteHsmConfigurationMessage, "You must provide a DeleteHsmConfigurationMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHsmConfiguration",
	}
	for header,value in pairs(DeleteHsmConfigurationMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteHsmConfigurationSync(DeleteHsmConfigurationMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmConfigurationAsync(DeleteHsmConfigurationMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSubnetGroup asynchronously, invoking a callback when done
-- @param CreateClusterSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterSubnetGroupAsync(CreateClusterSubnetGroupMessage, cb)
	assert(CreateClusterSubnetGroupMessage, "You must provide a CreateClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSubnetGroup",
	}
	for header,value in pairs(CreateClusterSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateClusterSubnetGroupSync(CreateClusterSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSubnetGroupAsync(CreateClusterSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResizeCluster asynchronously, invoking a callback when done
-- @param ResizeClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResizeClusterAsync(ResizeClusterMessage, cb)
	assert(ResizeClusterMessage, "You must provide a ResizeClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResizeCluster",
	}
	for header,value in pairs(ResizeClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResizeClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResizeCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResizeClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ResizeClusterSync(ResizeClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResizeClusterAsync(ResizeClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterDbRevision asynchronously, invoking a callback when done
-- @param ModifyClusterDbRevisionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyClusterDbRevisionAsync(ModifyClusterDbRevisionMessage, cb)
	assert(ModifyClusterDbRevisionMessage, "You must provide a ModifyClusterDbRevisionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterDbRevision",
	}
	for header,value in pairs(ModifyClusterDbRevisionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyClusterDbRevisionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyClusterDbRevision synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyClusterDbRevisionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyClusterDbRevisionSync(ModifyClusterDbRevisionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterDbRevisionAsync(ModifyClusterDbRevisionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterParameters asynchronously, invoking a callback when done
-- @param DescribeClusterParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterParametersAsync(DescribeClusterParametersMessage, cb)
	assert(DescribeClusterParametersMessage, "You must provide a DescribeClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterParameters",
	}
	for header,value in pairs(DescribeClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterParametersSync(DescribeClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterParametersAsync(DescribeClusterParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHsmClientCertificate asynchronously, invoking a callback when done
-- @param CreateHsmClientCertificateMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHsmClientCertificateAsync(CreateHsmClientCertificateMessage, cb)
	assert(CreateHsmClientCertificateMessage, "You must provide a CreateHsmClientCertificateMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHsmClientCertificate",
	}
	for header,value in pairs(CreateHsmClientCertificateMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateHsmClientCertificateSync(CreateHsmClientCertificateMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmClientCertificateAsync(CreateHsmClientCertificateMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyClusterSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyClusterSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyClusterSubnetGroupAsync(ModifyClusterSubnetGroupMessage, cb)
	assert(ModifyClusterSubnetGroupMessage, "You must provide a ModifyClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyClusterSubnetGroup",
	}
	for header,value in pairs(ModifyClusterSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyClusterSubnetGroupSync(ModifyClusterSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterSubnetGroupAsync(ModifyClusterSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSnapshotCopyGrants asynchronously, invoking a callback when done
-- @param DescribeSnapshotCopyGrantsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSnapshotCopyGrantsAsync(DescribeSnapshotCopyGrantsMessage, cb)
	assert(DescribeSnapshotCopyGrantsMessage, "You must provide a DescribeSnapshotCopyGrantsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSnapshotCopyGrants",
	}
	for header,value in pairs(DescribeSnapshotCopyGrantsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeSnapshotCopyGrantsSync(DescribeSnapshotCopyGrantsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSnapshotCopyGrantsAsync(DescribeSnapshotCopyGrantsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptReservedNodeExchange asynchronously, invoking a callback when done
-- @param AcceptReservedNodeExchangeInputMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptReservedNodeExchangeAsync(AcceptReservedNodeExchangeInputMessage, cb)
	assert(AcceptReservedNodeExchangeInputMessage, "You must provide a AcceptReservedNodeExchangeInputMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AcceptReservedNodeExchange",
	}
	for header,value in pairs(AcceptReservedNodeExchangeInputMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcceptReservedNodeExchangeInputMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptReservedNodeExchange synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptReservedNodeExchangeInputMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptReservedNodeExchangeSync(AcceptReservedNodeExchangeInputMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptReservedNodeExchangeAsync(AcceptReservedNodeExchangeInputMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableClusterOptions asynchronously, invoking a callback when done
-- @param DescribeOrderableClusterOptionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrderableClusterOptionsAsync(DescribeOrderableClusterOptionsMessage, cb)
	assert(DescribeOrderableClusterOptionsMessage, "You must provide a DescribeOrderableClusterOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOrderableClusterOptions",
	}
	for header,value in pairs(DescribeOrderableClusterOptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeOrderableClusterOptionsSync(DescribeOrderableClusterOptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableClusterOptionsAsync(DescribeOrderableClusterOptionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyCluster asynchronously, invoking a callback when done
-- @param ModifyClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyClusterAsync(ModifyClusterMessage, cb)
	assert(ModifyClusterMessage, "You must provide a ModifyClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyCluster",
	}
	for header,value in pairs(ModifyClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyClusterSync(ModifyClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyClusterAsync(ModifyClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RotateEncryptionKey asynchronously, invoking a callback when done
-- @param RotateEncryptionKeyMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RotateEncryptionKeyAsync(RotateEncryptionKeyMessage, cb)
	assert(RotateEncryptionKeyMessage, "You must provide a RotateEncryptionKeyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RotateEncryptionKey",
	}
	for header,value in pairs(RotateEncryptionKeyMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RotateEncryptionKeySync(RotateEncryptionKeyMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RotateEncryptionKeyAsync(RotateEncryptionKeyMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableSnapshotCopy asynchronously, invoking a callback when done
-- @param EnableSnapshotCopyMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableSnapshotCopyAsync(EnableSnapshotCopyMessage, cb)
	assert(EnableSnapshotCopyMessage, "You must provide a EnableSnapshotCopyMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableSnapshotCopy",
	}
	for header,value in pairs(EnableSnapshotCopyMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.EnableSnapshotCopySync(EnableSnapshotCopyMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableSnapshotCopyAsync(EnableSnapshotCopyMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClusterSnapshot asynchronously, invoking a callback when done
-- @param CreateClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterSnapshotAsync(CreateClusterSnapshotMessage, cb)
	assert(CreateClusterSnapshotMessage, "You must provide a CreateClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateClusterSnapshot",
	}
	for header,value in pairs(CreateClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateClusterSnapshotSync(CreateClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterSnapshotAsync(CreateClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSnapshot asynchronously, invoking a callback when done
-- @param DeleteClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterSnapshotAsync(DeleteClusterSnapshotMessage, cb)
	assert(DeleteClusterSnapshotMessage, "You must provide a DeleteClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSnapshot",
	}
	for header,value in pairs(DeleteClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteClusterSnapshotSync(DeleteClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSnapshotAsync(DeleteClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTags asynchronously, invoking a callback when done
-- @param CreateTagsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTagsAsync(CreateTagsMessage, cb)
	assert(CreateTagsMessage, "You must provide a CreateTagsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTags",
	}
	for header,value in pairs(CreateTagsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateTagsSync(CreateTagsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagsAsync(CreateTagsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterTracks asynchronously, invoking a callback when done
-- @param DescribeClusterTracksMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterTracksAsync(DescribeClusterTracksMessage, cb)
	assert(DescribeClusterTracksMessage, "You must provide a DescribeClusterTracksMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterTracks",
	}
	for header,value in pairs(DescribeClusterTracksMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterTracksMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusterTracks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterTracksMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeClusterTracksSync(DescribeClusterTracksMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterTracksAsync(DescribeClusterTracksMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedNodeOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedNodeOfferingsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservedNodeOfferingsAsync(DescribeReservedNodeOfferingsMessage, cb)
	assert(DescribeReservedNodeOfferingsMessage, "You must provide a DescribeReservedNodeOfferingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedNodeOfferings",
	}
	for header,value in pairs(DescribeReservedNodeOfferingsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeReservedNodeOfferingsSync(DescribeReservedNodeOfferingsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedNodeOfferingsAsync(DescribeReservedNodeOfferingsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLoggingStatus asynchronously, invoking a callback when done
-- @param DescribeLoggingStatusMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLoggingStatusAsync(DescribeLoggingStatusMessage, cb)
	assert(DescribeLoggingStatusMessage, "You must provide a DescribeLoggingStatusMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeLoggingStatus",
	}
	for header,value in pairs(DescribeLoggingStatusMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeLoggingStatusSync(DescribeLoggingStatusMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLoggingStatusAsync(DescribeLoggingStatusMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReservedNodeExchangeOfferings asynchronously, invoking a callback when done
-- @param GetReservedNodeExchangeOfferingsInputMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetReservedNodeExchangeOfferingsAsync(GetReservedNodeExchangeOfferingsInputMessage, cb)
	assert(GetReservedNodeExchangeOfferingsInputMessage, "You must provide a GetReservedNodeExchangeOfferingsInputMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetReservedNodeExchangeOfferings",
	}
	for header,value in pairs(GetReservedNodeExchangeOfferingsInputMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetReservedNodeExchangeOfferingsInputMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReservedNodeExchangeOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReservedNodeExchangeOfferingsInputMessage
-- @return response
-- @return error_type
-- @return error_message
function M.GetReservedNodeExchangeOfferingsSync(GetReservedNodeExchangeOfferingsInputMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReservedNodeExchangeOfferingsAsync(GetReservedNodeExchangeOfferingsInputMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyEventSubscription asynchronously, invoking a callback when done
-- @param ModifyEventSubscriptionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, cb)
	assert(ModifyEventSubscriptionMessage, "You must provide a ModifyEventSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyEventSubscription",
	}
	for header,value in pairs(ModifyEventSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ModifyEventSubscriptionSync(ModifyEventSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyEventSubscriptionAsync(ModifyEventSubscriptionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreTableFromClusterSnapshot asynchronously, invoking a callback when done
-- @param RestoreTableFromClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreTableFromClusterSnapshotAsync(RestoreTableFromClusterSnapshotMessage, cb)
	assert(RestoreTableFromClusterSnapshotMessage, "You must provide a RestoreTableFromClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreTableFromClusterSnapshot",
	}
	for header,value in pairs(RestoreTableFromClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RestoreTableFromClusterSnapshotSync(RestoreTableFromClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreTableFromClusterSnapshotAsync(RestoreTableFromClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusterSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeClusterSecurityGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterSecurityGroupsAsync(DescribeClusterSecurityGroupsMessage, cb)
	assert(DescribeClusterSecurityGroupsMessage, "You must provide a DescribeClusterSecurityGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeClusterSecurityGroups",
	}
	for header,value in pairs(DescribeClusterSecurityGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeClusterSecurityGroupsSync(DescribeClusterSecurityGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterSecurityGroupsAsync(DescribeClusterSecurityGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeClusterSecurityGroupIngress asynchronously, invoking a callback when done
-- @param RevokeClusterSecurityGroupIngressMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeClusterSecurityGroupIngressAsync(RevokeClusterSecurityGroupIngressMessage, cb)
	assert(RevokeClusterSecurityGroupIngressMessage, "You must provide a RevokeClusterSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeClusterSecurityGroupIngress",
	}
	for header,value in pairs(RevokeClusterSecurityGroupIngressMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RevokeClusterSecurityGroupIngressSync(RevokeClusterSecurityGroupIngressMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeClusterSecurityGroupIngressAsync(RevokeClusterSecurityGroupIngressMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterParameterGroup asynchronously, invoking a callback when done
-- @param DeleteClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterParameterGroupAsync(DeleteClusterParameterGroupMessage, cb)
	assert(DeleteClusterParameterGroupMessage, "You must provide a DeleteClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterParameterGroup",
	}
	for header,value in pairs(DeleteClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteClusterParameterGroupSync(DeleteClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterParameterGroupAsync(DeleteClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClusterSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteClusterSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterSubnetGroupAsync(DeleteClusterSubnetGroupMessage, cb)
	assert(DeleteClusterSubnetGroupMessage, "You must provide a DeleteClusterSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteClusterSubnetGroup",
	}
	for header,value in pairs(DeleteClusterSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteClusterSubnetGroupSync(DeleteClusterSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterSubnetGroupAsync(DeleteClusterSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedNodeOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedNodeOfferingMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseReservedNodeOfferingAsync(PurchaseReservedNodeOfferingMessage, cb)
	assert(PurchaseReservedNodeOfferingMessage, "You must provide a PurchaseReservedNodeOfferingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedNodeOffering",
	}
	for header,value in pairs(PurchaseReservedNodeOfferingMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.PurchaseReservedNodeOfferingSync(PurchaseReservedNodeOfferingMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedNodeOfferingAsync(PurchaseReservedNodeOfferingMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
