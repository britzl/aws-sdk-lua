--- GENERATED CODE - DO NOT MODIFY
-- Amazon Neptune (neptune-2014-10-31)

local M = {}

M.metadata = {
	api_version = "2014-10-31",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "rds",
	service_abbreviation = "Amazon Neptune",
	service_full_name = "Amazon Neptune",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "neptune-2014-10-31",
}

local keys = {}
local asserts = {}

keys.CertificateNotFoundFault = { nil }

function asserts.AssertCertificateNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CertificateNotFoundFault[k], "CertificateNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateNotFoundFault
-- <p> <i>CertificateIdentifier</i> does not refer to an existing certificate. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CertificateNotFoundFault structure as a key-value pair table
function M.CertificateNotFoundFault(args)
	assert(args, "You must provide an argument table when creating CertificateNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCertificateNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientDBInstanceCapacityFault = { nil }

function asserts.AssertInsufficientDBInstanceCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBInstanceCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientDBInstanceCapacityFault[k], "InsufficientDBInstanceCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBInstanceCapacityFault
-- <p>Specified DB instance class is not available in the specified Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientDBInstanceCapacityFault structure as a key-value pair table
function M.InsufficientDBInstanceCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientDBInstanceCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientDBInstanceCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterParameterGroupMessage[k], "CreateDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing DBClusterParameterGroup.</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- * DBParameterGroupFamily [String] <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
-- * Description [String] <p>The description for the DB cluster parameter group.</p>
-- * Tags [TagList] 
-- Required key: DBClusterParameterGroupName
-- Required key: DBParameterGroupFamily
-- Required key: Description
-- @return CreateDBClusterParameterGroupMessage structure as a key-value pair table
function M.CreateDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterParameterGroupMessage = { ["TargetDBClusterParameterGroupIdentifier"] = true, ["Tags"] = true, ["SourceDBClusterParameterGroupIdentifier"] = true, ["TargetDBClusterParameterGroupDescription"] = true, nil }

function asserts.AssertCopyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBClusterParameterGroupIdentifier"], "Expected key SourceDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupIdentifier"], "Expected key TargetDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupDescription"], "Expected key TargetDBClusterParameterGroupDescription to exist in table")
	if struct["TargetDBClusterParameterGroupIdentifier"] then asserts.AssertString(struct["TargetDBClusterParameterGroupIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterParameterGroupIdentifier"] then asserts.AssertString(struct["SourceDBClusterParameterGroupIdentifier"]) end
	if struct["TargetDBClusterParameterGroupDescription"] then asserts.AssertString(struct["TargetDBClusterParameterGroupDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterParameterGroupMessage[k], "CopyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetDBClusterParameterGroupIdentifier [String] <p>The identifier for the copied DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>
-- * Tags [TagList] 
-- * SourceDBClusterParameterGroupIdentifier [String] <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB cluster parameter group.</p> </li> <li> <p>If the source DB cluster parameter group is in the same AWS Region as the copy, specify a valid DB parameter group identifier, for example <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source DB parameter group is in a different AWS Region than the copy, specify a valid DB cluster parameter group ARN, for example <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>
-- * TargetDBClusterParameterGroupDescription [String] <p>A description for the copied DB cluster parameter group.</p>
-- Required key: SourceDBClusterParameterGroupIdentifier
-- Required key: TargetDBClusterParameterGroupIdentifier
-- Required key: TargetDBClusterParameterGroupDescription
-- @return CopyDBClusterParameterGroupMessage structure as a key-value pair table
function M.CopyDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetDBClusterParameterGroupIdentifier"] = args["TargetDBClusterParameterGroupIdentifier"],
		["Tags"] = args["Tags"],
		["SourceDBClusterParameterGroupIdentifier"] = args["SourceDBClusterParameterGroupIdentifier"],
		["TargetDBClusterParameterGroupDescription"] = args["TargetDBClusterParameterGroupDescription"],
	}
	asserts.AssertCopyDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterMessage = { ["Marker"] = true, ["DBClusters"] = true, nil }

function asserts.AssertDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusters"] then asserts.AssertDBClusterList(struct["DBClusters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterMessage[k], "DBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeDBClusters</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>
-- * DBClusters [DBClusterList] <p>Contains a list of DB clusters for the user.</p>
-- @return DBClusterMessage structure as a key-value pair table
function M.DBClusterMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusters"] = args["DBClusters"],
	}
	asserts.AssertDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveRoleFromDBClusterMessage = { ["RoleArn"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertRemoveRoleFromDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveRoleFromDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveRoleFromDBClusterMessage[k], "RemoveRoleFromDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveRoleFromDBClusterMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to disassociate the IAM role from.</p>
-- Required key: DBClusterIdentifier
-- Required key: RoleArn
-- @return RemoveRoleFromDBClusterMessage structure as a key-value pair table
function M.RemoveRoleFromDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating RemoveRoleFromDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertRemoveRoleFromDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddSourceIdentifierToSubscriptionMessage = { ["SourceIdentifier"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertAddSourceIdentifierToSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddSourceIdentifierToSubscriptionMessage[k], "AddSourceIdentifierToSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceIdentifier [String] <p>The identifier of the event source to be added.</p> <p>Constraints:</p> <ul> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- * SubscriptionName [String] <p>The name of the event notification subscription you want to add a source identifier to.</p>
-- Required key: SubscriptionName
-- Required key: SourceIdentifier
-- @return AddSourceIdentifierToSubscriptionMessage structure as a key-value pair table
function M.AddSourceIdentifierToSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating AddSourceIdentifierToSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceIdentifier"] = args["SourceIdentifier"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertAddSourceIdentifierToSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrderableDBInstanceOptionsMessage = { ["Marker"] = true, ["OrderableDBInstanceOptions"] = true, nil }

function asserts.AssertOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OrderableDBInstanceOptions"] then asserts.AssertOrderableDBInstanceOptionsList(struct["OrderableDBInstanceOptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableDBInstanceOptionsMessage[k], "OrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOptionsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * OrderableDBInstanceOptions [OrderableDBInstanceOptionsList] <p>An <a>OrderableDBInstanceOption</a> structure containing information about orderable options for the DB instance.</p>
-- @return OrderableDBInstanceOptionsMessage structure as a key-value pair table
function M.OrderableDBInstanceOptionsMessage(args)
	assert(args, "You must provide an argument table when creating OrderableDBInstanceOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["OrderableDBInstanceOptions"] = args["OrderableDBInstanceOptions"],
	}
	asserts.AssertOrderableDBInstanceOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionAlreadyExistFault structure as a key-value pair table
function M.SubscriptionAlreadyExistFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionAlreadyExistFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionAlreadyExistFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupQuotaExceededFault = { nil }

function asserts.AssertDBSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupQuotaExceededFault[k], "DBSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupQuotaExceededFault structure as a key-value pair table
function M.DBSubnetGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRole = { ["Status"] = true, ["RoleArn"] = true, nil }

function asserts.AssertDBClusterRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRole to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRole[k], "DBClusterRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRole
-- <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>
-- @return DBClusterRole structure as a key-value pair table
function M.DBClusterRole(args)
	assert(args, "You must provide an argument table when creating DBClusterRole")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertDBClusterRole(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupNotFoundFault = { nil }

function asserts.AssertDBSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupNotFoundFault[k], "DBSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotFoundFault
-- <p> <i>DBSubnetGroupName</i> does not refer to an existing DB subnet group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupNotFoundFault structure as a key-value pair table
function M.DBSubnetGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyEventSubscriptionMessage = { ["EventCategories"] = true, ["Enabled"] = true, ["SourceType"] = true, ["SubscriptionName"] = true, ["SnsTopicArn"] = true, nil }

function asserts.AssertModifyEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyEventSubscriptionMessage[k], "ModifyEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the <b>DescribeEventCategories</b> action. </p>
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- * SourceType [String] <p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- * SubscriptionName [String] <p>The name of the event notification subscription.</p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
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
		["Enabled"] = args["Enabled"],
		["SourceType"] = args["SourceType"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SnsTopicArn"] = args["SnsTopicArn"],
	}
	asserts.AssertModifyEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventCategoriesMessage = { ["SourceType"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesMessage to be of type 'table'")
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventCategoriesMessage[k], "DescribeEventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [String] <p>The type of source that is generating the events.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
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
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEventCategoriesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterParametersMessage = { ["DBClusterParameterGroupName"] = true, ["Source"] = true, ["MaxRecords"] = true, ["Marker"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParametersMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterParametersMessage[k], "DescribeDBClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>
-- * Source [String] <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: DBClusterParameterGroupName
-- @return DescribeDBClusterParametersMessage structure as a key-value pair table
function M.DescribeDBClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Source"] = args["Source"],
		["MaxRecords"] = args["MaxRecords"],
		["Marker"] = args["Marker"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidStorageOptions = { ["StorageType"] = true, ["StorageSize"] = true, ["IopsToStorageRatio"] = true, ["ProvisionedIops"] = true, nil }

function asserts.AssertValidStorageOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidStorageOptions to be of type 'table'")
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["StorageSize"] then asserts.AssertRangeList(struct["StorageSize"]) end
	if struct["IopsToStorageRatio"] then asserts.AssertDoubleRangeList(struct["IopsToStorageRatio"]) end
	if struct["ProvisionedIops"] then asserts.AssertRangeList(struct["ProvisionedIops"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidStorageOptions[k], "ValidStorageOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidStorageOptions
-- <p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <a>DescribeValidDBInstanceModifications</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageType [String] <p>The valid storage types for your DB instance. For example, gp2, io1. </p>
-- * StorageSize [RangeList] <p>The valid range of storage in gibibytes. For example, 100 to 16384. </p>
-- * IopsToStorageRatio [DoubleRangeList] <p>The valid range of Provisioned IOPS to gibibytes of storage multiplier. For example, 3-10, which means that provisioned IOPS can be between 3 and 10 times storage. </p>
-- * ProvisionedIops [RangeList] <p>The valid range of provisioned IOPS. For example, 1000-20000. </p>
-- @return ValidStorageOptions structure as a key-value pair table
function M.ValidStorageOptions(args)
	assert(args, "You must provide an argument table when creating ValidStorageOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageType"] = args["StorageType"],
		["StorageSize"] = args["StorageSize"],
		["IopsToStorageRatio"] = args["IopsToStorageRatio"],
		["ProvisionedIops"] = args["ProvisionedIops"],
	}
	asserts.AssertValidStorageOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetIds"] = true, nil }

function asserts.AssertModifyDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSubnetGroupMessage[k], "ModifyDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the DB subnet group.</p>
-- Required key: DBSubnetGroupName
-- Required key: SubnetIds
-- @return ModifyDBSubnetGroupMessage structure as a key-value pair table
function M.ModifyDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
	}
	asserts.AssertModifyDBSubnetGroupMessage(all_args)
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
-- <p>This data type is used as a response element for queries on VPC security group membership.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the VPC security group.</p>
-- * VpcSecurityGroupId [String] <p>The name of the VPC security group.</p>
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

keys.ModifyDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertModifyDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterResult[k], "ModifyDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return ModifyDBClusterResult structure as a key-value pair table
function M.ModifyDBClusterResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertModifyDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroup = { ["Subnets"] = true, ["VpcId"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetGroupStatus"] = true, ["DBSubnetGroupArn"] = true, ["DBSubnetGroupName"] = true, nil }

function asserts.AssertDBSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroup to be of type 'table'")
	if struct["Subnets"] then asserts.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetGroupStatus"] then asserts.AssertString(struct["SubnetGroupStatus"]) end
	if struct["DBSubnetGroupArn"] then asserts.AssertString(struct["DBSubnetGroupArn"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroup[k], "DBSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroup
-- <p>Contains the details of an Amazon Neptune DB subnet group. </p> <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [SubnetList] <p> Contains a list of <a>Subnet</a> elements. </p>
-- * VpcId [String] <p>Provides the VpcId of the DB subnet group.</p>
-- * DBSubnetGroupDescription [String] <p>Provides the description of the DB subnet group.</p>
-- * SubnetGroupStatus [String] <p>Provides the status of the DB subnet group.</p>
-- * DBSubnetGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group.</p>
-- @return DBSubnetGroup structure as a key-value pair table
function M.DBSubnetGroup(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["VpcId"] = args["VpcId"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetGroupStatus"] = args["SubnetGroupStatus"],
		["DBSubnetGroupArn"] = args["DBSubnetGroupArn"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
	}
	asserts.AssertDBSubnetGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>DB subnet group does not cover all Availability Zones after it is created because users' change.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidVPCNetworkStateFault structure as a key-value pair table
function M.InvalidVPCNetworkStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidVPCNetworkStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidVPCNetworkStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertRebootDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootDBInstanceResult[k], "RebootDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return RebootDBInstanceResult structure as a key-value pair table
function M.RebootDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating RebootDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertRebootDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupAlreadyExistsFault = { nil }

function asserts.AssertDBSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupAlreadyExistsFault[k], "DBSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupAlreadyExistsFault
-- <p> <i>DBSubnetGroupName</i> is already used by an existing DB subnet group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupAlreadyExistsFault structure as a key-value pair table
function M.DBSubnetGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBInstanceMessage = { ["FinalDBSnapshotIdentifier"] = true, ["SkipFinalSnapshot"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDeleteDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then asserts.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then asserts.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBInstanceMessage[k], "DeleteDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalDBSnapshotIdentifier [String] <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to <code>false</code>. </p> <note> <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters or numbers.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Cannot be specified when deleting a Read Replica.</p> </li> </ul>
-- * SkipFinalSnapshot [Boolean] <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified, a DB snapshot is created before the DB instance is deleted. </p> <p>Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to "true".</p> <p>Specify <code>true</code> when deleting a Read Replica.</p> <note> <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing DB instance.</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return DeleteDBInstanceMessage structure as a key-value pair table
function M.DeleteDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalDBSnapshotIdentifier"] = args["FinalDBSnapshotIdentifier"],
		["SkipFinalSnapshot"] = args["SkipFinalSnapshot"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDeleteDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterParameterGroupsMessage = { ["DBClusterParameterGroupName"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParameterGroupsMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterParameterGroupsMessage[k], "DescribeDBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBClusterParameterGroupsMessage structure as a key-value pair table
function M.DescribeDBClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBClusterParameterGroupsMessage(all_args)
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

keys.DBClusterSnapshotAttribute = { ["AttributeName"] = true, ["AttributeValues"] = true, nil }

function asserts.AssertDBClusterSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then asserts.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAttribute[k], "DBClusterSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttribute
-- <p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [String] <p>The name of the manual DB cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * AttributeValues [AttributeValueList] <p>The value(s) for the manual DB cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot is public and available for any AWS account to copy or restore.</p>
-- @return DBClusterSnapshotAttribute structure as a key-value pair table
function M.DBClusterSnapshotAttribute(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValues"] = args["AttributeValues"],
	}
	asserts.AssertDBClusterSnapshotAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBParameterGroupResult = { ["DBParameterGroup"] = true, nil }

function asserts.AssertCopyDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then asserts.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBParameterGroupResult[k], "CopyDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroup [DBParameterGroup] 
-- @return CopyDBParameterGroupResult structure as a key-value pair table
function M.CopyDBParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CopyDBParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroup"] = args["DBParameterGroup"],
	}
	asserts.AssertCopyDBParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSInvalidTopicFault structure as a key-value pair table
function M.SNSInvalidTopicFault(args)
	assert(args, "You must provide an argument table when creating SNSInvalidTopicFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSInvalidTopicFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupsMessage = { ["Marker"] = true, ["DBClusterParameterGroups"] = true, nil }

function asserts.AssertDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterParameterGroups"] then asserts.AssertDBClusterParameterGroupList(struct["DBClusterParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupsMessage[k], "DBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterParameterGroups [DBClusterParameterGroupList] <p>A list of DB cluster parameter groups.</p>
-- @return DBClusterParameterGroupsMessage structure as a key-value pair table
function M.DBClusterParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusterParameterGroups"] = args["DBClusterParameterGroups"],
	}
	asserts.AssertDBClusterParameterGroupsMessage(all_args)
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
-- <p>Data returned from the <b>DescribeEventCategories</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategoriesMapList [EventCategoriesMapList] <p>A list of EventCategoriesMap data types.</p>
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

keys.RestoreDBClusterFromSnapshotMessage = { ["Engine"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["DatabaseName"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, ["OptionGroupName"] = true, ["SnapshotIdentifier"] = true, nil }

function asserts.AssertRestoreDBClusterFromSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotIdentifier"] then asserts.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromSnapshotMessage[k], "RestoreDBClusterFromSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The database engine to use for the new DB cluster.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- * Tags [TagList] <p>The tags to be assigned to the restored DB cluster.</p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster will belong to.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB snapshot or DB cluster snapshot.</p> </li> <li> <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul>
-- * DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- * EngineVersion [String] <p>The version of the database engine to use for the new DB cluster.</p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group to use for the new DB cluster.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- * Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>The name of the option group to use for the restored DB cluster.</p>
-- * SnapshotIdentifier [String] <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p> <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing Snapshot.</p> </li> </ul>
-- Required key: DBClusterIdentifier
-- Required key: SnapshotIdentifier
-- Required key: Engine
-- @return RestoreDBClusterFromSnapshotMessage structure as a key-value pair table
function M.RestoreDBClusterFromSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["KmsKeyId"] = args["KmsKeyId"],
		["DatabaseName"] = args["DatabaseName"],
		["EngineVersion"] = args["EngineVersion"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
		["SnapshotIdentifier"] = args["SnapshotIdentifier"],
	}
	asserts.AssertRestoreDBClusterFromSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateEventSubscriptionMessage = { ["EventCategories"] = true, ["SourceType"] = true, ["Tags"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["SubscriptionName"] = true, ["SourceIds"] = true, nil }

function asserts.AssertCreateEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["Enabled"] then asserts.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then asserts.AssertSourceIdsList(struct["SourceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEventSubscriptionMessage[k], "CreateEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the <b>DescribeEventCategories</b> action. </p>
-- * SourceType [String] <p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>
-- * Tags [TagList] 
-- * Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, set to <b>false</b> to create the subscription but not active it. </p>
-- * SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- * SubscriptionName [String] <p>The name of the subscription.</p> <p>Constraints: The name must be less than 255 characters.</p>
-- * SourceIds [SourceIdsList] <p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIds are supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
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
		["SourceType"] = args["SourceType"],
		["Tags"] = args["Tags"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["SubscriptionName"] = args["SubscriptionName"],
		["SourceIds"] = args["SourceIds"],
	}
	asserts.AssertCreateEventSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertCopyDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterSnapshotResult[k], "CopyDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return CopyDBClusterSnapshotResult structure as a key-value pair table
function M.CopyDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertCopyDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveSourceIdentifierFromSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertRemoveSourceIdentifierFromSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveSourceIdentifierFromSubscriptionResult[k], "RemoveSourceIdentifierFromSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return RemoveSourceIdentifierFromSubscriptionResult structure as a key-value pair table
function M.RemoveSourceIdentifierFromSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating RemoveSourceIdentifierFromSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBParameterGroupMessage = { ["SourceDBParameterGroupIdentifier"] = true, ["TargetDBParameterGroupDescription"] = true, ["TargetDBParameterGroupIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCopyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBParameterGroupIdentifier"], "Expected key SourceDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupIdentifier"], "Expected key TargetDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupDescription"], "Expected key TargetDBParameterGroupDescription to exist in table")
	if struct["SourceDBParameterGroupIdentifier"] then asserts.AssertString(struct["SourceDBParameterGroupIdentifier"]) end
	if struct["TargetDBParameterGroupDescription"] then asserts.AssertString(struct["TargetDBParameterGroupDescription"]) end
	if struct["TargetDBParameterGroupIdentifier"] then asserts.AssertString(struct["TargetDBParameterGroupIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBParameterGroupMessage[k], "CopyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceDBParameterGroupIdentifier [String] <p> The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB parameter group.</p> </li> <li> <p>Must specify a valid DB parameter group identifier, for example <code>my-db-param-group</code>, or a valid ARN.</p> </li> </ul>
-- * TargetDBParameterGroupDescription [String] <p>A description for the copied DB parameter group.</p>
-- * TargetDBParameterGroupIdentifier [String] <p>The identifier for the copied DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-parameter-group</code> </p>
-- * Tags [TagList] 
-- Required key: SourceDBParameterGroupIdentifier
-- Required key: TargetDBParameterGroupIdentifier
-- Required key: TargetDBParameterGroupDescription
-- @return CopyDBParameterGroupMessage structure as a key-value pair table
function M.CopyDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceDBParameterGroupIdentifier"] = args["SourceDBParameterGroupIdentifier"],
		["TargetDBParameterGroupDescription"] = args["TargetDBParameterGroupDescription"],
		["TargetDBParameterGroupIdentifier"] = args["TargetDBParameterGroupIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCopyDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertDeleteDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterResult[k], "DeleteDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return DeleteDBClusterResult structure as a key-value pair table
function M.DeleteDBClusterResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertDeleteDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddRoleToDBClusterMessage = { ["RoleArn"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertAddRoleToDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddRoleToDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then asserts.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddRoleToDBClusterMessage[k], "AddRoleToDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddRoleToDBClusterMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster, for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
-- * DBClusterIdentifier [String] <p>The name of the DB cluster to associate the IAM role with.</p>
-- Required key: DBClusterIdentifier
-- Required key: RoleArn
-- @return AddRoleToDBClusterMessage structure as a key-value pair table
function M.AddRoleToDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating AddRoleToDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertAddRoleToDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBParameterGroupMessage = { ["DBParameterGroupName"] = true, nil }

function asserts.AssertDeleteDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBParameterGroupMessage[k], "DeleteDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>You can't delete a default DB parameter group</p> </li> <li> <p>Cannot be associated with any DB instances</p> </li> </ul>
-- Required key: DBParameterGroupName
-- @return DeleteDBParameterGroupMessage structure as a key-value pair table
function M.DeleteDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
	}
	asserts.AssertDeleteDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBUpgradeDependencyFailureFault = { nil }

function asserts.AssertDBUpgradeDependencyFailureFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBUpgradeDependencyFailureFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBUpgradeDependencyFailureFault[k], "DBUpgradeDependencyFailureFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBUpgradeDependencyFailureFault
-- <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBUpgradeDependencyFailureFault structure as a key-value pair table
function M.DBUpgradeDependencyFailureFault(args)
	assert(args, "You must provide an argument table when creating DBUpgradeDependencyFailureFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBUpgradeDependencyFailureFault(all_args)
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
-- <p> Contains the result of a successful invocation of the <a>DescribeEvents</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * Events [EventList] <p> A list of <a>Event</a> instances. </p>
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

keys.PromoteReadReplicaDBClusterMessage = { ["DBClusterIdentifier"] = true, nil }

function asserts.AssertPromoteReadReplicaDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaDBClusterMessage[k], "PromoteReadReplicaDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster Read Replica.</p> </li> </ul> <p>Example: <code>my-cluster-replica1</code> </p>
-- Required key: DBClusterIdentifier
-- @return PromoteReadReplicaDBClusterMessage structure as a key-value pair table
function M.PromoteReadReplicaDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertPromoteReadReplicaDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterSnapshotMessage = { ["CopyTags"] = true, ["Tags"] = true, ["SourceDBClusterSnapshotIdentifier"] = true, ["PreSignedUrl"] = true, ["KmsKeyId"] = true, ["TargetDBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertCopyDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBClusterSnapshotIdentifier"], "Expected key SourceDBClusterSnapshotIdentifier to exist in table")
	assert(struct["TargetDBClusterSnapshotIdentifier"], "Expected key TargetDBClusterSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then asserts.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBClusterSnapshotIdentifier"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["TargetDBClusterSnapshotIdentifier"] then asserts.AssertString(struct["TargetDBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterSnapshotMessage[k], "CopyDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyTags [BooleanOptional] <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot, and otherwise false. The default is false.</p>
-- * Tags [TagList] 
-- * SourceDBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.</p> <p>You can't copy an encrypted, shared DB cluster snapshot from one AWS Region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> <li> <p>If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different AWS Region than the copy, specify a valid DB cluster snapshot ARN. </p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>
-- * PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS Region that contains the source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region.</p> <p>The pre-signed URL must be a valid request for the <code>CopyDBSClusterSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p>
-- * KmsKeyId [String] <p>The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, Amazon Neptune encrypts the target DB cluster snapshot using the specified KMS encryption key. </p> <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. </p> <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted DB cluster snapshot to another AWS Region, you must set <code>KmsKeyId</code> to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.</p>
-- * TargetDBClusterSnapshotIdentifier [String] <p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>
-- Required key: SourceDBClusterSnapshotIdentifier
-- Required key: TargetDBClusterSnapshotIdentifier
-- @return CopyDBClusterSnapshotMessage structure as a key-value pair table
function M.CopyDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyTags"] = args["CopyTags"],
		["Tags"] = args["Tags"],
		["SourceDBClusterSnapshotIdentifier"] = args["SourceDBClusterSnapshotIdentifier"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["KmsKeyId"] = args["KmsKeyId"],
		["TargetDBClusterSnapshotIdentifier"] = args["TargetDBClusterSnapshotIdentifier"],
	}
	asserts.AssertCopyDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBClusterSnapshotStateFault = { nil }

function asserts.AssertInvalidDBClusterSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBClusterSnapshotStateFault[k], "InvalidDBClusterSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterSnapshotStateFault
-- <p>The supplied value is not a valid DB cluster snapshot state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBClusterSnapshotStateFault structure as a key-value pair table
function M.InvalidDBClusterSnapshotStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBClusterSnapshotStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBClusterSnapshotStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultClusterParametersResult = { ["EngineDefaults"] = true, nil }

function asserts.AssertDescribeEngineDefaultClusterParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then asserts.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultClusterParametersResult[k], "DescribeEngineDefaultClusterParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EngineDefaults [EngineDefaults] 
-- @return DescribeEngineDefaultClusterParametersResult structure as a key-value pair table
function M.DescribeEngineDefaultClusterParametersResult(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultClusterParametersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EngineDefaults"] = args["EngineDefaults"],
	}
	asserts.AssertDescribeEngineDefaultClusterParametersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertModifyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterParameterGroupMessage[k], "ModifyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to modify.</p>
-- * Parameters [ParametersList] <p>A list of parameters in the DB cluster parameter group to modify.</p>
-- Required key: DBClusterParameterGroupName
-- Required key: Parameters
-- @return ModifyDBClusterParameterGroupMessage structure as a key-value pair table
function M.ModifyDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertModifyDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultParametersMessage = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEngineDefaultParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultParametersMessage[k], "DescribeEngineDefaultParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupFamily [String] <p>The name of the DB parameter group family.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Not currently supported.</p>
-- Required key: DBParameterGroupFamily
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
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEngineDefaultParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventsMessage = { ["EventCategories"] = true, ["SourceType"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["StartTime"] = true, ["Duration"] = true, ["Filters"] = true, ["SourceIdentifier"] = true, ["EndTime"] = true, nil }

function asserts.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then asserts.AssertIntegerOptional(struct["Duration"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
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
-- * EventCategories [EventCategoriesList] <p>A list of event categories that trigger notifications for a event notification subscription.</p>
-- * SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * StartTime [TStamp] <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
-- * Duration [IntegerOptional] <p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SourceIdentifier [String] <p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIdentifier is supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is <code>DBInstance</code>, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBParameterGroup</code>, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- * EndTime [TStamp] <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
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
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["Filters"] = args["Filters"],
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

keys.SubscriptionNotFoundFault = { nil }

function asserts.AssertSubscriptionNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionNotFoundFault[k], "SubscriptionNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionNotFoundFault
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionNotFoundFault structure as a key-value pair table
function M.SubscriptionNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBCluster = { ["MasterUsername"] = true, ["ReaderEndpoint"] = true, ["ReadReplicaIdentifiers"] = true, ["CloneGroupId"] = true, ["VpcSecurityGroups"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["HostedZoneId"] = true, ["Status"] = true, ["MultiAZ"] = true, ["LatestRestorableTime"] = true, ["PreferredBackupWindow"] = true, ["DBSubnetGroup"] = true, ["AllocatedStorage"] = true, ["DBClusterOptionGroupMemberships"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["Engine"] = true, ["Endpoint"] = true, ["AssociatedRoles"] = true, ["EarliestRestorableTime"] = true, ["PercentProgress"] = true, ["ReplicationSourceIdentifier"] = true, ["ClusterCreateTime"] = true, ["EngineVersion"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["DbClusterResourceId"] = true, ["DBClusterMembers"] = true, ["DBClusterArn"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["DBClusterParameterGroup"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertDBCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBCluster to be of type 'table'")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["ReaderEndpoint"] then asserts.AssertString(struct["ReaderEndpoint"]) end
	if struct["ReadReplicaIdentifiers"] then asserts.AssertReadReplicaIdentifierList(struct["ReadReplicaIdentifiers"]) end
	if struct["CloneGroupId"] then asserts.AssertString(struct["CloneGroupId"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["HostedZoneId"] then asserts.AssertString(struct["HostedZoneId"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then asserts.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["DBSubnetGroup"] then asserts.AssertString(struct["DBSubnetGroup"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBClusterOptionGroupMemberships"] then asserts.AssertDBClusterOptionGroupMemberships(struct["DBClusterOptionGroupMemberships"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Endpoint"] then asserts.AssertString(struct["Endpoint"]) end
	if struct["AssociatedRoles"] then asserts.AssertDBClusterRoles(struct["AssociatedRoles"]) end
	if struct["EarliestRestorableTime"] then asserts.AssertTStamp(struct["EarliestRestorableTime"]) end
	if struct["PercentProgress"] then asserts.AssertString(struct["PercentProgress"]) end
	if struct["ReplicationSourceIdentifier"] then asserts.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DbClusterResourceId"] then asserts.AssertString(struct["DbClusterResourceId"]) end
	if struct["DBClusterMembers"] then asserts.AssertDBClusterMemberList(struct["DBClusterMembers"]) end
	if struct["DBClusterArn"] then asserts.AssertString(struct["DBClusterArn"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["DBClusterParameterGroup"] then asserts.AssertString(struct["DBClusterParameterGroup"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBCluster[k], "DBCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBCluster
-- <p>Contains the details of an Amazon Neptune DB cluster. </p> <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>Contains the master username for the DB cluster.</p>
-- * ReaderEndpoint [String] <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Read Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Neptune distributes the connection requests among the Read Replicas in the DB cluster. This functionality can help balance your read workload across multiple Read Replicas in your DB cluster. </p> <p>If a failover occurs, and the Read Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Read Replicas in the cluster, you can then reconnect to the reader endpoint.</p>
-- * ReadReplicaIdentifiers [ReadReplicaIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB cluster.</p>
-- * CloneGroupId [String] <p>Identifies the clone group to which the DB cluster is associated.</p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
-- * HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- * Status [String] <p>Specifies the current state of this DB cluster.</p>
-- * MultiAZ [Boolean] <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
-- * LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- * PreferredBackupWindow [String] <p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- * DBSubnetGroup [String] <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
-- * AllocatedStorage [IntegerOptional] <p> <code>AllocatedStorage</code> always returns 1, because Neptune DB cluster storage size is not fixed, but instead automatically adjusts as needed.</p>
-- * DBClusterOptionGroupMemberships [DBClusterOptionGroupMemberships] <p>Provides the list of option group memberships for this DB cluster.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- * Engine [String] <p>Provides the name of the database engine to be used for this DB cluster.</p>
-- * Endpoint [String] <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
-- * AssociatedRoles [DBClusterRoles] <p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.</p>
-- * EarliestRestorableTime [TStamp] <p>Specifies the earliest time to which a database can be restored with point-in-time restore.</p>
-- * PercentProgress [String] <p>Specifies the progress of the operation as a percentage.</p>
-- * ReplicationSourceIdentifier [String] <p>Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.</p>
-- * ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * CharacterSetName [String] <p>If present, specifies the name of the character set that this cluster is associated with.</p>
-- * DBClusterIdentifier [String] <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
-- * DbClusterResourceId [String] <p>The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.</p>
-- * DBClusterMembers [DBClusterMemberList] <p>Provides the list of instances that make up the DB cluster.</p>
-- * DBClusterArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
-- * KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB cluster.</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB cluster is encrypted.</p>
-- * DatabaseName [String] <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
-- * DBClusterParameterGroup [String] <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.</p>
-- * Port [IntegerOptional] <p>Specifies the port that the database engine is listening on.</p>
-- @return DBCluster structure as a key-value pair table
function M.DBCluster(args)
	assert(args, "You must provide an argument table when creating DBCluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterUsername"] = args["MasterUsername"],
		["ReaderEndpoint"] = args["ReaderEndpoint"],
		["ReadReplicaIdentifiers"] = args["ReadReplicaIdentifiers"],
		["CloneGroupId"] = args["CloneGroupId"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["HostedZoneId"] = args["HostedZoneId"],
		["Status"] = args["Status"],
		["MultiAZ"] = args["MultiAZ"],
		["LatestRestorableTime"] = args["LatestRestorableTime"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["DBSubnetGroup"] = args["DBSubnetGroup"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBClusterOptionGroupMemberships"] = args["DBClusterOptionGroupMemberships"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Engine"] = args["Engine"],
		["Endpoint"] = args["Endpoint"],
		["AssociatedRoles"] = args["AssociatedRoles"],
		["EarliestRestorableTime"] = args["EarliestRestorableTime"],
		["PercentProgress"] = args["PercentProgress"],
		["ReplicationSourceIdentifier"] = args["ReplicationSourceIdentifier"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["EngineVersion"] = args["EngineVersion"],
		["CharacterSetName"] = args["CharacterSetName"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["DbClusterResourceId"] = args["DbClusterResourceId"],
		["DBClusterMembers"] = args["DBClusterMembers"],
		["DBClusterArn"] = args["DBClusterArn"],
		["KmsKeyId"] = args["KmsKeyId"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["DatabaseName"] = args["DatabaseName"],
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
	}
	asserts.AssertDBCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotAlreadyExistsFault = { nil }

function asserts.AssertDBSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAlreadyExistsFault[k], "DBSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAlreadyExistsFault
-- <p> <i>DBSnapshotIdentifier</i> is already used by an existing snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSnapshotAlreadyExistsFault structure as a key-value pair table
function M.DBSnapshotAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBSnapshotAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSnapshotAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertModifyDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBInstanceResult[k], "ModifyDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return ModifyDBInstanceResult structure as a key-value pair table
function M.ModifyDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertModifyDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePendingMaintenanceActionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertDescribePendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePendingMaintenanceActionsMessage[k], "DescribePendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePendingMaintenanceActionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>
-- * ResourceIdentifier [String] <p>The ARN of a resource to return pending maintenance actions for.</p>
-- @return DescribePendingMaintenanceActionsMessage structure as a key-value pair table
function M.DescribePendingMaintenanceActionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribePendingMaintenanceActionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertDescribePendingMaintenanceActionsMessage(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>.</p>
-- * Tags [TagList] <p>The tags to be assigned to the Amazon Neptune resource.</p>
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

keys.Event = { ["EventCategories"] = true, ["SourceType"] = true, ["SourceArn"] = true, ["Date"] = true, ["Message"] = true, ["SourceIdentifier"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	if struct["SourceArn"] then asserts.AssertString(struct["SourceArn"]) end
	if struct["Date"] then asserts.AssertTStamp(struct["Date"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p> This data type is used as a response element in the <a>DescribeEvents</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>Specifies the category for the event.</p>
-- * SourceType [SourceType] <p>Specifies the source type for this event.</p>
-- * SourceArn [String] <p>The Amazon Resource Name (ARN) for the event.</p>
-- * Date [TStamp] <p>Specifies the date and time of the event.</p>
-- * Message [String] <p>Provides the text of this event.</p>
-- * SourceIdentifier [String] <p>Provides the identifier for the source of the event.</p>
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
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
		["SourceArn"] = args["SourceArn"],
		["Date"] = args["Date"],
		["Message"] = args["Message"],
		["SourceIdentifier"] = args["SourceIdentifier"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeValidDBInstanceModificationsMessage = { ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeValidDBInstanceModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeValidDBInstanceModificationsMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeValidDBInstanceModificationsMessage[k], "DescribeValidDBInstanceModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeValidDBInstanceModificationsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstanceIdentifier [String] <p>The customer identifier or the ARN of your DB instance. </p>
-- Required key: DBInstanceIdentifier
-- @return DescribeValidDBInstanceModificationsMessage structure as a key-value pair table
function M.DescribeValidDBInstanceModificationsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeValidDBInstanceModificationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDescribeValidDBInstanceModificationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageQuotaExceededFault = { nil }

function asserts.AssertStorageQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StorageQuotaExceededFault[k], "StorageQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageQuotaExceededFault
-- <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StorageQuotaExceededFault structure as a key-value pair table
function M.StorageQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating StorageQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStorageQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrderableDBInstanceOption = { ["Engine"] = true, ["MaxStorageSize"] = true, ["MinIopsPerGib"] = true, ["MaxIopsPerDbInstance"] = true, ["SupportsIAMDatabaseAuthentication"] = true, ["SupportsPerformanceInsights"] = true, ["MaxIopsPerGib"] = true, ["StorageType"] = true, ["MinIopsPerDbInstance"] = true, ["LicenseModel"] = true, ["SupportsStorageEncryption"] = true, ["SupportsEnhancedMonitoring"] = true, ["MinStorageSize"] = true, ["Vpc"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["AvailabilityZones"] = true, ["MultiAZCapable"] = true, ["ReadReplicaCapable"] = true, ["SupportsIops"] = true, nil }

function asserts.AssertOrderableDBInstanceOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOption to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MaxStorageSize"] then asserts.AssertIntegerOptional(struct["MaxStorageSize"]) end
	if struct["MinIopsPerGib"] then asserts.AssertDoubleOptional(struct["MinIopsPerGib"]) end
	if struct["MaxIopsPerDbInstance"] then asserts.AssertIntegerOptional(struct["MaxIopsPerDbInstance"]) end
	if struct["SupportsIAMDatabaseAuthentication"] then asserts.AssertBoolean(struct["SupportsIAMDatabaseAuthentication"]) end
	if struct["SupportsPerformanceInsights"] then asserts.AssertBoolean(struct["SupportsPerformanceInsights"]) end
	if struct["MaxIopsPerGib"] then asserts.AssertDoubleOptional(struct["MaxIopsPerGib"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["MinIopsPerDbInstance"] then asserts.AssertIntegerOptional(struct["MinIopsPerDbInstance"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["SupportsStorageEncryption"] then asserts.AssertBoolean(struct["SupportsStorageEncryption"]) end
	if struct["SupportsEnhancedMonitoring"] then asserts.AssertBoolean(struct["SupportsEnhancedMonitoring"]) end
	if struct["MinStorageSize"] then asserts.AssertIntegerOptional(struct["MinStorageSize"]) end
	if struct["Vpc"] then asserts.AssertBoolean(struct["Vpc"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["MultiAZCapable"] then asserts.AssertBoolean(struct["MultiAZCapable"]) end
	if struct["ReadReplicaCapable"] then asserts.AssertBoolean(struct["ReadReplicaCapable"]) end
	if struct["SupportsIops"] then asserts.AssertBoolean(struct["SupportsIops"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrderableDBInstanceOption[k], "OrderableDBInstanceOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOption
-- <p>Contains a list of available options for a DB instance.</p> <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The engine type of a DB instance.</p>
-- * MaxStorageSize [IntegerOptional] <p>Maximum storage size for a DB instance.</p>
-- * MinIopsPerGib [DoubleOptional] <p>Minimum provisioned IOPS per GiB for a DB instance.</p>
-- * MaxIopsPerDbInstance [IntegerOptional] <p>Maximum total provisioned IOPS for a DB instance.</p>
-- * SupportsIAMDatabaseAuthentication [Boolean] <p>Indicates whether a DB instance supports IAM database authentication.</p>
-- * SupportsPerformanceInsights [Boolean] <p>True if a DB instance supports Performance Insights, otherwise false.</p>
-- * MaxIopsPerGib [DoubleOptional] <p>Maximum provisioned IOPS per GiB for a DB instance.</p>
-- * StorageType [String] <p>Indicates the storage type for a DB instance.</p>
-- * MinIopsPerDbInstance [IntegerOptional] <p>Minimum total provisioned IOPS for a DB instance.</p>
-- * LicenseModel [String] <p>The license model for a DB instance.</p>
-- * SupportsStorageEncryption [Boolean] <p>Indicates whether a DB instance supports encrypted storage.</p>
-- * SupportsEnhancedMonitoring [Boolean] <p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.</p>
-- * MinStorageSize [IntegerOptional] <p>Minimum storage size for a DB instance.</p>
-- * Vpc [Boolean] <p>Indicates whether a DB instance is in a VPC.</p>
-- * EngineVersion [String] <p>The engine version of a DB instance.</p>
-- * DBInstanceClass [String] <p>The DB instance class for a DB instance.</p>
-- * AvailabilityZones [AvailabilityZoneList] <p>A list of Availability Zones for a DB instance.</p>
-- * MultiAZCapable [Boolean] <p>Indicates whether a DB instance is Multi-AZ capable.</p>
-- * ReadReplicaCapable [Boolean] <p>Indicates whether a DB instance can have a Read Replica.</p>
-- * SupportsIops [Boolean] <p>Indicates whether a DB instance supports provisioned IOPS.</p>
-- @return OrderableDBInstanceOption structure as a key-value pair table
function M.OrderableDBInstanceOption(args)
	assert(args, "You must provide an argument table when creating OrderableDBInstanceOption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["MaxStorageSize"] = args["MaxStorageSize"],
		["MinIopsPerGib"] = args["MinIopsPerGib"],
		["MaxIopsPerDbInstance"] = args["MaxIopsPerDbInstance"],
		["SupportsIAMDatabaseAuthentication"] = args["SupportsIAMDatabaseAuthentication"],
		["SupportsPerformanceInsights"] = args["SupportsPerformanceInsights"],
		["MaxIopsPerGib"] = args["MaxIopsPerGib"],
		["StorageType"] = args["StorageType"],
		["MinIopsPerDbInstance"] = args["MinIopsPerDbInstance"],
		["LicenseModel"] = args["LicenseModel"],
		["SupportsStorageEncryption"] = args["SupportsStorageEncryption"],
		["SupportsEnhancedMonitoring"] = args["SupportsEnhancedMonitoring"],
		["MinStorageSize"] = args["MinStorageSize"],
		["Vpc"] = args["Vpc"],
		["EngineVersion"] = args["EngineVersion"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["MultiAZCapable"] = args["MultiAZCapable"],
		["ReadReplicaCapable"] = args["ReadReplicaCapable"],
		["SupportsIops"] = args["SupportsIops"],
	}
	asserts.AssertOrderableDBInstanceOption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBParameterGroupStateFault = { nil }

function asserts.AssertInvalidDBParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBParameterGroupStateFault[k], "InvalidDBParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBParameterGroupStateFault
-- <p>The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you cannot delete it when the parameter group is in this state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBParameterGroupStateFault structure as a key-value pair table
function M.InvalidDBParameterGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBParameterGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBParameterGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupNameMessage = { ["DBClusterParameterGroupName"] = true, nil }

function asserts.AssertDBClusterParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNameMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupNameMessage[k], "DBClusterParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNameMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters or numbers.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @return DBClusterParameterGroupNameMessage structure as a key-value pair table
function M.DBClusterParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
	}
	asserts.AssertDBClusterParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidSubnet structure as a key-value pair table
function M.InvalidSubnet(args)
	assert(args, "You must provide an argument table when creating InvalidSubnet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidSubnet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupNotFoundFault = { nil }

function asserts.AssertDBClusterParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupNotFoundFault[k], "DBClusterParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNotFoundFault
-- <p> <i>DBClusterParameterGroupName</i> does not refer to an existing DB Cluster parameter group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterParameterGroupNotFoundFault structure as a key-value pair table
function M.DBClusterParameterGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterParameterGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailoverDBClusterMessage = { ["DBClusterIdentifier"] = true, ["TargetDBInstanceIdentifier"] = true, nil }

function asserts.AssertFailoverDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterMessage to be of type 'table'")
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["TargetDBInstanceIdentifier"] then asserts.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailoverDBClusterMessage[k], "FailoverDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterIdentifier [String] <p>A DB cluster identifier to force a failover for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul>
-- * TargetDBInstanceIdentifier [String] <p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Read Replica in the DB cluster. For example, <code>mydbcluster-replica1</code>.</p>
-- @return FailoverDBClusterMessage structure as a key-value pair table
function M.FailoverDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating FailoverDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["TargetDBInstanceIdentifier"] = args["TargetDBInstanceIdentifier"],
	}
	asserts.AssertFailoverDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSnapshotNotFoundFault = { nil }

function asserts.AssertDBSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotNotFoundFault[k], "DBSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotNotFoundFault
-- <p> <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSnapshotNotFoundFault structure as a key-value pair table
function M.DBSnapshotNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSnapshotNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSnapshotNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SourceNotFoundFault structure as a key-value pair table
function M.SourceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SourceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSourceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroupDetails = { ["Marker"] = true, ["Parameters"] = true, nil }

function asserts.AssertDBClusterParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroupDetails[k], "DBClusterParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupDetails
-- <p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * Parameters [ParametersList] <p>Provides a list of parameters for the DB cluster parameter group.</p>
-- @return DBClusterParameterGroupDetails structure as a key-value pair table
function M.DBClusterParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroupDetails")
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
	asserts.AssertDBClusterParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotsMessage = { ["IncludeShared"] = true, ["DBClusterIdentifier"] = true, ["IncludePublic"] = true, ["MaxRecords"] = true, ["Marker"] = true, ["DBClusterSnapshotIdentifier"] = true, ["Filters"] = true, ["SnapshotType"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then asserts.AssertBoolean(struct["IncludeShared"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["IncludePublic"] then asserts.AssertBoolean(struct["IncludePublic"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotsMessage[k], "DescribeDBClusterSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeShared [Boolean] <p>True to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise false. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * DBClusterIdentifier [String] <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBCluster.</p> </li> </ul>
-- * IncludePublic [Boolean] <p>True to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise false. The default is <code>false</code>. The default is false.</p> <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Marker [String] <p>An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterSnapshotIdentifier [String] <p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SnapshotType [String] <p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by Amazon Neptune for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public DB cluster snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
-- @return DescribeDBClusterSnapshotsMessage structure as a key-value pair table
function M.DescribeDBClusterSnapshotsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeShared"] = args["IncludeShared"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["IncludePublic"] = args["IncludePublic"],
		["MaxRecords"] = args["MaxRecords"],
		["Marker"] = args["Marker"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["Filters"] = args["Filters"],
		["SnapshotType"] = args["SnapshotType"],
	}
	asserts.AssertDescribeDBClusterSnapshotsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parameter = { ["ApplyMethod"] = true, ["Description"] = true, ["DataType"] = true, ["IsModifiable"] = true, ["AllowedValues"] = true, ["Source"] = true, ["ParameterValue"] = true, ["ParameterName"] = true, ["MinimumEngineVersion"] = true, ["ApplyType"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ApplyMethod"] then asserts.AssertApplyMethod(struct["ApplyMethod"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then asserts.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then asserts.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then asserts.AssertString(struct["MinimumEngineVersion"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p> This data type is used as a request parameter in the <a>ModifyDBParameterGroup</a> and <a>ResetDBParameterGroup</a> actions. </p> <p>This data type is used as a response element in the <a>DescribeEngineDefaultParameters</a> and <a>DescribeDBParameters</a> actions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyMethod [ApplyMethod] <p>Indicates when to apply parameter updates.</p>
-- * Description [String] <p>Provides a description of the parameter.</p>
-- * DataType [String] <p>Specifies the valid data type for the parameter.</p>
-- * IsModifiable [Boolean] <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- * AllowedValues [String] <p>Specifies the valid range of values for the parameter.</p>
-- * Source [String] <p>Indicates the source of the parameter value.</p>
-- * ParameterValue [String] <p>Specifies the value of the parameter.</p>
-- * ParameterName [String] <p>Specifies the name of the parameter.</p>
-- * MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- * ApplyType [String] <p>Specifies the engine specific parameters type.</p>
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
		["ApplyMethod"] = args["ApplyMethod"],
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

keys.CreateDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, ["DBSubnetGroupDescription"] = true, ["SubnetIds"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["DBSubnetGroupDescription"], "Expected key DBSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then asserts.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSubnetGroupMessage[k], "CreateDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- * SubnetIds [SubnetIdentifierList] <p>The EC2 Subnet IDs for the DB subnet group.</p>
-- * Tags [TagList] 
-- Required key: DBSubnetGroupName
-- Required key: DBSubnetGroupDescription
-- Required key: SubnetIds
-- @return CreateDBSubnetGroupMessage structure as a key-value pair table
function M.CreateDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBSubnetGroupDescription"] = args["DBSubnetGroupDescription"],
		["SubnetIds"] = args["SubnetIds"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupMessage = { ["Marker"] = true, ["DBSubnetGroups"] = true, nil }

function asserts.AssertDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroups"] then asserts.AssertDBSubnetGroups(struct["DBSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupMessage[k], "DBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSubnetGroups [DBSubnetGroups] <p> A list of <a>DBSubnetGroup</a> instances. </p>
-- @return DBSubnetGroupMessage structure as a key-value pair table
function M.DBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSubnetGroups"] = args["DBSubnetGroups"],
	}
	asserts.AssertDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupNameMessage = { ["DBParameterGroupName"] = true, nil }

function asserts.AssertDBParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNameMessage to be of type 'table'")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupNameMessage[k], "DBParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNameMessage
-- <p> Contains the result of a successful invocation of the <a>ModifyDBParameterGroup</a> or <a>ResetDBParameterGroup</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- @return DBParameterGroupNameMessage structure as a key-value pair table
function M.DBParameterGroupNameMessage(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupNameMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
	}
	asserts.AssertDBParameterGroupNameMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSTopicArnNotFoundFault structure as a key-value pair table
function M.SNSTopicArnNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SNSTopicArnNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSTopicArnNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceAlreadyExistsFault = { nil }

function asserts.AssertDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceAlreadyExistsFault[k], "DBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceAlreadyExistsFault
-- <p>User already has a DB instance with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBInstanceAlreadyExistsFault structure as a key-value pair table
function M.DBInstanceAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBInstanceAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBInstanceAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshot = { ["Engine"] = true, ["SnapshotCreateTime"] = true, ["VpcId"] = true, ["DBClusterIdentifier"] = true, ["DBClusterSnapshotArn"] = true, ["MasterUsername"] = true, ["LicenseModel"] = true, ["Status"] = true, ["PercentProgress"] = true, ["DBClusterSnapshotIdentifier"] = true, ["KmsKeyId"] = true, ["ClusterCreateTime"] = true, ["StorageEncrypted"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["SnapshotType"] = true, ["SourceDBClusterSnapshotArn"] = true, ["AvailabilityZones"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["Port"] = true, nil }

function asserts.AssertDBClusterSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshot to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DBClusterSnapshotArn"] then asserts.AssertString(struct["DBClusterSnapshotArn"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then asserts.AssertInteger(struct["PercentProgress"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["ClusterCreateTime"] then asserts.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["SourceDBClusterSnapshotArn"] then asserts.AssertString(struct["SourceDBClusterSnapshotArn"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshot[k], "DBClusterSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshot
-- <p>Contains the details for an Amazon Neptune DB cluster snapshot </p> <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>Specifies the name of the database engine.</p>
-- * SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- * VpcId [String] <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
-- * DBClusterIdentifier [String] <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>
-- * DBClusterSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>
-- * MasterUsername [String] <p>Provides the master username for the DB cluster snapshot.</p>
-- * LicenseModel [String] <p>Provides the license model information for this DB cluster snapshot.</p>
-- * Status [String] <p>Specifies the status of this DB cluster snapshot.</p>
-- * PercentProgress [Integer] <p>Specifies the percentage of the estimated data that has been transferred.</p>
-- * DBClusterSnapshotIdentifier [String] <p>Specifies the identifier for the DB cluster snapshot.</p>
-- * KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.</p>
-- * ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB cluster snapshot is encrypted.</p>
-- * AllocatedStorage [Integer] <p>Specifies the allocated storage size in gibibytes (GiB).</p>
-- * EngineVersion [String] <p>Provides the version of the database engine for this DB cluster snapshot.</p>
-- * SnapshotType [String] <p>Provides the type of the DB cluster snapshot.</p>
-- * SourceDBClusterSnapshotArn [String] <p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>
-- * AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
-- * Port [Integer] <p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>
-- @return DBClusterSnapshot structure as a key-value pair table
function M.DBClusterSnapshot(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshot")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["SnapshotCreateTime"] = args["SnapshotCreateTime"],
		["VpcId"] = args["VpcId"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["DBClusterSnapshotArn"] = args["DBClusterSnapshotArn"],
		["MasterUsername"] = args["MasterUsername"],
		["LicenseModel"] = args["LicenseModel"],
		["Status"] = args["Status"],
		["PercentProgress"] = args["PercentProgress"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["KmsKeyId"] = args["KmsKeyId"],
		["ClusterCreateTime"] = args["ClusterCreateTime"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["SnapshotType"] = args["SnapshotType"],
		["SourceDBClusterSnapshotArn"] = args["SourceDBClusterSnapshotArn"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["Port"] = args["Port"],
	}
	asserts.AssertDBClusterSnapshot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBSubnetGroupResult = { ["DBSubnetGroup"] = true, nil }

function asserts.AssertModifyDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSubnetGroupResult[k], "ModifyDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroup [DBSubnetGroup] 
-- @return ModifyDBSubnetGroupResult structure as a key-value pair table
function M.ModifyDBSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroup"] = args["DBSubnetGroup"],
	}
	asserts.AssertModifyDBSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CharacterSet = { ["CharacterSetName"] = true, ["CharacterSetDescription"] = true, nil }

function asserts.AssertCharacterSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CharacterSet to be of type 'table'")
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["CharacterSetDescription"] then asserts.AssertString(struct["CharacterSetDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CharacterSet[k], "CharacterSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CharacterSet
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CharacterSetName [String] <p>The name of the character set.</p>
-- * CharacterSetDescription [String] <p>The description of the character set.</p>
-- @return CharacterSet structure as a key-value pair table
function M.CharacterSet(args)
	assert(args, "You must provide an argument table when creating CharacterSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CharacterSetName"] = args["CharacterSetName"],
		["CharacterSetDescription"] = args["CharacterSetDescription"],
	}
	asserts.AssertCharacterSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EngineDefaults = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["Parameters"] = true, nil }

function asserts.AssertEngineDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineDefaults to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.EngineDefaults[k], "EngineDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineDefaults
-- <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBParameterGroupFamily [String] <p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>
-- * Parameters [ParametersList] <p>Contains a list of engine default parameters.</p>
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
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertEngineDefaults(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageTypeNotSupportedFault = { nil }

function asserts.AssertStorageTypeNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageTypeNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StorageTypeNotSupportedFault[k], "StorageTypeNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageTypeNotSupportedFault
-- <p> <i>StorageType</i> specified cannot be associated with the DB Instance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StorageTypeNotSupportedFault structure as a key-value pair table
function M.StorageTypeNotSupportedFault(args)
	assert(args, "You must provide an argument table when creating StorageTypeNotSupportedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStorageTypeNotSupportedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EventSubscriptionQuotaExceededFault structure as a key-value pair table
function M.EventSubscriptionQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating EventSubscriptionQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEventSubscriptionQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailoverDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertFailoverDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailoverDBClusterResult[k], "FailoverDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return FailoverDBClusterResult structure as a key-value pair table
function M.FailoverDBClusterResult(args)
	assert(args, "You must provide an argument table when creating FailoverDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertFailoverDBClusterResult(all_args)
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
-- <p>Metadata assigned to an Amazon Neptune resource consisting of a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- * Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
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

keys.DoubleRange = { ["To"] = true, ["From"] = true, nil }

function asserts.AssertDoubleRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoubleRange to be of type 'table'")
	if struct["To"] then asserts.AssertDouble(struct["To"]) end
	if struct["From"] then asserts.AssertDouble(struct["From"]) end
	for k,_ in pairs(struct) do
		assert(keys.DoubleRange[k], "DoubleRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoubleRange
-- <p>A range of double values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * To [Double] <p>The maximum value in the range.</p>
-- * From [Double] <p>The minimum value in the range.</p>
-- @return DoubleRange structure as a key-value pair table
function M.DoubleRange(args)
	assert(args, "You must provide an argument table when creating DoubleRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["To"] = args["To"],
		["From"] = args["From"],
	}
	asserts.AssertDoubleRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotAttributesResult = { ["DBClusterSnapshotAttributesResult"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then asserts.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotAttributesResult[k], "DescribeDBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
-- @return DescribeDBClusterSnapshotAttributesResult structure as a key-value pair table
function M.DescribeDBClusterSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributesResult"] = args["DBClusterSnapshotAttributesResult"],
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesResult(all_args)
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

keys.PendingModifiedValues = { ["MultiAZ"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["LicenseModel"] = true, ["MasterUserPassword"] = true, ["Port"] = true, ["PendingCloudwatchLogsExports"] = true, ["Iops"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["DBSubnetGroupName"] = true, ["BackupRetentionPeriod"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["PendingCloudwatchLogsExports"] then asserts.AssertPendingCloudwatchLogsExports(struct["PendingCloudwatchLogsExports"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingModifiedValues[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- <p> This data type is used as a response element in the <a>ModifyDBInstance</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MultiAZ [BooleanOptional] <p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p>
-- * CACertificateIdentifier [String] <p>Specifies the identifier of the CA certificate for the DB instance.</p>
-- * LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * MasterUserPassword [String] <p>Contains the pending or currently-in-progress change of the master credentials for the DB instance.</p>
-- * Port [IntegerOptional] <p>Specifies the pending port for the DB instance.</p>
-- * PendingCloudwatchLogsExports [PendingCloudwatchLogsExports] 
-- * Iops [IntegerOptional] <p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is currently being applied.</p>
-- * AllocatedStorage [IntegerOptional] <p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be applied or is currently being applied. </p>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * DBInstanceClass [String] <p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or is currently being applied. </p>
-- * DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. </p>
-- * BackupRetentionPeriod [IntegerOptional] <p>Specifies the pending number of days for which automated backups are retained.</p>
-- * DBInstanceIdentifier [String] <p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be applied or is currently being applied. </p>
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
		["MultiAZ"] = args["MultiAZ"],
		["StorageType"] = args["StorageType"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["LicenseModel"] = args["LicenseModel"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["Port"] = args["Port"],
		["PendingCloudwatchLogsExports"] = args["PendingCloudwatchLogsExports"],
		["Iops"] = args["Iops"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["EngineVersion"] = args["EngineVersion"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertPendingModifiedValues(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceStatusInfo = { ["Status"] = true, ["Message"] = true, ["StatusType"] = true, ["Normal"] = true, nil }

function asserts.AssertDBInstanceStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceStatusInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["StatusType"] then asserts.AssertString(struct["StatusType"]) end
	if struct["Normal"] then asserts.AssertBoolean(struct["Normal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceStatusInfo[k], "DBInstanceStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceStatusInfo
-- <p>Provides a list of status information for a DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Status of the DB instance. For a StatusType of read replica, the values can be replicating, error, stopped, or terminated.</p>
-- * Message [String] <p>Details of the error if there is an error for the instance. If the instance is not in an error state, this value is blank.</p>
-- * StatusType [String] <p>This value is currently "read replication."</p>
-- * Normal [Boolean] <p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>
-- @return DBInstanceStatusInfo structure as a key-value pair table
function M.DBInstanceStatusInfo(args)
	assert(args, "You must provide an argument table when creating DBInstanceStatusInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Message"] = args["Message"],
		["StatusType"] = args["StatusType"],
		["Normal"] = args["Normal"],
	}
	asserts.AssertDBInstanceStatusInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidEventSubscriptionStateFault = { nil }

function asserts.AssertInvalidEventSubscriptionStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventSubscriptionStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEventSubscriptionStateFault[k], "InvalidEventSubscriptionStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventSubscriptionStateFault
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidEventSubscriptionStateFault structure as a key-value pair table
function M.InvalidEventSubscriptionStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidEventSubscriptionStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidEventSubscriptionStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotAlreadyExistsFault = { nil }

function asserts.AssertDBClusterSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAlreadyExistsFault[k], "DBClusterSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAlreadyExistsFault
-- <p>User already has a DB cluster snapshot with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterSnapshotAlreadyExistsFault structure as a key-value pair table
function M.DBClusterSnapshotAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterSnapshotAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["ResetAllParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertResetDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetDBParameterGroupMessage[k], "ResetDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing DBParameterGroup.</p> </li> </ul>
-- * ResetAllParameters [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters in the DB parameter group to default values. </p> <p>Default: <code>true</code> </p>
-- * Parameters [ParametersList] <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for Apply method): <code>pending-reboot</code> </p>
-- Required key: DBParameterGroupName
-- @return ResetDBParameterGroupMessage structure as a key-value pair table
function M.ResetDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["ResetAllParameters"] = args["ResetAllParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertResetDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceNotFoundFault = { nil }

function asserts.AssertDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceNotFoundFault[k], "DBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceNotFoundFault
-- <p> <i>DBInstanceIdentifier</i> does not refer to an existing DB instance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBInstanceNotFoundFault structure as a key-value pair table
function M.DBInstanceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBInstanceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBInstanceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBParameterGroupResult = { ["DBParameterGroup"] = true, nil }

function asserts.AssertCreateDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then asserts.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBParameterGroupResult[k], "CreateDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroup [DBParameterGroup] 
-- @return CreateDBParameterGroupResult structure as a key-value pair table
function M.CreateDBParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroup"] = args["DBParameterGroup"],
	}
	asserts.AssertCreateDBParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotMessage = { ["Marker"] = true, ["DBClusterSnapshots"] = true, nil }

function asserts.AssertDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshots"] then asserts.AssertDBClusterSnapshotList(struct["DBClusterSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotMessage[k], "DBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotMessage
-- <p> Provides a list of DB cluster snapshots for the user as the result of a call to the <a>DescribeDBClusterSnapshots</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBClusterSnapshots [DBClusterSnapshotList] <p>Provides a list of DB cluster snapshots for the user.</p>
-- @return DBClusterSnapshotMessage structure as a key-value pair table
function M.DBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBClusterSnapshots"] = args["DBClusterSnapshots"],
	}
	asserts.AssertDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingCloudwatchLogsExports = { ["LogTypesToDisable"] = true, ["LogTypesToEnable"] = true, nil }

function asserts.AssertPendingCloudwatchLogsExports(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingCloudwatchLogsExports to be of type 'table'")
	if struct["LogTypesToDisable"] then asserts.AssertLogTypeList(struct["LogTypesToDisable"]) end
	if struct["LogTypesToEnable"] then asserts.AssertLogTypeList(struct["LogTypesToEnable"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingCloudwatchLogsExports[k], "PendingCloudwatchLogsExports contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingCloudwatchLogsExports
-- <p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LogTypesToDisable [LogTypeList] <p>Log types that are in the process of being enabled. After they are enabled, these log types are exported to CloudWatch Logs.</p>
-- * LogTypesToEnable [LogTypeList] <p>Log types that are in the process of being deactivated. After they are deactivated, these log types aren't exported to CloudWatch Logs.</p>
-- @return PendingCloudwatchLogsExports structure as a key-value pair table
function M.PendingCloudwatchLogsExports(args)
	assert(args, "You must provide an argument table when creating PendingCloudwatchLogsExports")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LogTypesToDisable"] = args["LogTypesToDisable"],
		["LogTypesToEnable"] = args["LogTypesToEnable"],
	}
	asserts.AssertPendingCloudwatchLogsExports(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Range = { ["To"] = true, ["Step"] = true, ["From"] = true, nil }

function asserts.AssertRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Range to be of type 'table'")
	if struct["To"] then asserts.AssertInteger(struct["To"]) end
	if struct["Step"] then asserts.AssertIntegerOptional(struct["Step"]) end
	if struct["From"] then asserts.AssertInteger(struct["From"]) end
	for k,_ in pairs(struct) do
		assert(keys.Range[k], "Range contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Range
-- <p>A range of integer values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * To [Integer] <p>The maximum value in the range.</p>
-- * Step [IntegerOptional] <p>The step value for the range. For example, if you have a range of 5,000 to 10,000, with a step value of 1,000, the valid values start at 5,000 and step up by 1,000. Even though 7,500 is within the range, it isn't a valid value for the range. The valid values are 5,000, 6,000, 7,000, 8,000... </p>
-- * From [Integer] <p>The minimum value in the range.</p>
-- @return Range structure as a key-value pair table
function M.Range(args)
	assert(args, "You must provide an argument table when creating Range")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["To"] = args["To"],
		["Step"] = args["Step"],
		["From"] = args["From"],
	}
	asserts.AssertRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterMember = { ["IsClusterWriter"] = true, ["DBClusterParameterGroupStatus"] = true, ["PromotionTier"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBClusterMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMember to be of type 'table'")
	if struct["IsClusterWriter"] then asserts.AssertBoolean(struct["IsClusterWriter"]) end
	if struct["DBClusterParameterGroupStatus"] then asserts.AssertString(struct["DBClusterParameterGroupStatus"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterMember[k], "DBClusterMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMember
-- <p>Contains information about an instance that is part of a DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsClusterWriter [Boolean] <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>
-- * DBClusterParameterGroupStatus [String] <p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance. </p>
-- * DBInstanceIdentifier [String] <p>Specifies the instance identifier for this member of the DB cluster.</p>
-- @return DBClusterMember structure as a key-value pair table
function M.DBClusterMember(args)
	assert(args, "You must provide an argument table when creating DBClusterMember")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IsClusterWriter"] = args["IsClusterWriter"],
		["DBClusterParameterGroupStatus"] = args["DBClusterParameterGroupStatus"],
		["PromotionTier"] = args["PromotionTier"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDBClusterMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceQuotaExceededFault = { nil }

function asserts.AssertInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InstanceQuotaExceededFault[k], "InstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InstanceQuotaExceededFault structure as a key-value pair table
function M.InstanceQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating InstanceQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInstanceQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventCategoriesMap = { ["EventCategories"] = true, ["SourceType"] = true, nil }

function asserts.AssertEventCategoriesMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMap to be of type 'table'")
	if struct["EventCategories"] then asserts.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventCategoriesMap[k], "EventCategoriesMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMap
-- <p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventCategories [EventCategoriesList] <p>The event categories for the specified source type</p>
-- * SourceType [String] <p>The source type that the returned categories belong to</p>
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
		["EventCategories"] = args["EventCategories"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertEventCategoriesMap(all_args)
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
-- <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the following data type:</p> <ul> <li> <p> <a>OrderableDBInstanceOption</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
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

keys.DBSecurityGroupNotFoundFault = { nil }

function asserts.AssertDBSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupNotFoundFault[k], "DBSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotFoundFault
-- <p> <i>DBSecurityGroupName</i> does not refer to an existing DB security group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSecurityGroupNotFoundFault structure as a key-value pair table
function M.DBSecurityGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSecurityGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainMembership = { ["Status"] = true, ["IAMRoleName"] = true, ["Domain"] = true, ["FQDN"] = true, nil }

function asserts.AssertDomainMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["IAMRoleName"] then asserts.AssertString(struct["IAMRoleName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["FQDN"] then asserts.AssertString(struct["FQDN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainMembership[k], "DomainMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMembership
-- <p>An Active Directory Domain membership record associated with the DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB instance's Active Directory Domain membership, such as joined, pending-join, failed etc).</p>
-- * IAMRoleName [String] <p>The name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * Domain [String] <p>The identifier of the Active Directory Domain.</p>
-- * FQDN [String] <p>The fully qualified domain name of the Active Directory Domain.</p>
-- @return DomainMembership structure as a key-value pair table
function M.DomainMembership(args)
	assert(args, "You must provide an argument table when creating DomainMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["IAMRoleName"] = args["IAMRoleName"],
		["Domain"] = args["Domain"],
		["FQDN"] = args["FQDN"],
	}
	asserts.AssertDomainMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidDBInstanceModificationsMessage = { ["Storage"] = true, nil }

function asserts.AssertValidDBInstanceModificationsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidDBInstanceModificationsMessage to be of type 'table'")
	if struct["Storage"] then asserts.AssertValidStorageOptionsList(struct["Storage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidDBInstanceModificationsMessage[k], "ValidDBInstanceModificationsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidDBInstanceModificationsMessage
-- <p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <a>DescribeValidDBInstanceModifications</a> action. You can use this information when you call <a>ModifyDBInstance</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Storage [ValidStorageOptionsList] <p>Valid storage options for your DB instance. </p>
-- @return ValidDBInstanceModificationsMessage structure as a key-value pair table
function M.ValidDBInstanceModificationsMessage(args)
	assert(args, "You must provide an argument table when creating ValidDBInstanceModificationsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Storage"] = args["Storage"],
	}
	asserts.AssertValidDBInstanceModificationsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBEngineVersion = { ["Engine"] = true, ["DBParameterGroupFamily"] = true, ["SupportsLogExportsToCloudwatchLogs"] = true, ["SupportedCharacterSets"] = true, ["DefaultCharacterSet"] = true, ["SupportedTimezones"] = true, ["DBEngineDescription"] = true, ["EngineVersion"] = true, ["DBEngineVersionDescription"] = true, ["ExportableLogTypes"] = true, ["ValidUpgradeTarget"] = true, ["SupportsReadReplica"] = true, nil }

function asserts.AssertDBEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersion to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["SupportsLogExportsToCloudwatchLogs"] then asserts.AssertBoolean(struct["SupportsLogExportsToCloudwatchLogs"]) end
	if struct["SupportedCharacterSets"] then asserts.AssertSupportedCharacterSetsList(struct["SupportedCharacterSets"]) end
	if struct["DefaultCharacterSet"] then asserts.AssertCharacterSet(struct["DefaultCharacterSet"]) end
	if struct["SupportedTimezones"] then asserts.AssertSupportedTimezonesList(struct["SupportedTimezones"]) end
	if struct["DBEngineDescription"] then asserts.AssertString(struct["DBEngineDescription"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBEngineVersionDescription"] then asserts.AssertString(struct["DBEngineVersionDescription"]) end
	if struct["ExportableLogTypes"] then asserts.AssertLogTypeList(struct["ExportableLogTypes"]) end
	if struct["ValidUpgradeTarget"] then asserts.AssertValidUpgradeTargetList(struct["ValidUpgradeTarget"]) end
	if struct["SupportsReadReplica"] then asserts.AssertBoolean(struct["SupportsReadReplica"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBEngineVersion[k], "DBEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersion
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the database engine.</p>
-- * DBParameterGroupFamily [String] <p>The name of the DB parameter group family for the database engine.</p>
-- * SupportsLogExportsToCloudwatchLogs [Boolean] <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
-- * SupportedCharacterSets [SupportedCharacterSetsList] <p> A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- * DefaultCharacterSet [CharacterSet] <p> The default character set for new instances of this engine version, if the <code>CharacterSetName</code> parameter of the CreateDBInstance API is not specified. </p>
-- * SupportedTimezones [SupportedTimezonesList] <p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- * DBEngineDescription [String] <p>The description of the database engine.</p>
-- * EngineVersion [String] <p>The version number of the database engine.</p>
-- * DBEngineVersionDescription [String] <p>The description of the database engine version.</p>
-- * ExportableLogTypes [LogTypeList] <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
-- * ValidUpgradeTarget [ValidUpgradeTargetList] <p>A list of engine versions that this database engine version can be upgraded to.</p>
-- * SupportsReadReplica [Boolean] <p>Indicates whether the database engine version supports read replicas.</p>
-- @return DBEngineVersion structure as a key-value pair table
function M.DBEngineVersion(args)
	assert(args, "You must provide an argument table when creating DBEngineVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["SupportsLogExportsToCloudwatchLogs"] = args["SupportsLogExportsToCloudwatchLogs"],
		["SupportedCharacterSets"] = args["SupportedCharacterSets"],
		["DefaultCharacterSet"] = args["DefaultCharacterSet"],
		["SupportedTimezones"] = args["SupportedTimezones"],
		["DBEngineDescription"] = args["DBEngineDescription"],
		["EngineVersion"] = args["EngineVersion"],
		["DBEngineVersionDescription"] = args["DBEngineVersionDescription"],
		["ExportableLogTypes"] = args["ExportableLogTypes"],
		["ValidUpgradeTarget"] = args["ValidUpgradeTarget"],
		["SupportsReadReplica"] = args["SupportsReadReplica"],
	}
	asserts.AssertDBEngineVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetQuotaExceededFault = { nil }

function asserts.AssertDBSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetQuotaExceededFault[k], "DBSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetQuotaExceededFault structure as a key-value pair table
function M.DBSubnetQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBSubnetQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterAlreadyExistsFault = { nil }

function asserts.AssertDBClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterAlreadyExistsFault[k], "DBClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterAlreadyExistsFault
-- <p>User already has a DB cluster with the given identifier.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterAlreadyExistsFault structure as a key-value pair table
function M.DBClusterAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Timezone = { ["TimezoneName"] = true, nil }

function asserts.AssertTimezone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timezone to be of type 'table'")
	if struct["TimezoneName"] then asserts.AssertString(struct["TimezoneName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Timezone[k], "Timezone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timezone
-- <p>A time zone associated with a <a>DBInstance</a>. This data type is an element in the response to the <a>DescribeDBInstances</a>, and the <a>DescribeDBEngineVersions</a> actions. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimezoneName [String] <p>The name of the time zone.</p>
-- @return Timezone structure as a key-value pair table
function M.Timezone(args)
	assert(args, "You must provide an argument table when creating Timezone")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimezoneName"] = args["TimezoneName"],
	}
	asserts.AssertTimezone(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplyPendingMaintenanceActionMessage = { ["ApplyAction"] = true, ["OptInType"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertApplyPendingMaintenanceActionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionMessage to be of type 'table'")
	assert(struct["ResourceIdentifier"], "Expected key ResourceIdentifier to exist in table")
	assert(struct["ApplyAction"], "Expected key ApplyAction to exist in table")
	assert(struct["OptInType"], "Expected key OptInType to exist in table")
	if struct["ApplyAction"] then asserts.AssertString(struct["ApplyAction"]) end
	if struct["OptInType"] then asserts.AssertString(struct["OptInType"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyPendingMaintenanceActionMessage[k], "ApplyPendingMaintenanceActionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplyAction [String] <p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code> </p>
-- * OptInType [String] <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>immediate</code> can't be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>
-- * ResourceIdentifier [String] <p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>.</p>
-- Required key: ResourceIdentifier
-- Required key: ApplyAction
-- Required key: OptInType
-- @return ApplyPendingMaintenanceActionMessage structure as a key-value pair table
function M.ApplyPendingMaintenanceActionMessage(args)
	assert(args, "You must provide an argument table when creating ApplyPendingMaintenanceActionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplyAction"] = args["ApplyAction"],
		["OptInType"] = args["OptInType"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertApplyPendingMaintenanceActionMessage(all_args)
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
-- <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetStatus [String] <p>Specifies the status of the subnet.</p>
-- * SubnetIdentifier [String] <p>Specifies the identifier of the subnet.</p>
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

keys.RebootDBInstanceMessage = { ["ForceFailover"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertRebootDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["ForceFailover"] then asserts.AssertBooleanOptional(struct["ForceFailover"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootDBInstanceMessage[k], "RebootDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForceFailover [BooleanOptional] <p> When <code>true</code>, the reboot is conducted through a MultiAZ failover. </p> <p>Constraint: You can't specify <code>true</code> if the instance is not configured for MultiAZ.</p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return RebootDBInstanceMessage structure as a key-value pair table
function M.RebootDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating RebootDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForceFailover"] = args["ForceFailover"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertRebootDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p> <p>Neptune may not also be authorized via IAM to perform necessary actions on your behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AuthorizationNotFoundFault structure as a key-value pair table
function M.AuthorizationNotFoundFault(args)
	assert(args, "You must provide an argument table when creating AuthorizationNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAuthorizationNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClusterSnapshotAttributesMessage = { ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeDBClusterSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClusterSnapshotAttributesMessage[k], "DescribeDBClusterSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
-- Required key: DBClusterSnapshotIdentifier
-- @return DescribeDBClusterSnapshotAttributesMessage structure as a key-value pair table
function M.DescribeDBClusterSnapshotAttributesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClusterSnapshotAttributesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertCreateDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterSnapshotResult[k], "CreateDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return CreateDBClusterSnapshotResult structure as a key-value pair table
function M.CreateDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertCreateDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SnapshotQuotaExceededFault = { nil }

function asserts.AssertSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SnapshotQuotaExceededFault[k], "SnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnapshotQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SnapshotQuotaExceededFault structure as a key-value pair table
function M.SnapshotQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating SnapshotQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSnapshotQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBSubnetGroupMessage = { ["DBSubnetGroupName"] = true, nil }

function asserts.AssertDeleteDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSubnetGroupMessage[k], "DeleteDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSubnetGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroupName [String] <p>The name of the database subnet group to delete.</p> <note> <p>You can't delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required key: DBSubnetGroupName
-- @return DeleteDBSubnetGroupMessage structure as a key-value pair table
function M.DeleteDBSubnetGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBSubnetGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
	}
	asserts.AssertDeleteDBSubnetGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBParameterGroupMessage[k], "CreateDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- * DBParameterGroupFamily [String] <p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
-- * Description [String] <p>The description for the DB parameter group.</p>
-- * Tags [TagList] 
-- Required key: DBParameterGroupName
-- Required key: DBParameterGroupFamily
-- Required key: Description
-- @return CreateDBParameterGroupMessage structure as a key-value pair table
function M.CreateDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventSubscriptionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventSubscriptionsMessage[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * SubscriptionName [String] <p>The name of the event notification subscription you want to describe.</p>
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
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
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

keys.ModifyDBParameterGroupMessage = { ["DBParameterGroupName"] = true, ["Parameters"] = true, nil }

function asserts.AssertModifyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBParameterGroupMessage[k], "ModifyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBParameterGroup.</p> </li> </ul>
-- * Parameters [ParametersList] <p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for the application method): <code>immediate | pending-reboot</code> </p> <note> <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p> </note>
-- Required key: DBParameterGroupName
-- Required key: Parameters
-- @return ModifyDBParameterGroupMessage structure as a key-value pair table
function M.ModifyDBParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertModifyDBParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubscriptionCategoryNotFoundFault structure as a key-value pair table
function M.SubscriptionCategoryNotFoundFault(args)
	assert(args, "You must provide an argument table when creating SubscriptionCategoryNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubscriptionCategoryNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SharedSnapshotQuotaExceededFault = { nil }

function asserts.AssertSharedSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharedSnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SharedSnapshotQuotaExceededFault[k], "SharedSnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharedSnapshotQuotaExceededFault
-- <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SharedSnapshotQuotaExceededFault structure as a key-value pair table
function M.SharedSnapshotQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating SharedSnapshotQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSharedSnapshotQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBParameterGroupsMessage = { ["Marker"] = true, ["DBParameterGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBParameterGroupsMessage[k], "DescribeDBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParameterGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBParameterGroupsMessage structure as a key-value pair table
function M.DescribeDBParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBClustersMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertDescribeDBClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClustersMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBClustersMessage[k], "DescribeDBClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClustersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p>An optional pagination token provided by a previous <a>DescribeDBClusters</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>
-- * DBClusterIdentifier [String] <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match an existing DBClusterIdentifier.</p> </li> </ul>
-- @return DescribeDBClustersMessage structure as a key-value pair table
function M.DescribeDBClustersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBClustersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertDescribeDBClustersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidRestoreFault structure as a key-value pair table
function M.InvalidRestoreFault(args)
	assert(args, "You must provide an argument table when creating InvalidRestoreFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidRestoreFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSubnetGroupDoesNotCoverEnoughAZs = { nil }

function asserts.AssertDBSubnetGroupDoesNotCoverEnoughAZs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupDoesNotCoverEnoughAZs to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupDoesNotCoverEnoughAZs[k], "DBSubnetGroupDoesNotCoverEnoughAZs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupDoesNotCoverEnoughAZs
-- <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBSubnetGroupDoesNotCoverEnoughAZs structure as a key-value pair table
function M.DBSubnetGroupDoesNotCoverEnoughAZs(args)
	assert(args, "You must provide an argument table when creating DBSubnetGroupDoesNotCoverEnoughAZs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBSubnetGroupDoesNotCoverEnoughAZs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientStorageClusterCapacityFault = { nil }

function asserts.AssertInsufficientStorageClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientStorageClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientStorageClusterCapacityFault[k], "InsufficientStorageClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientStorageClusterCapacityFault
-- <p>There is insufficient storage available for the current action. You may be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientStorageClusterCapacityFault structure as a key-value pair table
function M.InsufficientStorageClusterCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientStorageClusterCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientStorageClusterCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBSubnetGroupsMessage = { ["Marker"] = true, ["DBSubnetGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeDBSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSubnetGroupsMessage[k], "DescribeDBSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSubnetGroupsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBSubnetGroupName [String] <p>The name of the DB subnet group to return details for.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @return DescribeDBSubnetGroupsMessage structure as a key-value pair table
function M.DescribeDBSubnetGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBSubnetGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeDBSubnetGroupsMessage(all_args)
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
-- <p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * EventSubscriptionsList [EventSubscriptionsList] <p>A list of EventSubscriptions data types.</p>
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

keys.DeleteDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertDeleteDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBInstanceResult[k], "DeleteDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return DeleteDBInstanceResult structure as a key-value pair table
function M.DeleteDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertDeleteDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotNotFoundFault = { nil }

function asserts.AssertDBClusterSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotNotFoundFault[k], "DBClusterSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotNotFoundFault
-- <p> <i>DBClusterSnapshotIdentifier</i> does not refer to an existing DB cluster snapshot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterSnapshotNotFoundFault structure as a key-value pair table
function M.DBClusterSnapshotNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterSnapshotNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterMessage = { ["DBClusterParameterGroupName"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["DBClusterIdentifier"] = true, ["PreferredMaintenanceWindow"] = true, ["NewDBClusterIdentifier"] = true, ["VpcSecurityGroupIds"] = true, ["ApplyImmediately"] = true, ["PreferredBackupWindow"] = true, ["MasterUserPassword"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["Port"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertModifyDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["NewDBClusterIdentifier"] then asserts.AssertString(struct["NewDBClusterIdentifier"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterMessage[k], "ModifyDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>
-- * NewDBClusterIdentifier [String] <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>The first character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the DB cluster will belong to.</p>
-- * ApplyImmediately [Boolean] <p>A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set to <code>false</code>, changes to the DB cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter only affects the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: <code>false</code> </p>
-- * PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * MasterUserPassword [String] <p>The new password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- * EngineVersion [String] <p>The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true.</p> <p>For a list of valid engine versions, see <a>CreateDBInstance</a>, or call <a>DescribeDBEngineVersions</a>.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- * Port [IntegerOptional] <p>The port number on which the DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case, and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>
-- Required key: DBClusterIdentifier
-- @return ModifyDBClusterMessage structure as a key-value pair table
function M.ModifyDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["NewDBClusterIdentifier"] = args["NewDBClusterIdentifier"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertModifyDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstance = { ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["MonitoringRoleArn"] = true, ["VpcSecurityGroups"] = true, ["InstanceCreateTime"] = true, ["CopyTagsToSnapshot"] = true, ["OptionGroupMemberships"] = true, ["PendingModifiedValues"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["LatestRestorableTime"] = true, ["DBSecurityGroups"] = true, ["DBParameterGroups"] = true, ["PerformanceInsightsEnabled"] = true, ["ReadReplicaSourceDBInstanceIdentifier"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["DBSubnetGroup"] = true, ["SecondaryAvailabilityZone"] = true, ["ReadReplicaDBInstanceIdentifiers"] = true, ["AllocatedStorage"] = true, ["DBInstanceArn"] = true, ["BackupRetentionPeriod"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["Endpoint"] = true, ["DBInstanceStatus"] = true, ["PerformanceInsightsKMSKeyId"] = true, ["StatusInfos"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["EngineVersion"] = true, ["ReadReplicaDBClusterIdentifiers"] = true, ["TdeCredentialArn"] = true, ["EnabledCloudwatchLogsExports"] = true, ["EnhancedMonitoringResourceArn"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["DomainMemberships"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["DbiResourceId"] = true, ["CACertificateIdentifier"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["DbInstancePort"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstance to be of type 'table'")
	if struct["PubliclyAccessible"] then asserts.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["VpcSecurityGroups"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBoolean(struct["CopyTagsToSnapshot"]) end
	if struct["OptionGroupMemberships"] then asserts.AssertOptionGroupMembershipList(struct["OptionGroupMemberships"]) end
	if struct["PendingModifiedValues"] then asserts.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then asserts.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroups"]) end
	if struct["DBParameterGroups"] then asserts.AssertDBParameterGroupStatusList(struct["DBParameterGroups"]) end
	if struct["PerformanceInsightsEnabled"] then asserts.AssertBooleanOptional(struct["PerformanceInsightsEnabled"]) end
	if struct["ReadReplicaSourceDBInstanceIdentifier"] then asserts.AssertString(struct["ReadReplicaSourceDBInstanceIdentifier"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	if struct["SecondaryAvailabilityZone"] then asserts.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["ReadReplicaDBInstanceIdentifiers"] then asserts.AssertReadReplicaDBInstanceIdentifierList(struct["ReadReplicaDBInstanceIdentifiers"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["DBInstanceArn"] then asserts.AssertString(struct["DBInstanceArn"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertInteger(struct["BackupRetentionPeriod"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["DBInstanceStatus"] then asserts.AssertString(struct["DBInstanceStatus"]) end
	if struct["PerformanceInsightsKMSKeyId"] then asserts.AssertString(struct["PerformanceInsightsKMSKeyId"]) end
	if struct["StatusInfos"] then asserts.AssertDBInstanceStatusInfoList(struct["StatusInfos"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReadReplicaDBClusterIdentifiers"] then asserts.AssertReadReplicaDBClusterIdentifierList(struct["ReadReplicaDBClusterIdentifiers"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["EnabledCloudwatchLogsExports"] then asserts.AssertLogTypeList(struct["EnabledCloudwatchLogsExports"]) end
	if struct["EnhancedMonitoringResourceArn"] then asserts.AssertString(struct["EnhancedMonitoringResourceArn"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["DomainMemberships"] then asserts.AssertDomainMembershipList(struct["DomainMemberships"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["DbiResourceId"] then asserts.AssertString(struct["DbiResourceId"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then asserts.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DbInstancePort"] then asserts.AssertInteger(struct["DbInstancePort"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstance[k], "DBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstance
-- <p>Contains the details of an Amazon Neptune DB instance. </p> <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PubliclyAccessible [Boolean] <p>This parameter is not supported.</p>
-- * MasterUsername [String] <p>Contains the master username for the DB instance.</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
-- * LicenseModel [String] <p>License model information for this DB instance.</p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits Neptune to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>
-- * VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
-- * InstanceCreateTime [TStamp] <p>Provides the date and time the DB instance was created.</p>
-- * CopyTagsToSnapshot [Boolean] <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
-- * OptionGroupMemberships [OptionGroupMembershipList] <p>Provides the list of option group memberships for this DB instance.</p>
-- * PendingModifiedValues [PendingModifiedValues] <p>Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
-- * Engine [String] <p>Provides the name of the database engine to be used for this DB instance.</p>
-- * MultiAZ [Boolean] <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
-- * LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- * DBSecurityGroups [DBSecurityGroupMembershipList] <p> Provides List of DB security group elements containing only <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements. </p>
-- * DBParameterGroups [DBParameterGroupStatusList] <p>Provides the list of DB parameter groups applied to this DB instance.</p>
-- * PerformanceInsightsEnabled [BooleanOptional] <p>True if Performance Insights is enabled for the DB instance, and otherwise false.</p>
-- * ReadReplicaSourceDBInstanceIdentifier [String] <p>Contains the identifier of the source DB instance if this DB instance is a Read Replica.</p>
-- * AutoMinorVersionUpgrade [Boolean] <p>Indicates that minor version patches are applied automatically.</p>
-- * PreferredBackupWindow [String] <p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance. </p>
-- * DBSubnetGroup [DBSubnetGroup] <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
-- * SecondaryAvailabilityZone [String] <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
-- * ReadReplicaDBInstanceIdentifiers [ReadReplicaDBInstanceIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB instance.</p>
-- * AllocatedStorage [Integer] <p>Specifies the allocated storage size specified in gibibytes.</p>
-- * DBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the DB instance.</p>
-- * BackupRetentionPeriod [Integer] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- * DBName [String] <p>The database name.</p>
-- * PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- * Endpoint [Endpoint] <p>Specifies the connection endpoint.</p>
-- * DBInstanceStatus [String] <p>Specifies the current state of this database.</p>
-- * PerformanceInsightsKMSKeyId [String] <p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
-- * StatusInfos [DBInstanceStatusInfoList] <p>The status of a Read Replica. If the instance is not a Read Replica, this is blank.</p>
-- * IAMDatabaseAuthenticationEnabled [Boolean] <p>True if AWS Identity and Access Management (IAM) authentication is enabled, and otherwise false.</p>
-- * EngineVersion [String] <p>Indicates the database engine version.</p>
-- * ReadReplicaDBClusterIdentifiers [ReadReplicaDBClusterIdentifierList] <p>Contains one or more identifiers of DB clusters that are Read Replicas of this DB instance.</p>
-- * TdeCredentialArn [String] <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
-- * EnabledCloudwatchLogsExports [LogTypeList] <p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p>
-- * EnhancedMonitoringResourceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
-- * CharacterSetName [String] <p>If present, specifies the name of the character set that this instance is associated with.</p>
-- * AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
-- * DomainMemberships [DomainMembershipList] <p>Not supported</p>
-- * DBClusterIdentifier [String] <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
-- * StorageType [String] <p>Specifies the storage type associated with DB instance.</p>
-- * DbiResourceId [String] <p>The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB instance is accessed.</p>
-- * CACertificateIdentifier [String] <p>The identifier of the CA certificate for this DB instance.</p>
-- * Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
-- * StorageEncrypted [Boolean] <p>Specifies whether the DB instance is encrypted.</p>
-- * KmsKeyId [String] <p> If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB instance. </p>
-- * Timezone [String] <p>Not supported. </p>
-- * DBInstanceClass [String] <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
-- * DbInstancePort [Integer] <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
-- * DBInstanceIdentifier [String] <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
-- @return DBInstance structure as a key-value pair table
function M.DBInstance(args)
	assert(args, "You must provide an argument table when creating DBInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["MasterUsername"] = args["MasterUsername"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["VpcSecurityGroups"] = args["VpcSecurityGroups"],
		["InstanceCreateTime"] = args["InstanceCreateTime"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["OptionGroupMemberships"] = args["OptionGroupMemberships"],
		["PendingModifiedValues"] = args["PendingModifiedValues"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["LatestRestorableTime"] = args["LatestRestorableTime"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["DBParameterGroups"] = args["DBParameterGroups"],
		["PerformanceInsightsEnabled"] = args["PerformanceInsightsEnabled"],
		["ReadReplicaSourceDBInstanceIdentifier"] = args["ReadReplicaSourceDBInstanceIdentifier"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["DBSubnetGroup"] = args["DBSubnetGroup"],
		["SecondaryAvailabilityZone"] = args["SecondaryAvailabilityZone"],
		["ReadReplicaDBInstanceIdentifiers"] = args["ReadReplicaDBInstanceIdentifiers"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBInstanceArn"] = args["DBInstanceArn"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["Endpoint"] = args["Endpoint"],
		["DBInstanceStatus"] = args["DBInstanceStatus"],
		["PerformanceInsightsKMSKeyId"] = args["PerformanceInsightsKMSKeyId"],
		["StatusInfos"] = args["StatusInfos"],
		["IAMDatabaseAuthenticationEnabled"] = args["IAMDatabaseAuthenticationEnabled"],
		["EngineVersion"] = args["EngineVersion"],
		["ReadReplicaDBClusterIdentifiers"] = args["ReadReplicaDBClusterIdentifiers"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["EnabledCloudwatchLogsExports"] = args["EnabledCloudwatchLogsExports"],
		["EnhancedMonitoringResourceArn"] = args["EnhancedMonitoringResourceArn"],
		["CharacterSetName"] = args["CharacterSetName"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["DomainMemberships"] = args["DomainMemberships"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["StorageType"] = args["StorageType"],
		["DbiResourceId"] = args["DbiResourceId"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["Iops"] = args["Iops"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Timezone"] = args["Timezone"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DbInstancePort"] = args["DbInstancePort"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDBInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceMessage = { ["DBParameterGroupName"] = true, ["EnablePerformanceInsights"] = true, ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["EnableCloudwatchLogsExports"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["PerformanceInsightsKMSKeyId"] = true, ["Domain"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["MonitoringRoleArn"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["MasterUserPassword"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertCreateDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBInstanceClass"], "Expected key DBInstanceClass to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["EnablePerformanceInsights"] then asserts.AssertBooleanOptional(struct["EnablePerformanceInsights"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["EnableCloudwatchLogsExports"] then asserts.AssertLogTypeList(struct["EnableCloudwatchLogsExports"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["PerformanceInsightsKMSKeyId"] then asserts.AssertString(struct["PerformanceInsightsKMSKeyId"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then asserts.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceMessage[k], "CreateDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine is used.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * EnablePerformanceInsights [BooleanOptional] <p>True to enable Performance Insights for the DB instance, and otherwise false. </p>
-- * PubliclyAccessible [BooleanOptional] <p>This parameter is not supported.</p>
-- * DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- * MasterUsername [String] <p>The name for the master user. Not used.</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- * LicenseModel [String] <p>License model information for this DB instance.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB instance.</p> <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p> <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable AWS Identity and Access Management (IAM) authentication for Neptune.</p> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.</p>
-- * EnableCloudwatchLogsExports [LogTypeList] <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
-- * Engine [String] <p>The name of the database engine to be used for this instance. </p> <p>Valid Values: <code>neptune</code> </p>
-- * MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p>
-- * DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>
-- * Tags [TagList] 
-- * AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades are applied automatically to the DB instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- * PreferredBackupWindow [String] <p> The daily time range during which automated backups are created. </p> <p>Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Read Replica is promoted to the primary instance after a failure of the existing primary instance. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- * TdeCredentialArn [String] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
-- * AllocatedStorage [IntegerOptional] <p>The amount of storage (in gibibytes) to allocate for the DB instance.</p> <p>Type: Integer</p> <p>Not applicable. Neptune cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in a Neptune cluster volume.</p>
-- * DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB instance.</p> <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
-- * DBName [String] <p>The database name. </p> <p>Type: String</p>
-- * PreferredMaintenanceWindow [String] <p>The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC). </p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the key store in order to access the device.</p>
-- * PerformanceInsightsKMSKeyId [String] <p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
-- * Domain [String] <p>Specify the Active Directory Domain to create the instance in.</p>
-- * EngineVersion [String] <p>The version number of the database engine to use.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained.</p> <p>Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- * OptionGroupName [String] <p>Indicates that the DB instance should be associated with the specified option group.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>
-- * CharacterSetName [String] <p>Indicates that the DB instance should be associated with the specified CharacterSet.</p> <p>Not applicable. The character set is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
-- * AvailabilityZone [String] <p> The EC2 Availability Zone that the DB instance is created in. </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is set to <code>true</code>. The specified Availability Zone must be in the same AWS Region as the current endpoint. </p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster that the instance will belong to.</p> <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p> <p>Type: String</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p>Not applicable. Storage is managed by the DB Cluster.</p>
-- * MasterUserPassword [String] <p>The password for the master user. The password can include any printable ASCII character except "/", """, or "@".</p> <p> Not used. </p>
-- * Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance. </p>
-- * StorageEncrypted [BooleanOptional] <p>Specifies whether the DB instance is encrypted.</p> <p>Not applicable. The encryption for DB instances is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p> <p>Default: false</p>
-- * KmsKeyId [String] <p>The AWS KMS key identifier for an encrypted DB instance.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon Neptune will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>
-- * Timezone [String] <p>The time zone of the DB instance. </p>
-- * DBInstanceClass [String] <p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions. </p>
-- * Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Not applicable. The port is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p> <p> Default: <code>8182</code> </p> <p>Type: Integer</p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required key: DBInstanceIdentifier
-- Required key: DBInstanceClass
-- Required key: Engine
-- @return CreateDBInstanceMessage structure as a key-value pair table
function M.CreateDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["EnablePerformanceInsights"] = args["EnablePerformanceInsights"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["MasterUsername"] = args["MasterUsername"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["EnableCloudwatchLogsExports"] = args["EnableCloudwatchLogsExports"],
		["Engine"] = args["Engine"],
		["MultiAZ"] = args["MultiAZ"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["Tags"] = args["Tags"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["DBName"] = args["DBName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["PerformanceInsightsKMSKeyId"] = args["PerformanceInsightsKMSKeyId"],
		["Domain"] = args["Domain"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["OptionGroupName"] = args["OptionGroupName"],
		["CharacterSetName"] = args["CharacterSetName"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["StorageType"] = args["StorageType"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["Iops"] = args["Iops"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["KmsKeyId"] = args["KmsKeyId"],
		["Timezone"] = args["Timezone"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["Port"] = args["Port"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertCreateDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupMembership = { ["Status"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertOptionGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupMembership[k], "OptionGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupMembership
-- <p>Provides information on the option groups the DB instance is a member of.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB instance's option group membership. Valid values are: <code>in-sync</code>, <code>pending-apply</code>, <code>pending-removal</code>, <code>pending-maintenance-apply</code>, <code>pending-maintenance-removal</code>, <code>applying</code>, <code>removing</code>, and <code>failed</code>. </p>
-- * OptionGroupName [String] <p>The name of the option group that the instance belongs to.</p>
-- @return OptionGroupMembership structure as a key-value pair table
function M.OptionGroupMembership(args)
	assert(args, "You must provide an argument table when creating OptionGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertOptionGroupMembership(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>List of tags returned by the ListTagsForResource operation.</p>
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

keys.ResetDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, ["ResetAllParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertResetDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["ResetAllParameters"] then asserts.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetDBClusterParameterGroupMessage[k], "ResetDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to reset.</p>
-- * ResetAllParameters [Boolean] <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster parameter group to their default values, and <code>false</code> otherwise. You can't use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>
-- * Parameters [ParametersList] <p>A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set to <code>true</code>.</p>
-- Required key: DBClusterParameterGroupName
-- @return ResetDBClusterParameterGroupMessage structure as a key-value pair table
function M.ResetDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating ResetDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["ResetAllParameters"] = args["ResetAllParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertResetDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBInstanceMessage = { ["Marker"] = true, ["DBInstances"] = true, nil }

function asserts.AssertDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBInstances"] then asserts.AssertDBInstanceList(struct["DBInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBInstanceMessage[k], "DBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBInstances</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBInstances [DBInstanceList] <p> A list of <a>DBInstance</a> instances. </p>
-- @return DBInstanceMessage structure as a key-value pair table
function M.DBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating DBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBInstances"] = args["DBInstances"],
	}
	asserts.AssertDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValueList(struct["Values"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>This type is not currently supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValueList] <p>This parameter is not currently supported.</p>
-- * Name [String] <p>This parameter is not currently supported.</p>
-- Required key: Name
-- Required key: Values
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KMSKeyNotAccessibleFault = { nil }

function asserts.AssertKMSKeyNotAccessibleFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSKeyNotAccessibleFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.KMSKeyNotAccessibleFault[k], "KMSKeyNotAccessibleFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSKeyNotAccessibleFault
-- <p>Error accessing KMS key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return KMSKeyNotAccessibleFault structure as a key-value pair table
function M.KMSKeyNotAccessibleFault(args)
	assert(args, "You must provide an argument table when creating KMSKeyNotAccessibleFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertKMSKeyNotAccessibleFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingMaintenanceAction = { ["Description"] = true, ["OptInStatus"] = true, ["ForcedApplyDate"] = true, ["AutoAppliedAfterDate"] = true, ["Action"] = true, ["CurrentApplyDate"] = true, nil }

function asserts.AssertPendingMaintenanceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceAction to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["OptInStatus"] then asserts.AssertString(struct["OptInStatus"]) end
	if struct["ForcedApplyDate"] then asserts.AssertTStamp(struct["ForcedApplyDate"]) end
	if struct["AutoAppliedAfterDate"] then asserts.AssertTStamp(struct["AutoAppliedAfterDate"]) end
	if struct["Action"] then asserts.AssertString(struct["Action"]) end
	if struct["CurrentApplyDate"] then asserts.AssertTStamp(struct["CurrentApplyDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingMaintenanceAction[k], "PendingMaintenanceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceAction
-- <p>Provides information about a pending maintenance action for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>A description providing more detail about the maintenance action.</p>
-- * OptInStatus [String] <p>Indicates the type of opt-in request that has been received for the resource.</p>
-- * ForcedApplyDate [TStamp] <p>The date when the maintenance action is automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>
-- * AutoAppliedAfterDate [TStamp] <p>The date of the maintenance window when the action is applied. The maintenance action is applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
-- * Action [String] <p>The type of pending maintenance action that is available for the resource.</p>
-- * CurrentApplyDate [TStamp] <p>The effective date when the pending maintenance action is applied to the resource. This date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received and nothing has been specified as <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
-- @return PendingMaintenanceAction structure as a key-value pair table
function M.PendingMaintenanceAction(args)
	assert(args, "You must provide an argument table when creating PendingMaintenanceAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["OptInStatus"] = args["OptInStatus"],
		["ForcedApplyDate"] = args["ForcedApplyDate"],
		["AutoAppliedAfterDate"] = args["AutoAppliedAfterDate"],
		["Action"] = args["Action"],
		["CurrentApplyDate"] = args["CurrentApplyDate"],
	}
	asserts.AssertPendingMaintenanceAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBClusterStateFault = { nil }

function asserts.AssertInvalidDBClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBClusterStateFault[k], "InvalidDBClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterStateFault
-- <p>The DB cluster is not in a valid state.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBClusterStateFault structure as a key-value pair table
function M.InvalidDBClusterStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBClusterStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBClusterStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBEngineVersionMessage = { ["Marker"] = true, ["DBEngineVersions"] = true, nil }

function asserts.AssertDBEngineVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersionMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBEngineVersions"] then asserts.AssertDBEngineVersionList(struct["DBEngineVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBEngineVersionMessage[k], "DBEngineVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersionMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBEngineVersions</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBEngineVersions [DBEngineVersionList] <p> A list of <code>DBEngineVersion</code> elements. </p>
-- @return DBEngineVersionMessage structure as a key-value pair table
function M.DBEngineVersionMessage(args)
	assert(args, "You must provide an argument table when creating DBEngineVersionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBEngineVersions"] = args["DBEngineVersions"],
	}
	asserts.AssertDBEngineVersionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSubnetGroupStateFault = { nil }

function asserts.AssertInvalidDBSubnetGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetGroupStateFault[k], "InvalidDBSubnetGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupStateFault
-- <p>The DB subnet group cannot be deleted because it is in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSubnetGroupStateFault structure as a key-value pair table
function M.InvalidDBSubnetGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSubnetGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSubnetGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PendingMaintenanceActionsMessage = { ["Marker"] = true, ["PendingMaintenanceActions"] = true, nil }

function asserts.AssertPendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["PendingMaintenanceActions"] then asserts.AssertPendingMaintenanceActions(struct["PendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingMaintenanceActionsMessage[k], "PendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceActionsMessage
-- <p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- * PendingMaintenanceActions [PendingMaintenanceActions] <p>A list of the pending maintenance actions for the resource.</p>
-- @return PendingMaintenanceActionsMessage structure as a key-value pair table
function M.PendingMaintenanceActionsMessage(args)
	assert(args, "You must provide an argument table when creating PendingMaintenanceActionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PendingMaintenanceActions"] = args["PendingMaintenanceActions"],
	}
	asserts.AssertPendingMaintenanceActionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsufficientDBClusterCapacityFault = { nil }

function asserts.AssertInsufficientDBClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientDBClusterCapacityFault[k], "InsufficientDBClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBClusterCapacityFault
-- <p>The DB cluster does not have enough capacity for the current operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientDBClusterCapacityFault structure as a key-value pair table
function M.InsufficientDBClusterCapacityFault(args)
	assert(args, "You must provide an argument table when creating InsufficientDBClusterCapacityFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientDBClusterCapacityFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSnapshotStateFault = { nil }

function asserts.AssertInvalidDBSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSnapshotStateFault[k], "InvalidDBSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSnapshotStateFault
-- <p>The state of the DB snapshot does not allow deletion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSnapshotStateFault structure as a key-value pair table
function M.InvalidDBSnapshotStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSnapshotStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSnapshotStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertDeleteEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventSubscriptionResult[k], "DeleteEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return DeleteEventSubscriptionResult structure as a key-value pair table
function M.DeleteEventSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating DeleteEventSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertDeleteEventSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProvisionedIopsNotAvailableInAZFault = { nil }

function asserts.AssertProvisionedIopsNotAvailableInAZFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedIopsNotAvailableInAZFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ProvisionedIopsNotAvailableInAZFault[k], "ProvisionedIopsNotAvailableInAZFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedIopsNotAvailableInAZFault
-- <p>Provisioned IOPS not available in the specified Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ProvisionedIopsNotAvailableInAZFault structure as a key-value pair table
function M.ProvisionedIopsNotAvailableInAZFault(args)
	assert(args, "You must provide an argument table when creating ProvisionedIopsNotAvailableInAZFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertProvisionedIopsNotAvailableInAZFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DomainNotFoundFault = { nil }

function asserts.AssertDomainNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DomainNotFoundFault[k], "DomainNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainNotFoundFault
-- <p> <i>Domain</i> does not refer to an existing Active Directory Domain. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DomainNotFoundFault structure as a key-value pair table
function M.DomainNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DomainNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDomainNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PromoteReadReplicaDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertPromoteReadReplicaDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaDBClusterResult[k], "PromoteReadReplicaDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return PromoteReadReplicaDBClusterResult structure as a key-value pair table
function M.PromoteReadReplicaDBClusterResult(args)
	assert(args, "You must provide an argument table when creating PromoteReadReplicaDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertPromoteReadReplicaDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSubnetStateFault = { nil }

function asserts.AssertInvalidDBSubnetStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetStateFault[k], "InvalidDBSubnetStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetStateFault
-- <p> The DB subnet is not in the <i>available</i> state. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSubnetStateFault structure as a key-value pair table
function M.InvalidDBSubnetStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSubnetStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSubnetStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourcePendingMaintenanceActions = { ["PendingMaintenanceActionDetails"] = true, ["ResourceIdentifier"] = true, nil }

function asserts.AssertResourcePendingMaintenanceActions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePendingMaintenanceActions to be of type 'table'")
	if struct["PendingMaintenanceActionDetails"] then asserts.AssertPendingMaintenanceActionDetails(struct["PendingMaintenanceActionDetails"]) end
	if struct["ResourceIdentifier"] then asserts.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourcePendingMaintenanceActions[k], "ResourcePendingMaintenanceActions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePendingMaintenanceActions
-- <p>Describes the pending maintenance actions for a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingMaintenanceActionDetails [PendingMaintenanceActionDetails] <p>A list that provides details about the pending maintenance actions for the resource.</p>
-- * ResourceIdentifier [String] <p>The ARN of the resource that has pending maintenance actions.</p>
-- @return ResourcePendingMaintenanceActions structure as a key-value pair table
function M.ResourcePendingMaintenanceActions(args)
	assert(args, "You must provide an argument table when creating ResourcePendingMaintenanceActions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingMaintenanceActionDetails"] = args["PendingMaintenanceActionDetails"],
		["ResourceIdentifier"] = args["ResourceIdentifier"],
	}
	asserts.AssertResourcePendingMaintenanceActions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterSnapshotMessage = { ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDeleteDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterSnapshotMessage[k], "DeleteDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>
-- Required key: DBClusterSnapshotIdentifier
-- @return DeleteDBClusterSnapshotMessage structure as a key-value pair table
function M.DeleteDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDeleteDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterToPointInTimeMessage = { ["VpcSecurityGroupIds"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, ["UseLatestRestorableTime"] = true, ["RestoreType"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["SourceDBClusterIdentifier"] = true, ["DBSubnetGroupName"] = true, ["RestoreToTime"] = true, ["Port"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertRestoreDBClusterToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SourceDBClusterIdentifier"], "Expected key SourceDBClusterIdentifier to exist in table")
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["UseLatestRestorableTime"] then asserts.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreType"] then asserts.AssertString(struct["RestoreType"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SourceDBClusterIdentifier"] then asserts.AssertString(struct["SourceDBClusterIdentifier"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["RestoreToTime"] then asserts.AssertTStamp(struct["RestoreToTime"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterToPointInTimeMessage[k], "RestoreDBClusterToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster belongs to.</p>
-- * DBClusterIdentifier [String] <p>The name of the new DB cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * Tags [TagList] 
-- * UseLatestRestorableTime [Boolean] <p>A value that is set to <code>true</code> to restore the DB cluster to the latest restorable backup time, and <code>false</code> otherwise. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is provided.</p>
-- * RestoreType [String] <p>The type of restore to be performed. You can specify one of the following values:</p> <ul> <li> <p> <code>full-copy</code> - The new DB cluster is restored as a full copy of the source DB cluster.</p> </li> <li> <p> <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source DB cluster.</p> </li> </ul> <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p> <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored as a full copy of the source DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * KmsKeyId [String] <p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p> </li> <li> <p>If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the restore request is rejected.</p>
-- * SourceDBClusterIdentifier [String] <p>The identifier of the source DB cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul>
-- * DBSubnetGroupName [String] <p>The DB subnet group name to use for the new DB cluster.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * RestoreToTime [TStamp] <p>The date and time to restore the DB cluster to.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not provided</p> </li> <li> <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p> </li> <li> <p>Cannot be specified if <code>RestoreType</code> parameter is <code>copy-on-write</code> </p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>
-- * Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- * OptionGroupName [String] <p>The name of the option group for the new DB cluster.</p>
-- Required key: DBClusterIdentifier
-- Required key: SourceDBClusterIdentifier
-- @return RestoreDBClusterToPointInTimeMessage structure as a key-value pair table
function M.RestoreDBClusterToPointInTimeMessage(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterToPointInTimeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
		["UseLatestRestorableTime"] = args["UseLatestRestorableTime"],
		["RestoreType"] = args["RestoreType"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["KmsKeyId"] = args["KmsKeyId"],
		["SourceDBClusterIdentifier"] = args["SourceDBClusterIdentifier"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["RestoreToTime"] = args["RestoreToTime"],
		["Port"] = args["Port"],
		["OptionGroupName"] = args["OptionGroupName"],
	}
	asserts.AssertRestoreDBClusterToPointInTimeMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterFromSnapshotResult = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromSnapshotResult[k], "RestoreDBClusterFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return RestoreDBClusterFromSnapshotResult structure as a key-value pair table
function M.RestoreDBClusterFromSnapshotResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterFromSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertRestoreDBClusterFromSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudwatchLogsExportConfiguration = { ["EnableLogTypes"] = true, ["DisableLogTypes"] = true, nil }

function asserts.AssertCloudwatchLogsExportConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchLogsExportConfiguration to be of type 'table'")
	if struct["EnableLogTypes"] then asserts.AssertLogTypeList(struct["EnableLogTypes"]) end
	if struct["DisableLogTypes"] then asserts.AssertLogTypeList(struct["DisableLogTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudwatchLogsExportConfiguration[k], "CloudwatchLogsExportConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchLogsExportConfiguration
-- <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnableLogTypes [LogTypeList] <p>The list of log types to enable.</p>
-- * DisableLogTypes [LogTypeList] <p>The list of log types to disable.</p>
-- @return CloudwatchLogsExportConfiguration structure as a key-value pair table
function M.CloudwatchLogsExportConfiguration(args)
	assert(args, "You must provide an argument table when creating CloudwatchLogsExportConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnableLogTypes"] = args["EnableLogTypes"],
		["DisableLogTypes"] = args["DisableLogTypes"],
	}
	asserts.AssertCloudwatchLogsExportConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBSecurityGroupStateFault = { nil }

function asserts.AssertInvalidDBSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSecurityGroupStateFault[k], "InvalidDBSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSecurityGroupStateFault
-- <p>The state of the DB security group does not allow deletion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBSecurityGroupStateFault structure as a key-value pair table
function M.InvalidDBSecurityGroupStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBSecurityGroupStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBSecurityGroupStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRoleNotFoundFault = { nil }

function asserts.AssertDBClusterRoleNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleNotFoundFault[k], "DBClusterRoleNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleNotFoundFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleNotFoundFault structure as a key-value pair table
function M.DBClusterRoleNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupQuotaExceededFault = { nil }

function asserts.AssertDBParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupQuotaExceededFault[k], "DBParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupQuotaExceededFault structure as a key-value pair table
function M.DBParameterGroupQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBSecurityGroupMembership = { ["Status"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDBSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupMembership[k], "DBSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMembership
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the DB security group.</p>
-- * DBSecurityGroupName [String] <p>The name of the DB security group.</p>
-- @return DBSecurityGroupMembership structure as a key-value pair table
function M.DBSecurityGroupMembership(args)
	assert(args, "You must provide an argument table when creating DBSecurityGroupMembership")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DBSecurityGroupName"] = args["DBSecurityGroupName"],
	}
	asserts.AssertDBSecurityGroupMembership(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupNotFoundFault = { nil }

function asserts.AssertDBParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupNotFoundFault[k], "DBParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNotFoundFault
-- <p> <i>DBParameterGroupName</i> does not refer to an existing DB parameter group. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupNotFoundFault structure as a key-value pair table
function M.DBParameterGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveSourceIdentifierFromSubscriptionMessage = { ["SourceIdentifier"] = true, ["SubscriptionName"] = true, nil }

function asserts.AssertRemoveSourceIdentifierFromSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then asserts.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then asserts.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveSourceIdentifierFromSubscriptionMessage[k], "RemoveSourceIdentifierFromSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceIdentifier [String] <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security group. </p>
-- * SubscriptionName [String] <p>The name of the event notification subscription you want to remove a source identifier from.</p>
-- Required key: SubscriptionName
-- Required key: SourceIdentifier
-- @return RemoveSourceIdentifierFromSubscriptionMessage structure as a key-value pair table
function M.RemoveSourceIdentifierFromSubscriptionMessage(args)
	assert(args, "You must provide an argument table when creating RemoveSourceIdentifierFromSubscriptionMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceIdentifier"] = args["SourceIdentifier"],
		["SubscriptionName"] = args["SubscriptionName"],
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterRoleAlreadyExistsFault = { nil }

function asserts.AssertDBClusterRoleAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleAlreadyExistsFault[k], "DBClusterRoleAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleAlreadyExistsFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleAlreadyExistsFault structure as a key-value pair table
function M.DBClusterRoleAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The specified resource ID was not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResourceNotFoundFault structure as a key-value pair table
function M.ResourceNotFoundFault(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResourceNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterResult = { ["DBCluster"] = true, nil }

function asserts.AssertCreateDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterResult[k], "CreateDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return CreateDBClusterResult structure as a key-value pair table
function M.CreateDBClusterResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertCreateDBClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterMessage = { ["FinalDBSnapshotIdentifier"] = true, ["SkipFinalSnapshot"] = true, ["DBClusterIdentifier"] = true, nil }

function asserts.AssertDeleteDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then asserts.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then asserts.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterMessage[k], "DeleteDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinalDBSnapshotIdentifier [String] <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p> <note> <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to true results in an error. </p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- * SkipFinalSnapshot [Boolean] <p> Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is deleted. </p> <note> <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match an existing DBClusterIdentifier.</p> </li> </ul>
-- Required key: DBClusterIdentifier
-- @return DeleteDBClusterMessage structure as a key-value pair table
function M.DeleteDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinalDBSnapshotIdentifier"] = args["FinalDBSnapshotIdentifier"],
		["SkipFinalSnapshot"] = args["SkipFinalSnapshot"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
	}
	asserts.AssertDeleteDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterMessage = { ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["Engine"] = true, ["Tags"] = true, ["PreferredBackupWindow"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["DBClusterParameterGroupName"] = true, ["PreSignedUrl"] = true, ["ReplicationSourceIdentifier"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertCreateDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["ReplicationSourceIdentifier"] then asserts.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then asserts.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then asserts.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then asserts.AssertString(struct["DatabaseName"]) end
	if struct["AvailabilityZones"] then asserts.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterMessage[k], "CreateDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MasterUsername [String] <p>The name of the master user for the DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- * Engine [String] <p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>neptune</code> </p>
-- * Tags [TagList] 
-- * PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>
-- * DBClusterParameterGroupName [String] <p> The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default is used. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>
-- * PreSignedUrl [String] <p>A URL that contains a Signature Version 4 signed request for the <code>CreateDBCluster</code> action to be called in the source AWS Region where the DB cluster is replicated from. You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p> <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination AWS Region. This should refer to the same KMS key for both the <code>CreateDBCluster</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that Read Replica will be created in.</p> </li> <li> <p> <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster from the us-west-2 AWS Region, then your <code>ReplicationSourceIdentifier</code> would look like Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:neptune-cluster1</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p>
-- * ReplicationSourceIdentifier [String] <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.</p>
-- * EngineVersion [String] <p>The version number of the database engine to use.</p> <p>Example: <code>1.0.1</code> </p>
-- * DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB cluster.</p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- * OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group.</p> <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>
-- * CharacterSetName [String] <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
-- * DBClusterIdentifier [String] <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- * MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- * KmsKeyId [String] <p>The AWS KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p> <ul> <li> <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon Neptune will use your default encryption key. </p> </li> <li> <p>If the <code>StorageEncrypted</code> parameter is true and <code>ReplicationSourceIdentifier</code> is not specified, then Amazon Neptune will use your default encryption key.</p> </li> </ul> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p> <p>If you create a Read Replica of an encrypted DB cluster in another AWS Region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the Read Replica in that AWS Region.</p>
-- * StorageEncrypted [BooleanOptional] <p>Specifies whether the DB cluster is encrypted.</p>
-- * DatabaseName [String] <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Neptune will not create a database in the DB cluster you are creating.</p>
-- * AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the DB cluster can be created in. </p>
-- * Port [IntegerOptional] <p>The port number on which the instances in the DB cluster accept connections.</p> <p> Default: <code>8182</code> </p>
-- Required key: DBClusterIdentifier
-- Required key: Engine
-- @return CreateDBClusterMessage structure as a key-value pair table
function M.CreateDBClusterMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MasterUsername"] = args["MasterUsername"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["Engine"] = args["Engine"],
		["Tags"] = args["Tags"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["PreSignedUrl"] = args["PreSignedUrl"],
		["ReplicationSourceIdentifier"] = args["ReplicationSourceIdentifier"],
		["EngineVersion"] = args["EngineVersion"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["OptionGroupName"] = args["OptionGroupName"],
		["CharacterSetName"] = args["CharacterSetName"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["KmsKeyId"] = args["KmsKeyId"],
		["StorageEncrypted"] = args["StorageEncrypted"],
		["DatabaseName"] = args["DatabaseName"],
		["AvailabilityZones"] = args["AvailabilityZones"],
		["Port"] = args["Port"],
	}
	asserts.AssertCreateDBClusterMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupAlreadyExistsFault = { nil }

function asserts.AssertDBParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupAlreadyExistsFault[k], "DBParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupAlreadyExistsFault
-- <p>A DB parameter group with the same name exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBParameterGroupAlreadyExistsFault structure as a key-value pair table
function M.DBParameterGroupAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBParameterGroupAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterSnapshotMessage = { ["DBClusterSnapshotIdentifier"] = true, ["DBClusterIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["DBClusterIdentifier"] then asserts.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterSnapshotMessage[k], "CreateDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1-snapshot1</code> </p>
-- * DBClusterIdentifier [String] <p>The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- * Tags [TagList] <p>The tags to be assigned to the DB cluster snapshot.</p>
-- Required key: DBClusterSnapshotIdentifier
-- Required key: DBClusterIdentifier
-- @return CreateDBClusterSnapshotMessage structure as a key-value pair table
function M.CreateDBClusterSnapshotMessage(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterSnapshotMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["DBClusterIdentifier"] = args["DBClusterIdentifier"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateDBClusterSnapshotMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEngineDefaultClusterParametersMessage = { ["Marker"] = true, ["DBParameterGroupFamily"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeEngineDefaultClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEngineDefaultClusterParametersMessage[k], "DescribeEngineDefaultClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupFamily [String] <p>The name of the DB cluster parameter group family to return engine parameter information for.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required key: DBParameterGroupFamily
-- @return DescribeEngineDefaultClusterParametersMessage structure as a key-value pair table
function M.DescribeEngineDefaultClusterParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeEngineDefaultClusterParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeEngineDefaultClusterParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterParameterGroupMessage = { ["DBClusterParameterGroupName"] = true, nil }

function asserts.AssertDeleteDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterParameterGroupMessage[k], "DeleteDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterParameterGroupMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB cluster parameter group.</p> </li> <li> <p>You can't delete a default DB cluster parameter group.</p> </li> <li> <p>Cannot be associated with any DB clusters.</p> </li> </ul>
-- Required key: DBClusterParameterGroupName
-- @return DeleteDBClusterParameterGroupMessage structure as a key-value pair table
function M.DeleteDBClusterParameterGroupMessage(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterParameterGroupMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
	}
	asserts.AssertDeleteDBClusterParameterGroupMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupStatus = { ["DBParameterGroupName"] = true, ["ParameterApplyStatus"] = true, nil }

function asserts.AssertDBParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupStatus to be of type 'table'")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then asserts.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupStatus[k], "DBParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupStatus
-- <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DP parameter group.</p>
-- * ParameterApplyStatus [String] <p>The status of parameter updates.</p>
-- @return DBParameterGroupStatus structure as a key-value pair table
function M.DBParameterGroupStatus(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["ParameterApplyStatus"] = args["ParameterApplyStatus"],
	}
	asserts.AssertDBParameterGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SNSNoAuthorizationFault structure as a key-value pair table
function M.SNSNoAuthorizationFault(args)
	assert(args, "You must provide an argument table when creating SNSNoAuthorizationFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSNSNoAuthorizationFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterSnapshotAttributesResult = { ["DBClusterSnapshotAttributes"] = true, ["DBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributes"] then asserts.AssertDBClusterSnapshotAttributeList(struct["DBClusterSnapshotAttributes"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterSnapshotAttributesResult[k], "DBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributes [DBClusterSnapshotAttributeList] <p>The list of attributes and values for the manual DB cluster snapshot.</p>
-- * DBClusterSnapshotIdentifier [String] <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
-- @return DBClusterSnapshotAttributesResult structure as a key-value pair table
function M.DBClusterSnapshotAttributesResult(args)
	assert(args, "You must provide an argument table when creating DBClusterSnapshotAttributesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributes"] = args["DBClusterSnapshotAttributes"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
	}
	asserts.AssertDBClusterSnapshotAttributesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterSnapshotAttributeResult = { ["DBClusterSnapshotAttributesResult"] = true, nil }

function asserts.AssertModifyDBClusterSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then asserts.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterSnapshotAttributeResult[k], "ModifyDBClusterSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
-- @return ModifyDBClusterSnapshotAttributeResult structure as a key-value pair table
function M.ModifyDBClusterSnapshotAttributeResult(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterSnapshotAttributeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshotAttributesResult"] = args["DBClusterSnapshotAttributesResult"],
	}
	asserts.AssertModifyDBClusterSnapshotAttributeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBClusterSnapshotAttributeMessage = { ["ValuesToAdd"] = true, ["DBClusterSnapshotIdentifier"] = true, ["ValuesToRemove"] = true, ["AttributeName"] = true, nil }

function asserts.AssertModifyDBClusterSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then asserts.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["DBClusterSnapshotIdentifier"] then asserts.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["ValuesToRemove"] then asserts.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterSnapshotAttributeMessage[k], "ModifyDBClusterSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValuesToAdd [AttributeValueList] <p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- * DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
-- * ValuesToRemove [AttributeValueList] <p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
-- * AttributeName [String] <p>The name of the DB cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to <code>restore</code>.</p>
-- Required key: DBClusterSnapshotIdentifier
-- Required key: AttributeName
-- @return ModifyDBClusterSnapshotAttributeMessage structure as a key-value pair table
function M.ModifyDBClusterSnapshotAttributeMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBClusterSnapshotAttributeMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValuesToAdd"] = args["ValuesToAdd"],
		["DBClusterSnapshotIdentifier"] = args["DBClusterSnapshotIdentifier"],
		["ValuesToRemove"] = args["ValuesToRemove"],
		["AttributeName"] = args["AttributeName"],
	}
	asserts.AssertModifyDBClusterSnapshotAttributeMessage(all_args)
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
-- * SubscriptionName [String] <p>The name of the event notification subscription you want to delete.</p>
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

keys.CreateDBSubnetGroupResult = { ["DBSubnetGroup"] = true, nil }

function asserts.AssertCreateDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then asserts.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSubnetGroupResult[k], "CreateDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBSubnetGroup [DBSubnetGroup] 
-- @return CreateDBSubnetGroupResult structure as a key-value pair table
function M.CreateDBSubnetGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBSubnetGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBSubnetGroup"] = args["DBSubnetGroup"],
	}
	asserts.AssertCreateDBSubnetGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroupDetails = { ["Marker"] = true, ["Parameters"] = true, nil }

function asserts.AssertDBParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Parameters"] then asserts.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupDetails[k], "DBParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupDetails
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameters</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * Parameters [ParametersList] <p> A list of <a>Parameter</a> values. </p>
-- @return DBParameterGroupDetails structure as a key-value pair table
function M.DBParameterGroupDetails(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupDetails")
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
	asserts.AssertDBParameterGroupDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrderableDBInstanceOptionsMessage = { ["Engine"] = true, ["Vpc"] = true, ["LicenseModel"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["EngineVersion"] = true, ["Marker"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableDBInstanceOptionsMessage to be of type 'table'")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Vpc"] then asserts.AssertBooleanOptional(struct["Vpc"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrderableDBInstanceOptionsMessage[k], "DescribeOrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableDBInstanceOptionsMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the engine to retrieve DB instance options for.</p>
-- * Vpc [BooleanOptional] <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.</p>
-- * LicenseModel [String] <p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * EngineVersion [String] <p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>
-- * Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- * DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
-- Required key: Engine
-- @return DescribeOrderableDBInstanceOptionsMessage structure as a key-value pair table
function M.DescribeOrderableDBInstanceOptionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeOrderableDBInstanceOptionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["Vpc"] = args["Vpc"],
		["LicenseModel"] = args["LicenseModel"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["EngineVersion"] = args["EngineVersion"],
		["Marker"] = args["Marker"],
		["DBInstanceClass"] = args["DBInstanceClass"],
	}
	asserts.AssertDescribeOrderableDBInstanceOptionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertCreateDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceResult[k], "CreateDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBInstance [DBInstance] 
-- @return CreateDBInstanceResult structure as a key-value pair table
function M.CreateDBInstanceResult(args)
	assert(args, "You must provide an argument table when creating CreateDBInstanceResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBInstance"] = args["DBInstance"],
	}
	asserts.AssertCreateDBInstanceResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDBInstanceStateFault = { nil }

function asserts.AssertInvalidDBInstanceStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBInstanceStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBInstanceStateFault[k], "InvalidDBInstanceStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBInstanceStateFault
-- <p> The specified DB instance is not in the <i>available</i> state. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidDBInstanceStateFault structure as a key-value pair table
function M.InvalidDBInstanceStateFault(args)
	assert(args, "You must provide an argument table when creating InvalidDBInstanceStateFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidDBInstanceStateFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeValidDBInstanceModificationsResult = { ["ValidDBInstanceModificationsMessage"] = true, nil }

function asserts.AssertDescribeValidDBInstanceModificationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeValidDBInstanceModificationsResult to be of type 'table'")
	if struct["ValidDBInstanceModificationsMessage"] then asserts.AssertValidDBInstanceModificationsMessage(struct["ValidDBInstanceModificationsMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeValidDBInstanceModificationsResult[k], "DescribeValidDBInstanceModificationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeValidDBInstanceModificationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValidDBInstanceModificationsMessage [ValidDBInstanceModificationsMessage] 
-- @return DescribeValidDBInstanceModificationsResult structure as a key-value pair table
function M.DescribeValidDBInstanceModificationsResult(args)
	assert(args, "You must provide an argument table when creating DescribeValidDBInstanceModificationsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValidDBInstanceModificationsMessage"] = args["ValidDBInstanceModificationsMessage"],
	}
	asserts.AssertDescribeValidDBInstanceModificationsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Endpoint = { ["HostedZoneId"] = true, ["Port"] = true, ["Address"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["HostedZoneId"] then asserts.AssertString(struct["HostedZoneId"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["Address"] then asserts.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DescribeDBInstances</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- * Port [Integer] <p>Specifies the port that the database engine is listening on.</p>
-- * Address [String] <p>Specifies the DNS address of the DB instance.</p>
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
		["HostedZoneId"] = args["HostedZoneId"],
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

keys.DBParameterGroupsMessage = { ["Marker"] = true, ["DBParameterGroups"] = true, nil }

function asserts.AssertDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroups"] then asserts.AssertDBParameterGroupList(struct["DBParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroupsMessage[k], "DBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroups [DBParameterGroupList] <p> A list of <a>DBParameterGroup</a> instances. </p>
-- @return DBParameterGroupsMessage structure as a key-value pair table
function M.DBParameterGroupsMessage(args)
	assert(args, "You must provide an argument table when creating DBParameterGroupsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroups"] = args["DBParameterGroups"],
	}
	asserts.AssertDBParameterGroupsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OptionGroupNotFoundFault = { nil }

function asserts.AssertOptionGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupNotFoundFault[k], "OptionGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupNotFoundFault
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OptionGroupNotFoundFault structure as a key-value pair table
function M.OptionGroupNotFoundFault(args)
	assert(args, "You must provide an argument table when creating OptionGroupNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOptionGroupNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDBClusterSnapshotResult = { ["DBClusterSnapshot"] = true, nil }

function asserts.AssertDeleteDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then asserts.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBClusterSnapshotResult[k], "DeleteDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterSnapshot [DBClusterSnapshot] 
-- @return DeleteDBClusterSnapshotResult structure as a key-value pair table
function M.DeleteDBClusterSnapshotResult(args)
	assert(args, "You must provide an argument table when creating DeleteDBClusterSnapshotResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterSnapshot"] = args["DBClusterSnapshot"],
	}
	asserts.AssertDeleteDBClusterSnapshotResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpgradeTarget = { ["Engine"] = true, ["IsMajorVersionUpgrade"] = true, ["AutoUpgrade"] = true, ["Description"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertUpgradeTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeTarget to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["IsMajorVersionUpgrade"] then asserts.AssertBoolean(struct["IsMajorVersionUpgrade"]) end
	if struct["AutoUpgrade"] then asserts.AssertBoolean(struct["AutoUpgrade"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpgradeTarget[k], "UpgradeTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeTarget
-- <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The name of the upgrade target database engine.</p>
-- * IsMajorVersionUpgrade [Boolean] <p>A value that indicates whether a database engine is upgraded to a major version.</p>
-- * AutoUpgrade [Boolean] <p>A value that indicates whether the target version is applied to any source DB instances that have AutoMinorVersionUpgrade set to true.</p>
-- * Description [String] <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- * EngineVersion [String] <p>The version number of the upgrade target database engine.</p>
-- @return UpgradeTarget structure as a key-value pair table
function M.UpgradeTarget(args)
	assert(args, "You must provide an argument table when creating UpgradeTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["IsMajorVersionUpgrade"] = args["IsMajorVersionUpgrade"],
		["AutoUpgrade"] = args["AutoUpgrade"],
		["Description"] = args["Description"],
		["EngineVersion"] = args["EngineVersion"],
	}
	asserts.AssertUpgradeTarget(all_args)
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
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Neptune resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>.</p>
-- * TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
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

keys.DBClusterRoleQuotaExceededFault = { nil }

function asserts.AssertDBClusterRoleQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterRoleQuotaExceededFault[k], "DBClusterRoleQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleQuotaExceededFault
-- <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterRoleQuotaExceededFault structure as a key-value pair table
function M.DBClusterRoleQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBClusterRoleQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterRoleQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBParametersMessage = { ["Marker"] = true, ["DBParameterGroupName"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Source"] = true, nil }

function asserts.AssertDescribeDBParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBParametersMessage[k], "DescribeDBParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParametersMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBParameterGroup.</p> </li> </ul>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
-- * Source [String] <p>The parameter types to return.</p> <p>Default: All parameter types returned</p> <p>Valid Values: <code>user | system | engine-default</code> </p>
-- Required key: DBParameterGroupName
-- @return DescribeDBParametersMessage structure as a key-value pair table
function M.DescribeDBParametersMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBParametersMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["Source"] = args["Source"],
	}
	asserts.AssertDescribeDBParametersMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterQuotaExceededFault = { nil }

function asserts.AssertDBClusterQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterQuotaExceededFault[k], "DBClusterQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterQuotaExceededFault
-- <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterQuotaExceededFault structure as a key-value pair table
function M.DBClusterQuotaExceededFault(args)
	assert(args, "You must provide an argument table when creating DBClusterQuotaExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterQuotaExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreDBClusterToPointInTimeResult = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeResult to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterToPointInTimeResult[k], "RestoreDBClusterToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBCluster [DBCluster] 
-- @return RestoreDBClusterToPointInTimeResult structure as a key-value pair table
function M.RestoreDBClusterToPointInTimeResult(args)
	assert(args, "You must provide an argument table when creating RestoreDBClusterToPointInTimeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBCluster"] = args["DBCluster"],
	}
	asserts.AssertRestoreDBClusterToPointInTimeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSubscription = { ["Status"] = true, ["SubscriptionCreationTime"] = true, ["SourceType"] = true, ["EventCategoriesList"] = true, ["EventSubscriptionArn"] = true, ["SourceIdsList"] = true, ["CustSubscriptionId"] = true, ["Enabled"] = true, ["SnsTopicArn"] = true, ["CustomerAwsId"] = true, nil }

function asserts.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["SubscriptionCreationTime"] then asserts.AssertString(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then asserts.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then asserts.AssertEventCategoriesList(struct["EventCategoriesList"]) end
	if struct["EventSubscriptionArn"] then asserts.AssertString(struct["EventSubscriptionArn"]) end
	if struct["SourceIdsList"] then asserts.AssertSourceIdsList(struct["SourceIdsList"]) end
	if struct["CustSubscriptionId"] then asserts.AssertString(struct["CustSubscriptionId"]) end
	if struct["Enabled"] then asserts.AssertBoolean(struct["Enabled"]) end
	if struct["SnsTopicArn"] then asserts.AssertString(struct["SnsTopicArn"]) end
	if struct["CustomerAwsId"] then asserts.AssertString(struct["CustomerAwsId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscription[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>The status of the event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that Neptune no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- * SubscriptionCreationTime [String] <p>The time the event notification subscription was created.</p>
-- * SourceType [String] <p>The source type for the event notification subscription.</p>
-- * EventCategoriesList [EventCategoriesList] <p>A list of event categories for the event notification subscription.</p>
-- * EventSubscriptionArn [String] <p>The Amazon Resource Name (ARN) for the event subscription.</p>
-- * SourceIdsList [SourceIdsList] <p>A list of source IDs for the event notification subscription.</p>
-- * CustSubscriptionId [String] <p>The event notification subscription Id.</p>
-- * Enabled [Boolean] <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>
-- * SnsTopicArn [String] <p>The topic ARN of the event notification subscription.</p>
-- * CustomerAwsId [String] <p>The AWS customer account associated with the event notification subscription.</p>
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
		["SubscriptionCreationTime"] = args["SubscriptionCreationTime"],
		["SourceType"] = args["SourceType"],
		["EventCategoriesList"] = args["EventCategoriesList"],
		["EventSubscriptionArn"] = args["EventSubscriptionArn"],
		["SourceIdsList"] = args["SourceIdsList"],
		["CustSubscriptionId"] = args["CustSubscriptionId"],
		["Enabled"] = args["Enabled"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["CustomerAwsId"] = args["CustomerAwsId"],
	}
	asserts.AssertEventSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddSourceIdentifierToSubscriptionResult = { ["EventSubscription"] = true, nil }

function asserts.AssertAddSourceIdentifierToSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then asserts.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddSourceIdentifierToSubscriptionResult[k], "AddSourceIdentifierToSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSubscription [EventSubscription] 
-- @return AddSourceIdentifierToSubscriptionResult structure as a key-value pair table
function M.AddSourceIdentifierToSubscriptionResult(args)
	assert(args, "You must provide an argument table when creating AddSourceIdentifierToSubscriptionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSubscription"] = args["EventSubscription"],
	}
	asserts.AssertAddSourceIdentifierToSubscriptionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplyPendingMaintenanceActionResult = { ["ResourcePendingMaintenanceActions"] = true, nil }

function asserts.AssertApplyPendingMaintenanceActionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionResult to be of type 'table'")
	if struct["ResourcePendingMaintenanceActions"] then asserts.AssertResourcePendingMaintenanceActions(struct["ResourcePendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplyPendingMaintenanceActionResult[k], "ApplyPendingMaintenanceActionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourcePendingMaintenanceActions [ResourcePendingMaintenanceActions] 
-- @return ApplyPendingMaintenanceActionResult structure as a key-value pair table
function M.ApplyPendingMaintenanceActionResult(args)
	assert(args, "You must provide an argument table when creating ApplyPendingMaintenanceActionResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourcePendingMaintenanceActions"] = args["ResourcePendingMaintenanceActions"],
	}
	asserts.AssertApplyPendingMaintenanceActionResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyDBClusterParameterGroupResult = { ["DBClusterParameterGroup"] = true, nil }

function asserts.AssertCopyDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then asserts.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBClusterParameterGroupResult[k], "CopyDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroup [DBClusterParameterGroup] 
-- @return CopyDBClusterParameterGroupResult structure as a key-value pair table
function M.CopyDBClusterParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CopyDBClusterParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
	}
	asserts.AssertCopyDBClusterParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterOptionGroupStatus = { ["Status"] = true, ["DBClusterOptionGroupName"] = true, nil }

function asserts.AssertDBClusterOptionGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterOptionGroupStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["DBClusterOptionGroupName"] then asserts.AssertString(struct["DBClusterOptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterOptionGroupStatus[k], "DBClusterOptionGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterOptionGroupStatus
-- <p>Contains status information for a DB cluster option group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Specifies the status of the DB cluster option group.</p>
-- * DBClusterOptionGroupName [String] <p>Specifies the name of the DB cluster option group.</p>
-- @return DBClusterOptionGroupStatus structure as a key-value pair table
function M.DBClusterOptionGroupStatus(args)
	assert(args, "You must provide an argument table when creating DBClusterOptionGroupStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DBClusterOptionGroupName"] = args["DBClusterOptionGroupName"],
	}
	asserts.AssertDBClusterOptionGroupStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterNotFoundFault = { nil }

function asserts.AssertDBClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBClusterNotFoundFault[k], "DBClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterNotFoundFault
-- <p> <i>DBClusterIdentifier</i> does not refer to an existing DB cluster. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DBClusterNotFoundFault structure as a key-value pair table
function M.DBClusterNotFoundFault(args)
	assert(args, "You must provide an argument table when creating DBClusterNotFoundFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDBClusterNotFoundFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBInstancesMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBInstancesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBInstancesMessage[k], "DescribeDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBInstancesMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>A filter that specifies one or more DB instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.</p> </li> </ul>
-- * DBInstanceIdentifier [String] <p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBInstance.</p> </li> </ul>
-- @return DescribeDBInstancesMessage structure as a key-value pair table
function M.DescribeDBInstancesMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBInstancesMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertDescribeDBInstancesMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceMessage = { ["ResourceName"] = true, ["Filters"] = true, nil }

function asserts.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceMessage[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceName [String] <p>The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing"> Constructing an Amazon Resource Name (ARN)</a>.</p>
-- * Filters [FilterList] <p>This parameter is not currently supported.</p>
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
		["Filters"] = args["Filters"],
	}
	asserts.AssertListTagsForResourceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDBClusterParameterGroupResult = { ["DBClusterParameterGroup"] = true, nil }

function asserts.AssertCreateDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then asserts.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBClusterParameterGroupResult[k], "CreateDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroup [DBClusterParameterGroup] 
-- @return CreateDBClusterParameterGroupResult structure as a key-value pair table
function M.CreateDBClusterParameterGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateDBClusterParameterGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroup"] = args["DBClusterParameterGroup"],
	}
	asserts.AssertCreateDBClusterParameterGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBClusterParameterGroup = { ["DBClusterParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, ["DBClusterParameterGroupArn"] = true, nil }

function asserts.AssertDBClusterParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroup to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DBClusterParameterGroupArn"] then asserts.AssertString(struct["DBClusterParameterGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBClusterParameterGroup[k], "DBClusterParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroup
-- <p>Contains the details of an Amazon Neptune DB cluster parameter group. </p> <p>This data type is used as a response element in the <a>DescribeDBClusterParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBClusterParameterGroupName [String] <p>Provides the name of the DB cluster parameter group.</p>
-- * DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>
-- * Description [String] <p>Provides the customer-specified description for this DB cluster parameter group.</p>
-- * DBClusterParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>
-- @return DBClusterParameterGroup structure as a key-value pair table
function M.DBClusterParameterGroup(args)
	assert(args, "You must provide an argument table when creating DBClusterParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBClusterParameterGroupName"] = args["DBClusterParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
		["DBClusterParameterGroupArn"] = args["DBClusterParameterGroupArn"],
	}
	asserts.AssertDBClusterParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDBEngineVersionsMessage = { ["Engine"] = true, ["DBParameterGroupFamily"] = true, ["ListSupportedCharacterSets"] = true, ["DefaultOnly"] = true, ["ListSupportedTimezones"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["EngineVersion"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeDBEngineVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBEngineVersionsMessage to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["ListSupportedCharacterSets"] then asserts.AssertBooleanOptional(struct["ListSupportedCharacterSets"]) end
	if struct["DefaultOnly"] then asserts.AssertBoolean(struct["DefaultOnly"]) end
	if struct["ListSupportedTimezones"] then asserts.AssertBooleanOptional(struct["ListSupportedTimezones"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBEngineVersionsMessage[k], "DescribeDBEngineVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBEngineVersionsMessage
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Engine [String] <p>The database engine to return.</p>
-- * DBParameterGroupFamily [String] <p>The name of a specific DB parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match an existing DBParameterGroupFamily.</p> </li> </ul>
-- * ListSupportedCharacterSets [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
-- * DefaultOnly [Boolean] <p>Indicates that only the default version of the specified engine or engine and major version combination is returned.</p>
-- * ListSupportedTimezones [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
-- * MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- * Filters [FilterList] <p>Not currently supported.</p>
-- * EngineVersion [String] <p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>
-- * Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @return DescribeDBEngineVersionsMessage structure as a key-value pair table
function M.DescribeDBEngineVersionsMessage(args)
	assert(args, "You must provide an argument table when creating DescribeDBEngineVersionsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Engine"] = args["Engine"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["ListSupportedCharacterSets"] = args["ListSupportedCharacterSets"],
		["DefaultOnly"] = args["DefaultOnly"],
		["ListSupportedTimezones"] = args["ListSupportedTimezones"],
		["MaxRecords"] = args["MaxRecords"],
		["Filters"] = args["Filters"],
		["EngineVersion"] = args["EngineVersion"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertDescribeDBEngineVersionsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DBParameterGroup = { ["DBParameterGroupArn"] = true, ["DBParameterGroupName"] = true, ["DBParameterGroupFamily"] = true, ["Description"] = true, nil }

function asserts.AssertDBParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroup to be of type 'table'")
	if struct["DBParameterGroupArn"] then asserts.AssertString(struct["DBParameterGroupArn"]) end
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBParameterGroup[k], "DBParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroup
-- <p>Contains the details of an Amazon Neptune DB parameter group. </p> <p>This data type is used as a response element in the <a>DescribeDBParameterGroups</a> action. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB parameter group.</p>
-- * DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- * DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB parameter group is compatible with.</p>
-- * Description [String] <p>Provides the customer-specified description for this DB parameter group.</p>
-- @return DBParameterGroup structure as a key-value pair table
function M.DBParameterGroup(args)
	assert(args, "You must provide an argument table when creating DBParameterGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupArn"] = args["DBParameterGroupArn"],
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["DBParameterGroupFamily"] = args["DBParameterGroupFamily"],
		["Description"] = args["Description"],
	}
	asserts.AssertDBParameterGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyDBInstanceMessage = { ["DBParameterGroupName"] = true, ["EnablePerformanceInsights"] = true, ["AllowMajorVersionUpgrade"] = true, ["DomainIAMRoleName"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["NewDBInstanceIdentifier"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["PubliclyAccessible"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["PerformanceInsightsKMSKeyId"] = true, ["DBPortNumber"] = true, ["ApplyImmediately"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["MonitoringRoleArn"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["MasterUserPassword"] = true, ["CloudwatchLogsExportConfiguration"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertModifyDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["EnablePerformanceInsights"] then asserts.AssertBooleanOptional(struct["EnablePerformanceInsights"]) end
	if struct["AllowMajorVersionUpgrade"] then asserts.AssertBoolean(struct["AllowMajorVersionUpgrade"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["NewDBInstanceIdentifier"] then asserts.AssertString(struct["NewDBInstanceIdentifier"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then asserts.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then asserts.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["PerformanceInsightsKMSKeyId"] then asserts.AssertString(struct["PerformanceInsightsKMSKeyId"]) end
	if struct["DBPortNumber"] then asserts.AssertIntegerOptional(struct["DBPortNumber"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["CloudwatchLogsExportConfiguration"] then asserts.AssertCloudwatchLogsExportConfiguration(struct["CloudwatchLogsExportConfiguration"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBInstanceMessage[k], "ModifyDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceMessage
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DBParameterGroupName [String] <p>The name of the DB parameter group to apply to the DB instance. Changing this setting doesn't result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.</p> <p>Default: Uses existing setting</p> <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>
-- * EnablePerformanceInsights [BooleanOptional] <p>True to enable Performance Insights for the DB instance, and otherwise false.</p>
-- * AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>
-- * DomainIAMRoleName [String] <p>Not supported</p>
-- * MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- * LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- * VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p> <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see <a>ModifyDBCluster</a>.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match existing VpcSecurityGroupIds.</p> </li> </ul>
-- * EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <p>Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see <a>ModifyDBCluster</a>.</p> <p>Default: <code>false</code> </p>
-- * CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.</p>
-- * NewDBInstanceIdentifier [String] <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set <code>Apply Immediately</code> to true, or will occur during the next maintenance window if <code>Apply Immediately</code> to false. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- * MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p>
-- * DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match existing DBSecurityGroups.</p> </li> </ul>
-- * PubliclyAccessible [BooleanOptional] <p>This parameter is not supported.</p>
-- * AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and Neptune has enabled auto patching for that engine version. </p>
-- * PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled. </p> <p>Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see <a>ModifyDBCluster</a>.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the format hh24:mi-hh24:mi</p> </li> <li> <p>Must be in Universal Time Coordinated (UTC)</p> </li> <li> <p>Must not conflict with the preferred maintenance window</p> </li> <li> <p>Must be at least 30 minutes</p> </li> </ul>
-- * PromotionTier [IntegerOptional] <p>A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- * TdeCredentialArn [String] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
-- * AllocatedStorage [IntegerOptional] <p>The new amount of storage (in gibibytes) to allocate for the DB instance. </p> <p>Not applicable. Storage is managed by the DB Cluster.</p>
-- * DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. </p> <p>Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify <code>true</code> for the <code>ApplyImmediately</code> parameter. </p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetGroup</code> </p>
-- * PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn't result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- * TdeCredentialPassword [String] <p>The password for the given ARN from the key store in order to access the device.</p>
-- * PerformanceInsightsKMSKeyId [String] <p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
-- * DBPortNumber [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option group for the DB instance.</p> <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p> Default: <code>8182</code> </p>
-- * ApplyImmediately [Boolean] <p>Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. </p> <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. </p> <p>Default: <code>false</code> </p>
-- * EngineVersion [String] <p> The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>For major version upgrades, if a nondefault DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.</p>
-- * BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see <a>ModifyDBCluster</a>.</p> <p>Default: Uses existing setting</p>
-- * OptionGroupName [String] <p> Indicates that the DB instance should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>
-- * Domain [String] <p>Not supported. </p>
-- * MonitoringRoleArn [String] <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. </p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- * StorageType [String] <p>Specifies the storage type to be associated with the DB instance. </p> <p>If you specify Provisioned IOPS (<code>io1</code>), you must also include a value for the <code>Iops</code> parameter. </p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon Neptune operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance. </p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p>Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>standard</code> </p>
-- * CACertificateIdentifier [String] <p>Indicates the certificate that needs to be associated with the instance.</p>
-- * MasterUserPassword [String] <p>The new password for the master user. The password can include any printable ASCII character except "/", """, or "@".</p> <p>Not applicable. </p> <p>Default: Uses existing setting</p>
-- * CloudwatchLogsExportConfiguration [CloudwatchLogsExportConfiguration] <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.</p>
-- * Iops [IntegerOptional] <p>The new Provisioned IOPS (I/O operations per second) value for the instance. </p> <p>Changing this setting doesn't result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request.</p> <p>Default: Uses existing setting</p>
-- * DBInstanceClass [String] <p>The new compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions. </p> <p>If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified as <code>true</code> for this request. </p> <p>Default: Uses existing setting</p>
-- * DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>
-- Required key: DBInstanceIdentifier
-- @return ModifyDBInstanceMessage structure as a key-value pair table
function M.ModifyDBInstanceMessage(args)
	assert(args, "You must provide an argument table when creating ModifyDBInstanceMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DBParameterGroupName"] = args["DBParameterGroupName"],
		["EnablePerformanceInsights"] = args["EnablePerformanceInsights"],
		["AllowMajorVersionUpgrade"] = args["AllowMajorVersionUpgrade"],
		["DomainIAMRoleName"] = args["DomainIAMRoleName"],
		["MonitoringInterval"] = args["MonitoringInterval"],
		["LicenseModel"] = args["LicenseModel"],
		["VpcSecurityGroupIds"] = args["VpcSecurityGroupIds"],
		["EnableIAMDatabaseAuthentication"] = args["EnableIAMDatabaseAuthentication"],
		["CopyTagsToSnapshot"] = args["CopyTagsToSnapshot"],
		["NewDBInstanceIdentifier"] = args["NewDBInstanceIdentifier"],
		["MultiAZ"] = args["MultiAZ"],
		["DBSecurityGroups"] = args["DBSecurityGroups"],
		["PubliclyAccessible"] = args["PubliclyAccessible"],
		["AutoMinorVersionUpgrade"] = args["AutoMinorVersionUpgrade"],
		["PreferredBackupWindow"] = args["PreferredBackupWindow"],
		["PromotionTier"] = args["PromotionTier"],
		["TdeCredentialArn"] = args["TdeCredentialArn"],
		["AllocatedStorage"] = args["AllocatedStorage"],
		["DBSubnetGroupName"] = args["DBSubnetGroupName"],
		["PreferredMaintenanceWindow"] = args["PreferredMaintenanceWindow"],
		["TdeCredentialPassword"] = args["TdeCredentialPassword"],
		["PerformanceInsightsKMSKeyId"] = args["PerformanceInsightsKMSKeyId"],
		["DBPortNumber"] = args["DBPortNumber"],
		["ApplyImmediately"] = args["ApplyImmediately"],
		["EngineVersion"] = args["EngineVersion"],
		["BackupRetentionPeriod"] = args["BackupRetentionPeriod"],
		["OptionGroupName"] = args["OptionGroupName"],
		["Domain"] = args["Domain"],
		["MonitoringRoleArn"] = args["MonitoringRoleArn"],
		["StorageType"] = args["StorageType"],
		["CACertificateIdentifier"] = args["CACertificateIdentifier"],
		["MasterUserPassword"] = args["MasterUserPassword"],
		["CloudwatchLogsExportConfiguration"] = args["CloudwatchLogsExportConfiguration"],
		["Iops"] = args["Iops"],
		["DBInstanceClass"] = args["DBInstanceClass"],
		["DBInstanceIdentifier"] = args["DBInstanceIdentifier"],
	}
	asserts.AssertModifyDBInstanceMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The DB subnet is already in use in the Availability Zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SubnetAlreadyInUse structure as a key-value pair table
function M.SubnetAlreadyInUse(args)
	assert(args, "You must provide an argument table when creating SubnetAlreadyInUse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSubnetAlreadyInUse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertApplyMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplyMethod to be of type 'string'")
end

--  
function M.ApplyMethod(str)
	asserts.AssertApplyMethod(str)
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

function asserts.AssertReadReplicaDBInstanceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBInstanceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBInstanceIdentifierList(list)
	asserts.AssertReadReplicaDBInstanceIdentifierList(list)
	return list
end

function asserts.AssertDBClusterSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterSnapshot(v)
	end
end

--  
-- List of DBClusterSnapshot objects
function M.DBClusterSnapshotList(list)
	asserts.AssertDBClusterSnapshotList(list)
	return list
end

function asserts.AssertRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected RangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRange(v)
	end
end

--  
-- List of Range objects
function M.RangeList(list)
	asserts.AssertRangeList(list)
	return list
end

function asserts.AssertOptionGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupMembership(v)
	end
end

--  
-- List of OptionGroupMembership objects
function M.OptionGroupMembershipList(list)
	asserts.AssertOptionGroupMembershipList(list)
	return list
end

function asserts.AssertDBClusterOptionGroupMemberships(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterOptionGroupMemberships to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterOptionGroupStatus(v)
	end
end

--  
-- List of DBClusterOptionGroupStatus objects
function M.DBClusterOptionGroupMemberships(list)
	asserts.AssertDBClusterOptionGroupMemberships(list)
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

function asserts.AssertOrderableDBInstanceOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableDBInstanceOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrderableDBInstanceOption(v)
	end
end

--  
-- List of OrderableDBInstanceOption objects
function M.OrderableDBInstanceOptionsList(list)
	asserts.AssertOrderableDBInstanceOptionsList(list)
	return list
end

function asserts.AssertDBSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DBSecurityGroupNameList(list)
	asserts.AssertDBSecurityGroupNameList(list)
	return list
end

function asserts.AssertDBSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSubnetGroup(v)
	end
end

--  
-- List of DBSubnetGroup objects
function M.DBSubnetGroups(list)
	asserts.AssertDBSubnetGroups(list)
	return list
end

function asserts.AssertDBClusterMemberList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterMemberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterMember(v)
	end
end

--  
-- List of DBClusterMember objects
function M.DBClusterMemberList(list)
	asserts.AssertDBClusterMemberList(list)
	return list
end

function asserts.AssertReadReplicaDBClusterIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBClusterIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBClusterIdentifierList(list)
	asserts.AssertReadReplicaDBClusterIdentifierList(list)
	return list
end

function asserts.AssertLogTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected LogTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.LogTypeList(list)
	asserts.AssertLogTypeList(list)
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

function asserts.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.FilterValueList(list)
	asserts.AssertFilterValueList(list)
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

function asserts.AssertDBParameterGroupStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBParameterGroupStatus(v)
	end
end

--  
-- List of DBParameterGroupStatus objects
function M.DBParameterGroupStatusList(list)
	asserts.AssertDBParameterGroupStatusList(list)
	return list
end

function asserts.AssertDBSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSecurityGroupMembership(v)
	end
end

--  
-- List of DBSecurityGroupMembership objects
function M.DBSecurityGroupMembershipList(list)
	asserts.AssertDBSecurityGroupMembershipList(list)
	return list
end

function asserts.AssertSupportedTimezonesList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedTimezonesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTimezone(v)
	end
end

--  
-- List of Timezone objects
function M.SupportedTimezonesList(list)
	asserts.AssertSupportedTimezonesList(list)
	return list
end

function asserts.AssertDomainMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainMembership(v)
	end
end

-- <p>List of Active Directory Domain membership records associated with a DB instance.</p>
-- List of DomainMembership objects
function M.DomainMembershipList(list)
	asserts.AssertDomainMembershipList(list)
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

function asserts.AssertPendingMaintenanceActionDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActionDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPendingMaintenanceAction(v)
	end
end

--  
-- List of PendingMaintenanceAction objects
function M.PendingMaintenanceActionDetails(list)
	asserts.AssertPendingMaintenanceActionDetails(list)
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

function asserts.AssertAttributeValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AttributeValueList(list)
	asserts.AssertAttributeValueList(list)
	return list
end

function asserts.AssertDBClusterSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterSnapshotAttribute(v)
	end
end

--  
-- List of DBClusterSnapshotAttribute objects
function M.DBClusterSnapshotAttributeList(list)
	asserts.AssertDBClusterSnapshotAttributeList(list)
	return list
end

function asserts.AssertDBClusterRoles(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterRoles to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterRole(v)
	end
end

--  
-- List of DBClusterRole objects
function M.DBClusterRoles(list)
	asserts.AssertDBClusterRoles(list)
	return list
end

function asserts.AssertSupportedCharacterSetsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedCharacterSetsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCharacterSet(v)
	end
end

--  
-- List of CharacterSet objects
function M.SupportedCharacterSetsList(list)
	asserts.AssertSupportedCharacterSetsList(list)
	return list
end

function asserts.AssertValidUpgradeTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidUpgradeTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUpgradeTarget(v)
	end
end

--  
-- List of UpgradeTarget objects
function M.ValidUpgradeTargetList(list)
	asserts.AssertValidUpgradeTargetList(list)
	return list
end

function asserts.AssertDBParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBParameterGroup(v)
	end
end

--  
-- List of DBParameterGroup objects
function M.DBParameterGroupList(list)
	asserts.AssertDBParameterGroupList(list)
	return list
end

function asserts.AssertDBClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBCluster(v)
	end
end

--  
-- List of DBCluster objects
function M.DBClusterList(list)
	asserts.AssertDBClusterList(list)
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

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- <p>A list of tags. For more information, see <a href="http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html">Tagging Amazon Neptune Resources</a>. </p>
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end

function asserts.AssertReadReplicaIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaIdentifierList(list)
	asserts.AssertReadReplicaIdentifierList(list)
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

function asserts.AssertDBClusterParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBClusterParameterGroup(v)
	end
end

--  
-- List of DBClusterParameterGroup objects
function M.DBClusterParameterGroupList(list)
	asserts.AssertDBClusterParameterGroupList(list)
	return list
end

function asserts.AssertPendingMaintenanceActions(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourcePendingMaintenanceActions(v)
	end
end

--  
-- List of ResourcePendingMaintenanceActions objects
function M.PendingMaintenanceActions(list)
	asserts.AssertPendingMaintenanceActions(list)
	return list
end

function asserts.AssertValidStorageOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidStorageOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValidStorageOptions(v)
	end
end

--  
-- List of ValidStorageOptions objects
function M.ValidStorageOptionsList(list)
	asserts.AssertValidStorageOptionsList(list)
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

function asserts.AssertDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBInstance(v)
	end
end

--  
-- List of DBInstance objects
function M.DBInstanceList(list)
	asserts.AssertDBInstanceList(list)
	return list
end

function asserts.AssertDoubleRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DoubleRangeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDoubleRange(v)
	end
end

--  
-- List of DoubleRange objects
function M.DoubleRangeList(list)
	asserts.AssertDoubleRangeList(list)
	return list
end

function asserts.AssertDBEngineVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBEngineVersionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBEngineVersion(v)
	end
end

--  
-- List of DBEngineVersion objects
function M.DBEngineVersionList(list)
	asserts.AssertDBEngineVersionList(list)
	return list
end

function asserts.AssertFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.FilterList(list)
	asserts.AssertFilterList(list)
	return list
end

function asserts.AssertDBInstanceStatusInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceStatusInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBInstanceStatusInfo(v)
	end
end

--  
-- List of DBInstanceStatusInfo objects
function M.DBInstanceStatusInfoList(list)
	asserts.AssertDBInstanceStatusInfoList(list)
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

function asserts.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZones(list)
	asserts.AssertAvailabilityZones(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "rds.amazonaws.com"
		end
	end
	local ss = { "rds" }
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
--- Call DeleteDBSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteDBSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, cb)
	assert(DeleteDBSubnetGroupMessage, "You must provide a DeleteDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSubnetGroup",
	}
	for header,value in pairs(DeleteDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBSubnetGroupSync(DeleteDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeValidDBInstanceModifications asynchronously, invoking a callback when done
-- @param DescribeValidDBInstanceModificationsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeValidDBInstanceModificationsAsync(DescribeValidDBInstanceModificationsMessage, cb)
	assert(DescribeValidDBInstanceModificationsMessage, "You must provide a DescribeValidDBInstanceModificationsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeValidDBInstanceModifications",
	}
	for header,value in pairs(DescribeValidDBInstanceModificationsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeValidDBInstanceModificationsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeValidDBInstanceModifications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeValidDBInstanceModificationsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeValidDBInstanceModificationsSync(DescribeValidDBInstanceModificationsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeValidDBInstanceModificationsAsync(DescribeValidDBInstanceModificationsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameters asynchronously, invoking a callback when done
-- @param DescribeDBClusterParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, cb)
	assert(DescribeDBClusterParametersMessage, "You must provide a DescribeDBClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameters",
	}
	for header,value in pairs(DescribeDBClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterParametersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBClusterParametersSync(DescribeDBClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeDBSubnetGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, cb)
	assert(DescribeDBSubnetGroupsMessage, "You must provide a DescribeDBSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSubnetGroups",
	}
	for header,value in pairs(DescribeDBSubnetGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSubnetGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSubnetGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSubnetGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBSubnetGroupsSync(DescribeDBSubnetGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterToPointInTime asynchronously, invoking a callback when done
-- @param RestoreDBClusterToPointInTimeMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, cb)
	assert(RestoreDBClusterToPointInTimeMessage, "You must provide a RestoreDBClusterToPointInTimeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterToPointInTime",
	}
	for header,value in pairs(RestoreDBClusterToPointInTimeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterToPointInTimeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterToPointInTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterToPointInTimeMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreDBClusterToPointInTimeSync(RestoreDBClusterToPointInTimeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveRoleFromDBCluster asynchronously, invoking a callback when done
-- @param RemoveRoleFromDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, cb)
	assert(RemoveRoleFromDBClusterMessage, "You must provide a RemoveRoleFromDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromDBCluster",
	}
	for header,value in pairs(RemoveRoleFromDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveRoleFromDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveRoleFromDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveRoleFromDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveRoleFromDBClusterSync(RemoveRoleFromDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBInstance asynchronously, invoking a callback when done
-- @param DeleteDBInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, cb)
	assert(DeleteDBInstanceMessage, "You must provide a DeleteDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBInstance",
	}
	for header,value in pairs(DeleteDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBInstanceSync(DeleteDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, cb)
	assert(CreateDBClusterParameterGroupMessage, "You must provide a CreateDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterParameterGroup",
	}
	for header,value in pairs(CreateDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBClusterParameterGroupSync(CreateDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, function(response, error_type, error_message)
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

--- Call CopyDBParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, cb)
	assert(CopyDBParameterGroupMessage, "You must provide a CopyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBParameterGroup",
	}
	for header,value in pairs(CopyDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CopyDBParameterGroupSync(CopyDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterSnapshot asynchronously, invoking a callback when done
-- @param DeleteDBClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, cb)
	assert(DeleteDBClusterSnapshotMessage, "You must provide a DeleteDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterSnapshot",
	}
	for header,value in pairs(DeleteDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBClusterSnapshotSync(DeleteDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterFromSnapshot asynchronously, invoking a callback when done
-- @param RestoreDBClusterFromSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, cb)
	assert(RestoreDBClusterFromSnapshotMessage, "You must provide a RestoreDBClusterFromSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromSnapshot",
	}
	for header,value in pairs(RestoreDBClusterFromSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterFromSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterFromSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterFromSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreDBClusterFromSnapshotSync(RestoreDBClusterFromSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePendingMaintenanceActions asynchronously, invoking a callback when done
-- @param DescribePendingMaintenanceActionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, cb)
	assert(DescribePendingMaintenanceActionsMessage, "You must provide a DescribePendingMaintenanceActionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePendingMaintenanceActions",
	}
	for header,value in pairs(DescribePendingMaintenanceActionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePendingMaintenanceActionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePendingMaintenanceActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePendingMaintenanceActionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePendingMaintenanceActionsSync(DescribePendingMaintenanceActionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootDBInstance asynchronously, invoking a callback when done
-- @param RebootDBInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootDBInstanceAsync(RebootDBInstanceMessage, cb)
	assert(RebootDBInstanceMessage, "You must provide a RebootDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootDBInstance",
	}
	for header,value in pairs(RebootDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootDBInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RebootDBInstanceSync(RebootDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootDBInstanceAsync(RebootDBInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveSourceIdentifierFromSubscription asynchronously, invoking a callback when done
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, cb)
	assert(RemoveSourceIdentifierFromSubscriptionMessage, "You must provide a RemoveSourceIdentifierFromSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveSourceIdentifierFromSubscription",
	}
	for header,value in pairs(RemoveSourceIdentifierFromSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveSourceIdentifierFromSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveSourceIdentifierFromSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveSourceIdentifierFromSubscriptionSync(RemoveSourceIdentifierFromSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, cb)
	assert(CreateDBParameterGroupMessage, "You must provide a CreateDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBParameterGroup",
	}
	for header,value in pairs(CreateDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBParameterGroupSync(CreateDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, cb)
	assert(DeleteDBParameterGroupMessage, "You must provide a DeleteDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBParameterGroup",
	}
	for header,value in pairs(DeleteDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBParameterGroupSync(DeleteDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSubnetGroup asynchronously, invoking a callback when done
-- @param CreateDBSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, cb)
	assert(CreateDBSubnetGroupMessage, "You must provide a CreateDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSubnetGroup",
	}
	for header,value in pairs(CreateDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBSubnetGroupSync(CreateDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, function(response, error_type, error_message)
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

--- Call AddRoleToDBCluster asynchronously, invoking a callback when done
-- @param AddRoleToDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, cb)
	assert(AddRoleToDBClusterMessage, "You must provide a AddRoleToDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddRoleToDBCluster",
	}
	for header,value in pairs(AddRoleToDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddRoleToDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddRoleToDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddRoleToDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AddRoleToDBClusterSync(AddRoleToDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBCluster asynchronously, invoking a callback when done
-- @param ModifyDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBClusterAsync(ModifyDBClusterMessage, cb)
	assert(ModifyDBClusterMessage, "You must provide a ModifyDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBCluster",
	}
	for header,value in pairs(ModifyDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBClusterSync(ModifyDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterAsync(ModifyDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameters asynchronously, invoking a callback when done
-- @param DescribeDBParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBParametersAsync(DescribeDBParametersMessage, cb)
	assert(DescribeDBParametersMessage, "You must provide a DescribeDBParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameters",
	}
	for header,value in pairs(DescribeDBParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBParametersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBParametersSync(DescribeDBParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParametersAsync(DescribeDBParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBParameterGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, cb)
	assert(DescribeDBParameterGroupsMessage, "You must provide a DescribeDBParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameterGroups",
	}
	for header,value in pairs(DescribeDBParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBParameterGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBParameterGroupsSync(DescribeDBParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, function(response, error_type, error_message)
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

--- Call ModifyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, cb)
	assert(ModifyDBClusterParameterGroupMessage, "You must provide a ModifyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterParameterGroup",
	}
	for header,value in pairs(ModifyDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBClusterParameterGroupSync(ModifyDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBEngineVersions asynchronously, invoking a callback when done
-- @param DescribeDBEngineVersionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, cb)
	assert(DescribeDBEngineVersionsMessage, "You must provide a DescribeDBEngineVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBEngineVersions",
	}
	for header,value in pairs(DescribeDBEngineVersionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBEngineVersionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBEngineVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBEngineVersionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBEngineVersionsSync(DescribeDBEngineVersionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call FailoverDBCluster asynchronously, invoking a callback when done
-- @param FailoverDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.FailoverDBClusterAsync(FailoverDBClusterMessage, cb)
	assert(FailoverDBClusterMessage, "You must provide a FailoverDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FailoverDBCluster",
	}
	for header,value in pairs(FailoverDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", FailoverDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FailoverDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FailoverDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.FailoverDBClusterSync(FailoverDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FailoverDBClusterAsync(FailoverDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshots asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, cb)
	assert(DescribeDBClusterSnapshotsMessage, "You must provide a DescribeDBClusterSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshots",
	}
	for header,value in pairs(DescribeDBClusterSnapshotsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterSnapshotsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBClusterSnapshotsSync(DescribeDBClusterSnapshotsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplyPendingMaintenanceAction asynchronously, invoking a callback when done
-- @param ApplyPendingMaintenanceActionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, cb)
	assert(ApplyPendingMaintenanceActionMessage, "You must provide a ApplyPendingMaintenanceActionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplyPendingMaintenanceAction",
	}
	for header,value in pairs(ApplyPendingMaintenanceActionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApplyPendingMaintenanceActionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApplyPendingMaintenanceAction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApplyPendingMaintenanceActionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ApplyPendingMaintenanceActionSync(ApplyPendingMaintenanceActionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBInstances asynchronously, invoking a callback when done
-- @param DescribeDBInstancesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, cb)
	assert(DescribeDBInstancesMessage, "You must provide a DescribeDBInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBInstances",
	}
	for header,value in pairs(DescribeDBInstancesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBInstancesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBInstancesSync(DescribeDBInstancesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, function(response, error_type, error_message)
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

--- Call ResetDBParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, cb)
	assert(ResetDBParameterGroupMessage, "You must provide a ResetDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBParameterGroup",
	}
	for header,value in pairs(ResetDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetDBParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ResetDBParameterGroupSync(ResetDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableDBInstanceOptions asynchronously, invoking a callback when done
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, cb)
	assert(DescribeOrderableDBInstanceOptionsMessage, "You must provide a DescribeOrderableDBInstanceOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOrderableDBInstanceOptions",
	}
	for header,value in pairs(DescribeOrderableDBInstanceOptionsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrderableDBInstanceOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrderableDBInstanceOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOrderableDBInstanceOptionsSync(DescribeOrderableDBInstanceOptionsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBInstance asynchronously, invoking a callback when done
-- @param CreateDBInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBInstanceAsync(CreateDBInstanceMessage, cb)
	assert(CreateDBInstanceMessage, "You must provide a CreateDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBInstance",
	}
	for header,value in pairs(CreateDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBInstanceSync(CreateDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBInstanceAsync(CreateDBInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusters asynchronously, invoking a callback when done
-- @param DescribeDBClustersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBClustersAsync(DescribeDBClustersMessage, cb)
	assert(DescribeDBClustersMessage, "You must provide a DescribeDBClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusters",
	}
	for header,value in pairs(DescribeDBClustersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClustersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClustersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBClustersSync(DescribeDBClustersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClustersAsync(DescribeDBClustersMessage, function(response, error_type, error_message)
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

--- Call ModifyDBSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyDBSubnetGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, cb)
	assert(ModifyDBSubnetGroupMessage, "You must provide a ModifyDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSubnetGroup",
	}
	for header,value in pairs(ModifyDBSubnetGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSubnetGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSubnetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSubnetGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBSubnetGroupSync(ModifyDBSubnetGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, function(response, error_type, error_message)
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

--- Call AddSourceIdentifierToSubscription asynchronously, invoking a callback when done
-- @param AddSourceIdentifierToSubscriptionMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, cb)
	assert(AddSourceIdentifierToSubscriptionMessage, "You must provide a AddSourceIdentifierToSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddSourceIdentifierToSubscription",
	}
	for header,value in pairs(AddSourceIdentifierToSubscriptionMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddSourceIdentifierToSubscriptionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddSourceIdentifierToSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddSourceIdentifierToSubscriptionMessage
-- @return response
-- @return error_type
-- @return error_message
function M.AddSourceIdentifierToSubscriptionSync(AddSourceIdentifierToSubscriptionMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, cb)
	assert(ModifyDBParameterGroupMessage, "You must provide a ModifyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBParameterGroup",
	}
	for header,value in pairs(ModifyDBParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBParameterGroupSync(ModifyDBParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultClusterParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultClusterParametersMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, cb)
	assert(DescribeEngineDefaultClusterParametersMessage, "You must provide a DescribeEngineDefaultClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultClusterParameters",
	}
	for header,value in pairs(DescribeEngineDefaultClusterParametersMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEngineDefaultClusterParametersMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEngineDefaultClusterParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEngineDefaultClusterParametersMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEngineDefaultClusterParametersSync(DescribeEngineDefaultClusterParametersMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PromoteReadReplicaDBCluster asynchronously, invoking a callback when done
-- @param PromoteReadReplicaDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, cb)
	assert(PromoteReadReplicaDBClusterMessage, "You must provide a PromoteReadReplicaDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PromoteReadReplicaDBCluster",
	}
	for header,value in pairs(PromoteReadReplicaDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PromoteReadReplicaDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PromoteReadReplicaDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PromoteReadReplicaDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.PromoteReadReplicaDBClusterSync(PromoteReadReplicaDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, cb)
	assert(CopyDBClusterParameterGroupMessage, "You must provide a CopyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterParameterGroup",
	}
	for header,value in pairs(CopyDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBClusterParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CopyDBClusterParameterGroupSync(CopyDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CreateDBClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, cb)
	assert(CreateDBClusterSnapshotMessage, "You must provide a CreateDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterSnapshot",
	}
	for header,value in pairs(CreateDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBClusterSnapshotSync(CreateDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, cb)
	assert(DeleteDBClusterParameterGroupMessage, "You must provide a DeleteDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterParameterGroup",
	}
	for header,value in pairs(DeleteDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBClusterParameterGroupSync(DeleteDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshotAttributes asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, cb)
	assert(DescribeDBClusterSnapshotAttributesMessage, "You must provide a DescribeDBClusterSnapshotAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshotAttributes",
	}
	for header,value in pairs(DescribeDBClusterSnapshotAttributesMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterSnapshotAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterSnapshotAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBClusterSnapshotAttributesSync(DescribeDBClusterSnapshotAttributesMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBCluster asynchronously, invoking a callback when done
-- @param CreateDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDBClusterAsync(CreateDBClusterMessage, cb)
	assert(CreateDBClusterMessage, "You must provide a CreateDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBCluster",
	}
	for header,value in pairs(CreateDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDBClusterSync(CreateDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterAsync(CreateDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBClusterParameterGroupsMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, cb)
	assert(DescribeDBClusterParameterGroupsMessage, "You must provide a DescribeDBClusterParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameterGroups",
	}
	for header,value in pairs(DescribeDBClusterParameterGroupsMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBClusterParameterGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBClusterParameterGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBClusterParameterGroupsMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDBClusterParameterGroupsSync(DescribeDBClusterParameterGroupsMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, function(response, error_type, error_message)
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

--- Call CopyDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CopyDBClusterSnapshotMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, cb)
	assert(CopyDBClusterSnapshotMessage, "You must provide a CopyDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterSnapshot",
	}
	for header,value in pairs(CopyDBClusterSnapshotMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBClusterSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBClusterSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBClusterSnapshotMessage
-- @return response
-- @return error_type
-- @return error_message
function M.CopyDBClusterSnapshotSync(CopyDBClusterSnapshotMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBInstance asynchronously, invoking a callback when done
-- @param ModifyDBInstanceMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, cb)
	assert(ModifyDBInstanceMessage, "You must provide a ModifyDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBInstance",
	}
	for header,value in pairs(ModifyDBInstanceMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBInstanceMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBInstanceSync(ModifyDBInstanceMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBCluster asynchronously, invoking a callback when done
-- @param DeleteDBClusterMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDBClusterAsync(DeleteDBClusterMessage, cb)
	assert(DeleteDBClusterMessage, "You must provide a DeleteDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBCluster",
	}
	for header,value in pairs(DeleteDBClusterMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBClusterMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBClusterMessage
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDBClusterSync(DeleteDBClusterMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterAsync(DeleteDBClusterMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBClusterParameterGroupMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, cb)
	assert(ResetDBClusterParameterGroupMessage, "You must provide a ResetDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBClusterParameterGroup",
	}
	for header,value in pairs(ResetDBClusterParameterGroupMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetDBClusterParameterGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetDBClusterParameterGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetDBClusterParameterGroupMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ResetDBClusterParameterGroupSync(ResetDBClusterParameterGroupMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBClusterSnapshotAttribute asynchronously, invoking a callback when done
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, cb)
	assert(ModifyDBClusterSnapshotAttributeMessage, "You must provide a ModifyDBClusterSnapshotAttributeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterSnapshotAttribute",
	}
	for header,value in pairs(ModifyDBClusterSnapshotAttributeMessage.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBClusterSnapshotAttributeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBClusterSnapshotAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyDBClusterSnapshotAttributeSync(ModifyDBClusterSnapshotAttributeMessage, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, function(response, error_type, error_message)
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


return M
