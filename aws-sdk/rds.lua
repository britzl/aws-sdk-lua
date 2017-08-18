--- GENERATED CODE - DO NOT MODIFY
-- Amazon Relational Database Service (rds-2014-10-31)

local M = {}

M.metadata = {
	api_version = "2014-10-31",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "rds",
	service_abbreviation = "Amazon RDS",
	service_full_name = "Amazon Relational Database Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "rds-2014-10-31",
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
function M.CertificateNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateNotFoundFault")
	local t = { 
	}
	asserts.AssertCertificateNotFoundFault(t)
	return t
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
function M.DBSubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertDBSubnetGroupNotFoundFault(t)
	return t
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
-- @param _TargetDBClusterParameterGroupIdentifier [String] <p>The identifier for the copied DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>
-- @param _Tags [TagList] 
-- @param _SourceDBClusterParameterGroupIdentifier [String] <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB cluster parameter group.</p> </li> <li> <p>If the source DB cluster parameter group is in the same region as the copy, specify a valid DB parameter group identifier, for example <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source DB parameter group is in a different region than the copy, specify a valid DB cluster parameter group ARN, for example <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>
-- @param _TargetDBClusterParameterGroupDescription [String] <p>A description for the copied DB cluster parameter group.</p>
-- Required parameter: SourceDBClusterParameterGroupIdentifier
-- Required parameter: TargetDBClusterParameterGroupIdentifier
-- Required parameter: TargetDBClusterParameterGroupDescription
function M.CopyDBClusterParameterGroupMessage(_TargetDBClusterParameterGroupIdentifier, _Tags, _SourceDBClusterParameterGroupIdentifier, _TargetDBClusterParameterGroupDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterParameterGroupMessage")
	local t = { 
		["TargetDBClusterParameterGroupIdentifier"] = _TargetDBClusterParameterGroupIdentifier,
		["Tags"] = _Tags,
		["SourceDBClusterParameterGroupIdentifier"] = _SourceDBClusterParameterGroupIdentifier,
		["TargetDBClusterParameterGroupDescription"] = _TargetDBClusterParameterGroupDescription,
	}
	asserts.AssertCopyDBClusterParameterGroupMessage(t)
	return t
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
-- @param _SourceIdentifier [String] <p>The identifier of the event source to be added. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- @param _SubscriptionName [String] <p>The name of the RDS event notification subscription you want to add a source identifier to.</p>
-- Required parameter: SubscriptionName
-- Required parameter: SourceIdentifier
function M.AddSourceIdentifierToSubscriptionMessage(_SourceIdentifier, _SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddSourceIdentifierToSubscriptionMessage")
	local t = { 
		["SourceIdentifier"] = _SourceIdentifier,
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertAddSourceIdentifierToSubscriptionMessage(t)
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
-- <p>The supplied subscription name already exists.</p>
function M.SubscriptionAlreadyExistFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionAlreadyExistFault")
	local t = { 
	}
	asserts.AssertSubscriptionAlreadyExistFault(t)
	return t
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
function M.DBSubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBSubnetGroupQuotaExceededFault(t)
	return t
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
-- @param _Status [String] <p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>
-- @param _RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>
function M.DBClusterRole(_Status, _RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRole")
	local t = { 
		["Status"] = _Status,
		["RoleArn"] = _RoleArn,
	}
	asserts.AssertDBClusterRole(t)
	return t
end

keys.ModifyOptionGroupMessage = { ["OptionsToRemove"] = true, ["OptionsToInclude"] = true, ["ApplyImmediately"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertModifyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionsToRemove"] then asserts.AssertOptionNamesList(struct["OptionsToRemove"]) end
	if struct["OptionsToInclude"] then asserts.AssertOptionConfigurationList(struct["OptionsToInclude"]) end
	if struct["ApplyImmediately"] then asserts.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyOptionGroupMessage[k], "ModifyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupMessage
-- <p/>
-- @param _OptionsToRemove [OptionNamesList] <p>Options in this list are removed from the option group.</p>
-- @param _OptionsToInclude [OptionConfigurationList] <p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>
-- @param _ApplyImmediately [Boolean] <p>Indicates whether the changes should be applied immediately, or during the next maintenance window for each instance associated with the option group.</p>
-- @param _OptionGroupName [String] <p>The name of the option group to be modified.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- Required parameter: OptionGroupName
function M.ModifyOptionGroupMessage(_OptionsToRemove, _OptionsToInclude, _ApplyImmediately, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyOptionGroupMessage")
	local t = { 
		["OptionsToRemove"] = _OptionsToRemove,
		["OptionsToInclude"] = _OptionsToInclude,
		["ApplyImmediately"] = _ApplyImmediately,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertModifyOptionGroupMessage(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- @param _Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- @param _SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- @param _SubscriptionName [String] <p>The name of the RDS event notification subscription.</p>
-- @param _SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- Required parameter: SubscriptionName
function M.ModifyEventSubscriptionMessage(_EventCategories, _Enabled, _SourceType, _SubscriptionName, _SnsTopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = _EventCategories,
		["Enabled"] = _Enabled,
		["SourceType"] = _SourceType,
		["SubscriptionName"] = _SubscriptionName,
		["SnsTopicArn"] = _SnsTopicArn,
	}
	asserts.AssertModifyEventSubscriptionMessage(t)
	return t
end

keys.CopyOptionGroupMessage = { ["TargetOptionGroupDescription"] = true, ["Tags"] = true, ["TargetOptionGroupIdentifier"] = true, ["SourceOptionGroupIdentifier"] = true, nil }

function asserts.AssertCopyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupMessage to be of type 'table'")
	assert(struct["SourceOptionGroupIdentifier"], "Expected key SourceOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupIdentifier"], "Expected key TargetOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupDescription"], "Expected key TargetOptionGroupDescription to exist in table")
	if struct["TargetOptionGroupDescription"] then asserts.AssertString(struct["TargetOptionGroupDescription"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["TargetOptionGroupIdentifier"] then asserts.AssertString(struct["TargetOptionGroupIdentifier"]) end
	if struct["SourceOptionGroupIdentifier"] then asserts.AssertString(struct["SourceOptionGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyOptionGroupMessage[k], "CopyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupMessage
-- <p/>
-- @param _TargetOptionGroupDescription [String] <p>The description for the copied option group.</p>
-- @param _Tags [TagList] 
-- @param _TargetOptionGroupIdentifier [String] <p>The identifier for the copied option group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-option-group</code> </p>
-- @param _SourceOptionGroupIdentifier [String] <p>The identifier or ARN for the source option group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid option group.</p> </li> <li> <p>If the source option group is in the same region as the copy, specify a valid option group identifier, for example <code>my-option-group</code>, or a valid ARN.</p> </li> <li> <p>If the source option group is in a different region than the copy, specify a valid option group ARN, for example <code>arn:aws:rds:us-west-2:123456789012:og:special-options</code>.</p> </li> </ul>
-- Required parameter: SourceOptionGroupIdentifier
-- Required parameter: TargetOptionGroupIdentifier
-- Required parameter: TargetOptionGroupDescription
function M.CopyOptionGroupMessage(_TargetOptionGroupDescription, _Tags, _TargetOptionGroupIdentifier, _SourceOptionGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyOptionGroupMessage")
	local t = { 
		["TargetOptionGroupDescription"] = _TargetOptionGroupDescription,
		["Tags"] = _Tags,
		["TargetOptionGroupIdentifier"] = _TargetOptionGroupIdentifier,
		["SourceOptionGroupIdentifier"] = _SourceOptionGroupIdentifier,
	}
	asserts.AssertCopyOptionGroupMessage(t)
	return t
end

keys.DBSecurityGroupMessage = { ["Marker"] = true, ["DBSecurityGroups"] = true, nil }

function asserts.AssertDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSecurityGroups"] then asserts.AssertDBSecurityGroups(struct["DBSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupMessage[k], "DBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBSecurityGroups [DBSecurityGroups] <p> A list of <a>DBSecurityGroup</a> instances. </p>
function M.DBSecurityGroupMessage(_Marker, _DBSecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBSecurityGroups"] = _DBSecurityGroups,
	}
	asserts.AssertDBSecurityGroupMessage(t)
	return t
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
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSubnetGroup</a> </p> </li> <li> <p> <a>ModifyDBSubnetGroup</a> </p> </li> <li> <p> <a>DescribeDBSubnetGroups</a> </p> </li> <li> <p> <a>DeleteDBSubnetGroup</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
-- @param _Subnets [SubnetList] <p> Contains a list of <a>Subnet</a> elements. </p>
-- @param _VpcId [String] <p>Provides the VpcId of the DB subnet group.</p>
-- @param _DBSubnetGroupDescription [String] <p>Provides the description of the DB subnet group.</p>
-- @param _SubnetGroupStatus [String] <p>Provides the status of the DB subnet group.</p>
-- @param _DBSubnetGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
-- @param _DBSubnetGroupName [String] <p>The name of the DB subnet group.</p>
function M.DBSubnetGroup(_Subnets, _VpcId, _DBSubnetGroupDescription, _SubnetGroupStatus, _DBSubnetGroupArn, _DBSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroup")
	local t = { 
		["Subnets"] = _Subnets,
		["VpcId"] = _VpcId,
		["DBSubnetGroupDescription"] = _DBSubnetGroupDescription,
		["SubnetGroupStatus"] = _SubnetGroupStatus,
		["DBSubnetGroupArn"] = _DBSubnetGroupArn,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
	}
	asserts.AssertDBSubnetGroup(t)
	return t
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
function M.DBSubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBSubnetGroupAlreadyExistsFault(t)
	return t
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
-- @param _FinalDBSnapshotIdentifier [String] <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to <code>false</code>. </p> <note> <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Cannot be specified when deleting a Read Replica.</p> </li> </ul>
-- @param _SkipFinalSnapshot [Boolean] <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified, a DB snapshot is created before the DB instance is deleted. </p> <p>Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to "true".</p> <p>Specify <code>true</code> when deleting a Read Replica.</p> <note> <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.DeleteDBInstanceMessage(_FinalDBSnapshotIdentifier, _SkipFinalSnapshot, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBInstanceMessage")
	local t = { 
		["FinalDBSnapshotIdentifier"] = _FinalDBSnapshotIdentifier,
		["SkipFinalSnapshot"] = _SkipFinalSnapshot,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDeleteDBInstanceMessage(t)
	return t
end

keys.DBSubnetGroupNotAllowedFault = { nil }

function asserts.AssertDBSubnetGroupNotAllowedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotAllowedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSubnetGroupNotAllowedFault[k], "DBSubnetGroupNotAllowedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotAllowedFault
-- <p>Indicates that the DBSubnetGroup should not be specified while creating read replicas that lie in the same region as the source instance.</p>
function M.DBSubnetGroupNotAllowedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupNotAllowedFault")
	local t = { 
	}
	asserts.AssertDBSubnetGroupNotAllowedFault(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBClusterParameterGroupsMessage(_DBClusterParameterGroupName, _Marker, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterParameterGroupsMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeDBClusterParameterGroupsMessage(t)
	return t
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
-- @param _AttributeName [String] <p>The name of the manual DB cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param _AttributeValues [AttributeValueList] <p>The value(s) for the manual DB cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot is public and available for any AWS account to copy or restore.</p>
function M.DBClusterSnapshotAttribute(_AttributeName, _AttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAttribute")
	local t = { 
		["AttributeName"] = _AttributeName,
		["AttributeValues"] = _AttributeValues,
	}
	asserts.AssertDBClusterSnapshotAttribute(t)
	return t
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
function M.StorageTypeNotSupportedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageTypeNotSupportedFault")
	local t = { 
	}
	asserts.AssertStorageTypeNotSupportedFault(t)
	return t
end

keys.CreateOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertCreateOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOptionGroupResult[k], "CreateOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupResult
--  
-- @param _OptionGroup [OptionGroup] 
function M.CreateOptionGroupResult(_OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOptionGroupResult")
	local t = { 
		["OptionGroup"] = _OptionGroup,
	}
	asserts.AssertCreateOptionGroupResult(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- @param _SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>
-- @param _Tags [TagList] 
-- @param _Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, set to <b>false</b> to create the subscription but not active it. </p>
-- @param _SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- @param _SubscriptionName [String] <p>The name of the subscription.</p> <p>Constraints: The name must be less than 255 characters.</p>
-- @param _SourceIds [SourceIdsList] <p>The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIds are supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- Required parameter: SubscriptionName
-- Required parameter: SnsTopicArn
function M.CreateEventSubscriptionMessage(_EventCategories, _SourceType, _Tags, _Enabled, _SnsTopicArn, _SubscriptionName, _SourceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
		["Tags"] = _Tags,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["SubscriptionName"] = _SubscriptionName,
		["SourceIds"] = _SourceIds,
	}
	asserts.AssertCreateEventSubscriptionMessage(t)
	return t
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
-- @param _RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- @param _DBClusterIdentifier [String] <p>The name of the DB cluster to associate the IAM role with.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: RoleArn
function M.AddRoleToDBClusterMessage(_RoleArn, _DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddRoleToDBClusterMessage")
	local t = { 
		["RoleArn"] = _RoleArn,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
	}
	asserts.AssertAddRoleToDBClusterMessage(t)
	return t
end

keys.DBSnapshotMessage = { ["Marker"] = true, ["DBSnapshots"] = true, nil }

function asserts.AssertDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["DBSnapshots"] then asserts.AssertDBSnapshotList(struct["DBSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotMessage[k], "DBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSnapshots</a> action. </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBSnapshots [DBSnapshotList] <p> A list of <a>DBSnapshot</a> instances. </p>
function M.DBSnapshotMessage(_Marker, _DBSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBSnapshots"] = _DBSnapshots,
	}
	asserts.AssertDBSnapshotMessage(t)
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
-- <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
-- @param _Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- @param _Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.CopyDBSnapshotMessage = { ["CopyTags"] = true, ["SourceRegion"] = true, ["Tags"] = true, ["PreSignedUrl"] = true, ["TargetDBSnapshotIdentifier"] = true, ["SourceDBSnapshotIdentifier"] = true, ["KmsKeyId"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertCopyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBSnapshotIdentifier"], "Expected key SourceDBSnapshotIdentifier to exist in table")
	assert(struct["TargetDBSnapshotIdentifier"], "Expected key TargetDBSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then asserts.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["TargetDBSnapshotIdentifier"] then asserts.AssertString(struct["TargetDBSnapshotIdentifier"]) end
	if struct["SourceDBSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBSnapshotMessage[k], "CopyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotMessage
-- <p/>
-- @param _CopyTags [BooleanOptional] <p>True to copy all tags from the source DB snapshot to the target DB snapshot; otherwise false. The default is false.</p>
-- @param _SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- @param _Tags [TagList] 
-- @param _PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBSnapshot</code> API action in the source AWS region that contains the source DB snapshot to copy. </p> <p>You must specify this parameter when you copy an encrypted DB snapshot from another AWS region by using the Amazon RDS API. You can specify the source region option instead of this parameter when you copy an encrypted DB snapshot from another AWS region by using the AWS CLI. </p> <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action that can be executed in the source region that contains the encrypted DB snapshot to be copied. The presigned URL request must contain the following parameter values: </p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot will be copied to. This region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL. </p> <p>For example, if you copy an encrypted DB snapshot from the us-west-2 region to the us-east-1 region, then you will call the <code>CopyDBSnapshot</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CopyDBSnapshot</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region. </p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination region. This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination region, and the action contained in the presigned URL. </p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB snapshot from the us-west-2 region, then your <code>SourceDBSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>. </p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>. </p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param _TargetDBSnapshotIdentifier [String] <p>The identifier for the copy of the snapshot. </p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-snapshot</code> </p>
-- @param _SourceDBSnapshotIdentifier [String] <p>The identifier for the source DB snapshot.</p> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier. For example, <code>rds:mysql-instance1-snapshot-20130805</code>. </p> <p>If the source snapshot is in a different region than the copy, specify a valid DB snapshot ARN. For example, <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>. </p> <p>If you are copying from a shared manual DB snapshot, this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot. </p> <p>If you are copying an encrypted snapshot this parameter must be in the ARN format for the source region, and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> </ul> <p>Example: <code>rds:mydb-2012-04-02-00-01</code> </p> <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code> </p>
-- @param _KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an encrypted DB snapshot from your AWS account, you can specify a value for this parameter to encrypt the copy with a new KMS encryption key. If you don't specify a value for this parameter, then the copy of the DB snapshot is encrypted with the same KMS key as the source DB snapshot. </p> <p>If you copy an encrypted DB snapshot that is shared from another AWS account, then you must specify a value for this parameter. </p> <p>If you specify this parameter when you copy an unencrypted snapshot, the copy is encrypted. </p> <p>If you copy an encrypted snapshot to a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region. </p>
-- @param _OptionGroupName [String] <p>The name of an option group to associate with the copy. </p> <p>Specify this option if you are copying a snapshot from one AWS region to another, and your DB instance uses a non-default option group. If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, you must specify this option when copying across regions. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options">Option Group Considerations</a>. </p>
-- Required parameter: SourceDBSnapshotIdentifier
-- Required parameter: TargetDBSnapshotIdentifier
function M.CopyDBSnapshotMessage(_CopyTags, _SourceRegion, _Tags, _PreSignedUrl, _TargetDBSnapshotIdentifier, _SourceDBSnapshotIdentifier, _KmsKeyId, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBSnapshotMessage")
	local t = { 
		["CopyTags"] = _CopyTags,
		["SourceRegion"] = _SourceRegion,
		["Tags"] = _Tags,
		["PreSignedUrl"] = _PreSignedUrl,
		["TargetDBSnapshotIdentifier"] = _TargetDBSnapshotIdentifier,
		["SourceDBSnapshotIdentifier"] = _SourceDBSnapshotIdentifier,
		["KmsKeyId"] = _KmsKeyId,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertCopyDBSnapshotMessage(t)
	return t
end

keys.OrderableDBInstanceOption = { ["Engine"] = true, ["SupportsIAMDatabaseAuthentication"] = true, ["StorageType"] = true, ["LicenseModel"] = true, ["SupportsStorageEncryption"] = true, ["SupportsEnhancedMonitoring"] = true, ["Vpc"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["AvailabilityZones"] = true, ["MultiAZCapable"] = true, ["ReadReplicaCapable"] = true, ["SupportsIops"] = true, nil }

function asserts.AssertOrderableDBInstanceOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOption to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["SupportsIAMDatabaseAuthentication"] then asserts.AssertBoolean(struct["SupportsIAMDatabaseAuthentication"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["SupportsStorageEncryption"] then asserts.AssertBoolean(struct["SupportsStorageEncryption"]) end
	if struct["SupportsEnhancedMonitoring"] then asserts.AssertBoolean(struct["SupportsEnhancedMonitoring"]) end
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
-- <p>Contains a list of available options for a DB instance</p> <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param _Engine [String] <p>The engine type of the orderable DB instance.</p>
-- @param _SupportsIAMDatabaseAuthentication [Boolean] <p>Indicates whether this orderable DB instance supports IAM database authentication.</p>
-- @param _StorageType [String] <p>Indicates the storage type for this orderable DB instance.</p>
-- @param _LicenseModel [String] <p>The license model for the orderable DB instance.</p>
-- @param _SupportsStorageEncryption [Boolean] <p>Indicates whether this orderable DB instance supports encrypted storage.</p>
-- @param _SupportsEnhancedMonitoring [Boolean] <p>Indicates whether the DB instance supports enhanced monitoring at intervals from 1 to 60 seconds.</p>
-- @param _Vpc [Boolean] <p>Indicates whether this is a VPC orderable DB instance.</p>
-- @param _EngineVersion [String] <p>The engine version of the orderable DB instance.</p>
-- @param _DBInstanceClass [String] <p>The DB instance class for the orderable DB instance.</p>
-- @param _AvailabilityZones [AvailabilityZoneList] <p>A list of Availability Zones for the orderable DB instance.</p>
-- @param _MultiAZCapable [Boolean] <p>Indicates whether this orderable DB instance is multi-AZ capable.</p>
-- @param _ReadReplicaCapable [Boolean] <p>Indicates whether this orderable DB instance can have a Read Replica.</p>
-- @param _SupportsIops [Boolean] <p>Indicates whether this orderable DB instance supports provisioned IOPS.</p>
function M.OrderableDBInstanceOption(_Engine, _SupportsIAMDatabaseAuthentication, _StorageType, _LicenseModel, _SupportsStorageEncryption, _SupportsEnhancedMonitoring, _Vpc, _EngineVersion, _DBInstanceClass, _AvailabilityZones, _MultiAZCapable, _ReadReplicaCapable, _SupportsIops, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableDBInstanceOption")
	local t = { 
		["Engine"] = _Engine,
		["SupportsIAMDatabaseAuthentication"] = _SupportsIAMDatabaseAuthentication,
		["StorageType"] = _StorageType,
		["LicenseModel"] = _LicenseModel,
		["SupportsStorageEncryption"] = _SupportsStorageEncryption,
		["SupportsEnhancedMonitoring"] = _SupportsEnhancedMonitoring,
		["Vpc"] = _Vpc,
		["EngineVersion"] = _EngineVersion,
		["DBInstanceClass"] = _DBInstanceClass,
		["AvailabilityZones"] = _AvailabilityZones,
		["MultiAZCapable"] = _MultiAZCapable,
		["ReadReplicaCapable"] = _ReadReplicaCapable,
		["SupportsIops"] = _SupportsIops,
	}
	asserts.AssertOrderableDBInstanceOption(t)
	return t
end

keys.DBSecurityGroupAlreadyExistsFault = { nil }

function asserts.AssertDBSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupAlreadyExistsFault[k], "DBSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupAlreadyExistsFault
-- <p> A DB security group with the name specified in <i>DBSecurityGroupName</i> already exists. </p>
function M.DBSecurityGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBSecurityGroupAlreadyExistsFault(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
function M.DBClusterParameterGroupNameMessage(_DBClusterParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupNameMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
	}
	asserts.AssertDBClusterParameterGroupNameMessage(t)
	return t
end

keys.InvalidOptionGroupStateFault = { nil }

function asserts.AssertInvalidOptionGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOptionGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOptionGroupStateFault[k], "InvalidOptionGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOptionGroupStateFault
-- <p> The option group is not in the <i>available</i> state. </p>
function M.InvalidOptionGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOptionGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidOptionGroupStateFault(t)
	return t
end

keys.DescribeDBSecurityGroupsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDescribeDBSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSecurityGroupsMessage[k], "DescribeDBSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSecurityGroupsMessage
-- <p/>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSecurityGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _DBSecurityGroupName [String] <p>The name of the DB security group to return details for.</p>
function M.DescribeDBSecurityGroupsMessage(_Marker, _MaxRecords, _Filters, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSecurityGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertDescribeDBSecurityGroupsMessage(t)
	return t
end

keys.CopyDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertCopyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyDBSnapshotResult[k], "CopyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotResult
--  
-- @param _DBSnapshot [DBSnapshot] 
function M.CopyDBSnapshotResult(_DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = _DBSnapshot,
	}
	asserts.AssertCopyDBSnapshotResult(t)
	return t
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
function M.DBInstanceAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBInstanceAlreadyExistsFault(t)
	return t
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
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBClusterSnapshot</a> </p> </li> <li> <p> <a>DeleteDBClusterSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
-- @param _Engine [String] <p>Specifies the name of the database engine.</p>
-- @param _SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param _VpcId [String] <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
-- @param _DBClusterIdentifier [String] <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>
-- @param _DBClusterSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>
-- @param _MasterUsername [String] <p>Provides the master username for the DB cluster snapshot.</p>
-- @param _LicenseModel [String] <p>Provides the license model information for this DB cluster snapshot.</p>
-- @param _Status [String] <p>Specifies the status of this DB cluster snapshot.</p>
-- @param _PercentProgress [Integer] <p>Specifies the percentage of the estimated data that has been transferred.</p>
-- @param _DBClusterSnapshotIdentifier [String] <p>Specifies the identifier for the DB cluster snapshot.</p>
-- @param _KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster snapshot.</p>
-- @param _ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- @param _StorageEncrypted [Boolean] <p>Specifies whether the DB cluster snapshot is encrypted.</p>
-- @param _AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- @param _EngineVersion [String] <p>Provides the version of the database engine for this DB cluster snapshot.</p>
-- @param _SnapshotType [String] <p>Provides the type of the DB cluster snapshot.</p>
-- @param _SourceDBClusterSnapshotArn [String] <p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot; otherwise, a null value.</p>
-- @param _AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.</p>
-- @param _IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param _Port [Integer] <p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>
function M.DBClusterSnapshot(_Engine, _SnapshotCreateTime, _VpcId, _DBClusterIdentifier, _DBClusterSnapshotArn, _MasterUsername, _LicenseModel, _Status, _PercentProgress, _DBClusterSnapshotIdentifier, _KmsKeyId, _ClusterCreateTime, _StorageEncrypted, _AllocatedStorage, _EngineVersion, _SnapshotType, _SourceDBClusterSnapshotArn, _AvailabilityZones, _IAMDatabaseAuthenticationEnabled, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshot")
	local t = { 
		["Engine"] = _Engine,
		["SnapshotCreateTime"] = _SnapshotCreateTime,
		["VpcId"] = _VpcId,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["DBClusterSnapshotArn"] = _DBClusterSnapshotArn,
		["MasterUsername"] = _MasterUsername,
		["LicenseModel"] = _LicenseModel,
		["Status"] = _Status,
		["PercentProgress"] = _PercentProgress,
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
		["KmsKeyId"] = _KmsKeyId,
		["ClusterCreateTime"] = _ClusterCreateTime,
		["StorageEncrypted"] = _StorageEncrypted,
		["AllocatedStorage"] = _AllocatedStorage,
		["EngineVersion"] = _EngineVersion,
		["SnapshotType"] = _SnapshotType,
		["SourceDBClusterSnapshotArn"] = _SourceDBClusterSnapshotArn,
		["AvailabilityZones"] = _AvailabilityZones,
		["IAMDatabaseAuthenticationEnabled"] = _IAMDatabaseAuthenticationEnabled,
		["Port"] = _Port,
	}
	asserts.AssertDBClusterSnapshot(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.FailoverDBClusterResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailoverDBClusterResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertFailoverDBClusterResult(t)
	return t
end

keys.SourceRegion = { ["Status"] = true, ["Endpoint"] = true, ["RegionName"] = true, nil }

function asserts.AssertSourceRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegion to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["Endpoint"] then asserts.AssertString(struct["Endpoint"]) end
	if struct["RegionName"] then asserts.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceRegion[k], "SourceRegion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegion
-- <p>Contains an AWS Region name as the result of a successful call to the <a>DescribeSourceRegions</a> action.</p>
-- @param _Status [String] <p>The status of the source region.</p>
-- @param _Endpoint [String] <p>The source region endpoint.</p>
-- @param _RegionName [String] <p>The source region name.</p>
function M.SourceRegion(_Status, _Endpoint, _RegionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceRegion")
	local t = { 
		["Status"] = _Status,
		["Endpoint"] = _Endpoint,
		["RegionName"] = _RegionName,
	}
	asserts.AssertSourceRegion(t)
	return t
end

keys.PurchaseReservedDBInstancesOfferingMessage = { ["ReservedDBInstanceId"] = true, ["ReservedDBInstancesOfferingId"] = true, ["DBInstanceCount"] = true, ["Tags"] = true, nil }

function asserts.AssertPurchaseReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingMessage to be of type 'table'")
	assert(struct["ReservedDBInstancesOfferingId"], "Expected key ReservedDBInstancesOfferingId to exist in table")
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["DBInstanceCount"] then asserts.AssertIntegerOptional(struct["DBInstanceCount"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedDBInstancesOfferingMessage[k], "PurchaseReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingMessage
-- <p/>
-- @param _ReservedDBInstanceId [String] <p>Customer-specified identifier to track this reservation.</p> <p>Example: myreservationID</p>
-- @param _ReservedDBInstancesOfferingId [String] <p>The ID of the Reserved DB instance offering to purchase.</p> <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>
-- @param _DBInstanceCount [IntegerOptional] <p>The number of instances to reserve.</p> <p>Default: <code>1</code> </p>
-- @param _Tags [TagList] 
-- Required parameter: ReservedDBInstancesOfferingId
function M.PurchaseReservedDBInstancesOfferingMessage(_ReservedDBInstanceId, _ReservedDBInstancesOfferingId, _DBInstanceCount, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedDBInstancesOfferingMessage")
	local t = { 
		["ReservedDBInstanceId"] = _ReservedDBInstanceId,
		["ReservedDBInstancesOfferingId"] = _ReservedDBInstancesOfferingId,
		["DBInstanceCount"] = _DBInstanceCount,
		["Tags"] = _Tags,
	}
	asserts.AssertPurchaseReservedDBInstancesOfferingMessage(t)
	return t
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
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _ResetAllParameters [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters in the DB parameter group to default values. </p> <p>Default: <code>true</code> </p>
-- @param _Parameters [ParametersList] <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p> <p> <b>MySQL</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>MariaDB</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>Oracle</b> </p> <p>Valid Values (for Apply method): <code>pending-reboot</code> </p>
-- Required parameter: DBParameterGroupName
function M.ResetDBParameterGroupMessage(_DBParameterGroupName, _ResetAllParameters, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["ResetAllParameters"] = _ResetAllParameters,
		["Parameters"] = _Parameters,
	}
	asserts.AssertResetDBParameterGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBClusterSnapshots [DBClusterSnapshotList] <p>Provides a list of DB cluster snapshots for the user.</p>
function M.DBClusterSnapshotMessage(_Marker, _DBClusterSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBClusterSnapshots"] = _DBClusterSnapshots,
	}
	asserts.AssertDBClusterSnapshotMessage(t)
	return t
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
-- @param _IsClusterWriter [Boolean] <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>
-- @param _DBClusterParameterGroupStatus [String] <p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>
-- @param _PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- @param _DBInstanceIdentifier [String] <p>Specifies the instance identifier for this member of the DB cluster.</p>
function M.DBClusterMember(_IsClusterWriter, _DBClusterParameterGroupStatus, _PromotionTier, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterMember")
	local t = { 
		["IsClusterWriter"] = _IsClusterWriter,
		["DBClusterParameterGroupStatus"] = _DBClusterParameterGroupStatus,
		["PromotionTier"] = _PromotionTier,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDBClusterMember(t)
	return t
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
-- @param _ForceFailover [BooleanOptional] <p> When <code>true</code>, the reboot will be conducted through a MultiAZ failover. </p> <p>Constraint: You cannot specify <code>true</code> if the instance is not configured for MultiAZ.</p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.RebootDBInstanceMessage(_ForceFailover, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootDBInstanceMessage")
	local t = { 
		["ForceFailover"] = _ForceFailover,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertRebootDBInstanceMessage(t)
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
-- <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the following data type:</p> <ul> <li> <p> <a>OrderableDBInstanceOption</a> </p> </li> </ul>
-- @param _Name [String] <p>The name of the availability zone.</p>
function M.AvailabilityZone(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertAvailabilityZone(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to modify.</p>
-- @param _Parameters [ParametersList] <p>A list of parameters in the DB cluster parameter group to modify.</p>
-- Required parameter: DBClusterParameterGroupName
-- Required parameter: Parameters
function M.ModifyDBClusterParameterGroupMessage(_DBClusterParameterGroupName, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["Parameters"] = _Parameters,
	}
	asserts.AssertModifyDBClusterParameterGroupMessage(t)
	return t
end

keys.ModifyDBSnapshotAttributeMessage = { ["ValuesToAdd"] = true, ["ValuesToRemove"] = true, ["DBSnapshotIdentifier"] = true, ["AttributeName"] = true, nil }

function asserts.AssertModifyDBSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then asserts.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["ValuesToRemove"] then asserts.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotAttributeMessage[k], "ModifyDBSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeMessage
-- <p/>
-- @param _ValuesToAdd [AttributeValueList] <p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- @param _ValuesToRemove [AttributeValueList] <p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore the manual DB snapshot.</p>
-- @param _DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to modify the attributes for.</p>
-- @param _AttributeName [String] <p>The name of the DB snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, set this value to <code>restore</code>.</p>
-- Required parameter: DBSnapshotIdentifier
-- Required parameter: AttributeName
function M.ModifyDBSnapshotAttributeMessage(_ValuesToAdd, _ValuesToRemove, _DBSnapshotIdentifier, _AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotAttributeMessage")
	local t = { 
		["ValuesToAdd"] = _ValuesToAdd,
		["ValuesToRemove"] = _ValuesToRemove,
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["AttributeName"] = _AttributeName,
	}
	asserts.AssertModifyDBSnapshotAttributeMessage(t)
	return t
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
function M.DBClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBClusterAlreadyExistsFault(t)
	return t
end

keys.CreateDBSecurityGroupMessage = { ["Tags"] = true, ["DBSecurityGroupDescription"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertCreateDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	assert(struct["DBSecurityGroupDescription"], "Expected key DBSecurityGroupDescription to exist in table")
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["DBSecurityGroupDescription"] then asserts.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSecurityGroupMessage[k], "CreateDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupMessage
-- <p/>
-- @param _Tags [TagList] 
-- @param _DBSecurityGroupDescription [String] <p>The description for the DB security group.</p>
-- @param _DBSecurityGroupName [String] <p>The name for the DB security group. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul> <p>Example: <code>mysecuritygroup</code> </p>
-- Required parameter: DBSecurityGroupName
-- Required parameter: DBSecurityGroupDescription
function M.CreateDBSecurityGroupMessage(_Tags, _DBSecurityGroupDescription, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSecurityGroupMessage")
	local t = { 
		["Tags"] = _Tags,
		["DBSecurityGroupDescription"] = _DBSecurityGroupDescription,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertCreateDBSecurityGroupMessage(t)
	return t
end

keys.Certificate = { ["CertificateArn"] = true, ["ValidTill"] = true, ["CertificateIdentifier"] = true, ["Thumbprint"] = true, ["CertificateType"] = true, ["ValidFrom"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then asserts.AssertString(struct["CertificateArn"]) end
	if struct["ValidTill"] then asserts.AssertTStamp(struct["ValidTill"]) end
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["Thumbprint"] then asserts.AssertString(struct["Thumbprint"]) end
	if struct["CertificateType"] then asserts.AssertString(struct["CertificateType"]) end
	if struct["ValidFrom"] then asserts.AssertTStamp(struct["ValidFrom"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>A CA certificate for an AWS account.</p>
-- @param _CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- @param _ValidTill [TStamp] <p>The final date that the certificate continues to be valid.</p>
-- @param _CertificateIdentifier [String] <p>The unique key that identifies a certificate.</p>
-- @param _Thumbprint [String] <p>The thumbprint of the certificate.</p>
-- @param _CertificateType [String] <p>The type of the certificate.</p>
-- @param _ValidFrom [TStamp] <p>The starting date from which the certificate is valid.</p>
function M.Certificate(_CertificateArn, _ValidTill, _CertificateIdentifier, _Thumbprint, _CertificateType, _ValidFrom, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["CertificateArn"] = _CertificateArn,
		["ValidTill"] = _ValidTill,
		["CertificateIdentifier"] = _CertificateIdentifier,
		["Thumbprint"] = _Thumbprint,
		["CertificateType"] = _CertificateType,
		["ValidFrom"] = _ValidFrom,
	}
	asserts.AssertCertificate(t)
	return t
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
-- @param _TagList [TagList] <p>List of tags returned by the ListTagsForResource operation.</p>
function M.TagListMessage(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagListMessage")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertTagListMessage(t)
	return t
end

keys.ReservedDBInstanceNotFoundFault = { nil }

function asserts.AssertReservedDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceNotFoundFault[k], "ReservedDBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceNotFoundFault
-- <p>The specified reserved DB Instance not found.</p>
function M.ReservedDBInstanceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceNotFoundFault")
	local t = { 
	}
	asserts.AssertReservedDBInstanceNotFoundFault(t)
	return t
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
function M.DBSubnetGroupDoesNotCoverEnoughAZs(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupDoesNotCoverEnoughAZs")
	local t = { 
	}
	asserts.AssertDBSubnetGroupDoesNotCoverEnoughAZs(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.PromoteReadReplicaDBClusterResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaDBClusterResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertPromoteReadReplicaDBClusterResult(t)
	return t
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
-- @param _ResourceName [String] <p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: ResourceName
function M.ListTagsForResourceMessage(_ResourceName, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceMessage")
	local t = { 
		["ResourceName"] = _ResourceName,
		["Filters"] = _Filters,
	}
	asserts.AssertListTagsForResourceMessage(t)
	return t
end

keys.RestoreDBInstanceFromDBSnapshotResult = { ["DBInstance"] = true, nil }

function asserts.AssertRestoreDBInstanceFromDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceFromDBSnapshotResult[k], "RestoreDBInstanceFromDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotResult
--  
-- @param _DBInstance [DBInstance] 
function M.RestoreDBInstanceFromDBSnapshotResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceFromDBSnapshotResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertRestoreDBInstanceFromDBSnapshotResult(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to reset.</p>
-- @param _ResetAllParameters [Boolean] <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster parameter group to their default values, and <code>false</code> otherwise. You cannot use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>
-- @param _Parameters [ParametersList] <p>A list of parameter names in the DB cluster parameter group to reset to the default values. You cannot use this parameter if the <code>ResetAllParameters</code> parameter is set to <code>true</code>.</p>
-- Required parameter: DBClusterParameterGroupName
function M.ResetDBClusterParameterGroupMessage(_DBClusterParameterGroupName, _ResetAllParameters, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["ResetAllParameters"] = _ResetAllParameters,
		["Parameters"] = _Parameters,
	}
	asserts.AssertResetDBClusterParameterGroupMessage(t)
	return t
end

keys.PromoteReadReplicaMessage = { ["PreferredBackupWindow"] = true, ["BackupRetentionPeriod"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertPromoteReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaMessage[k], "PromoteReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaMessage
-- <p/>
-- @param _PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 8</p> </li> </ul>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing Read Replica DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required parameter: DBInstanceIdentifier
function M.PromoteReadReplicaMessage(_PreferredBackupWindow, _BackupRetentionPeriod, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaMessage")
	local t = { 
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertPromoteReadReplicaMessage(t)
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
-- <p>DB subnet group does not cover all Availability Zones after it is created because users' change.</p>
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	asserts.AssertInvalidVPCNetworkStateFault(t)
	return t
end

keys.OptionGroups = { ["Marker"] = true, ["OptionGroupsList"] = true, nil }

function asserts.AssertOptionGroups(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroups to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["OptionGroupsList"] then asserts.AssertOptionGroupsList(struct["OptionGroupsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroups[k], "OptionGroups contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroups
-- <p>List of option groups.</p>
-- @param _Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _OptionGroupsList [OptionGroupsList] <p>List of option groups.</p>
function M.OptionGroups(_Marker, _OptionGroupsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroups")
	local t = { 
		["Marker"] = _Marker,
		["OptionGroupsList"] = _OptionGroupsList,
	}
	asserts.AssertOptionGroups(t)
	return t
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
function M.InvalidDBSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSnapshotStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBSnapshotStateFault(t)
	return t
end

keys.DescribeCertificatesMessage = { ["Marker"] = true, ["CertificateIdentifier"] = true, ["MaxRecords"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["CertificateIdentifier"] then asserts.AssertString(struct["CertificateIdentifier"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificatesMessage[k], "DescribeCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesMessage
-- <p/>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _CertificateIdentifier [String] <p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeCertificatesMessage(_Marker, _CertificateIdentifier, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesMessage")
	local t = { 
		["Marker"] = _Marker,
		["CertificateIdentifier"] = _CertificateIdentifier,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeCertificatesMessage(t)
	return t
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
-- @param _PendingMaintenanceActionDetails [PendingMaintenanceActionDetails] <p>A list that provides details about the pending maintenance actions for the resource.</p>
-- @param _ResourceIdentifier [String] <p>The ARN of the resource that has pending maintenance actions.</p>
function M.ResourcePendingMaintenanceActions(_PendingMaintenanceActionDetails, _ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePendingMaintenanceActions")
	local t = { 
		["PendingMaintenanceActionDetails"] = _PendingMaintenanceActionDetails,
		["ResourceIdentifier"] = _ResourceIdentifier,
	}
	asserts.AssertResourcePendingMaintenanceActions(t)
	return t
end

keys.PurchaseReservedDBInstancesOfferingResult = { ["ReservedDBInstance"] = true, nil }

function asserts.AssertPurchaseReservedDBInstancesOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingResult to be of type 'table'")
	if struct["ReservedDBInstance"] then asserts.AssertReservedDBInstance(struct["ReservedDBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseReservedDBInstancesOfferingResult[k], "PurchaseReservedDBInstancesOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingResult
--  
-- @param _ReservedDBInstance [ReservedDBInstance] 
function M.PurchaseReservedDBInstancesOfferingResult(_ReservedDBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedDBInstancesOfferingResult")
	local t = { 
		["ReservedDBInstance"] = _ReservedDBInstance,
	}
	asserts.AssertPurchaseReservedDBInstancesOfferingResult(t)
	return t
end

keys.DBLogFileNotFoundFault = { nil }

function asserts.AssertDBLogFileNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBLogFileNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBLogFileNotFoundFault[k], "DBLogFileNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBLogFileNotFoundFault
-- <p> <i>LogFileName</i> does not refer to an existing DB log file.</p>
function M.DBLogFileNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBLogFileNotFoundFault")
	local t = { 
	}
	asserts.AssertDBLogFileNotFoundFault(t)
	return t
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
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> <li> <p> <a>RestoreDBInstanceToPointInTime</a> </p> </li> </ul>
-- @param _Status [String] <p>The status of the DB security group.</p>
-- @param _DBSecurityGroupName [String] <p>The name of the DB security group.</p>
function M.DBSecurityGroupMembership(_Status, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertDBSecurityGroupMembership(t)
	return t
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
function M.DBParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertDBParameterGroupNotFoundFault(t)
	return t
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
-- @param _FinalDBSnapshotIdentifier [String] <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p> <note> <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to true results in an error. </p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _SkipFinalSnapshot [Boolean] <p> Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is deleted. </p> <note> <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- @param _DBClusterIdentifier [String] <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBClusterIdentifier
function M.DeleteDBClusterMessage(_FinalDBSnapshotIdentifier, _SkipFinalSnapshot, _DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterMessage")
	local t = { 
		["FinalDBSnapshotIdentifier"] = _FinalDBSnapshotIdentifier,
		["SkipFinalSnapshot"] = _SkipFinalSnapshot,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
	}
	asserts.AssertDeleteDBClusterMessage(t)
	return t
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
-- @param _ValuesToAdd [AttributeValueList] <p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- @param _DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
-- @param _ValuesToRemove [AttributeValueList] <p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
-- @param _AttributeName [String] <p>The name of the DB cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to <code>restore</code>.</p>
-- Required parameter: DBClusterSnapshotIdentifier
-- Required parameter: AttributeName
function M.ModifyDBClusterSnapshotAttributeMessage(_ValuesToAdd, _DBClusterSnapshotIdentifier, _ValuesToRemove, _AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterSnapshotAttributeMessage")
	local t = { 
		["ValuesToAdd"] = _ValuesToAdd,
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
		["ValuesToRemove"] = _ValuesToRemove,
		["AttributeName"] = _AttributeName,
	}
	asserts.AssertModifyDBClusterSnapshotAttributeMessage(t)
	return t
end

keys.CreateOptionGroupMessage = { ["OptionGroupDescription"] = true, ["EngineName"] = true, ["MajorEngineVersion"] = true, ["OptionGroupName"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	assert(struct["MajorEngineVersion"], "Expected key MajorEngineVersion to exist in table")
	assert(struct["OptionGroupDescription"], "Expected key OptionGroupDescription to exist in table")
	if struct["OptionGroupDescription"] then asserts.AssertString(struct["OptionGroupDescription"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOptionGroupMessage[k], "CreateOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupMessage
-- <p/>
-- @param _OptionGroupDescription [String] <p>The description of the option group.</p>
-- @param _EngineName [String] <p>Specifies the name of the engine that this option group should be associated with.</p>
-- @param _MajorEngineVersion [String] <p>Specifies the major version of the engine that this option group should be associated with.</p>
-- @param _OptionGroupName [String] <p>Specifies the name of the option group to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>myoptiongroup</code> </p>
-- @param _Tags [TagList] 
-- Required parameter: OptionGroupName
-- Required parameter: EngineName
-- Required parameter: MajorEngineVersion
-- Required parameter: OptionGroupDescription
function M.CreateOptionGroupMessage(_OptionGroupDescription, _EngineName, _MajorEngineVersion, _OptionGroupName, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOptionGroupMessage")
	local t = { 
		["OptionGroupDescription"] = _OptionGroupDescription,
		["EngineName"] = _EngineName,
		["MajorEngineVersion"] = _MajorEngineVersion,
		["OptionGroupName"] = _OptionGroupName,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateOptionGroupMessage(t)
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
-- @param _SubscriptionName [String] <p>The name of the RDS event notification subscription you want to delete.</p>
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(_SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertDeleteEventSubscriptionMessage(t)
	return t
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
-- @param _DBSubnetGroup [DBSubnetGroup] 
function M.CreateDBSubnetGroupResult(_DBSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSubnetGroupResult")
	local t = { 
		["DBSubnetGroup"] = _DBSubnetGroup,
	}
	asserts.AssertCreateDBSubnetGroupResult(t)
	return t
end

keys.ReservedDBInstanceAlreadyExistsFault = { nil }

function asserts.AssertReservedDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceAlreadyExistsFault[k], "ReservedDBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceAlreadyExistsFault
-- <p>User already has a reservation with the given identifier.</p>
function M.ReservedDBInstanceAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertReservedDBInstanceAlreadyExistsFault(t)
	return t
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
-- @param _Engine [String] <p>The name of the engine to retrieve DB instance options for.</p>
-- @param _Vpc [BooleanOptional] <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.</p>
-- @param _LicenseModel [String] <p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _EngineVersion [String] <p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
-- Required parameter: Engine
function M.DescribeOrderableDBInstanceOptionsMessage(_Engine, _Vpc, _LicenseModel, _MaxRecords, _Filters, _EngineVersion, _Marker, _DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableDBInstanceOptionsMessage")
	local t = { 
		["Engine"] = _Engine,
		["Vpc"] = _Vpc,
		["LicenseModel"] = _LicenseModel,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["EngineVersion"] = _EngineVersion,
		["Marker"] = _Marker,
		["DBInstanceClass"] = _DBInstanceClass,
	}
	asserts.AssertDescribeOrderableDBInstanceOptionsMessage(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB cluster parameter group.</p> </li> <li> <p>You cannot delete a default DB cluster parameter group.</p> </li> <li> <p>Cannot be associated with any DB clusters.</p> </li> </ul>
-- Required parameter: DBClusterParameterGroupName
function M.DeleteDBClusterParameterGroupMessage(_DBClusterParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
	}
	asserts.AssertDeleteDBClusterParameterGroupMessage(t)
	return t
end

keys.StopDBInstanceMessage = { ["DBSnapshotIdentifier"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertStopDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDBInstanceMessage[k], "StopDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceMessage
--  
-- @param _DBSnapshotIdentifier [String] <p> The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped. </p>
-- @param _DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required parameter: DBInstanceIdentifier
function M.StopDBInstanceMessage(_DBSnapshotIdentifier, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDBInstanceMessage")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertStopDBInstanceMessage(t)
	return t
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
-- @param _DBClusterSnapshot [DBClusterSnapshot] 
function M.DeleteDBClusterSnapshotResult(_DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = _DBClusterSnapshot,
	}
	asserts.AssertDeleteDBClusterSnapshotResult(t)
	return t
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
-- @param _Engine [String] <p>The name of the upgrade target database engine.</p>
-- @param _IsMajorVersionUpgrade [Boolean] <p>A value that indicates whether a database engine will be upgraded to a major version.</p>
-- @param _AutoUpgrade [Boolean] <p>A value that indicates whether the target version will be applied to any source DB instances that have AutoMinorVersionUpgrade set to true.</p>
-- @param _Description [String] <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- @param _EngineVersion [String] <p>The version number of the upgrade target database engine.</p>
function M.UpgradeTarget(_Engine, _IsMajorVersionUpgrade, _AutoUpgrade, _Description, _EngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpgradeTarget")
	local t = { 
		["Engine"] = _Engine,
		["IsMajorVersionUpgrade"] = _IsMajorVersionUpgrade,
		["AutoUpgrade"] = _AutoUpgrade,
		["Description"] = _Description,
		["EngineVersion"] = _EngineVersion,
	}
	asserts.AssertUpgradeTarget(t)
	return t
end

keys.ModifyDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertModifyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotResult[k], "ModifyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotResult
--  
-- @param _DBSnapshot [DBSnapshot] 
function M.ModifyDBSnapshotResult(_DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = _DBSnapshot,
	}
	asserts.AssertModifyDBSnapshotResult(t)
	return t
end

keys.CreateDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, ["DBInstanceIdentifier"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSnapshotMessage[k], "CreateDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotMessage
-- <p/>
-- @param _DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier. This is the unique key that identifies a DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _Tags [TagList] 
-- Required parameter: DBSnapshotIdentifier
-- Required parameter: DBInstanceIdentifier
function M.CreateDBSnapshotMessage(_DBSnapshotIdentifier, _DBInstanceIdentifier, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateDBSnapshotMessage(t)
	return t
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
-- @param _DBInstance [DBInstance] 
function M.ModifyDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertModifyDBInstanceResult(t)
	return t
end

keys.RestoreDBClusterFromS3Message = { ["SourceEngine"] = true, ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["S3IngestionRoleArn"] = true, ["Engine"] = true, ["Tags"] = true, ["S3Prefix"] = true, ["PreferredBackupWindow"] = true, ["SourceEngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["S3BucketName"] = true, ["DBClusterParameterGroupName"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

function asserts.AssertRestoreDBClusterFromS3Message(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromS3Message to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	assert(struct["MasterUsername"], "Expected key MasterUsername to exist in table")
	assert(struct["MasterUserPassword"], "Expected key MasterUserPassword to exist in table")
	assert(struct["SourceEngine"], "Expected key SourceEngine to exist in table")
	assert(struct["SourceEngineVersion"], "Expected key SourceEngineVersion to exist in table")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	assert(struct["S3IngestionRoleArn"], "Expected key S3IngestionRoleArn to exist in table")
	if struct["SourceEngine"] then asserts.AssertString(struct["SourceEngine"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["S3IngestionRoleArn"] then asserts.AssertString(struct["S3IngestionRoleArn"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["S3Prefix"] then asserts.AssertString(struct["S3Prefix"]) end
	if struct["PreferredBackupWindow"] then asserts.AssertString(struct["PreferredBackupWindow"]) end
	if struct["SourceEngineVersion"] then asserts.AssertString(struct["SourceEngineVersion"]) end
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then asserts.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["DBClusterParameterGroupName"] then asserts.AssertString(struct["DBClusterParameterGroupName"]) end
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
		assert(keys.RestoreDBClusterFromS3Message[k], "RestoreDBClusterFromS3Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Message
--  
-- @param _SourceEngine [String] <p>The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket. </p> <p>Valid values: <code>mysql</code> </p>
-- @param _MasterUsername [String] <p>The name of the master user for the restored DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param _S3IngestionRoleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.</p>
-- @param _Engine [String] <p>The name of the database engine to be used for the restored DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- @param _Tags [TagList] 
-- @param _S3Prefix [String] <p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster. If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is created by using all of the files in the Amazon S3 bucket.</p>
-- @param _PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param _SourceEngineVersion [String] <p>The version of the database that the backup files were created from.</p> <p>MySQL version 5.5 and 5.6 are supported. </p> <p>Example: <code>5.6.22</code> </p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _S3BucketName [String] <p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to associate with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- @param _DBSubnetGroupName [String] <p>A DB subnet group to associate with the restored DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _OptionGroupName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. An option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- @param _CharacterSetName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>
-- @param _DBClusterIdentifier [String] <p>The name of the DB cluster to create from the source data in the S3 bucket. This parameter is isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param _MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param _KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _StorageEncrypted [BooleanOptional] <p>Specifies whether the restored DB cluster is encrypted.</p>
-- @param _DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- @param _AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- @param _Port [IntegerOptional] <p>The port number on which the instances in the restored DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: Engine
-- Required parameter: MasterUsername
-- Required parameter: MasterUserPassword
-- Required parameter: SourceEngine
-- Required parameter: SourceEngineVersion
-- Required parameter: S3BucketName
-- Required parameter: S3IngestionRoleArn
function M.RestoreDBClusterFromS3Message(_SourceEngine, _MasterUsername, _VpcSecurityGroupIds, _EnableIAMDatabaseAuthentication, _S3IngestionRoleArn, _Engine, _Tags, _S3Prefix, _PreferredBackupWindow, _SourceEngineVersion, _BackupRetentionPeriod, _PreferredMaintenanceWindow, _S3BucketName, _DBClusterParameterGroupName, _EngineVersion, _DBSubnetGroupName, _OptionGroupName, _CharacterSetName, _DBClusterIdentifier, _MasterUserPassword, _KmsKeyId, _StorageEncrypted, _DatabaseName, _AvailabilityZones, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromS3Message")
	local t = { 
		["SourceEngine"] = _SourceEngine,
		["MasterUsername"] = _MasterUsername,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["S3IngestionRoleArn"] = _S3IngestionRoleArn,
		["Engine"] = _Engine,
		["Tags"] = _Tags,
		["S3Prefix"] = _S3Prefix,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["SourceEngineVersion"] = _SourceEngineVersion,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["S3BucketName"] = _S3BucketName,
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["EngineVersion"] = _EngineVersion,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["OptionGroupName"] = _OptionGroupName,
		["CharacterSetName"] = _CharacterSetName,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["MasterUserPassword"] = _MasterUserPassword,
		["KmsKeyId"] = _KmsKeyId,
		["StorageEncrypted"] = _StorageEncrypted,
		["DatabaseName"] = _DatabaseName,
		["AvailabilityZones"] = _AvailabilityZones,
		["Port"] = _Port,
	}
	asserts.AssertRestoreDBClusterFromS3Message(t)
	return t
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
function M.DBClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterNotFoundFault")
	local t = { 
	}
	asserts.AssertDBClusterNotFoundFault(t)
	return t
end

keys.PointInTimeRestoreNotEnabledFault = { nil }

function asserts.AssertPointInTimeRestoreNotEnabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PointInTimeRestoreNotEnabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PointInTimeRestoreNotEnabledFault[k], "PointInTimeRestoreNotEnabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PointInTimeRestoreNotEnabledFault
-- <p> <i>SourceDBInstanceIdentifier</i> refers to a DB instance with <i>BackupRetentionPeriod</i> equal to 0. </p>
function M.PointInTimeRestoreNotEnabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PointInTimeRestoreNotEnabledFault")
	local t = { 
	}
	asserts.AssertPointInTimeRestoreNotEnabledFault(t)
	return t
end

keys.DescribeAccountAttributesMessage = { nil }

function asserts.AssertDescribeAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesMessage to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountAttributesMessage[k], "DescribeAccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesMessage
-- <p/>
function M.DescribeAccountAttributesMessage(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesMessage")
	local t = { 
	}
	asserts.AssertDescribeAccountAttributesMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _Source [String] <p>The parameter types to return.</p> <p>Default: All parameter types returned</p> <p>Valid Values: <code>user | system | engine-default</code> </p>
-- Required parameter: DBParameterGroupName
function M.DescribeDBParametersMessage(_Marker, _DBParameterGroupName, _MaxRecords, _Filters, _Source, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBParametersMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroupName"] = _DBParameterGroupName,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["Source"] = _Source,
	}
	asserts.AssertDescribeDBParametersMessage(t)
	return t
end

keys.InvalidDBSubnetGroupFault = { nil }

function asserts.AssertInvalidDBSubnetGroupFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidDBSubnetGroupFault[k], "InvalidDBSubnetGroupFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupFault
-- <p>Indicates the DBSubnetGroup does not belong to the same VPC as that of an existing cross region read replica of the same source instance.</p>
function M.InvalidDBSubnetGroupFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetGroupFault")
	local t = { 
	}
	asserts.AssertInvalidDBSubnetGroupFault(t)
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBClusterParameterGroups [DBClusterParameterGroupList] <p>A list of DB cluster parameter groups.</p>
function M.DBClusterParameterGroupsMessage(_Marker, _DBClusterParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBClusterParameterGroups"] = _DBClusterParameterGroups,
	}
	asserts.AssertDBClusterParameterGroupsMessage(t)
	return t
end

keys.CreateDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertCreateDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSnapshotResult[k], "CreateDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotResult
--  
-- @param _DBSnapshot [DBSnapshot] 
function M.CreateDBSnapshotResult(_DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = _DBSnapshot,
	}
	asserts.AssertCreateDBSnapshotResult(t)
	return t
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
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>You cannot delete a default DB parameter group</p> </li> <li> <p>Cannot be associated with any DB instances</p> </li> </ul>
-- Required parameter: DBParameterGroupName
function M.DeleteDBParameterGroupMessage(_DBParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
	}
	asserts.AssertDeleteDBParameterGroupMessage(t)
	return t
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
function M.DBUpgradeDependencyFailureFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBUpgradeDependencyFailureFault")
	local t = { 
	}
	asserts.AssertDBUpgradeDependencyFailureFault(t)
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
-- <p>DB security group authorization quota has been reached.</p>
function M.AuthorizationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationQuotaExceededFault")
	local t = { 
	}
	asserts.AssertAuthorizationQuotaExceededFault(t)
	return t
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
function M.InvalidDBClusterSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBClusterSnapshotStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBClusterSnapshotStateFault(t)
	return t
end

keys.DescribeReservedDBInstancesMessage = { ["MultiAZ"] = true, ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["Marker"] = true, ["Duration"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["ReservedDBInstanceId"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeReservedDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesMessage to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedDBInstancesMessage[k], "DescribeReservedDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesMessage
-- <p/>
-- @param _MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only those reservations matching the specified Multi-AZ parameter.</p>
-- @param _OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- @param _ProductDescription [String] <p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>
-- @param _ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Duration [String] <p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _ReservedDBInstanceId [String] <p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>
-- @param _DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>
function M.DescribeReservedDBInstancesMessage(_MultiAZ, _OfferingType, _ProductDescription, _ReservedDBInstancesOfferingId, _Marker, _Duration, _MaxRecords, _Filters, _ReservedDBInstanceId, _DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedDBInstancesMessage")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["OfferingType"] = _OfferingType,
		["ProductDescription"] = _ProductDescription,
		["ReservedDBInstancesOfferingId"] = _ReservedDBInstancesOfferingId,
		["Marker"] = _Marker,
		["Duration"] = _Duration,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["ReservedDBInstanceId"] = _ReservedDBInstanceId,
		["DBInstanceClass"] = _DBInstanceClass,
	}
	asserts.AssertDescribeReservedDBInstancesMessage(t)
	return t
end

keys.CreateDBInstanceReadReplicaResult = { ["DBInstance"] = true, nil }

function asserts.AssertCreateDBInstanceReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceReadReplicaResult[k], "CreateDBInstanceReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaResult
--  
-- @param _DBInstance [DBInstance] 
function M.CreateDBInstanceReadReplicaResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceReadReplicaResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertCreateDBInstanceReadReplicaResult(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p>A list of event categories that trigger notifications for a event notification subscription.</p>
-- @param _SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _StartTime [TStamp] <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
-- @param _Duration [IntegerOptional] <p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _SourceIdentifier [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIdentifier is supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is <code>DBInstance</code>, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBParameterGroup</code>, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _EndTime [TStamp] <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
function M.DescribeEventsMessage(_EventCategories, _SourceType, _Marker, _MaxRecords, _StartTime, _Duration, _Filters, _SourceIdentifier, _EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsMessage")
	local t = { 
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["StartTime"] = _StartTime,
		["Duration"] = _Duration,
		["Filters"] = _Filters,
		["SourceIdentifier"] = _SourceIdentifier,
		["EndTime"] = _EndTime,
	}
	asserts.AssertDescribeEventsMessage(t)
	return t
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
function M.StorageQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageQuotaExceededFault")
	local t = { 
	}
	asserts.AssertStorageQuotaExceededFault(t)
	return t
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
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBCluster</a> </p> </li> <li> <p> <a>DeleteDBCluster</a> </p> </li> <li> <p> <a>FailoverDBCluster</a> </p> </li> <li> <p> <a>ModifyDBCluster</a> </p> </li> <li> <p> <a>RestoreDBClusterFromSnapshot</a> </p> </li> <li> <p> <a>RestoreDBClusterToPointInTime</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
-- @param _MasterUsername [String] <p>Contains the master username for the DB cluster.</p>
-- @param _ReaderEndpoint [String] <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p> <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection will be dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.</p>
-- @param _ReadReplicaIdentifiers [ReadReplicaIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB cluster.</p>
-- @param _CloneGroupId [String] <p>Identifies the clone group to which the DB cluster is associated.</p>
-- @param _VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
-- @param _IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param _HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- @param _Status [String] <p>Specifies the current state of this DB cluster.</p>
-- @param _MultiAZ [Boolean] <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
-- @param _LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- @param _PreferredBackupWindow [String] <p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- @param _DBSubnetGroup [String] <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
-- @param _AllocatedStorage [IntegerOptional] <p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gigabytes (GB). For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size is not fixed, but instead automatically adjusts as needed.</p>
-- @param _DBClusterOptionGroupMemberships [DBClusterOptionGroupMemberships] <p>Provides the list of option group memberships for this DB cluster.</p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- @param _PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- @param _Engine [String] <p>Provides the name of the database engine to be used for this DB cluster.</p>
-- @param _Endpoint [String] <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
-- @param _AssociatedRoles [DBClusterRoles] <p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.</p>
-- @param _EarliestRestorableTime [TStamp] <p>Specifies the earliest time to which a database can be restored with point-in-time restore.</p>
-- @param _PercentProgress [String] <p>Specifies the progress of the operation as a percentage.</p>
-- @param _ReplicationSourceIdentifier [String] <p>Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.</p>
-- @param _ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- @param _EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param _CharacterSetName [String] <p>If present, specifies the name of the character set that this cluster is associated with.</p>
-- @param _DBClusterIdentifier [String] <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
-- @param _DbClusterResourceId [String] <p>The region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB cluster is accessed.</p>
-- @param _DBClusterMembers [DBClusterMemberList] <p>Provides the list of instances that make up the DB cluster.</p>
-- @param _DBClusterArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
-- @param _KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster.</p>
-- @param _StorageEncrypted [Boolean] <p>Specifies whether the DB cluster is encrypted.</p>
-- @param _DatabaseName [String] <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
-- @param _DBClusterParameterGroup [String] <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
-- @param _AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.</p>
-- @param _Port [IntegerOptional] <p>Specifies the port that the database engine is listening on.</p>
function M.DBCluster(_MasterUsername, _ReaderEndpoint, _ReadReplicaIdentifiers, _CloneGroupId, _VpcSecurityGroups, _IAMDatabaseAuthenticationEnabled, _HostedZoneId, _Status, _MultiAZ, _LatestRestorableTime, _PreferredBackupWindow, _DBSubnetGroup, _AllocatedStorage, _DBClusterOptionGroupMemberships, _BackupRetentionPeriod, _PreferredMaintenanceWindow, _Engine, _Endpoint, _AssociatedRoles, _EarliestRestorableTime, _PercentProgress, _ReplicationSourceIdentifier, _ClusterCreateTime, _EngineVersion, _CharacterSetName, _DBClusterIdentifier, _DbClusterResourceId, _DBClusterMembers, _DBClusterArn, _KmsKeyId, _StorageEncrypted, _DatabaseName, _DBClusterParameterGroup, _AvailabilityZones, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBCluster")
	local t = { 
		["MasterUsername"] = _MasterUsername,
		["ReaderEndpoint"] = _ReaderEndpoint,
		["ReadReplicaIdentifiers"] = _ReadReplicaIdentifiers,
		["CloneGroupId"] = _CloneGroupId,
		["VpcSecurityGroups"] = _VpcSecurityGroups,
		["IAMDatabaseAuthenticationEnabled"] = _IAMDatabaseAuthenticationEnabled,
		["HostedZoneId"] = _HostedZoneId,
		["Status"] = _Status,
		["MultiAZ"] = _MultiAZ,
		["LatestRestorableTime"] = _LatestRestorableTime,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["DBSubnetGroup"] = _DBSubnetGroup,
		["AllocatedStorage"] = _AllocatedStorage,
		["DBClusterOptionGroupMemberships"] = _DBClusterOptionGroupMemberships,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["Engine"] = _Engine,
		["Endpoint"] = _Endpoint,
		["AssociatedRoles"] = _AssociatedRoles,
		["EarliestRestorableTime"] = _EarliestRestorableTime,
		["PercentProgress"] = _PercentProgress,
		["ReplicationSourceIdentifier"] = _ReplicationSourceIdentifier,
		["ClusterCreateTime"] = _ClusterCreateTime,
		["EngineVersion"] = _EngineVersion,
		["CharacterSetName"] = _CharacterSetName,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["DbClusterResourceId"] = _DbClusterResourceId,
		["DBClusterMembers"] = _DBClusterMembers,
		["DBClusterArn"] = _DBClusterArn,
		["KmsKeyId"] = _KmsKeyId,
		["StorageEncrypted"] = _StorageEncrypted,
		["DatabaseName"] = _DatabaseName,
		["DBClusterParameterGroup"] = _DBClusterParameterGroup,
		["AvailabilityZones"] = _AvailabilityZones,
		["Port"] = _Port,
	}
	asserts.AssertDBCluster(t)
	return t
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
function M.DBSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBSnapshotAlreadyExistsFault(t)
	return t
end

keys.DBSnapshotAttribute = { ["AttributeName"] = true, ["AttributeValues"] = true, nil }

function asserts.AssertDBSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then asserts.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then asserts.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAttribute[k], "DBSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttribute
-- <p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- @param _AttributeName [String] <p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param _AttributeValues [AttributeValueList] <p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any AWS account to copy or restore.</p>
function M.DBSnapshotAttribute(_AttributeName, _AttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAttribute")
	local t = { 
		["AttributeName"] = _AttributeName,
		["AttributeValues"] = _AttributeValues,
	}
	asserts.AssertDBSnapshotAttribute(t)
	return t
end

keys.DescribeDBSnapshotAttributesMessage = { ["DBSnapshotIdentifier"] = true, nil }

function asserts.AssertDescribeDBSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotAttributesMessage[k], "DescribeDBSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesMessage
-- <p/>
-- @param _DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to describe the attributes for.</p>
-- Required parameter: DBSnapshotIdentifier
function M.DescribeDBSnapshotAttributesMessage(_DBSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotAttributesMessage")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
	}
	asserts.AssertDescribeDBSnapshotAttributesMessage(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p>Specifies the category for the event.</p>
-- @param _SourceType [SourceType] <p>Specifies the source type for this event.</p>
-- @param _SourceArn [String] <p>The Amazon Resource Name (ARN) for the event.</p>
-- @param _Date [TStamp] <p>Specifies the date and time of the event.</p>
-- @param _Message [String] <p>Provides the text of this event.</p>
-- @param _SourceIdentifier [String] <p>Provides the identifier for the source of the event.</p>
function M.Event(_EventCategories, _SourceType, _SourceArn, _Date, _Message, _SourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
		["SourceArn"] = _SourceArn,
		["Date"] = _Date,
		["Message"] = _Message,
		["SourceIdentifier"] = _SourceIdentifier,
	}
	asserts.AssertEvent(t)
	return t
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
-- @param _DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>
-- Required parameter: DBClusterSnapshotIdentifier
function M.DeleteDBClusterSnapshotMessage(_DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterSnapshotMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
	}
	asserts.AssertDeleteDBClusterSnapshotMessage(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.RestoreDBClusterToPointInTimeResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterToPointInTimeResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertRestoreDBClusterToPointInTimeResult(t)
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
-- <p>The requested source could not be found.</p>
function M.SourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceNotFoundFault")
	local t = { 
	}
	asserts.AssertSourceNotFoundFault(t)
	return t
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
-- @param _IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param _DBClusterIdentifier [String] <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter cannot be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>. The default is false.</p> <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Marker [String] <p>An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBClusterSnapshotIdentifier [String] <p>A specific DB cluster snapshot identifier to describe. This parameter cannot be used in conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _SnapshotType [String] <p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public DB cluster snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
function M.DescribeDBClusterSnapshotsMessage(_IncludeShared, _DBClusterIdentifier, _IncludePublic, _MaxRecords, _Marker, _DBClusterSnapshotIdentifier, _Filters, _SnapshotType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotsMessage")
	local t = { 
		["IncludeShared"] = _IncludeShared,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["IncludePublic"] = _IncludePublic,
		["MaxRecords"] = _MaxRecords,
		["Marker"] = _Marker,
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
		["Filters"] = _Filters,
		["SnapshotType"] = _SnapshotType,
	}
	asserts.AssertDescribeDBClusterSnapshotsMessage(t)
	return t
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
-- @param _ApplyMethod [ApplyMethod] <p>Indicates when to apply parameter updates.</p>
-- @param _Description [String] <p>Provides a description of the parameter.</p>
-- @param _DataType [String] <p>Specifies the valid data type for the parameter.</p>
-- @param _IsModifiable [Boolean] <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- @param _AllowedValues [String] <p>Specifies the valid range of values for the parameter.</p>
-- @param _Source [String] <p>Indicates the source of the parameter value.</p>
-- @param _ParameterValue [String] <p>Specifies the value of the parameter.</p>
-- @param _ParameterName [String] <p>Specifies the name of the parameter.</p>
-- @param _MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- @param _ApplyType [String] <p>Specifies the engine specific parameters type.</p>
function M.Parameter(_ApplyMethod, _Description, _DataType, _IsModifiable, _AllowedValues, _Source, _ParameterValue, _ParameterName, _MinimumEngineVersion, _ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["ApplyMethod"] = _ApplyMethod,
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
-- @param _DBSubnetGroup [DBSubnetGroup] 
function M.ModifyDBSubnetGroupResult(_DBSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSubnetGroupResult")
	local t = { 
		["DBSubnetGroup"] = _DBSubnetGroup,
	}
	asserts.AssertModifyDBSubnetGroupResult(t)
	return t
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
-- @param _CharacterSetName [String] <p>The name of the character set.</p>
-- @param _CharacterSetDescription [String] <p>The description of the character set.</p>
function M.CharacterSet(_CharacterSetName, _CharacterSetDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CharacterSet")
	local t = { 
		["CharacterSetName"] = _CharacterSetName,
		["CharacterSetDescription"] = _CharacterSetDescription,
	}
	asserts.AssertCharacterSet(t)
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
-- <p>Data returned from the <b>DescribeEventCategories</b> action.</p>
-- @param _EventCategoriesMapList [EventCategoriesMapList] <p>A list of EventCategoriesMap data types.</p>
function M.EventCategoriesMessage(_EventCategoriesMapList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMessage")
	local t = { 
		["EventCategoriesMapList"] = _EventCategoriesMapList,
	}
	asserts.AssertEventCategoriesMessage(t)
	return t
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
-- @param _DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
function M.DescribeDBClusterSnapshotAttributesResult(_DBClusterSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotAttributesResult")
	local t = { 
		["DBClusterSnapshotAttributesResult"] = _DBClusterSnapshotAttributesResult,
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesResult(t)
	return t
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
function M.DBInstanceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceNotFoundFault")
	local t = { 
	}
	asserts.AssertDBInstanceNotFoundFault(t)
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
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>DescribeReservedDBInstancesOfferings</a> actions. </p>
-- @param _RecurringChargeAmount [Double] <p>The amount of the recurring charge.</p>
-- @param _RecurringChargeFrequency [String] <p>The frequency of the recurring charge.</p>
function M.RecurringCharge(_RecurringChargeAmount, _RecurringChargeFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["RecurringChargeAmount"] = _RecurringChargeAmount,
		["RecurringChargeFrequency"] = _RecurringChargeFrequency,
	}
	asserts.AssertRecurringCharge(t)
	return t
end

keys.AccountAttributesMessage = { ["AccountQuotas"] = true, nil }

function asserts.AssertAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAttributesMessage to be of type 'table'")
	if struct["AccountQuotas"] then asserts.AssertAccountQuotaList(struct["AccountQuotas"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountAttributesMessage[k], "AccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAttributesMessage
-- <p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>
-- @param _AccountQuotas [AccountQuotaList] <p>A list of <a>AccountQuota</a> objects. Within this list, each quota has a name, a count of usage toward the quota maximum, and a maximum value for the quota.</p>
function M.AccountAttributesMessage(_AccountQuotas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountAttributesMessage")
	local t = { 
		["AccountQuotas"] = _AccountQuotas,
	}
	asserts.AssertAccountAttributesMessage(t)
	return t
end

keys.RestoreDBInstanceFromDBSnapshotMessage = { ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["LicenseModel"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["DBSnapshotIdentifier"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["TdeCredentialPassword"] = true, ["TdeCredentialArn"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertRestoreDBInstanceFromDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceFromDBSnapshotMessage[k], "RestoreDBInstanceFromDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotMessage
-- <p/>
-- @param _PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param _DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param _LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param _CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param _Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source. You can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- @param _MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- @param _Tags [TagList] 
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- @param _DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p>
-- @param _DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.</p> </note>
-- @param _TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param _OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param _Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- @param _AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p> <p>Example: <code>us-east-1a</code> </p>
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param _Iops [IntegerOptional] <p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter is not specified, the IOPS value will be taken from the backup. If this parameter is set to 0, the new instance will be converted to a non-PIOPS instance, which will take additional time, though your DB instance will be available for connections before the conversion starts.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- @param _DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param _Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Default: The same port as the original DB instance</p> <p>Constraints: Value must be <code>1150-65535</code> </p>
-- @param _DBInstanceIdentifier [String] <p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server)</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: DBSnapshotIdentifier
function M.RestoreDBInstanceFromDBSnapshotMessage(_PubliclyAccessible, _DomainIAMRoleName, _LicenseModel, _EnableIAMDatabaseAuthentication, _CopyTagsToSnapshot, _Engine, _MultiAZ, _Tags, _AutoMinorVersionUpgrade, _DBSnapshotIdentifier, _DBSubnetGroupName, _DBName, _TdeCredentialPassword, _TdeCredentialArn, _OptionGroupName, _Domain, _AvailabilityZone, _StorageType, _Iops, _DBInstanceClass, _Port, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceFromDBSnapshotMessage")
	local t = { 
		["PubliclyAccessible"] = _PubliclyAccessible,
		["DomainIAMRoleName"] = _DomainIAMRoleName,
		["LicenseModel"] = _LicenseModel,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["Engine"] = _Engine,
		["MultiAZ"] = _MultiAZ,
		["Tags"] = _Tags,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["DBName"] = _DBName,
		["TdeCredentialPassword"] = _TdeCredentialPassword,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["OptionGroupName"] = _OptionGroupName,
		["Domain"] = _Domain,
		["AvailabilityZone"] = _AvailabilityZone,
		["StorageType"] = _StorageType,
		["Iops"] = _Iops,
		["DBInstanceClass"] = _DBInstanceClass,
		["Port"] = _Port,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertRestoreDBInstanceFromDBSnapshotMessage(t)
	return t
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
function M.InvalidDBClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBClusterStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBClusterStateFault(t)
	return t
end

keys.DBEngineVersion = { ["Engine"] = true, ["DBParameterGroupFamily"] = true, ["SupportedCharacterSets"] = true, ["DefaultCharacterSet"] = true, ["SupportedTimezones"] = true, ["DBEngineDescription"] = true, ["EngineVersion"] = true, ["DBEngineVersionDescription"] = true, ["ValidUpgradeTarget"] = true, nil }

function asserts.AssertDBEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersion to be of type 'table'")
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then asserts.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["SupportedCharacterSets"] then asserts.AssertSupportedCharacterSetsList(struct["SupportedCharacterSets"]) end
	if struct["DefaultCharacterSet"] then asserts.AssertCharacterSet(struct["DefaultCharacterSet"]) end
	if struct["SupportedTimezones"] then asserts.AssertSupportedTimezonesList(struct["SupportedTimezones"]) end
	if struct["DBEngineDescription"] then asserts.AssertString(struct["DBEngineDescription"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["DBEngineVersionDescription"] then asserts.AssertString(struct["DBEngineVersionDescription"]) end
	if struct["ValidUpgradeTarget"] then asserts.AssertValidUpgradeTargetList(struct["ValidUpgradeTarget"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBEngineVersion[k], "DBEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersion
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param _Engine [String] <p>The name of the database engine.</p>
-- @param _DBParameterGroupFamily [String] <p>The name of the DB parameter group family for the database engine.</p>
-- @param _SupportedCharacterSets [SupportedCharacterSetsList] <p> A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- @param _DefaultCharacterSet [CharacterSet] <p> The default character set for new instances of this engine version, if the <code>CharacterSetName</code> parameter of the CreateDBInstance API is not specified. </p>
-- @param _SupportedTimezones [SupportedTimezonesList] <p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- @param _DBEngineDescription [String] <p>The description of the database engine.</p>
-- @param _EngineVersion [String] <p>The version number of the database engine.</p>
-- @param _DBEngineVersionDescription [String] <p>The description of the database engine version.</p>
-- @param _ValidUpgradeTarget [ValidUpgradeTargetList] <p>A list of engine versions that this database engine version can be upgraded to.</p>
function M.DBEngineVersion(_Engine, _DBParameterGroupFamily, _SupportedCharacterSets, _DefaultCharacterSet, _SupportedTimezones, _DBEngineDescription, _EngineVersion, _DBEngineVersionDescription, _ValidUpgradeTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBEngineVersion")
	local t = { 
		["Engine"] = _Engine,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["SupportedCharacterSets"] = _SupportedCharacterSets,
		["DefaultCharacterSet"] = _DefaultCharacterSet,
		["SupportedTimezones"] = _SupportedTimezones,
		["DBEngineDescription"] = _DBEngineDescription,
		["EngineVersion"] = _EngineVersion,
		["DBEngineVersionDescription"] = _DBEngineVersionDescription,
		["ValidUpgradeTarget"] = _ValidUpgradeTarget,
	}
	asserts.AssertDBEngineVersion(t)
	return t
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
function M.DBSubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBSubnetQuotaExceededFault(t)
	return t
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
-- @param _SourceIdentifier [String] <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security group. </p>
-- @param _SubscriptionName [String] <p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>
-- Required parameter: SubscriptionName
-- Required parameter: SourceIdentifier
function M.RemoveSourceIdentifierFromSubscriptionMessage(_SourceIdentifier, _SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveSourceIdentifierFromSubscriptionMessage")
	local t = { 
		["SourceIdentifier"] = _SourceIdentifier,
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionMessage(t)
	return t
end

keys.DescribeDBSnapshotsMessage = { ["IncludeShared"] = true, ["IncludePublic"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["DBSnapshotIdentifier"] = true, ["Filters"] = true, ["SnapshotType"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then asserts.AssertBoolean(struct["IncludeShared"]) end
	if struct["IncludePublic"] then asserts.AssertBoolean(struct["IncludePublic"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotsMessage[k], "DescribeDBSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotsMessage
-- <p/>
-- @param _IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param _IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _DBSnapshotIdentifier [String] <p> A specific DB snapshot identifier to describe. This parameter cannot be used in conjunction with <code>DBInstanceIdentifier</code>. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _SnapshotType [String] <p>The type of snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
-- @param _DBInstanceIdentifier [String] <p>The ID of the DB instance to retrieve the list of DB snapshots for. This parameter cannot be used in conjunction with <code>DBSnapshotIdentifier</code>. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBSnapshotsMessage(_IncludeShared, _IncludePublic, _Marker, _MaxRecords, _DBSnapshotIdentifier, _Filters, _SnapshotType, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotsMessage")
	local t = { 
		["IncludeShared"] = _IncludeShared,
		["IncludePublic"] = _IncludePublic,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["Filters"] = _Filters,
		["SnapshotType"] = _SnapshotType,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDescribeDBSnapshotsMessage(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.ModifyDBClusterResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertModifyDBClusterResult(t)
	return t
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
-- @param _DBClusterSnapshot [DBClusterSnapshot] 
function M.CreateDBClusterSnapshotResult(_DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = _DBClusterSnapshot,
	}
	asserts.AssertCreateDBClusterSnapshotResult(t)
	return t
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
-- @param _DBSubnetGroupName [String] <p>The name of the database subnet group to delete.</p> <note> <p>You cannot delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required parameter: DBSubnetGroupName
function M.DeleteDBSubnetGroupMessage(_DBSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = _DBSubnetGroupName,
	}
	asserts.AssertDeleteDBSubnetGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _SubscriptionName [String] <p>The name of the RDS event notification subscription you want to describe.</p>
function M.DescribeEventSubscriptionsMessage(_Marker, _MaxRecords, _Filters, _SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["SubscriptionName"] = _SubscriptionName,
	}
	asserts.AssertDescribeEventSubscriptionsMessage(t)
	return t
end

keys.OptionVersion = { ["Version"] = true, ["IsDefault"] = true, nil }

function asserts.AssertOptionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionVersion to be of type 'table'")
	if struct["Version"] then asserts.AssertString(struct["Version"]) end
	if struct["IsDefault"] then asserts.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionVersion[k], "OptionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionVersion
-- <p>The version for an option. Option group option versions are returned by the <a>DescribeOptionGroupOptions</a> action.</p>
-- @param _Version [String] <p>The version of the option.</p>
-- @param _IsDefault [Boolean] <p>True if the version is the default version of the option; otherwise, false.</p>
function M.OptionVersion(_Version, _IsDefault, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionVersion")
	local t = { 
		["Version"] = _Version,
		["IsDefault"] = _IsDefault,
	}
	asserts.AssertOptionVersion(t)
	return t
end

keys.RestoreDBInstanceToPointInTimeResult = { ["DBInstance"] = true, nil }

function asserts.AssertRestoreDBInstanceToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceToPointInTimeResult[k], "RestoreDBInstanceToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeResult
--  
-- @param _DBInstance [DBInstance] 
function M.RestoreDBInstanceToPointInTimeResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceToPointInTimeResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertRestoreDBInstanceToPointInTimeResult(t)
	return t
end

keys.CreateDBInstanceReadReplicaMessage = { ["SourceRegion"] = true, ["AvailabilityZone"] = true, ["DBSubnetGroupName"] = true, ["MonitoringRoleArn"] = true, ["PubliclyAccessible"] = true, ["Tags"] = true, ["StorageType"] = true, ["PreSignedUrl"] = true, ["AutoMinorVersionUpgrade"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["KmsKeyId"] = true, ["Iops"] = true, ["OptionGroupName"] = true, ["MonitoringInterval"] = true, ["CopyTagsToSnapshot"] = true, ["DBInstanceClass"] = true, ["SourceDBInstanceIdentifier"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertCreateDBInstanceReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MonitoringRoleArn"] then asserts.AssertString(struct["MonitoringRoleArn"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["PreSignedUrl"] then asserts.AssertString(struct["PreSignedUrl"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["SourceDBInstanceIdentifier"] then asserts.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBInstanceReadReplicaMessage[k], "CreateDBInstanceReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaMessage
--  
-- @param _SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- @param _AvailabilityZone [String] <p>The Amazon EC2 Availability Zone that the Read Replica will be created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p>
-- @param _DBSubnetGroupName [String] <p>Specifies a DB subnet group for the DB instance. The new DB instance will be created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance is not created in a VPC.</p> <p>Constraints:</p> <ul> <li> <p>Can only be specified if the source DB instance identifier specifies a DB instance in another region.</p> </li> <li> <p>The specified DB subnet group must be in the same region in which the operation is running.</p> </li> <li> <p>All Read Replicas in one region that are created from the same source DB instance must either:&gt;</p> <ul> <li> <p>Specify DB subnet groups from the same VPC. All these Read Replicas will be created in the same VPC.</p> </li> <li> <p>Not specify a DB subnet group. All these Read Replicas will be created outside of any VPC.</p> </li> </ul> </li> </ul> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param _PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param _Tags [TagList] 
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the Read Replica.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param _PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code> CreateDBInstanceReadReplica</code> API action in the AWS region that contains the source DB instance. The <code>PreSignedUrl</code> parameter must be used when encrypting a Read Replica from another AWS region.</p> <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action that can be executed in the source region that contains the encrypted DB instance. The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the Read Replica is created in. This region is the same one where the <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL. </p> <p> For example, if you create an encrypted Read Replica in the us-east-1 region, and the source DB instance is in the west-2 region, then you call the <code>CreateDBInstanceReadReplica</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CreateDBInstanceReadReplica</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region.</p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the Read Replica in the destination region. This is the same identifier for both the <code>CreateDBInstanceReadReplica</code> action that is called in the destination region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted Read Replica to be created. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you create an encrypted Read Replica from a DB instance in the us-west-2 region, then your <code>SourceDBInstanceIdentifier</code> would look like this example: <code> arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the Read Replica during the maintenance window.</p> <p>Default: Inherits from the source DB instance</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param _KmsKeyId [String] <p>The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you create an unencrypted Read Replica and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target Read Replica using the specified KMS encryption key. </p> <p>If you create an encrypted Read Replica from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the Read Replica with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the Read Replica is encrypted with the same KMS key as the source DB instance. </p> <p> If you create an encrypted Read Replica in a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- @param _Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
-- @param _OptionGroupName [String] <p>The option group the DB instance will be associated with. If omitted, the default option group for the engine specified will be used.</p>
-- @param _MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the Read Replica. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param _CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the Read Replica to snapshots of the Read Replica; otherwise false. The default is false.</p>
-- @param _DBInstanceClass [String] <p>The compute and memory capacity of the Read Replica. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: Inherits from the source DB instance.</p>
-- @param _SourceDBInstanceIdentifier [String] <p>The identifier of the DB instance that will act as the source for the Read Replica. Each DB instance can have up to five Read Replicas.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL DB instance.</p> </li> <li> <p>Can specify a DB instance that is a MySQL Read Replica only if the source is running MySQL 5.6.</p> </li> <li> <p>Can specify a DB instance that is a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or later.</p> </li> <li> <p>The specified DB instance must have automatic backups enabled, its backup retention period must be greater than 0.</p> </li> <li> <p>If the source DB instance is in the same region as the Read Replica, specify a valid DB instance identifier.</p> </li> <li> <p>If the source DB instance is in a different region than the Read Replica, specify a valid DB instance ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing a Amazon RDS Amazon Resource Name (ARN)</a>.</p> </li> </ul>
-- @param _Port [IntegerOptional] <p>The port number that the DB instance uses for connections.</p> <p>Default: Inherits from the source DB instance</p> <p>Valid Values: <code>1150-65535</code> </p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier of the Read Replica. This identifier is the unique key that identifies a DB instance. This parameter is stored as a lowercase string.</p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: SourceDBInstanceIdentifier
function M.CreateDBInstanceReadReplicaMessage(_SourceRegion, _AvailabilityZone, _DBSubnetGroupName, _MonitoringRoleArn, _PubliclyAccessible, _Tags, _StorageType, _PreSignedUrl, _AutoMinorVersionUpgrade, _EnableIAMDatabaseAuthentication, _KmsKeyId, _Iops, _OptionGroupName, _MonitoringInterval, _CopyTagsToSnapshot, _DBInstanceClass, _SourceDBInstanceIdentifier, _Port, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceReadReplicaMessage")
	local t = { 
		["SourceRegion"] = _SourceRegion,
		["AvailabilityZone"] = _AvailabilityZone,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["MonitoringRoleArn"] = _MonitoringRoleArn,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["Tags"] = _Tags,
		["StorageType"] = _StorageType,
		["PreSignedUrl"] = _PreSignedUrl,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = _KmsKeyId,
		["Iops"] = _Iops,
		["OptionGroupName"] = _OptionGroupName,
		["MonitoringInterval"] = _MonitoringInterval,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["DBInstanceClass"] = _DBInstanceClass,
		["SourceDBInstanceIdentifier"] = _SourceDBInstanceIdentifier,
		["Port"] = _Port,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertCreateDBInstanceReadReplicaMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusters</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>A filter that specifies one or more DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>
-- @param _DBClusterIdentifier [String] <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBClustersMessage(_Marker, _MaxRecords, _Filters, _DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClustersMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
	}
	asserts.AssertDescribeDBClustersMessage(t)
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
-- <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
function M.InvalidRestoreFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRestoreFault")
	local t = { 
	}
	asserts.AssertInvalidRestoreFault(t)
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
-- <p>The supplied category does not exist.</p>
function M.SubscriptionCategoryNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionCategoryNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionCategoryNotFoundFault(t)
	return t
end

keys.DBInstance = { ["PubliclyAccessible"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["MonitoringRoleArn"] = true, ["VpcSecurityGroups"] = true, ["InstanceCreateTime"] = true, ["CopyTagsToSnapshot"] = true, ["OptionGroupMemberships"] = true, ["PendingModifiedValues"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["LatestRestorableTime"] = true, ["DBSecurityGroups"] = true, ["DBParameterGroups"] = true, ["ReadReplicaSourceDBInstanceIdentifier"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["DBSubnetGroup"] = true, ["SecondaryAvailabilityZone"] = true, ["ReadReplicaDBInstanceIdentifiers"] = true, ["AllocatedStorage"] = true, ["DBInstanceArn"] = true, ["BackupRetentionPeriod"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["Endpoint"] = true, ["DBInstanceStatus"] = true, ["StatusInfos"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["EngineVersion"] = true, ["ReadReplicaDBClusterIdentifiers"] = true, ["TdeCredentialArn"] = true, ["EnhancedMonitoringResourceArn"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["DomainMemberships"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["DbiResourceId"] = true, ["CACertificateIdentifier"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["DbInstancePort"] = true, ["DBInstanceIdentifier"] = true, nil }

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
	if struct["StatusInfos"] then asserts.AssertDBInstanceStatusInfoList(struct["StatusInfos"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["ReadReplicaDBClusterIdentifiers"] then asserts.AssertReadReplicaDBClusterIdentifierList(struct["ReadReplicaDBClusterIdentifiers"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
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
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>StopDBInstance</a> </p> </li> <li> <p> <a>StartDBInstance</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
-- @param _PubliclyAccessible [Boolean] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param _MasterUsername [String] <p>Contains the master username for the DB instance.</p>
-- @param _MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
-- @param _LicenseModel [String] <p>License model information for this DB instance.</p>
-- @param _MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.</p>
-- @param _VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
-- @param _InstanceCreateTime [TStamp] <p>Provides the date and time the DB instance was created.</p>
-- @param _CopyTagsToSnapshot [Boolean] <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
-- @param _OptionGroupMemberships [OptionGroupMembershipList] <p>Provides the list of option group memberships for this DB instance.</p>
-- @param _PendingModifiedValues [PendingModifiedValues] <p>Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
-- @param _Engine [String] <p>Provides the name of the database engine to be used for this DB instance.</p>
-- @param _MultiAZ [Boolean] <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
-- @param _LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- @param _DBSecurityGroups [DBSecurityGroupMembershipList] <p> Provides List of DB security group elements containing only <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements. </p>
-- @param _DBParameterGroups [DBParameterGroupStatusList] <p>Provides the list of DB parameter groups applied to this DB instance.</p>
-- @param _ReadReplicaSourceDBInstanceIdentifier [String] <p>Contains the identifier of the source DB instance if this DB instance is a Read Replica.</p>
-- @param _AutoMinorVersionUpgrade [Boolean] <p>Indicates that minor version patches are applied automatically.</p>
-- @param _PreferredBackupWindow [String] <p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- @param _PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- @param _DBSubnetGroup [DBSubnetGroup] <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
-- @param _SecondaryAvailabilityZone [String] <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
-- @param _ReadReplicaDBInstanceIdentifiers [ReadReplicaDBInstanceIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB instance.</p>
-- @param _AllocatedStorage [Integer] <p>Specifies the allocated storage size specified in gigabytes.</p>
-- @param _DBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the DB instance.</p>
-- @param _BackupRetentionPeriod [Integer] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- @param _DBName [String] <p>The meaning of this parameter differs according to the database engine you use. For example, this value returns MySQL, MariaDB, or PostgreSQL information when returning values from CreateDBInstanceReadReplica since Read Replicas are only supported for these engines.</p> <p> <b>MySQL, MariaDB, SQL Server, PostgreSQL</b> </p> <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p> <p>Type: String</p> <p> <b>Oracle</b> </p> <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>
-- @param _PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- @param _Endpoint [Endpoint] <p>Specifies the connection endpoint.</p>
-- @param _DBInstanceStatus [String] <p>Specifies the current state of this database.</p>
-- @param _StatusInfos [DBInstanceStatusInfoList] <p>The status of a Read Replica. If the instance is not a Read Replica, this will be blank.</p>
-- @param _IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p> <p>IAM database authentication can be enabled for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p> </li> </ul>
-- @param _EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param _ReadReplicaDBClusterIdentifiers [ReadReplicaDBClusterIdentifierList] <p>Contains one or more identifiers of Aurora DB clusters that are Read Replicas of this DB instance.</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
-- @param _EnhancedMonitoringResourceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
-- @param _CharacterSetName [String] <p>If present, specifies the name of the character set that this instance is associated with.</p>
-- @param _AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
-- @param _DomainMemberships [DomainMembershipList] <p>The Active Directory Domain membership records associated with the DB instance.</p>
-- @param _DBClusterIdentifier [String] <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
-- @param _StorageType [String] <p>Specifies the storage type associated with DB instance.</p>
-- @param _DbiResourceId [String] <p>The region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB instance is accessed.</p>
-- @param _CACertificateIdentifier [String] <p>The identifier of the CA certificate for this DB instance.</p>
-- @param _Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
-- @param _StorageEncrypted [Boolean] <p>Specifies whether the DB instance is encrypted.</p>
-- @param _KmsKeyId [String] <p> If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB instance. </p>
-- @param _Timezone [String] <p>The time zone of the DB instance. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- @param _DBInstanceClass [String] <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
-- @param _DbInstancePort [Integer] <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
-- @param _DBInstanceIdentifier [String] <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
function M.DBInstance(_PubliclyAccessible, _MasterUsername, _MonitoringInterval, _LicenseModel, _MonitoringRoleArn, _VpcSecurityGroups, _InstanceCreateTime, _CopyTagsToSnapshot, _OptionGroupMemberships, _PendingModifiedValues, _Engine, _MultiAZ, _LatestRestorableTime, _DBSecurityGroups, _DBParameterGroups, _ReadReplicaSourceDBInstanceIdentifier, _AutoMinorVersionUpgrade, _PreferredBackupWindow, _PromotionTier, _DBSubnetGroup, _SecondaryAvailabilityZone, _ReadReplicaDBInstanceIdentifiers, _AllocatedStorage, _DBInstanceArn, _BackupRetentionPeriod, _DBName, _PreferredMaintenanceWindow, _Endpoint, _DBInstanceStatus, _StatusInfos, _IAMDatabaseAuthenticationEnabled, _EngineVersion, _ReadReplicaDBClusterIdentifiers, _TdeCredentialArn, _EnhancedMonitoringResourceArn, _CharacterSetName, _AvailabilityZone, _DomainMemberships, _DBClusterIdentifier, _StorageType, _DbiResourceId, _CACertificateIdentifier, _Iops, _StorageEncrypted, _KmsKeyId, _Timezone, _DBInstanceClass, _DbInstancePort, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstance")
	local t = { 
		["PubliclyAccessible"] = _PubliclyAccessible,
		["MasterUsername"] = _MasterUsername,
		["MonitoringInterval"] = _MonitoringInterval,
		["LicenseModel"] = _LicenseModel,
		["MonitoringRoleArn"] = _MonitoringRoleArn,
		["VpcSecurityGroups"] = _VpcSecurityGroups,
		["InstanceCreateTime"] = _InstanceCreateTime,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["OptionGroupMemberships"] = _OptionGroupMemberships,
		["PendingModifiedValues"] = _PendingModifiedValues,
		["Engine"] = _Engine,
		["MultiAZ"] = _MultiAZ,
		["LatestRestorableTime"] = _LatestRestorableTime,
		["DBSecurityGroups"] = _DBSecurityGroups,
		["DBParameterGroups"] = _DBParameterGroups,
		["ReadReplicaSourceDBInstanceIdentifier"] = _ReadReplicaSourceDBInstanceIdentifier,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["PromotionTier"] = _PromotionTier,
		["DBSubnetGroup"] = _DBSubnetGroup,
		["SecondaryAvailabilityZone"] = _SecondaryAvailabilityZone,
		["ReadReplicaDBInstanceIdentifiers"] = _ReadReplicaDBInstanceIdentifiers,
		["AllocatedStorage"] = _AllocatedStorage,
		["DBInstanceArn"] = _DBInstanceArn,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["DBName"] = _DBName,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["Endpoint"] = _Endpoint,
		["DBInstanceStatus"] = _DBInstanceStatus,
		["StatusInfos"] = _StatusInfos,
		["IAMDatabaseAuthenticationEnabled"] = _IAMDatabaseAuthenticationEnabled,
		["EngineVersion"] = _EngineVersion,
		["ReadReplicaDBClusterIdentifiers"] = _ReadReplicaDBClusterIdentifiers,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["EnhancedMonitoringResourceArn"] = _EnhancedMonitoringResourceArn,
		["CharacterSetName"] = _CharacterSetName,
		["AvailabilityZone"] = _AvailabilityZone,
		["DomainMemberships"] = _DomainMemberships,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["StorageType"] = _StorageType,
		["DbiResourceId"] = _DbiResourceId,
		["CACertificateIdentifier"] = _CACertificateIdentifier,
		["Iops"] = _Iops,
		["StorageEncrypted"] = _StorageEncrypted,
		["KmsKeyId"] = _KmsKeyId,
		["Timezone"] = _Timezone,
		["DBInstanceClass"] = _DBInstanceClass,
		["DbInstancePort"] = _DbInstancePort,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDBInstance(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.RestoreDBClusterFromSnapshotResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromSnapshotResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertRestoreDBClusterFromSnapshotResult(t)
	return t
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
-- @param _Description [String] <p>A description providing more detail about the maintenance action.</p>
-- @param _OptInStatus [String] <p>Indicates the type of opt-in request that has been received for the resource.</p>
-- @param _ForcedApplyDate [TStamp] <p>The date when the maintenance action will be automatically applied. The maintenance action will be applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>
-- @param _AutoAppliedAfterDate [TStamp] <p>The date of the maintenance window when the action will be applied. The maintenance action will be applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
-- @param _Action [String] <p>The type of pending maintenance action that is available for the resource.</p>
-- @param _CurrentApplyDate [TStamp] <p>The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received and nothing has been specified as <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
function M.PendingMaintenanceAction(_Description, _OptInStatus, _ForcedApplyDate, _AutoAppliedAfterDate, _Action, _CurrentApplyDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingMaintenanceAction")
	local t = { 
		["Description"] = _Description,
		["OptInStatus"] = _OptInStatus,
		["ForcedApplyDate"] = _ForcedApplyDate,
		["AutoAppliedAfterDate"] = _AutoAppliedAfterDate,
		["Action"] = _Action,
		["CurrentApplyDate"] = _CurrentApplyDate,
	}
	asserts.AssertPendingMaintenanceAction(t)
	return t
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
-- @param _EventSubscription [EventSubscription] 
function M.DeleteEventSubscriptionResult(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertDeleteEventSubscriptionResult(t)
	return t
end

keys.ReservedDBInstance = { ["MultiAZ"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["CurrencyCode"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["RecurringCharges"] = true, ["ReservedDBInstanceArn"] = true, ["Duration"] = true, ["State"] = true, ["DBInstanceCount"] = true, ["StartTime"] = true, ["ReservedDBInstanceId"] = true, ["DBInstanceClass"] = true, ["UsagePrice"] = true, nil }

function asserts.AssertReservedDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstance to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedDBInstanceArn"] then asserts.AssertString(struct["ReservedDBInstanceArn"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["DBInstanceCount"] then asserts.AssertInteger(struct["DBInstanceCount"]) end
	if struct["StartTime"] then asserts.AssertTStamp(struct["StartTime"]) end
	if struct["ReservedDBInstanceId"] then asserts.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstance[k], "ReservedDBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstance
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>PurchaseReservedDBInstancesOffering</a> actions. </p>
-- @param _MultiAZ [Boolean] <p>Indicates if the reservation applies to Multi-AZ deployments.</p>
-- @param _OfferingType [String] <p>The offering type of this reserved DB instance.</p>
-- @param _FixedPrice [Double] <p>The fixed price charged for this reserved DB instance.</p>
-- @param _CurrencyCode [String] <p>The currency code for the reserved DB instance.</p>
-- @param _ProductDescription [String] <p>The description of the reserved DB instance.</p>
-- @param _ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- @param _RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- @param _ReservedDBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>
-- @param _Duration [Integer] <p>The duration of the reservation in seconds.</p>
-- @param _State [String] <p>The state of the reserved DB instance.</p>
-- @param _DBInstanceCount [Integer] <p>The number of reserved DB instances.</p>
-- @param _StartTime [TStamp] <p>The time the reservation started.</p>
-- @param _ReservedDBInstanceId [String] <p>The unique identifier for the reservation.</p>
-- @param _DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- @param _UsagePrice [Double] <p>The hourly price charged for this reserved DB instance.</p>
function M.ReservedDBInstance(_MultiAZ, _OfferingType, _FixedPrice, _CurrencyCode, _ProductDescription, _ReservedDBInstancesOfferingId, _RecurringCharges, _ReservedDBInstanceArn, _Duration, _State, _DBInstanceCount, _StartTime, _ReservedDBInstanceId, _DBInstanceClass, _UsagePrice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstance")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["OfferingType"] = _OfferingType,
		["FixedPrice"] = _FixedPrice,
		["CurrencyCode"] = _CurrencyCode,
		["ProductDescription"] = _ProductDescription,
		["ReservedDBInstancesOfferingId"] = _ReservedDBInstancesOfferingId,
		["RecurringCharges"] = _RecurringCharges,
		["ReservedDBInstanceArn"] = _ReservedDBInstanceArn,
		["Duration"] = _Duration,
		["State"] = _State,
		["DBInstanceCount"] = _DBInstanceCount,
		["StartTime"] = _StartTime,
		["ReservedDBInstanceId"] = _ReservedDBInstanceId,
		["DBInstanceClass"] = _DBInstanceClass,
		["UsagePrice"] = _UsagePrice,
	}
	asserts.AssertReservedDBInstance(t)
	return t
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
function M.InvalidDBSubnetStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBSubnetStateFault(t)
	return t
end

keys.AuthorizeDBSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["CIDRIP"] = true, ["EC2SecurityGroupId"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertAuthorizeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeDBSecurityGroupIngressMessage[k], "AuthorizeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressMessage
-- <p/>
-- @param _EC2SecurityGroupName [String] <p> Name of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _EC2SecurityGroupOwnerId [String] <p> AWS account number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _CIDRIP [String] <p>The IP range to authorize.</p>
-- @param _EC2SecurityGroupId [String] <p> Id of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _DBSecurityGroupName [String] <p>The name of the DB security group to add authorization to.</p>
-- Required parameter: DBSecurityGroupName
function M.AuthorizeDBSecurityGroupIngressMessage(_EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _CIDRIP, _EC2SecurityGroupId, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeDBSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["CIDRIP"] = _CIDRIP,
		["EC2SecurityGroupId"] = _EC2SecurityGroupId,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertAuthorizeDBSecurityGroupIngressMessage(t)
	return t
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
-- @param _Status [String] <p>The status of the DB instance's option group membership. Valid values are: <code>in-sync</code>, <code>pending-apply</code>, <code>pending-removal</code>, <code>pending-maintenance-apply</code>, <code>pending-maintenance-removal</code>, <code>applying</code>, <code>removing</code>, and <code>failed</code>. </p>
-- @param _OptionGroupName [String] <p>The name of the option group that the instance belongs to.</p>
function M.OptionGroupMembership(_Status, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupMembership")
	local t = { 
		["Status"] = _Status,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertOptionGroupMembership(t)
	return t
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
-- @param _DBParameterGroup [DBParameterGroup] 
function M.CreateDBParameterGroupResult(_DBParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBParameterGroupResult")
	local t = { 
		["DBParameterGroup"] = _DBParameterGroup,
	}
	asserts.AssertCreateDBParameterGroupResult(t)
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
-- <p>The specified resource ID was not found.</p>
function M.ResourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
	}
	asserts.AssertResourceNotFoundFault(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.CreateDBClusterResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertCreateDBClusterResult(t)
	return t
end

keys.PromoteReadReplicaResult = { ["DBInstance"] = true, nil }

function asserts.AssertPromoteReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.PromoteReadReplicaResult[k], "PromoteReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaResult
--  
-- @param _DBInstance [DBInstance] 
function M.PromoteReadReplicaResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertPromoteReadReplicaResult(t)
	return t
end

keys.OptionSetting = { ["IsCollection"] = true, ["Name"] = true, ["DataType"] = true, ["DefaultValue"] = true, ["Value"] = true, ["AllowedValues"] = true, ["IsModifiable"] = true, ["ApplyType"] = true, ["Description"] = true, nil }

function asserts.AssertOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionSetting to be of type 'table'")
	if struct["IsCollection"] then asserts.AssertBoolean(struct["IsCollection"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["DefaultValue"] then asserts.AssertString(struct["DefaultValue"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionSetting[k], "OptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionSetting
-- <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
-- @param _IsCollection [Boolean] <p>Indicates if the option setting is part of a collection.</p>
-- @param _Name [String] <p>The name of the option that has settings that you can set.</p>
-- @param _DataType [String] <p>The data type of the option setting.</p>
-- @param _DefaultValue [String] <p>The default value of the option setting.</p>
-- @param _Value [String] <p>The current value of the option setting.</p>
-- @param _AllowedValues [String] <p>The allowed values of the option setting.</p>
-- @param _IsModifiable [Boolean] <p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>
-- @param _ApplyType [String] <p>The DB engine specific parameter type.</p>
-- @param _Description [String] <p>The description of the option setting.</p>
function M.OptionSetting(_IsCollection, _Name, _DataType, _DefaultValue, _Value, _AllowedValues, _IsModifiable, _ApplyType, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionSetting")
	local t = { 
		["IsCollection"] = _IsCollection,
		["Name"] = _Name,
		["DataType"] = _DataType,
		["DefaultValue"] = _DefaultValue,
		["Value"] = _Value,
		["AllowedValues"] = _AllowedValues,
		["IsModifiable"] = _IsModifiable,
		["ApplyType"] = _ApplyType,
		["Description"] = _Description,
	}
	asserts.AssertOptionSetting(t)
	return t
end

keys.CreateDBClusterMessage = { ["MasterUsername"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["Engine"] = true, ["Tags"] = true, ["PreferredBackupWindow"] = true, ["SourceRegion"] = true, ["BackupRetentionPeriod"] = true, ["PreferredMaintenanceWindow"] = true, ["DBClusterParameterGroupName"] = true, ["PreSignedUrl"] = true, ["ReplicationSourceIdentifier"] = true, ["EngineVersion"] = true, ["DBSubnetGroupName"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["DBClusterIdentifier"] = true, ["MasterUserPassword"] = true, ["KmsKeyId"] = true, ["StorageEncrypted"] = true, ["DatabaseName"] = true, ["AvailabilityZones"] = true, ["Port"] = true, nil }

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
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
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
-- @param _MasterUsername [String] <p>The name of the master user for the DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param _Engine [String] <p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- @param _Tags [TagList] 
-- @param _PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param _SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _DBClusterParameterGroupName [String] <p> The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _PreSignedUrl [String] <p>A URL that contains a Signature Version 4 signed request for the <code>CreateDBCluster</code> action to be called in the source region where the DB cluster will be replicated from. You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p> <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action that can be executed in the source region that contains the encrypted DB cluster to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination region. This should refer to the same KMS key for both the <code>CreateDBCluster</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that Aurora Read Replica will be created in.</p> </li> <li> <p> <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster from the us-west-2 region, then your <code>ReplicationSourceIdentifier</code> would look like Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param _ReplicationSourceIdentifier [String] <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.</p>
-- @param _EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- @param _DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- @param _CharacterSetName [String] <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
-- @param _DBClusterIdentifier [String] <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param _MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param _KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p> <p>If you create a Read Replica of an encrypted DB cluster in another region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination region. This key is used to encrypt the Read Replica in that region.</p>
-- @param _StorageEncrypted [BooleanOptional] <p>Specifies whether the DB cluster is encrypted.</p>
-- @param _DatabaseName [String] <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon RDS will not create a database in the DB cluster you are creating.</p>
-- @param _AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the DB cluster can be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p>
-- @param _Port [IntegerOptional] <p>The port number on which the instances in the DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: Engine
function M.CreateDBClusterMessage(_MasterUsername, _VpcSecurityGroupIds, _EnableIAMDatabaseAuthentication, _Engine, _Tags, _PreferredBackupWindow, _SourceRegion, _BackupRetentionPeriod, _PreferredMaintenanceWindow, _DBClusterParameterGroupName, _PreSignedUrl, _ReplicationSourceIdentifier, _EngineVersion, _DBSubnetGroupName, _OptionGroupName, _CharacterSetName, _DBClusterIdentifier, _MasterUserPassword, _KmsKeyId, _StorageEncrypted, _DatabaseName, _AvailabilityZones, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterMessage")
	local t = { 
		["MasterUsername"] = _MasterUsername,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["Engine"] = _Engine,
		["Tags"] = _Tags,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["SourceRegion"] = _SourceRegion,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["PreSignedUrl"] = _PreSignedUrl,
		["ReplicationSourceIdentifier"] = _ReplicationSourceIdentifier,
		["EngineVersion"] = _EngineVersion,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["OptionGroupName"] = _OptionGroupName,
		["CharacterSetName"] = _CharacterSetName,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["MasterUserPassword"] = _MasterUserPassword,
		["KmsKeyId"] = _KmsKeyId,
		["StorageEncrypted"] = _StorageEncrypted,
		["DatabaseName"] = _DatabaseName,
		["AvailabilityZones"] = _AvailabilityZones,
		["Port"] = _Port,
	}
	asserts.AssertCreateDBClusterMessage(t)
	return t
end

keys.DownloadDBLogFilePortionDetails = { ["Marker"] = true, ["AdditionalDataPending"] = true, ["LogFileData"] = true, nil }

function asserts.AssertDownloadDBLogFilePortionDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionDetails to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["AdditionalDataPending"] then asserts.AssertBoolean(struct["AdditionalDataPending"]) end
	if struct["LogFileData"] then asserts.AssertString(struct["LogFileData"]) end
	for k,_ in pairs(struct) do
		assert(keys.DownloadDBLogFilePortionDetails[k], "DownloadDBLogFilePortionDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionDetails
-- <p>This data type is used as a response element to <a>DownloadDBLogFilePortion</a>.</p>
-- @param _Marker [String] <p>A pagination token that can be used in a subsequent DownloadDBLogFilePortion request.</p>
-- @param _AdditionalDataPending [Boolean] <p>Boolean value that if true, indicates there is more data to be downloaded.</p>
-- @param _LogFileData [String] <p>Entries from the specified log file.</p>
function M.DownloadDBLogFilePortionDetails(_Marker, _AdditionalDataPending, _LogFileData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDBLogFilePortionDetails")
	local t = { 
		["Marker"] = _Marker,
		["AdditionalDataPending"] = _AdditionalDataPending,
		["LogFileData"] = _LogFileData,
	}
	asserts.AssertDownloadDBLogFilePortionDetails(t)
	return t
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
function M.DBParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBParameterGroupAlreadyExistsFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBEngineVersions [DBEngineVersionList] <p> A list of <code>DBEngineVersion</code> elements. </p>
function M.DBEngineVersionMessage(_Marker, _DBEngineVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBEngineVersionMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBEngineVersions"] = _DBEngineVersions,
	}
	asserts.AssertDBEngineVersionMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>A filter that specifies one or more DB instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB Clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.</p> </li> </ul>
-- @param _DBInstanceIdentifier [String] <p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBInstancesMessage(_Marker, _MaxRecords, _Filters, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBInstancesMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDescribeDBInstancesMessage(t)
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
-- <p>You do not have permission to publish to the SNS topic ARN.</p>
function M.SNSNoAuthorizationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
	}
	asserts.AssertSNSNoAuthorizationFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Parameters [ParametersList] <p> A list of <a>Parameter</a> values. </p>
function M.DBParameterGroupDetails(_Marker, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupDetails")
	local t = { 
		["Marker"] = _Marker,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDBParameterGroupDetails(t)
	return t
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
-- @param _DBInstance [DBInstance] 
function M.CreateDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertCreateDBInstanceResult(t)
	return t
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
function M.InvalidDBInstanceStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBInstanceStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBInstanceStateFault(t)
	return t
end

keys.DeleteDBSnapshotResult = { ["DBSnapshot"] = true, nil }

function asserts.AssertDeleteDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then asserts.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSnapshotResult[k], "DeleteDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotResult
--  
-- @param _DBSnapshot [DBSnapshot] 
function M.DeleteDBSnapshotResult(_DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = _DBSnapshot,
	}
	asserts.AssertDeleteDBSnapshotResult(t)
	return t
end

keys.CreateDBSecurityGroupResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertCreateDBSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDBSecurityGroupResult[k], "CreateDBSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupResult
--  
-- @param _DBSecurityGroup [DBSecurityGroup] 
function M.CreateDBSecurityGroupResult(_DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSecurityGroupResult")
	local t = { 
		["DBSecurityGroup"] = _DBSecurityGroup,
	}
	asserts.AssertCreateDBSecurityGroupResult(t)
	return t
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
-- @param _DBClusterParameterGroup [DBClusterParameterGroup] 
function M.CreateDBClusterParameterGroupResult(_DBClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterParameterGroupResult")
	local t = { 
		["DBClusterParameterGroup"] = _DBClusterParameterGroup,
	}
	asserts.AssertCreateDBClusterParameterGroupResult(t)
	return t
end

keys.DBSecurityGroupNotSupportedFault = { nil }

function asserts.AssertDBSecurityGroupNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupNotSupportedFault[k], "DBSecurityGroupNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotSupportedFault
-- <p>A DB security group is not allowed for this action.</p>
function M.DBSecurityGroupNotSupportedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupNotSupportedFault")
	local t = { 
	}
	asserts.AssertDBSecurityGroupNotSupportedFault(t)
	return t
end

keys.DBSecurityGroupQuotaExceededFault = { nil }

function asserts.AssertDBSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroupQuotaExceededFault[k], "DBSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB security groups.</p>
function M.DBSecurityGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBSecurityGroupQuotaExceededFault(t)
	return t
end

keys.OptionGroupOption = { ["MinimumRequiredMinorEngineVersion"] = true, ["OptionsDependedOn"] = true, ["MajorEngineVersion"] = true, ["OptionGroupOptionVersions"] = true, ["Persistent"] = true, ["Description"] = true, ["DefaultPort"] = true, ["Permanent"] = true, ["OptionGroupOptionSettings"] = true, ["OptionsConflictsWith"] = true, ["EngineName"] = true, ["PortRequired"] = true, ["Name"] = true, nil }

function asserts.AssertOptionGroupOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOption to be of type 'table'")
	if struct["MinimumRequiredMinorEngineVersion"] then asserts.AssertString(struct["MinimumRequiredMinorEngineVersion"]) end
	if struct["OptionsDependedOn"] then asserts.AssertOptionsDependedOn(struct["OptionsDependedOn"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupOptionVersions"] then asserts.AssertOptionGroupOptionVersionsList(struct["OptionGroupOptionVersions"]) end
	if struct["Persistent"] then asserts.AssertBoolean(struct["Persistent"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["DefaultPort"] then asserts.AssertIntegerOptional(struct["DefaultPort"]) end
	if struct["Permanent"] then asserts.AssertBoolean(struct["Permanent"]) end
	if struct["OptionGroupOptionSettings"] then asserts.AssertOptionGroupOptionSettingsList(struct["OptionGroupOptionSettings"]) end
	if struct["OptionsConflictsWith"] then asserts.AssertOptionsConflictsWith(struct["OptionsConflictsWith"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["PortRequired"] then asserts.AssertBoolean(struct["PortRequired"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOption[k], "OptionGroupOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOption
-- <p>Available option.</p>
-- @param _MinimumRequiredMinorEngineVersion [String] <p>The minimum required engine version for the option to be applied.</p>
-- @param _OptionsDependedOn [OptionsDependedOn] <p>The options that are prerequisites for this option.</p>
-- @param _MajorEngineVersion [String] <p>Indicates the major engine version that the option is available for.</p>
-- @param _OptionGroupOptionVersions [OptionGroupOptionVersionsList] <p>The versions that are available for the option.</p>
-- @param _Persistent [Boolean] <p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>
-- @param _Description [String] <p>The description of the option.</p>
-- @param _DefaultPort [IntegerOptional] <p>If the option requires a port, specifies the default port for the option.</p>
-- @param _Permanent [Boolean] <p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>
-- @param _OptionGroupOptionSettings [OptionGroupOptionSettingsList] <p>The option settings that are available (and the default value) for each option in an option group.</p>
-- @param _OptionsConflictsWith [OptionsConflictsWith] <p>The options that conflict with this option.</p>
-- @param _EngineName [String] <p>The name of the engine that this option can be applied to.</p>
-- @param _PortRequired [Boolean] <p>Specifies whether the option requires a port.</p>
-- @param _Name [String] <p>The name of the option.</p>
function M.OptionGroupOption(_MinimumRequiredMinorEngineVersion, _OptionsDependedOn, _MajorEngineVersion, _OptionGroupOptionVersions, _Persistent, _Description, _DefaultPort, _Permanent, _OptionGroupOptionSettings, _OptionsConflictsWith, _EngineName, _PortRequired, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOption")
	local t = { 
		["MinimumRequiredMinorEngineVersion"] = _MinimumRequiredMinorEngineVersion,
		["OptionsDependedOn"] = _OptionsDependedOn,
		["MajorEngineVersion"] = _MajorEngineVersion,
		["OptionGroupOptionVersions"] = _OptionGroupOptionVersions,
		["Persistent"] = _Persistent,
		["Description"] = _Description,
		["DefaultPort"] = _DefaultPort,
		["Permanent"] = _Permanent,
		["OptionGroupOptionSettings"] = _OptionGroupOptionSettings,
		["OptionsConflictsWith"] = _OptionsConflictsWith,
		["EngineName"] = _EngineName,
		["PortRequired"] = _PortRequired,
		["Name"] = _Name,
	}
	asserts.AssertOptionGroupOption(t)
	return t
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
-- <p>Contains the result of a successful invocation of the <a>CreateDBClusterParameterGroup</a> or <a>CopyDBClusterParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBClusterParameterGroup</a> action, and as a response element in the <a>DescribeDBClusterParameterGroups</a> action. </p>
-- @param _DBClusterParameterGroupName [String] <p>Provides the name of the DB cluster parameter group.</p>
-- @param _DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>
-- @param _Description [String] <p>Provides the customer-specified description for this DB cluster parameter group.</p>
-- @param _DBClusterParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>
function M.DBClusterParameterGroup(_DBClusterParameterGroupName, _DBParameterGroupFamily, _Description, _DBClusterParameterGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroup")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["Description"] = _Description,
		["DBClusterParameterGroupArn"] = _DBClusterParameterGroupArn,
	}
	asserts.AssertDBClusterParameterGroup(t)
	return t
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
function M.DBClusterQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBClusterQuotaExceededFault(t)
	return t
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
-- @param _Engine [String] <p>The database engine to return.</p>
-- @param _DBParameterGroupFamily [String] <p>The name of a specific DB parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _ListSupportedCharacterSets [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
-- @param _DefaultOnly [Boolean] <p>Indicates that only the default version of the specified engine or engine and major version combination is returned.</p>
-- @param _ListSupportedTimezones [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Not currently supported.</p>
-- @param _EngineVersion [String] <p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
function M.DescribeDBEngineVersionsMessage(_Engine, _DBParameterGroupFamily, _ListSupportedCharacterSets, _DefaultOnly, _ListSupportedTimezones, _MaxRecords, _Filters, _EngineVersion, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBEngineVersionsMessage")
	local t = { 
		["Engine"] = _Engine,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["ListSupportedCharacterSets"] = _ListSupportedCharacterSets,
		["DefaultOnly"] = _DefaultOnly,
		["ListSupportedTimezones"] = _ListSupportedTimezones,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["EngineVersion"] = _EngineVersion,
		["Marker"] = _Marker,
	}
	asserts.AssertDescribeDBEngineVersionsMessage(t)
	return t
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
-- @param _EventSubscription [EventSubscription] 
function M.AddSourceIdentifierToSubscriptionResult(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddSourceIdentifierToSubscriptionResult")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertAddSourceIdentifierToSubscriptionResult(t)
	return t
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
-- @param _ResourcePendingMaintenanceActions [ResourcePendingMaintenanceActions] 
function M.ApplyPendingMaintenanceActionResult(_ResourcePendingMaintenanceActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplyPendingMaintenanceActionResult")
	local t = { 
		["ResourcePendingMaintenanceActions"] = _ResourcePendingMaintenanceActions,
	}
	asserts.AssertApplyPendingMaintenanceActionResult(t)
	return t
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
-- @param _DBClusterParameterGroup [DBClusterParameterGroup] 
function M.CopyDBClusterParameterGroupResult(_DBClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterParameterGroupResult")
	local t = { 
		["DBClusterParameterGroup"] = _DBClusterParameterGroup,
	}
	asserts.AssertCopyDBClusterParameterGroupResult(t)
	return t
end

keys.OptionGroupOptionsMessage = { ["OptionGroupOptions"] = true, ["Marker"] = true, nil }

function asserts.AssertOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionsMessage to be of type 'table'")
	if struct["OptionGroupOptions"] then asserts.AssertOptionGroupOptionsList(struct["OptionGroupOptions"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOptionsMessage[k], "OptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionsMessage
-- <p/>
-- @param _OptionGroupOptions [OptionGroupOptionsList] 
-- @param _Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
function M.OptionGroupOptionsMessage(_OptionGroupOptions, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOptionsMessage")
	local t = { 
		["OptionGroupOptions"] = _OptionGroupOptions,
		["Marker"] = _Marker,
	}
	asserts.AssertOptionGroupOptionsMessage(t)
	return t
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
-- @param _Status [String] <p>Specifies the status of the DB cluster option group.</p>
-- @param _DBClusterOptionGroupName [String] <p>Specifies the name of the DB cluster option group.</p>
function M.DBClusterOptionGroupStatus(_Status, _DBClusterOptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterOptionGroupStatus")
	local t = { 
		["Status"] = _Status,
		["DBClusterOptionGroupName"] = _DBClusterOptionGroupName,
	}
	asserts.AssertDBClusterOptionGroupStatus(t)
	return t
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
-- <p>Contains the result of a successful invocation of the <a>CreateDBParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBParameterGroup</a> action, and as a response element in the <a>DescribeDBParameterGroups</a> action. </p>
-- @param _DBParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB parameter group.</p>
-- @param _DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- @param _DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB parameter group is compatible with.</p>
-- @param _Description [String] <p>Provides the customer-specified description for this DB parameter group.</p>
function M.DBParameterGroup(_DBParameterGroupArn, _DBParameterGroupName, _DBParameterGroupFamily, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroup")
	local t = { 
		["DBParameterGroupArn"] = _DBParameterGroupArn,
		["DBParameterGroupName"] = _DBParameterGroupName,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["Description"] = _Description,
	}
	asserts.AssertDBParameterGroup(t)
	return t
end

keys.StopDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertStopDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopDBInstanceResult[k], "StopDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceResult
--  
-- @param _DBInstance [DBInstance] 
function M.StopDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertStopDBInstanceResult(t)
	return t
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
-- @param _SourceType [String] <p>The type of source that will be generating the events.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeEventCategoriesMessage(_SourceType, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = _SourceType,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEventCategoriesMessage(t)
	return t
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
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster belongs to.</p>
-- @param _DBClusterIdentifier [String] <p>The name of the new DB cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _Tags [TagList] 
-- @param _UseLatestRestorableTime [Boolean] <p>A value that is set to <code>true</code> to restore the DB cluster to the latest restorable backup time, and <code>false</code> otherwise. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is provided.</p>
-- @param _RestoreType [String] <p>The type of restore to be performed. You can specify one of the following values:</p> <ul> <li> <p> <code>full-copy</code> - The new DB cluster is restored as a full copy of the source DB cluster.</p> </li> <li> <p> <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source DB cluster.</p> </li> </ul> <p>Constraints: You cannot specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p> <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored as a full copy of the source DB cluster.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param _KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster will be encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p> </li> <li> <p>If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the restore request is rejected.</p>
-- @param _SourceDBClusterIdentifier [String] <p>The identifier of the source DB cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _DBSubnetGroupName [String] <p>The DB subnet group name to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _RestoreToTime [TStamp] <p>The date and time to restore the DB cluster to.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not provided</p> </li> <li> <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p> </li> <li> <p>Cannot be specified if <code>RestoreType</code> parameter is <code>copy-on-write</code> </p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>
-- @param _Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param _OptionGroupName [String] <p>The name of the option group for the new DB cluster.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: SourceDBClusterIdentifier
function M.RestoreDBClusterToPointInTimeMessage(_VpcSecurityGroupIds, _DBClusterIdentifier, _Tags, _UseLatestRestorableTime, _RestoreType, _EnableIAMDatabaseAuthentication, _KmsKeyId, _SourceDBClusterIdentifier, _DBSubnetGroupName, _RestoreToTime, _Port, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterToPointInTimeMessage")
	local t = { 
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["Tags"] = _Tags,
		["UseLatestRestorableTime"] = _UseLatestRestorableTime,
		["RestoreType"] = _RestoreType,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = _KmsKeyId,
		["SourceDBClusterIdentifier"] = _SourceDBClusterIdentifier,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["RestoreToTime"] = _RestoreToTime,
		["Port"] = _Port,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertRestoreDBClusterToPointInTimeMessage(t)
	return t
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
-- @param _DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1-snapshot1</code> </p>
-- @param _DBClusterIdentifier [String] <p>The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param _Tags [TagList] <p>The tags to be assigned to the DB cluster snapshot.</p>
-- Required parameter: DBClusterSnapshotIdentifier
-- Required parameter: DBClusterIdentifier
function M.CreateDBClusterSnapshotMessage(_DBClusterSnapshotIdentifier, _DBClusterIdentifier, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterSnapshotMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateDBClusterSnapshotMessage(t)
	return t
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
-- @param _DBInstance [DBInstance] 
function M.RebootDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertRebootDBInstanceResult(t)
	return t
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
-- @param _DBClusterIdentifier [String] <p>The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-replica1</code> </p>
-- Required parameter: DBClusterIdentifier
function M.PromoteReadReplicaDBClusterMessage(_DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaDBClusterMessage")
	local t = { 
		["DBClusterIdentifier"] = _DBClusterIdentifier,
	}
	asserts.AssertPromoteReadReplicaDBClusterMessage(t)
	return t
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
-- @param _DBParameterGroup [DBParameterGroup] 
function M.CopyDBParameterGroupResult(_DBParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBParameterGroupResult")
	local t = { 
		["DBParameterGroup"] = _DBParameterGroup,
	}
	asserts.AssertCopyDBParameterGroupResult(t)
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
-- <p>SNS has responded that there is a problem with the SND topic specified.</p>
function M.SNSInvalidTopicFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
	}
	asserts.AssertSNSInvalidTopicFault(t)
	return t
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
-- @param _EventSubscription [EventSubscription] 
function M.RemoveSourceIdentifierFromSubscriptionResult(_EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveSourceIdentifierFromSubscriptionResult")
	local t = { 
		["EventSubscription"] = _EventSubscription,
	}
	asserts.AssertRemoveSourceIdentifierFromSubscriptionResult(t)
	return t
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
-- @param _DBCluster [DBCluster] 
function M.DeleteDBClusterResult(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterResult")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertDeleteDBClusterResult(t)
	return t
end

keys.CopyDBClusterSnapshotMessage = { ["CopyTags"] = true, ["SourceRegion"] = true, ["Tags"] = true, ["SourceDBClusterSnapshotIdentifier"] = true, ["PreSignedUrl"] = true, ["KmsKeyId"] = true, ["TargetDBClusterSnapshotIdentifier"] = true, nil }

function asserts.AssertCopyDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBClusterSnapshotIdentifier"], "Expected key SourceDBClusterSnapshotIdentifier to exist in table")
	assert(struct["TargetDBClusterSnapshotIdentifier"], "Expected key TargetDBClusterSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then asserts.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
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
-- @param _CopyTags [BooleanOptional] <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot; otherwise false. The default is false.</p>
-- @param _SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- @param _Tags [TagList] 
-- @param _SourceDBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.</p> <p>You cannot copy an encrypted, shared DB cluster snapshot from one AWS region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> <li> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different region than the copy, specify a valid DB cluster snapshot ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html"> Copying a DB Snapshot or DB Cluster Snapshot</a>.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>
-- @param _PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS region that contains the source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS region.</p> <p>The pre-signed URL must be a valid request for the <code>CopyDBSClusterSnapshot</code> API action that can be executed in the source region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param _KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target DB cluster snapshot using the specified KMS encryption key. </p> <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. </p> <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted DB cluster snapshot to another region, you must set <code>KmsKeyId</code> to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- @param _TargetDBClusterSnapshotIdentifier [String] <p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>
-- Required parameter: SourceDBClusterSnapshotIdentifier
-- Required parameter: TargetDBClusterSnapshotIdentifier
function M.CopyDBClusterSnapshotMessage(_CopyTags, _SourceRegion, _Tags, _SourceDBClusterSnapshotIdentifier, _PreSignedUrl, _KmsKeyId, _TargetDBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterSnapshotMessage")
	local t = { 
		["CopyTags"] = _CopyTags,
		["SourceRegion"] = _SourceRegion,
		["Tags"] = _Tags,
		["SourceDBClusterSnapshotIdentifier"] = _SourceDBClusterSnapshotIdentifier,
		["PreSignedUrl"] = _PreSignedUrl,
		["KmsKeyId"] = _KmsKeyId,
		["TargetDBClusterSnapshotIdentifier"] = _TargetDBClusterSnapshotIdentifier,
	}
	asserts.AssertCopyDBClusterSnapshotMessage(t)
	return t
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
-- @param _EngineDefaults [EngineDefaults] 
function M.DescribeEngineDefaultClusterParametersResult(_EngineDefaults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultClusterParametersResult")
	local t = { 
		["EngineDefaults"] = _EngineDefaults,
	}
	asserts.AssertDescribeEngineDefaultClusterParametersResult(t)
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
-- <p>The subscription name does not exist.</p>
function M.SubscriptionNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionNotFoundFault")
	local t = { 
	}
	asserts.AssertSubscriptionNotFoundFault(t)
	return t
end

keys.DescribeReservedDBInstancesOfferingsMessage = { ["MultiAZ"] = true, ["OfferingType"] = true, ["ProductDescription"] = true, ["ReservedDBInstancesOfferingId"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Duration"] = true, ["DBInstanceClass"] = true, nil }

function asserts.AssertDescribeReservedDBInstancesOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesOfferingsMessage to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Duration"] then asserts.AssertString(struct["Duration"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservedDBInstancesOfferingsMessage[k], "DescribeReservedDBInstancesOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesOfferingsMessage
-- <p/>
-- @param _MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only the available offerings matching the specified Multi-AZ parameter.</p>
-- @param _OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- @param _ProductDescription [String] <p>Product description filter value. Specify this parameter to show only the available offerings matching the specified product description.</p>
-- @param _ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _Duration [String] <p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- @param _DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
function M.DescribeReservedDBInstancesOfferingsMessage(_MultiAZ, _OfferingType, _ProductDescription, _ReservedDBInstancesOfferingId, _Marker, _MaxRecords, _Filters, _Duration, _DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedDBInstancesOfferingsMessage")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["OfferingType"] = _OfferingType,
		["ProductDescription"] = _ProductDescription,
		["ReservedDBInstancesOfferingId"] = _ReservedDBInstancesOfferingId,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["Duration"] = _Duration,
		["DBInstanceClass"] = _DBInstanceClass,
	}
	asserts.AssertDescribeReservedDBInstancesOfferingsMessage(t)
	return t
end

keys.DeleteOptionGroupMessage = { ["OptionGroupName"] = true, nil }

function asserts.AssertDeleteOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteOptionGroupMessage[k], "DeleteOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOptionGroupMessage
-- <p/>
-- @param _OptionGroupName [String] <p>The name of the option group to be deleted.</p> <note> <p>You cannot delete default option groups.</p> </note>
-- Required parameter: OptionGroupName
function M.DeleteOptionGroupMessage(_OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOptionGroupMessage")
	local t = { 
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertDeleteOptionGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>
-- @param _ResourceIdentifier [String] <p>The ARN of a resource to return pending maintenance actions for.</p>
function M.DescribePendingMaintenanceActionsMessage(_Marker, _MaxRecords, _Filters, _ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePendingMaintenanceActionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["ResourceIdentifier"] = _ResourceIdentifier,
	}
	asserts.AssertDescribePendingMaintenanceActionsMessage(t)
	return t
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
function M.InvalidDBParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBParameterGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBParameterGroupStateFault(t)
	return t
end

keys.DescribeOptionGroupsMessage = { ["MajorEngineVersion"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["Marker"] = true, ["EngineName"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertDescribeOptionGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupsMessage to be of type 'table'")
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOptionGroupsMessage[k], "DescribeOptionGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupsMessage
-- <p/>
-- @param _MajorEngineVersion [String] <p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _EngineName [String] <p>Filters the list of option groups to only include groups associated with a specific database engine.</p>
-- @param _OptionGroupName [String] <p>The name of the option group to describe. Cannot be supplied together with EngineName or MajorEngineVersion.</p>
function M.DescribeOptionGroupsMessage(_MajorEngineVersion, _MaxRecords, _Filters, _Marker, _EngineName, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOptionGroupsMessage")
	local t = { 
		["MajorEngineVersion"] = _MajorEngineVersion,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["Marker"] = _Marker,
		["EngineName"] = _EngineName,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertDescribeOptionGroupsMessage(t)
	return t
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
function M.DBSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotNotFoundFault")
	local t = { 
	}
	asserts.AssertDBSnapshotNotFoundFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _Parameters [ParametersList] <p>Provides a list of parameters for the DB cluster parameter group.</p>
function M.DBClusterParameterGroupDetails(_Marker, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupDetails")
	local t = { 
		["Marker"] = _Marker,
		["Parameters"] = _Parameters,
	}
	asserts.AssertDBClusterParameterGroupDetails(t)
	return t
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
-- @param _DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- @param _SubnetIds [SubnetIdentifierList] <p>The EC2 Subnet IDs for the DB subnet group.</p>
-- @param _Tags [TagList] 
-- Required parameter: DBSubnetGroupName
-- Required parameter: DBSubnetGroupDescription
-- Required parameter: SubnetIds
function M.CreateDBSubnetGroupMessage(_DBSubnetGroupName, _DBSubnetGroupDescription, _SubnetIds, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["DBSubnetGroupDescription"] = _DBSubnetGroupDescription,
		["SubnetIds"] = _SubnetIds,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateDBSubnetGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBSubnetGroups [DBSubnetGroups] <p> A list of <a>DBSubnetGroup</a> instances. </p>
function M.DBSubnetGroupMessage(_Marker, _DBSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBSubnetGroups"] = _DBSubnetGroups,
	}
	asserts.AssertDBSubnetGroupMessage(t)
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
-- <p>This data type is used as a response element for queries on VPC security group membership.</p>
-- @param _Status [String] <p>The status of the VPC security group.</p>
-- @param _VpcSecurityGroupId [String] <p>The name of the VPC security group.</p>
function M.VpcSecurityGroupMembership(_Status, _VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = _Status,
		["VpcSecurityGroupId"] = _VpcSecurityGroupId,
	}
	asserts.AssertVpcSecurityGroupMembership(t)
	return t
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
-- @param _Engine [String] <p>The database engine to use for the new DB cluster.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p>
-- @param _DBClusterIdentifier [String] <p>The name of the DB cluster to create from the DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- @param _Tags [TagList] <p>The tags to be assigned to the restored DB cluster.</p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster will belong to.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param _KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from a DB cluster snapshot.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster snapshot is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB cluster snapshot.</p> </li> <li> <p>If the DB cluster snapshot is not encrypted, then the restored DB cluster is encrypted using the specified encryption key.</p> </li> </ul>
-- @param _DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- @param _EngineVersion [String] <p>The version of the database engine to use for the new DB cluster.</p>
-- @param _DBSubnetGroupName [String] <p>The name of the DB subnet group to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- @param _Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param _OptionGroupName [String] <p>The name of the option group to use for the restored DB cluster.</p>
-- @param _SnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBClusterIdentifier
-- Required parameter: SnapshotIdentifier
-- Required parameter: Engine
function M.RestoreDBClusterFromSnapshotMessage(_Engine, _DBClusterIdentifier, _Tags, _VpcSecurityGroupIds, _EnableIAMDatabaseAuthentication, _KmsKeyId, _DatabaseName, _EngineVersion, _DBSubnetGroupName, _AvailabilityZones, _Port, _OptionGroupName, _SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromSnapshotMessage")
	local t = { 
		["Engine"] = _Engine,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["Tags"] = _Tags,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = _KmsKeyId,
		["DatabaseName"] = _DatabaseName,
		["EngineVersion"] = _EngineVersion,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["AvailabilityZones"] = _AvailabilityZones,
		["Port"] = _Port,
		["OptionGroupName"] = _OptionGroupName,
		["SnapshotIdentifier"] = _SnapshotIdentifier,
	}
	asserts.AssertRestoreDBClusterFromSnapshotMessage(t)
	return t
end

keys.RevokeDBSecurityGroupIngressMessage = { ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["CIDRIP"] = true, ["EC2SecurityGroupId"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertRevokeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeDBSecurityGroupIngressMessage[k], "RevokeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressMessage
-- <p/>
-- @param _EC2SecurityGroupName [String] <p> The name of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _EC2SecurityGroupOwnerId [String] <p> The AWS Account Number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _CIDRIP [String] <p> The IP range to revoke access from. Must be a valid CIDR range. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>
-- @param _EC2SecurityGroupId [String] <p> The id of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param _DBSecurityGroupName [String] <p>The name of the DB security group to revoke ingress from.</p>
-- Required parameter: DBSecurityGroupName
function M.RevokeDBSecurityGroupIngressMessage(_EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _CIDRIP, _EC2SecurityGroupId, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeDBSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["CIDRIP"] = _CIDRIP,
		["EC2SecurityGroupId"] = _EC2SecurityGroupId,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertRevokeDBSecurityGroupIngressMessage(t)
	return t
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
function M.InstanceQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceQuotaExceededFault")
	local t = { 
	}
	asserts.AssertInstanceQuotaExceededFault(t)
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
-- <p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _EventSubscriptionsList [EventSubscriptionsList] <p>A list of EventSubscriptions data types.</p>
function M.EventSubscriptionsMessage(_Marker, _EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["EventSubscriptionsList"] = _EventSubscriptionsList,
	}
	asserts.AssertEventSubscriptionsMessage(t)
	return t
end

keys.ReservedDBInstancesOfferingNotFoundFault = { nil }

function asserts.AssertReservedDBInstancesOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOfferingNotFoundFault[k], "ReservedDBInstancesOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingNotFoundFault
-- <p>Specified offering does not exist.</p>
function M.ReservedDBInstancesOfferingNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOfferingNotFoundFault")
	local t = { 
	}
	asserts.AssertReservedDBInstancesOfferingNotFoundFault(t)
	return t
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
function M.KMSKeyNotAccessibleFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSKeyNotAccessibleFault")
	local t = { 
	}
	asserts.AssertKMSKeyNotAccessibleFault(t)
	return t
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
function M.DBSecurityGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertDBSecurityGroupNotFoundFault(t)
	return t
end

keys.ModifyDBClusterMessage = { ["DBClusterParameterGroupName"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["DBClusterIdentifier"] = true, ["PreferredMaintenanceWindow"] = true, ["NewDBClusterIdentifier"] = true, ["VpcSecurityGroupIds"] = true, ["ApplyImmediately"] = true, ["PreferredBackupWindow"] = true, ["MasterUserPassword"] = true, ["BackupRetentionPeriod"] = true, ["Port"] = true, ["OptionGroupName"] = true, nil }

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
	if struct["BackupRetentionPeriod"] then asserts.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBClusterMessage[k], "ModifyDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterMessage
-- <p/>
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param _DBClusterIdentifier [String] <p>The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB cluster.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _NewDBClusterIdentifier [String] <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the DB cluster will belong to.</p>
-- @param _ApplyImmediately [Boolean] <p>A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set to <code>false</code>, changes to the DB cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter only affects the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: <code>false</code> </p>
-- @param _PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param _MasterUserPassword [String] <p>The new password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param _Port [IntegerOptional] <p>The port number on which the DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param _OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case, and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- Required parameter: DBClusterIdentifier
function M.ModifyDBClusterMessage(_DBClusterParameterGroupName, _EnableIAMDatabaseAuthentication, _DBClusterIdentifier, _PreferredMaintenanceWindow, _NewDBClusterIdentifier, _VpcSecurityGroupIds, _ApplyImmediately, _PreferredBackupWindow, _MasterUserPassword, _BackupRetentionPeriod, _Port, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["NewDBClusterIdentifier"] = _NewDBClusterIdentifier,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["ApplyImmediately"] = _ApplyImmediately,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["MasterUserPassword"] = _MasterUserPassword,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["Port"] = _Port,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertModifyDBClusterMessage(t)
	return t
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
-- @param _DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult] 
function M.ModifyDBClusterSnapshotAttributeResult(_DBClusterSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterSnapshotAttributeResult")
	local t = { 
		["DBClusterSnapshotAttributesResult"] = _DBClusterSnapshotAttributesResult,
	}
	asserts.AssertModifyDBClusterSnapshotAttributeResult(t)
	return t
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
-- @param _ApplyAction [String] <p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code> </p>
-- @param _OptInType [String] <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>immediate</code> cannot be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>
-- @param _ResourceIdentifier [String] <p>The RDS Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- Required parameter: ResourceIdentifier
-- Required parameter: ApplyAction
-- Required parameter: OptInType
function M.ApplyPendingMaintenanceActionMessage(_ApplyAction, _OptInType, _ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplyPendingMaintenanceActionMessage")
	local t = { 
		["ApplyAction"] = _ApplyAction,
		["OptInType"] = _OptInType,
		["ResourceIdentifier"] = _ResourceIdentifier,
	}
	asserts.AssertApplyPendingMaintenanceActionMessage(t)
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
-- <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p> <p>RDS may not also be authorized via IAM to perform necessary actions on your behalf.</p>
function M.AuthorizationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationNotFoundFault")
	local t = { 
	}
	asserts.AssertAuthorizationNotFoundFault(t)
	return t
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
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @param _DBParameterGroupFamily [String] <p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
-- @param _Description [String] <p>The description for the DB parameter group.</p>
-- @param _Tags [TagList] 
-- Required parameter: DBParameterGroupName
-- Required parameter: DBParameterGroupFamily
-- Required parameter: Description
function M.CreateDBParameterGroupMessage(_DBParameterGroupName, _DBParameterGroupFamily, _Description, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["Description"] = _Description,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateDBParameterGroupMessage(t)
	return t
end

keys.PendingModifiedValues = { ["MultiAZ"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["LicenseModel"] = true, ["MasterUserPassword"] = true, ["Port"] = true, ["Iops"] = true, ["AllocatedStorage"] = true, ["EngineVersion"] = true, ["DBInstanceClass"] = true, ["DBSubnetGroupName"] = true, ["BackupRetentionPeriod"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then asserts.AssertString(struct["CACertificateIdentifier"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["MasterUserPassword"] then asserts.AssertString(struct["MasterUserPassword"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
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
-- @param _MultiAZ [BooleanOptional] <p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p>
-- @param _CACertificateIdentifier [String] <p>Specifies the identifier of the CA certificate for the DB instance.</p>
-- @param _LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param _MasterUserPassword [String] <p>Contains the pending or in-progress change of the master credentials for the DB instance.</p>
-- @param _Port [IntegerOptional] <p>Specifies the pending port for the DB instance.</p>
-- @param _Iops [IntegerOptional] <p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is being applied.</p>
-- @param _AllocatedStorage [IntegerOptional] <p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be applied or is in progress. </p>
-- @param _EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param _DBInstanceClass [String] <p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or is in progress. </p>
-- @param _DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. </p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>Specifies the pending number of days for which automated backups are retained.</p>
-- @param _DBInstanceIdentifier [String] <p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be applied or is in progress. </p>
function M.PendingModifiedValues(_MultiAZ, _StorageType, _CACertificateIdentifier, _LicenseModel, _MasterUserPassword, _Port, _Iops, _AllocatedStorage, _EngineVersion, _DBInstanceClass, _DBSubnetGroupName, _BackupRetentionPeriod, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingModifiedValues")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["StorageType"] = _StorageType,
		["CACertificateIdentifier"] = _CACertificateIdentifier,
		["LicenseModel"] = _LicenseModel,
		["MasterUserPassword"] = _MasterUserPassword,
		["Port"] = _Port,
		["Iops"] = _Iops,
		["AllocatedStorage"] = _AllocatedStorage,
		["EngineVersion"] = _EngineVersion,
		["DBInstanceClass"] = _DBInstanceClass,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertPendingModifiedValues(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBParameterGroupsMessage(_Marker, _DBParameterGroupName, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBParameterGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroupName"] = _DBParameterGroupName,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeDBParameterGroupsMessage(t)
	return t
end

keys.CreateDBInstanceMessage = { ["DBParameterGroupName"] = true, ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["MasterUsername"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["Domain"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["CharacterSetName"] = true, ["AvailabilityZone"] = true, ["MonitoringRoleArn"] = true, ["DBClusterIdentifier"] = true, ["StorageType"] = true, ["MasterUserPassword"] = true, ["Iops"] = true, ["StorageEncrypted"] = true, ["KmsKeyId"] = true, ["Timezone"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertCreateDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBInstanceClass"], "Expected key DBInstanceClass to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then asserts.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
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
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine will be used.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param _DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param _MasterUsername [String] <p>The name for the master database user.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the name for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 128 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>MySQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Oracle</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 30 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 63 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param _MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param _LicenseModel [String] <p>License model information for this DB instance.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB instance.</p> <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false. </p> <p> You can enable IAM database authentication for the following database engines:</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param _CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param _Engine [String] <p>The name of the database engine to be used for this instance. </p> <p>Not every database engine is available for every AWS region. </p> <p>Valid Values: </p> <ul> <li> <p> <code>aurora</code> </p> </li> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>
-- @param _MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment. You cannot set the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p>
-- @param _DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>
-- @param _Tags [TagList] 
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- @param _PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html">DB Instance Backups</a>. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow"> Adjusting the Preferred DB Instance Maintenance Window</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param _PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param _AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be initially allocated for the database instance.</p> <p>Type: Integer</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>MariaDB</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must be an integer from 10 to 6144.</p> <p> <b>SQL Server</b> </p> <p>Constraints: Must be an integer from 200 to 4096 (Standard Edition and Enterprise Edition) or from 20 to 4096 (Express Edition and Web Edition)</p>
-- @param _DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB instance.</p> <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
-- @param _DBName [String] <p>The meaning of this parameter differs according to the database engine you use.</p> <p>Type: String</p> <p> <b>MySQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>MariaDB</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, the default "postgres" database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 63 alphanumeric characters</p> </li> <li> <p>Must begin with a letter or an underscore. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>Oracle</b> </p> <p>The Oracle System ID (SID) of the created DB instance. If you specify <code>null</code>, the default value <code>ORCL</code> is used. You can't specify the string NULL, or any other reserved word, for <code>DBName</code>. </p> <p>Default: <code>ORCL</code> </p> <p>Constraints:</p> <ul> <li> <p>Cannot be longer than 8 characters</p> </li> </ul> <p> <b>SQL Server</b> </p> <p>Not applicable. Must be null.</p> <p> <b>Amazon Aurora</b> </p> <p>The name of the database to create when the primary instance of the DB cluster is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul>
-- @param _PreferredMaintenanceWindow [String] <p> The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBMaintenance.html">DB Instance Maintenance</a>. </p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param _TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param _Domain [String] <p>Specify the Active Directory Domain to create the instance in.</p>
-- @param _EngineVersion [String] <p>The version number of the database engine to use.</p> <p>The following are the database engines and major and minor versions that are available with Amazon RDS. Not every database engine is available for every AWS region.</p> <p> <b>Amazon Aurora</b> </p> <ul> <li> <p>Version 5.6 (available in these AWS regions: ap-northeast-1, ap-northeast-2, ap-south-1, ap-southeast-2, eu-west-1, us-east-1, us-east-2, us-west-2): <code> 5.6.10a</code> </p> </li> </ul> <p> <b>MariaDB</b> </p> <ul> <li> <p> <code>10.1.19</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.1.14</code> (supported in all regions except us-east-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>10.0.28</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.24</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.17</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2016</b> </p> <ul> <li> <p> <code>13.00.4422.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>13.00.2164.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> </ul> <p> <b>Microsoft SQL Server 2014</b> </p> <ul> <li> <p> <code>12.00.5546.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.5000.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.4422.0.v1</code> (supported for all editions except Enterprise Edition, and all AWS regions except ca-central-1 and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2012</b> </p> <ul> <li> <p> <code>11.00.6594.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.6020.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.5058.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>11.00.2100.60.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2008 R2</b> </p> <ul> <li> <p> <code>10.50.6529.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.6000.34.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.2789.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>MySQL</b> </p> <ul> <li> <p> <code>5.7.17</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.16</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.11</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.10</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.6.35</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.34</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.29</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.27</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.23</code> (supported in all regions except us-east-2, ap-south-1, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.22</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19a</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.5.54</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.53</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.46</code> (supported in all AWS regions)</p> </li> </ul> <p> <b>Oracle 12c</b> </p> <ul> <li> <p> <code>12.1.0.2.v8</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v7</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v6</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v5</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v4</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v3</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v2</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v1</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> </ul> <p> <b>Oracle 11g</b> </p> <ul> <li> <p> <code>11.2.0.4.v12</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v11</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v10</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v9</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v8</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v7</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v6</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v5</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v4</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v3</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v1</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <ul> <li> <p> <b>Version 9.6.x:</b> <code> 9.6.1 | 9.6.2</code> </p> </li> <li> <p> <b>Version 9.5.x:</b> <code>9.5.6 | 9.5.4 | 9.5.2</code> </p> </li> <li> <p> <b>Version 9.4.x:</b> <code>9.4.11 | 9.4.9 | 9.4.7</code> </p> </li> <li> <p> <b>Version 9.3.x:</b> <code>9.3.16 | 9.3.14 | 9.3.12</code> </p> </li> </ul>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- @param _OptionGroupName [String] <p>Indicates that the DB instance should be associated with the specified option group.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param _CharacterSetName [String] <p>For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.</p>
-- @param _AvailabilityZone [String] <p> The EC2 Availability Zone that the database instance will be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The AvailabilityZone parameter cannot be specified if the MultiAZ parameter is set to <code>true</code>. The specified Availability Zone must be in the same region as the current endpoint. </p>
-- @param _MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param _DBClusterIdentifier [String] <p>The identifier of the DB cluster that the instance will belong to.</p> <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p> <p>Type: String</p>
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param _MasterUserPassword [String] <p>The password for the master database user. Can be any printable ASCII character except "/", """, or "@".</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the password for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must contain from 8 to 30 characters.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p>
-- @param _Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be a multiple between 3 and 10 of the storage amount for the DB instance. Must also be an integer multiple of 1000. For example, if the size of your DB instance is 500 GB, then your <code>Iops</code> value can be 2000, 3000, 4000, or 5000. </p>
-- @param _StorageEncrypted [BooleanOptional] <p>Specifies whether the DB instance is encrypted.</p> <p>Default: false</p>
-- @param _KmsKeyId [String] <p>The KMS key identifier for an encrypted DB instance.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param _Timezone [String] <p>The time zone of the DB instance. The time zone parameter is currently supported only by <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone">Microsoft SQL Server</a>. </p>
-- @param _DBInstanceClass [String] <p>The compute and memory capacity of the DB instance. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param _Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server).</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: DBInstanceClass
-- Required parameter: Engine
function M.CreateDBInstanceMessage(_DBParameterGroupName, _PubliclyAccessible, _DomainIAMRoleName, _MasterUsername, _MonitoringInterval, _LicenseModel, _VpcSecurityGroupIds, _EnableIAMDatabaseAuthentication, _CopyTagsToSnapshot, _Engine, _MultiAZ, _DBSecurityGroups, _Tags, _AutoMinorVersionUpgrade, _PreferredBackupWindow, _PromotionTier, _TdeCredentialArn, _AllocatedStorage, _DBSubnetGroupName, _DBName, _PreferredMaintenanceWindow, _TdeCredentialPassword, _Domain, _EngineVersion, _BackupRetentionPeriod, _OptionGroupName, _CharacterSetName, _AvailabilityZone, _MonitoringRoleArn, _DBClusterIdentifier, _StorageType, _MasterUserPassword, _Iops, _StorageEncrypted, _KmsKeyId, _Timezone, _DBInstanceClass, _Port, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["DomainIAMRoleName"] = _DomainIAMRoleName,
		["MasterUsername"] = _MasterUsername,
		["MonitoringInterval"] = _MonitoringInterval,
		["LicenseModel"] = _LicenseModel,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["Engine"] = _Engine,
		["MultiAZ"] = _MultiAZ,
		["DBSecurityGroups"] = _DBSecurityGroups,
		["Tags"] = _Tags,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["PromotionTier"] = _PromotionTier,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["AllocatedStorage"] = _AllocatedStorage,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["DBName"] = _DBName,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["TdeCredentialPassword"] = _TdeCredentialPassword,
		["Domain"] = _Domain,
		["EngineVersion"] = _EngineVersion,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["OptionGroupName"] = _OptionGroupName,
		["CharacterSetName"] = _CharacterSetName,
		["AvailabilityZone"] = _AvailabilityZone,
		["MonitoringRoleArn"] = _MonitoringRoleArn,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["StorageType"] = _StorageType,
		["MasterUserPassword"] = _MasterUserPassword,
		["Iops"] = _Iops,
		["StorageEncrypted"] = _StorageEncrypted,
		["KmsKeyId"] = _KmsKeyId,
		["Timezone"] = _Timezone,
		["DBInstanceClass"] = _DBInstanceClass,
		["Port"] = _Port,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertCreateDBInstanceMessage(t)
	return t
end

keys.CertificateMessage = { ["Certificates"] = true, ["Marker"] = true, nil }

function asserts.AssertCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateMessage to be of type 'table'")
	if struct["Certificates"] then asserts.AssertCertificateList(struct["Certificates"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateMessage[k], "CertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateMessage
-- <p>Data returned by the <b>DescribeCertificates</b> action.</p>
-- @param _Certificates [CertificateList] <p>The list of <a>Certificate</a> objects for the AWS account.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
function M.CertificateMessage(_Certificates, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateMessage")
	local t = { 
		["Certificates"] = _Certificates,
		["Marker"] = _Marker,
	}
	asserts.AssertCertificateMessage(t)
	return t
end

keys.OptionGroup = { ["VpcId"] = true, ["MajorEngineVersion"] = true, ["OptionGroupDescription"] = true, ["Options"] = true, ["OptionGroupArn"] = true, ["EngineName"] = true, ["AllowsVpcAndNonVpcInstanceMemberships"] = true, ["OptionGroupName"] = true, nil }

function asserts.AssertOptionGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroup to be of type 'table'")
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupDescription"] then asserts.AssertString(struct["OptionGroupDescription"]) end
	if struct["Options"] then asserts.AssertOptionsList(struct["Options"]) end
	if struct["OptionGroupArn"] then asserts.AssertString(struct["OptionGroupArn"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["AllowsVpcAndNonVpcInstanceMemberships"] then asserts.AssertBoolean(struct["AllowsVpcAndNonVpcInstanceMemberships"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroup[k], "OptionGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroup
-- <p/>
-- @param _VpcId [String] <p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank. If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank, then this option group can be applied to both VPC and non-VPC instances. If this field contains a value, then this option group can only be applied to instances that are in the VPC indicated by this field. </p>
-- @param _MajorEngineVersion [String] <p>Indicates the major engine version associated with this option group.</p>
-- @param _OptionGroupDescription [String] <p>Provides a description of the option group.</p>
-- @param _Options [OptionsList] <p>Indicates what options are available in the option group.</p>
-- @param _OptionGroupArn [String] <p>The Amazon Resource Name (ARN) for the option group.</p>
-- @param _EngineName [String] <p>Indicates the name of the engine that this option group can be applied to.</p>
-- @param _AllowsVpcAndNonVpcInstanceMemberships [Boolean] <p>Indicates whether this option group can be applied to both VPC and non-VPC instances. The value <code>true</code> indicates the option group can be applied to both VPC and non-VPC instances. </p>
-- @param _OptionGroupName [String] <p>Specifies the name of the option group.</p>
function M.OptionGroup(_VpcId, _MajorEngineVersion, _OptionGroupDescription, _Options, _OptionGroupArn, _EngineName, _AllowsVpcAndNonVpcInstanceMemberships, _OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroup")
	local t = { 
		["VpcId"] = _VpcId,
		["MajorEngineVersion"] = _MajorEngineVersion,
		["OptionGroupDescription"] = _OptionGroupDescription,
		["Options"] = _Options,
		["OptionGroupArn"] = _OptionGroupArn,
		["EngineName"] = _EngineName,
		["AllowsVpcAndNonVpcInstanceMemberships"] = _AllowsVpcAndNonVpcInstanceMemberships,
		["OptionGroupName"] = _OptionGroupName,
	}
	asserts.AssertOptionGroup(t)
	return t
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
function M.InvalidDBSubnetGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBSubnetGroupStateFault(t)
	return t
end

keys.AuthorizeDBSecurityGroupIngressResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertAuthorizeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeDBSecurityGroupIngressResult[k], "AuthorizeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressResult
--  
-- @param _DBSecurityGroup [DBSecurityGroup] 
function M.AuthorizeDBSecurityGroupIngressResult(_DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeDBSecurityGroupIngressResult")
	local t = { 
		["DBSecurityGroup"] = _DBSecurityGroup,
	}
	asserts.AssertAuthorizeDBSecurityGroupIngressResult(t)
	return t
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
function M.ProvisionedIopsNotAvailableInAZFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedIopsNotAvailableInAZFault")
	local t = { 
	}
	asserts.AssertProvisionedIopsNotAvailableInAZFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBParameterGroupFamily [String] <p>The name of the DB parameter group family.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>Not currently supported.</p>
-- Required parameter: DBParameterGroupFamily
function M.DescribeEngineDefaultParametersMessage(_Marker, _DBParameterGroupFamily, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultParametersMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEngineDefaultParametersMessage(t)
	return t
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
function M.InvalidDBSecurityGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSecurityGroupStateFault")
	local t = { 
	}
	asserts.AssertInvalidDBSecurityGroupStateFault(t)
	return t
end

keys.OptionGroupAlreadyExistsFault = { nil }

function asserts.AssertOptionGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupAlreadyExistsFault[k], "OptionGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupAlreadyExistsFault
-- <p>The option group you are trying to create already exists.</p>
function M.OptionGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertOptionGroupAlreadyExistsFault(t)
	return t
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
function M.InsufficientDBClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDBClusterCapacityFault")
	local t = { 
	}
	asserts.AssertInsufficientDBClusterCapacityFault(t)
	return t
end

keys.DescribeDBLogFilesResponse = { ["DescribeDBLogFiles"] = true, ["Marker"] = true, nil }

function asserts.AssertDescribeDBLogFilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesResponse to be of type 'table'")
	if struct["DescribeDBLogFiles"] then asserts.AssertDescribeDBLogFilesList(struct["DescribeDBLogFiles"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesResponse[k], "DescribeDBLogFilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesResponse
-- <p> The response from a call to <a>DescribeDBLogFiles</a>. </p>
-- @param _DescribeDBLogFiles [DescribeDBLogFilesList] <p>The DB log files returned.</p>
-- @param _Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBLogFiles request.</p>
function M.DescribeDBLogFilesResponse(_DescribeDBLogFiles, _Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesResponse")
	local t = { 
		["DescribeDBLogFiles"] = _DescribeDBLogFiles,
		["Marker"] = _Marker,
	}
	asserts.AssertDescribeDBLogFilesResponse(t)
	return t
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
function M.SharedSnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SharedSnapshotQuotaExceededFault")
	local t = { 
	}
	asserts.AssertSharedSnapshotQuotaExceededFault(t)
	return t
end

keys.CopyOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertCopyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyOptionGroupResult[k], "CopyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupResult
--  
-- @param _OptionGroup [OptionGroup] 
function M.CopyOptionGroupResult(_OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyOptionGroupResult")
	local t = { 
		["OptionGroup"] = _OptionGroup,
	}
	asserts.AssertCopyOptionGroupResult(t)
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
-- @param _RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- @param _DBClusterIdentifier [String] <p>The name of the DB cluster to disassociate the IAM role from.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: RoleArn
function M.RemoveRoleFromDBClusterMessage(_RoleArn, _DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveRoleFromDBClusterMessage")
	local t = { 
		["RoleArn"] = _RoleArn,
		["DBClusterIdentifier"] = _DBClusterIdentifier,
	}
	asserts.AssertRemoveRoleFromDBClusterMessage(t)
	return t
end

keys.DBSecurityGroup = { ["VpcId"] = true, ["DBSecurityGroupDescription"] = true, ["IPRanges"] = true, ["OwnerId"] = true, ["DBSecurityGroupArn"] = true, ["EC2SecurityGroups"] = true, ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDBSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroup to be of type 'table'")
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["DBSecurityGroupDescription"] then asserts.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["IPRanges"] then asserts.AssertIPRangeList(struct["IPRanges"]) end
	if struct["OwnerId"] then asserts.AssertString(struct["OwnerId"]) end
	if struct["DBSecurityGroupArn"] then asserts.AssertString(struct["DBSecurityGroupArn"]) end
	if struct["EC2SecurityGroups"] then asserts.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSecurityGroup[k], "DBSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroup
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>CreateDBSecurityGroup</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action.</p>
-- @param _VpcId [String] <p>Provides the VpcId of the DB security group.</p>
-- @param _DBSecurityGroupDescription [String] <p>Provides the description of the DB security group.</p>
-- @param _IPRanges [IPRangeList] <p> Contains a list of <a>IPRange</a> elements. </p>
-- @param _OwnerId [String] <p>Provides the AWS ID of the owner of a specific DB security group.</p>
-- @param _DBSecurityGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB security group.</p>
-- @param _EC2SecurityGroups [EC2SecurityGroupList] <p> Contains a list of <a>EC2SecurityGroup</a> elements. </p>
-- @param _DBSecurityGroupName [String] <p>Specifies the name of the DB security group.</p>
function M.DBSecurityGroup(_VpcId, _DBSecurityGroupDescription, _IPRanges, _OwnerId, _DBSecurityGroupArn, _EC2SecurityGroups, _DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroup")
	local t = { 
		["VpcId"] = _VpcId,
		["DBSecurityGroupDescription"] = _DBSecurityGroupDescription,
		["IPRanges"] = _IPRanges,
		["OwnerId"] = _OwnerId,
		["DBSecurityGroupArn"] = _DBSecurityGroupArn,
		["EC2SecurityGroups"] = _EC2SecurityGroups,
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertDBSecurityGroup(t)
	return t
end

keys.EC2SecurityGroup = { ["Status"] = true, ["EC2SecurityGroupName"] = true, ["EC2SecurityGroupOwnerId"] = true, ["EC2SecurityGroupId"] = true, nil }

function asserts.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then asserts.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then asserts.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["EC2SecurityGroupId"] then asserts.AssertString(struct["EC2SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EC2SecurityGroup[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul>
-- @param _Status [String] <p>Provides the status of the EC2 security group. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- @param _EC2SecurityGroupName [String] <p>Specifies the name of the EC2 security group.</p>
-- @param _EC2SecurityGroupOwnerId [String] <p> Specifies the AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>
-- @param _EC2SecurityGroupId [String] <p>Specifies the id of the EC2 security group.</p>
function M.EC2SecurityGroup(_Status, _EC2SecurityGroupName, _EC2SecurityGroupOwnerId, _EC2SecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2SecurityGroup")
	local t = { 
		["Status"] = _Status,
		["EC2SecurityGroupName"] = _EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = _EC2SecurityGroupOwnerId,
		["EC2SecurityGroupId"] = _EC2SecurityGroupId,
	}
	asserts.AssertEC2SecurityGroup(t)
	return t
end

keys.DescribeOptionGroupOptionsMessage = { ["Marker"] = true, ["EngineName"] = true, ["MaxRecords"] = true, ["MajorEngineVersion"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupOptionsMessage to be of type 'table'")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["EngineName"] then asserts.AssertString(struct["EngineName"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["MajorEngineVersion"] then asserts.AssertString(struct["MajorEngineVersion"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOptionGroupOptionsMessage[k], "DescribeOptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupOptionsMessage
-- <p/>
-- @param _Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @param _EngineName [String] <p>A required parameter. Options available for the given engine name will be described.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _MajorEngineVersion [String] <p>If specified, filters the results to include only options for the specified major engine version.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: EngineName
function M.DescribeOptionGroupOptionsMessage(_Marker, _EngineName, _MaxRecords, _MajorEngineVersion, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOptionGroupOptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["EngineName"] = _EngineName,
		["MaxRecords"] = _MaxRecords,
		["MajorEngineVersion"] = _MajorEngineVersion,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeOptionGroupOptionsMessage(t)
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
-- <p>The specified CIDRIP or EC2 security group is already authorized for the specified DB security group.</p>
function M.AuthorizationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertAuthorizationAlreadyExistsFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBParameterGroups [DBParameterGroupList] <p> A list of <a>DBParameterGroup</a> instances. </p>
function M.DBParameterGroupsMessage(_Marker, _DBParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroups"] = _DBParameterGroups,
	}
	asserts.AssertDBParameterGroupsMessage(t)
	return t
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
-- <p>The specified option group could not be found.</p>
function M.OptionGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertOptionGroupNotFoundFault(t)
	return t
end

keys.DBSnapshot = { ["MasterUsername"] = true, ["LicenseModel"] = true, ["InstanceCreateTime"] = true, ["Engine"] = true, ["VpcId"] = true, ["SourceRegion"] = true, ["AllocatedStorage"] = true, ["Status"] = true, ["PercentProgress"] = true, ["SourceDBSnapshotIdentifier"] = true, ["DBSnapshotIdentifier"] = true, ["DBSnapshotArn"] = true, ["EngineVersion"] = true, ["TdeCredentialArn"] = true, ["OptionGroupName"] = true, ["SnapshotCreateTime"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Encrypted"] = true, ["IAMDatabaseAuthenticationEnabled"] = true, ["Iops"] = true, ["KmsKeyId"] = true, ["SnapshotType"] = true, ["Timezone"] = true, ["Port"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDBSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshot to be of type 'table'")
	if struct["MasterUsername"] then asserts.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["InstanceCreateTime"] then asserts.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["VpcId"] then asserts.AssertString(struct["VpcId"]) end
	if struct["SourceRegion"] then asserts.AssertString(struct["SourceRegion"]) end
	if struct["AllocatedStorage"] then asserts.AssertInteger(struct["AllocatedStorage"]) end
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then asserts.AssertInteger(struct["PercentProgress"]) end
	if struct["SourceDBSnapshotIdentifier"] then asserts.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotArn"] then asserts.AssertString(struct["DBSnapshotArn"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotCreateTime"] then asserts.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Encrypted"] then asserts.AssertBoolean(struct["Encrypted"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then asserts.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotType"] then asserts.AssertString(struct["SnapshotType"]) end
	if struct["Timezone"] then asserts.AssertString(struct["Timezone"]) end
	if struct["Port"] then asserts.AssertInteger(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshot[k], "DBSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshot
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSnapshot</a> </p> </li> <li> <p> <a>DeleteDBSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSnapshots</a> action.</p>
-- @param _MasterUsername [String] <p>Provides the master username for the DB snapshot.</p>
-- @param _LicenseModel [String] <p>License model information for the restored DB instance.</p>
-- @param _InstanceCreateTime [TStamp] <p>Specifies the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param _Engine [String] <p>Specifies the name of the database engine.</p>
-- @param _VpcId [String] <p>Provides the VPC ID associated with the DB snapshot.</p>
-- @param _SourceRegion [String] <p>The region that the DB snapshot was created in or copied from.</p>
-- @param _AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- @param _Status [String] <p>Specifies the status of this DB snapshot.</p>
-- @param _PercentProgress [Integer] <p>The percentage of the estimated data that has been transferred.</p>
-- @param _SourceDBSnapshotIdentifier [String] <p>The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.</p>
-- @param _DBSnapshotIdentifier [String] <p>Specifies the identifier for the DB snapshot.</p>
-- @param _DBSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
-- @param _EngineVersion [String] <p>Specifies the version of the database engine.</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
-- @param _OptionGroupName [String] <p>Provides the option group name for the DB snapshot.</p>
-- @param _SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param _AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
-- @param _StorageType [String] <p>Specifies the storage type associated with DB snapshot.</p>
-- @param _Encrypted [Boolean] <p>Specifies whether the DB snapshot is encrypted.</p>
-- @param _IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param _Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
-- @param _KmsKeyId [String] <p> If <code>Encrypted</code> is true, the KMS key identifier for the encrypted DB snapshot. </p>
-- @param _SnapshotType [String] <p>Provides the type of the DB snapshot.</p>
-- @param _Timezone [String] <p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- @param _Port [Integer] <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
-- @param _DBInstanceIdentifier [String] <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
function M.DBSnapshot(_MasterUsername, _LicenseModel, _InstanceCreateTime, _Engine, _VpcId, _SourceRegion, _AllocatedStorage, _Status, _PercentProgress, _SourceDBSnapshotIdentifier, _DBSnapshotIdentifier, _DBSnapshotArn, _EngineVersion, _TdeCredentialArn, _OptionGroupName, _SnapshotCreateTime, _AvailabilityZone, _StorageType, _Encrypted, _IAMDatabaseAuthenticationEnabled, _Iops, _KmsKeyId, _SnapshotType, _Timezone, _Port, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshot")
	local t = { 
		["MasterUsername"] = _MasterUsername,
		["LicenseModel"] = _LicenseModel,
		["InstanceCreateTime"] = _InstanceCreateTime,
		["Engine"] = _Engine,
		["VpcId"] = _VpcId,
		["SourceRegion"] = _SourceRegion,
		["AllocatedStorage"] = _AllocatedStorage,
		["Status"] = _Status,
		["PercentProgress"] = _PercentProgress,
		["SourceDBSnapshotIdentifier"] = _SourceDBSnapshotIdentifier,
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["DBSnapshotArn"] = _DBSnapshotArn,
		["EngineVersion"] = _EngineVersion,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["OptionGroupName"] = _OptionGroupName,
		["SnapshotCreateTime"] = _SnapshotCreateTime,
		["AvailabilityZone"] = _AvailabilityZone,
		["StorageType"] = _StorageType,
		["Encrypted"] = _Encrypted,
		["IAMDatabaseAuthenticationEnabled"] = _IAMDatabaseAuthenticationEnabled,
		["Iops"] = _Iops,
		["KmsKeyId"] = _KmsKeyId,
		["SnapshotType"] = _SnapshotType,
		["Timezone"] = _Timezone,
		["Port"] = _Port,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDBSnapshot(t)
	return t
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
function M.DBClusterRoleQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBClusterRoleQuotaExceededFault(t)
	return t
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
function M.InsufficientStorageClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientStorageClusterCapacityFault")
	local t = { 
	}
	asserts.AssertInsufficientStorageClusterCapacityFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBParameterGroupFamily [String] <p>The name of the DB cluster parameter group family to return engine parameter information for.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: DBParameterGroupFamily
function M.DescribeEngineDefaultClusterParametersMessage(_Marker, _DBParameterGroupFamily, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultClusterParametersMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeEngineDefaultClusterParametersMessage(t)
	return t
end

keys.ModifyDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, ["EngineVersion"] = true, nil }

function asserts.AssertModifyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["EngineVersion"] then asserts.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotMessage[k], "ModifyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotMessage
--  
-- @param _DBSnapshotIdentifier [String] <p>The identifier of the DB snapshot to modify.</p>
-- @param _EngineVersion [String] <p>The engine version to update the DB snapshot to. </p>
-- Required parameter: DBSnapshotIdentifier
function M.ModifyDBSnapshotMessage(_DBSnapshotIdentifier, _EngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["EngineVersion"] = _EngineVersion,
	}
	asserts.AssertModifyDBSnapshotMessage(t)
	return t
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
function M.InsufficientDBInstanceCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDBInstanceCapacityFault")
	local t = { 
	}
	asserts.AssertInsufficientDBInstanceCapacityFault(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @param _DBParameterGroupFamily [String] <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
-- @param _Description [String] <p>The description for the DB cluster parameter group.</p>
-- @param _Tags [TagList] 
-- Required parameter: DBClusterParameterGroupName
-- Required parameter: DBParameterGroupFamily
-- Required parameter: Description
function M.CreateDBClusterParameterGroupMessage(_DBClusterParameterGroupName, _DBParameterGroupFamily, _Description, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["Description"] = _Description,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateDBClusterParameterGroupMessage(t)
	return t
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
-- @param _Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>
-- @param _DBClusters [DBClusterList] <p>Contains a list of DB clusters for the user.</p>
function M.DBClusterMessage(_Marker, _DBClusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBClusters"] = _DBClusters,
	}
	asserts.AssertDBClusterMessage(t)
	return t
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
-- @param _EventCategories [EventCategoriesList] <p>The event categories for the specified source type</p>
-- @param _SourceType [String] <p>The source type that the returned categories belong to</p>
function M.EventCategoriesMap(_EventCategories, _SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMap")
	local t = { 
		["EventCategories"] = _EventCategories,
		["SourceType"] = _SourceType,
	}
	asserts.AssertEventCategoriesMap(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _OrderableDBInstanceOptions [OrderableDBInstanceOptionsList] <p>An <a>OrderableDBInstanceOption</a> structure containing information about orderable options for the DB instance.</p>
function M.OrderableDBInstanceOptionsMessage(_Marker, _OrderableDBInstanceOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableDBInstanceOptionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["OrderableDBInstanceOptions"] = _OrderableDBInstanceOptions,
	}
	asserts.AssertOrderableDBInstanceOptionsMessage(t)
	return t
end

keys.DescribeDBSnapshotAttributesResult = { ["DBSnapshotAttributesResult"] = true, nil }

function asserts.AssertDescribeDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then asserts.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBSnapshotAttributesResult[k], "DescribeDBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesResult
--  
-- @param _DBSnapshotAttributesResult [DBSnapshotAttributesResult] 
function M.DescribeDBSnapshotAttributesResult(_DBSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotAttributesResult")
	local t = { 
		["DBSnapshotAttributesResult"] = _DBSnapshotAttributesResult,
	}
	asserts.AssertDescribeDBSnapshotAttributesResult(t)
	return t
end

keys.AccountQuota = { ["Max"] = true, ["AccountQuotaName"] = true, ["Used"] = true, nil }

function asserts.AssertAccountQuota(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountQuota to be of type 'table'")
	if struct["Max"] then asserts.AssertLong(struct["Max"]) end
	if struct["AccountQuotaName"] then asserts.AssertString(struct["AccountQuotaName"]) end
	if struct["Used"] then asserts.AssertLong(struct["Used"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountQuota[k], "AccountQuota contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountQuota
-- <p>Describes a quota for an AWS account, for example, the number of DB instances allowed.</p>
-- @param _Max [Long] <p>The maximum allowed value for the quota.</p>
-- @param _AccountQuotaName [String] <p>The name of the Amazon RDS quota for this AWS account.</p>
-- @param _Used [Long] <p>The amount currently used toward the quota maximum.</p>
function M.AccountQuota(_Max, _AccountQuotaName, _Used, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountQuota")
	local t = { 
		["Max"] = _Max,
		["AccountQuotaName"] = _AccountQuotaName,
		["Used"] = _Used,
	}
	asserts.AssertAccountQuota(t)
	return t
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
-- @param _DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _Source [String] <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: DBClusterParameterGroupName
function M.DescribeDBClusterParametersMessage(_DBClusterParameterGroupName, _Source, _MaxRecords, _Marker, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterParametersMessage")
	local t = { 
		["DBClusterParameterGroupName"] = _DBClusterParameterGroupName,
		["Source"] = _Source,
		["MaxRecords"] = _MaxRecords,
		["Marker"] = _Marker,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeDBClusterParametersMessage(t)
	return t
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
-- @param _DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- @param _SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the DB subnet group.</p>
-- Required parameter: DBSubnetGroupName
-- Required parameter: SubnetIds
function M.ModifyDBSubnetGroupMessage(_DBSubnetGroupName, _DBSubnetGroupDescription, _SubnetIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["DBSubnetGroupDescription"] = _DBSubnetGroupDescription,
		["SubnetIds"] = _SubnetIds,
	}
	asserts.AssertModifyDBSubnetGroupMessage(t)
	return t
end

keys.DownloadDBLogFilePortionMessage = { ["Marker"] = true, ["NumberOfLines"] = true, ["LogFileName"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDownloadDBLogFilePortionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["LogFileName"], "Expected key LogFileName to exist in table")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["NumberOfLines"] then asserts.AssertInteger(struct["NumberOfLines"]) end
	if struct["LogFileName"] then asserts.AssertString(struct["LogFileName"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DownloadDBLogFilePortionMessage[k], "DownloadDBLogFilePortionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionMessage
-- <p/>
-- @param _Marker [String] <p>The pagination token provided in the previous request or "0". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>
-- @param _NumberOfLines [Integer] <p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file will be truncated at 1 MB in size.</p> <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning or the end of the log file, depending on the value of the Marker parameter.</p> <ul> <li> <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a maximum of 10000 lines, starting with the most recent log entries first.</p> </li> <li> <p>If NumberOfLines is specified and Marker is not specified, then the most recent lines from the end of the log file are returned.</p> </li> <li> <p>If Marker is specified as "0", then the specified number of lines from the beginning of the log file are returned.</p> </li> <li> <p>You can download the log file in blocks of lines by specifying the size of the block using the NumberOfLines parameter, and by specifying a value of "0" for the Marker parameter in your first request. Include the Marker value returned in the response as the Marker value for the next request, continuing until the AdditionalDataPending response element returns false.</p> </li> </ul>
-- @param _LogFileName [String] <p>The name of the log file to be downloaded.</p>
-- @param _DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: LogFileName
function M.DownloadDBLogFilePortionMessage(_Marker, _NumberOfLines, _LogFileName, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDBLogFilePortionMessage")
	local t = { 
		["Marker"] = _Marker,
		["NumberOfLines"] = _NumberOfLines,
		["LogFileName"] = _LogFileName,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDownloadDBLogFilePortionMessage(t)
	return t
end

keys.ModifyDBSnapshotAttributeResult = { ["DBSnapshotAttributesResult"] = true, nil }

function asserts.AssertModifyDBSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then asserts.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBSnapshotAttributeResult[k], "ModifyDBSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeResult
--  
-- @param _DBSnapshotAttributesResult [DBSnapshotAttributesResult] 
function M.ModifyDBSnapshotAttributeResult(_DBSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotAttributeResult")
	local t = { 
		["DBSnapshotAttributesResult"] = _DBSnapshotAttributesResult,
	}
	asserts.AssertModifyDBSnapshotAttributeResult(t)
	return t
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
-- @param _DBClusterSnapshot [DBClusterSnapshot] 
function M.CopyDBClusterSnapshotResult(_DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = _DBClusterSnapshot,
	}
	asserts.AssertCopyDBClusterSnapshotResult(t)
	return t
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
-- @param _SourceDBParameterGroupIdentifier [String] <p> The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB parameter group.</p> </li> <li> <p> Must specify a valid DB parameter group identifier, for example <code>my-db-param-group</code>, or a valid ARN.</p> </li> </ul>
-- @param _TargetDBParameterGroupDescription [String] <p>A description for the copied DB parameter group.</p>
-- @param _TargetDBParameterGroupIdentifier [String] <p>The identifier for the copied DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-parameter-group</code> </p>
-- @param _Tags [TagList] 
-- Required parameter: SourceDBParameterGroupIdentifier
-- Required parameter: TargetDBParameterGroupIdentifier
-- Required parameter: TargetDBParameterGroupDescription
function M.CopyDBParameterGroupMessage(_SourceDBParameterGroupIdentifier, _TargetDBParameterGroupDescription, _TargetDBParameterGroupIdentifier, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBParameterGroupMessage")
	local t = { 
		["SourceDBParameterGroupIdentifier"] = _SourceDBParameterGroupIdentifier,
		["TargetDBParameterGroupDescription"] = _TargetDBParameterGroupDescription,
		["TargetDBParameterGroupIdentifier"] = _TargetDBParameterGroupIdentifier,
		["Tags"] = _Tags,
	}
	asserts.AssertCopyDBParameterGroupMessage(t)
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
-- <p> Contains the result of a successful invocation of the <a>DescribeEvents</a> action. </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _Events [EventList] <p> A list of <a>Event</a> instances. </p>
function M.EventsMessage(_Marker, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventsMessage")
	local t = { 
		["Marker"] = _Marker,
		["Events"] = _Events,
	}
	asserts.AssertEventsMessage(t)
	return t
end

keys.DeleteDBSnapshotMessage = { ["DBSnapshotIdentifier"] = true, nil }

function asserts.AssertDeleteDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSnapshotMessage[k], "DeleteDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotMessage
-- <p/>
-- @param _DBSnapshotIdentifier [String] <p>The DBSnapshot identifier.</p> <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>
-- Required parameter: DBSnapshotIdentifier
function M.DeleteDBSnapshotMessage(_DBSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
	}
	asserts.AssertDeleteDBSnapshotMessage(t)
	return t
end

keys.ReservedDBInstancesOffering = { ["MultiAZ"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["UsagePrice"] = true, ["ReservedDBInstancesOfferingId"] = true, ["RecurringCharges"] = true, ["ProductDescription"] = true, ["Duration"] = true, ["DBInstanceClass"] = true, ["CurrencyCode"] = true, nil }

function asserts.AssertReservedDBInstancesOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOffering to be of type 'table'")
	if struct["MultiAZ"] then asserts.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then asserts.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.AssertDouble(struct["FixedPrice"]) end
	if struct["UsagePrice"] then asserts.AssertDouble(struct["UsagePrice"]) end
	if struct["ReservedDBInstancesOfferingId"] then asserts.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then asserts.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ProductDescription"] then asserts.AssertString(struct["ProductDescription"]) end
	if struct["Duration"] then asserts.AssertInteger(struct["Duration"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["CurrencyCode"] then asserts.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOffering[k], "ReservedDBInstancesOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOffering
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param _MultiAZ [Boolean] <p>Indicates if the offering applies to Multi-AZ deployments.</p>
-- @param _OfferingType [String] <p>The offering type.</p>
-- @param _FixedPrice [Double] <p>The fixed price charged for this offering.</p>
-- @param _UsagePrice [Double] <p>The hourly price charged for this offering.</p>
-- @param _ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- @param _RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- @param _ProductDescription [String] <p>The database engine used by the offering.</p>
-- @param _Duration [Integer] <p>The duration of the offering in seconds.</p>
-- @param _DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- @param _CurrencyCode [String] <p>The currency code for the reserved DB instance offering.</p>
function M.ReservedDBInstancesOffering(_MultiAZ, _OfferingType, _FixedPrice, _UsagePrice, _ReservedDBInstancesOfferingId, _RecurringCharges, _ProductDescription, _Duration, _DBInstanceClass, _CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOffering")
	local t = { 
		["MultiAZ"] = _MultiAZ,
		["OfferingType"] = _OfferingType,
		["FixedPrice"] = _FixedPrice,
		["UsagePrice"] = _UsagePrice,
		["ReservedDBInstancesOfferingId"] = _ReservedDBInstancesOfferingId,
		["RecurringCharges"] = _RecurringCharges,
		["ProductDescription"] = _ProductDescription,
		["Duration"] = _Duration,
		["DBInstanceClass"] = _DBInstanceClass,
		["CurrencyCode"] = _CurrencyCode,
	}
	asserts.AssertReservedDBInstancesOffering(t)
	return t
end

keys.OptionGroupQuotaExceededFault = { nil }

function asserts.AssertOptionGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupQuotaExceededFault[k], "OptionGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupQuotaExceededFault
-- <p>The quota of 20 option groups was exceeded for this AWS account.</p>
function M.OptionGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertOptionGroupQuotaExceededFault(t)
	return t
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
-- @param _ResourceName [String] <p>The Amazon RDS resource the tags will be added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param _Tags [TagList] <p>The tags to be assigned to the Amazon RDS resource.</p>
-- Required parameter: ResourceName
-- Required parameter: Tags
function M.AddTagsToResourceMessage(_ResourceName, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceMessage")
	local t = { 
		["ResourceName"] = _ResourceName,
		["Tags"] = _Tags,
	}
	asserts.AssertAddTagsToResourceMessage(t)
	return t
end

keys.IPRange = { ["Status"] = true, ["CIDRIP"] = true, nil }

function asserts.AssertIPRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPRange to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["CIDRIP"] then asserts.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPRange[k], "IPRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPRange
-- <p> This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param _Status [String] <p>Specifies the status of the IP range. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- @param _CIDRIP [String] <p>Specifies the IP range.</p>
function M.IPRange(_Status, _CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPRange")
	local t = { 
		["Status"] = _Status,
		["CIDRIP"] = _CIDRIP,
	}
	asserts.AssertIPRange(t)
	return t
end

keys.ReservedDBInstanceQuotaExceededFault = { nil }

function asserts.AssertReservedDBInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceQuotaExceededFault[k], "ReservedDBInstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceQuotaExceededFault
-- <p>Request would exceed the user's DB Instance quota.</p>
function M.ReservedDBInstanceQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceQuotaExceededFault")
	local t = { 
	}
	asserts.AssertReservedDBInstanceQuotaExceededFault(t)
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
-- <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	asserts.AssertInvalidSubnet(t)
	return t
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
function M.DBClusterParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupNotFoundFault")
	local t = { 
	}
	asserts.AssertDBClusterParameterGroupNotFoundFault(t)
	return t
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
-- @param _DBClusterIdentifier [String] <p>A DB cluster identifier to force a failover for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _TargetDBInstanceIdentifier [String] <p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Aurora Replica in the DB cluster. For example, <code>mydbcluster-replica1</code>.</p>
function M.FailoverDBClusterMessage(_DBClusterIdentifier, _TargetDBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailoverDBClusterMessage")
	local t = { 
		["DBClusterIdentifier"] = _DBClusterIdentifier,
		["TargetDBInstanceIdentifier"] = _TargetDBInstanceIdentifier,
	}
	asserts.AssertFailoverDBClusterMessage(t)
	return t
end

keys.ModifyOptionGroupResult = { ["OptionGroup"] = true, nil }

function asserts.AssertModifyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then asserts.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyOptionGroupResult[k], "ModifyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupResult
--  
-- @param _OptionGroup [OptionGroup] 
function M.ModifyOptionGroupResult(_OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyOptionGroupResult")
	local t = { 
		["OptionGroup"] = _OptionGroup,
	}
	asserts.AssertModifyOptionGroupResult(t)
	return t
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
-- @param _DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
function M.DBParameterGroupNameMessage(_DBParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupNameMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
	}
	asserts.AssertDBParameterGroupNameMessage(t)
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
-- <p>The SNS topic ARN does not exist.</p>
function M.SNSTopicArnNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSTopicArnNotFoundFault")
	local t = { 
	}
	asserts.AssertSNSTopicArnNotFoundFault(t)
	return t
end

keys.Option = { ["DBSecurityGroupMemberships"] = true, ["OptionName"] = true, ["Persistent"] = true, ["VpcSecurityGroupMemberships"] = true, ["OptionSettings"] = true, ["Permanent"] = true, ["OptionVersion"] = true, ["Port"] = true, ["OptionDescription"] = true, nil }

function asserts.AssertOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Option to be of type 'table'")
	if struct["DBSecurityGroupMemberships"] then asserts.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then asserts.AssertString(struct["OptionName"]) end
	if struct["Persistent"] then asserts.AssertBoolean(struct["Persistent"]) end
	if struct["VpcSecurityGroupMemberships"] then asserts.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then asserts.AssertOptionSettingConfigurationList(struct["OptionSettings"]) end
	if struct["Permanent"] then asserts.AssertBoolean(struct["Permanent"]) end
	if struct["OptionVersion"] then asserts.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionDescription"] then asserts.AssertString(struct["OptionDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.Option[k], "Option contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Option
-- <p>Option details.</p>
-- @param _DBSecurityGroupMemberships [DBSecurityGroupMembershipList] <p>If the option requires access to a port, then this DB security group allows access to the port.</p>
-- @param _OptionName [String] <p>The name of the option.</p>
-- @param _Persistent [Boolean] <p>Indicate if this option is persistent.</p>
-- @param _VpcSecurityGroupMemberships [VpcSecurityGroupMembershipList] <p>If the option requires access to a port, then this VPC security group allows access to the port.</p>
-- @param _OptionSettings [OptionSettingConfigurationList] <p>The option settings for this option.</p>
-- @param _Permanent [Boolean] <p>Indicate if this option is permanent.</p>
-- @param _OptionVersion [String] <p>The version of the option.</p>
-- @param _Port [IntegerOptional] <p>If required, the port configured for this option to use.</p>
-- @param _OptionDescription [String] <p>The description of the option.</p>
function M.Option(_DBSecurityGroupMemberships, _OptionName, _Persistent, _VpcSecurityGroupMemberships, _OptionSettings, _Permanent, _OptionVersion, _Port, _OptionDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Option")
	local t = { 
		["DBSecurityGroupMemberships"] = _DBSecurityGroupMemberships,
		["OptionName"] = _OptionName,
		["Persistent"] = _Persistent,
		["VpcSecurityGroupMemberships"] = _VpcSecurityGroupMemberships,
		["OptionSettings"] = _OptionSettings,
		["Permanent"] = _Permanent,
		["OptionVersion"] = _OptionVersion,
		["Port"] = _Port,
		["OptionDescription"] = _OptionDescription,
	}
	asserts.AssertOption(t)
	return t
end

keys.DescribeDBLogFilesDetails = { ["LastWritten"] = true, ["LogFileName"] = true, ["Size"] = true, nil }

function asserts.AssertDescribeDBLogFilesDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesDetails to be of type 'table'")
	if struct["LastWritten"] then asserts.AssertLong(struct["LastWritten"]) end
	if struct["LogFileName"] then asserts.AssertString(struct["LogFileName"]) end
	if struct["Size"] then asserts.AssertLong(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesDetails[k], "DescribeDBLogFilesDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesDetails
-- <p>This data type is used as a response element to <a>DescribeDBLogFiles</a>.</p>
-- @param _LastWritten [Long] <p>A POSIX timestamp when the last log entry was written.</p>
-- @param _LogFileName [String] <p>The name of the log file for the specified DB instance.</p>
-- @param _Size [Long] <p>The size, in bytes, of the log file for the specified DB instance.</p>
function M.DescribeDBLogFilesDetails(_LastWritten, _LogFileName, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesDetails")
	local t = { 
		["LastWritten"] = _LastWritten,
		["LogFileName"] = _LogFileName,
		["Size"] = _Size,
	}
	asserts.AssertDescribeDBLogFilesDetails(t)
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
-- <p>You have reached the maximum number of event subscriptions.</p>
function M.EventSubscriptionQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionQuotaExceededFault")
	local t = { 
	}
	asserts.AssertEventSubscriptionQuotaExceededFault(t)
	return t
end

keys.OptionConfiguration = { ["DBSecurityGroupMemberships"] = true, ["OptionName"] = true, ["VpcSecurityGroupMemberships"] = true, ["OptionSettings"] = true, ["OptionVersion"] = true, ["Port"] = true, nil }

function asserts.AssertOptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionConfiguration to be of type 'table'")
	assert(struct["OptionName"], "Expected key OptionName to exist in table")
	if struct["DBSecurityGroupMemberships"] then asserts.AssertDBSecurityGroupNameList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then asserts.AssertString(struct["OptionName"]) end
	if struct["VpcSecurityGroupMemberships"] then asserts.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then asserts.AssertOptionSettingsList(struct["OptionSettings"]) end
	if struct["OptionVersion"] then asserts.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionConfiguration[k], "OptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionConfiguration
-- <p>A list of all available options</p>
-- @param _DBSecurityGroupMemberships [DBSecurityGroupNameList] <p>A list of DBSecurityGroupMemebrship name strings used for this option.</p>
-- @param _OptionName [String] <p>The configuration of options to include in a group.</p>
-- @param _VpcSecurityGroupMemberships [VpcSecurityGroupIdList] <p>A list of VpcSecurityGroupMemebrship name strings used for this option.</p>
-- @param _OptionSettings [OptionSettingsList] <p>The option settings to include in an option group.</p>
-- @param _OptionVersion [String] <p>The version for the option.</p>
-- @param _Port [IntegerOptional] <p>The optional port for the option.</p>
-- Required parameter: OptionName
function M.OptionConfiguration(_DBSecurityGroupMemberships, _OptionName, _VpcSecurityGroupMemberships, _OptionSettings, _OptionVersion, _Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionConfiguration")
	local t = { 
		["DBSecurityGroupMemberships"] = _DBSecurityGroupMemberships,
		["OptionName"] = _OptionName,
		["VpcSecurityGroupMemberships"] = _VpcSecurityGroupMemberships,
		["OptionSettings"] = _OptionSettings,
		["OptionVersion"] = _OptionVersion,
		["Port"] = _Port,
	}
	asserts.AssertOptionConfiguration(t)
	return t
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
-- @param _EngineDefaults [EngineDefaults] 
function M.DescribeEngineDefaultParametersResult(_EngineDefaults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultParametersResult")
	local t = { 
		["EngineDefaults"] = _EngineDefaults,
	}
	asserts.AssertDescribeEngineDefaultParametersResult(t)
	return t
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
-- @param _Status [String] <p>Status of the DB instance. For a StatusType of read replica, the values can be replicating, error, stopped, or terminated.</p>
-- @param _Message [String] <p>Details of the error if there is an error for the instance. If the instance is not in an error state, this value is blank.</p>
-- @param _StatusType [String] <p>This value is currently "read replication."</p>
-- @param _Normal [Boolean] <p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>
function M.DBInstanceStatusInfo(_Status, _Message, _StatusType, _Normal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceStatusInfo")
	local t = { 
		["Status"] = _Status,
		["Message"] = _Message,
		["StatusType"] = _StatusType,
		["Normal"] = _Normal,
	}
	asserts.AssertDBInstanceStatusInfo(t)
	return t
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
function M.DBClusterSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBClusterSnapshotAlreadyExistsFault(t)
	return t
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
-- @param _ResourceName [String] <p>The Amazon RDS resource the tags will be removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param _TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
-- Required parameter: ResourceName
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceMessage(_ResourceName, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceMessage")
	local t = { 
		["ResourceName"] = _ResourceName,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertRemoveTagsFromResourceMessage(t)
	return t
end

keys.RevokeDBSecurityGroupIngressResult = { ["DBSecurityGroup"] = true, nil }

function asserts.AssertRevokeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then asserts.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeDBSecurityGroupIngressResult[k], "RevokeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressResult
--  
-- @param _DBSecurityGroup [DBSecurityGroup] 
function M.RevokeDBSecurityGroupIngressResult(_DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeDBSecurityGroupIngressResult")
	local t = { 
		["DBSecurityGroup"] = _DBSecurityGroup,
	}
	asserts.AssertRevokeDBSecurityGroupIngressResult(t)
	return t
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
-- <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
function M.InvalidEventSubscriptionStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventSubscriptionStateFault")
	local t = { 
	}
	asserts.AssertInvalidEventSubscriptionStateFault(t)
	return t
end

keys.RestoreDBClusterFromS3Result = { ["DBCluster"] = true, nil }

function asserts.AssertRestoreDBClusterFromS3Result(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromS3Result to be of type 'table'")
	if struct["DBCluster"] then asserts.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBClusterFromS3Result[k], "RestoreDBClusterFromS3Result contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Result
--  
-- @param _DBCluster [DBCluster] 
function M.RestoreDBClusterFromS3Result(_DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromS3Result")
	local t = { 
		["DBCluster"] = _DBCluster,
	}
	asserts.AssertRestoreDBClusterFromS3Result(t)
	return t
end

keys.SourceRegionMessage = { ["Marker"] = true, ["SourceRegions"] = true, nil }

function asserts.AssertSourceRegionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegionMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["SourceRegions"] then asserts.AssertSourceRegionList(struct["SourceRegions"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceRegionMessage[k], "SourceRegionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegionMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeSourceRegions</a> action.</p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _SourceRegions [SourceRegionList] <p>A list of SourceRegion instances that contains each source AWS Region that the current region can get a Read Replica or a DB snapshot from.</p>
function M.SourceRegionMessage(_Marker, _SourceRegions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceRegionMessage")
	local t = { 
		["Marker"] = _Marker,
		["SourceRegions"] = _SourceRegions,
	}
	asserts.AssertSourceRegionMessage(t)
	return t
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
-- <p>A time zone associated with a <a>DBInstance</a> or a <a>DBSnapshot</a>. This data type is an element in the response to the <a>DescribeDBInstances</a>, the <a>DescribeDBSnapshots</a>, and the <a>DescribeDBEngineVersions</a> actions. </p>
-- @param _TimezoneName [String] <p>The name of the time zone.</p>
function M.Timezone(_TimezoneName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Timezone")
	local t = { 
		["TimezoneName"] = _TimezoneName,
	}
	asserts.AssertTimezone(t)
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
-- <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param _SubnetStatus [String] <p>Specifies the status of the subnet.</p>
-- @param _SubnetIdentifier [String] <p>Specifies the identifier of the subnet.</p>
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

keys.DescribeSourceRegionsMessage = { ["Marker"] = true, ["MaxRecords"] = true, ["Filters"] = true, ["RegionName"] = true, nil }

function asserts.AssertDescribeSourceRegionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSourceRegionsMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["RegionName"] then asserts.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSourceRegionsMessage[k], "DescribeSourceRegionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSourceRegionsMessage
-- <p/>
-- @param _Marker [String] <p> An optional pagination token provided by a previous <a>DescribeSourceRegions</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _RegionName [String] <p>The source region name. For example, <code>us-east-1</code>.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid AWS Region name.</p> </li> </ul>
function M.DescribeSourceRegionsMessage(_Marker, _MaxRecords, _Filters, _RegionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSourceRegionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
		["RegionName"] = _RegionName,
	}
	asserts.AssertDescribeSourceRegionsMessage(t)
	return t
end

keys.ReservedDBInstancesOfferingMessage = { ["Marker"] = true, ["ReservedDBInstancesOfferings"] = true, nil }

function asserts.AssertReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstancesOfferings"] then asserts.AssertReservedDBInstancesOfferingList(struct["ReservedDBInstancesOfferings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstancesOfferingMessage[k], "ReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _ReservedDBInstancesOfferings [ReservedDBInstancesOfferingList] <p>A list of reserved DB instance offerings.</p>
function M.ReservedDBInstancesOfferingMessage(_Marker, _ReservedDBInstancesOfferings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOfferingMessage")
	local t = { 
		["Marker"] = _Marker,
		["ReservedDBInstancesOfferings"] = _ReservedDBInstancesOfferings,
	}
	asserts.AssertReservedDBInstancesOfferingMessage(t)
	return t
end

keys.DescribeDBLogFilesMessage = { ["FileLastWritten"] = true, ["Marker"] = true, ["MaxRecords"] = true, ["FileSize"] = true, ["Filters"] = true, ["FilenameContains"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertDescribeDBLogFilesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FileLastWritten"] then asserts.AssertLong(struct["FileLastWritten"]) end
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then asserts.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["FileSize"] then asserts.AssertLong(struct["FileSize"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["FilenameContains"] then asserts.AssertString(struct["FilenameContains"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDBLogFilesMessage[k], "DescribeDBLogFilesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesMessage
-- <p/>
-- @param _FileLastWritten [Long] <p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>
-- @param _Marker [String] <p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>
-- @param _MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
-- @param _FileSize [Long] <p>Filters the available log files for files larger than the specified size.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param _FilenameContains [String] <p>Filters the available log files for log file names that contain the specified string.</p>
-- @param _DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.DescribeDBLogFilesMessage(_FileLastWritten, _Marker, _MaxRecords, _FileSize, _Filters, _FilenameContains, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesMessage")
	local t = { 
		["FileLastWritten"] = _FileLastWritten,
		["Marker"] = _Marker,
		["MaxRecords"] = _MaxRecords,
		["FileSize"] = _FileSize,
		["Filters"] = _Filters,
		["FilenameContains"] = _FilenameContains,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertDescribeDBLogFilesMessage(t)
	return t
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
-- @param _DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
-- Required parameter: DBClusterSnapshotIdentifier
function M.DescribeDBClusterSnapshotAttributesMessage(_DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotAttributesMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
	}
	asserts.AssertDescribeDBClusterSnapshotAttributesMessage(t)
	return t
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
function M.SnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotQuotaExceededFault")
	local t = { 
	}
	asserts.AssertSnapshotQuotaExceededFault(t)
	return t
end

keys.StartDBInstanceMessage = { ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertStartDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDBInstanceMessage[k], "StartDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceMessage
--  
-- @param _DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required parameter: DBInstanceIdentifier
function M.StartDBInstanceMessage(_DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDBInstanceMessage")
	local t = { 
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertStartDBInstanceMessage(t)
	return t
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
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _Parameters [ParametersList] <p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for the application method): <code>immediate | pending-reboot</code> </p> <note> <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p> </note>
-- Required parameter: DBParameterGroupName
-- Required parameter: Parameters
function M.ModifyDBParameterGroupMessage(_DBParameterGroupName, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["Parameters"] = _Parameters,
	}
	asserts.AssertModifyDBParameterGroupMessage(t)
	return t
end

keys.DeleteDBSecurityGroupMessage = { ["DBSecurityGroupName"] = true, nil }

function asserts.AssertDeleteDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["DBSecurityGroupName"] then asserts.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDBSecurityGroupMessage[k], "DeleteDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSecurityGroupMessage
-- <p/>
-- @param _DBSecurityGroupName [String] <p>The name of the DB security group to delete.</p> <note> <p>You cannot delete the default DB security group.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul>
-- Required parameter: DBSecurityGroupName
function M.DeleteDBSecurityGroupMessage(_DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSecurityGroupMessage")
	local t = { 
		["DBSecurityGroupName"] = _DBSecurityGroupName,
	}
	asserts.AssertDeleteDBSecurityGroupMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _DBSubnetGroupName [String] <p>The name of the DB subnet group to return details for.</p>
-- @param _MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param _Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBSubnetGroupsMessage(_Marker, _DBSubnetGroupName, _MaxRecords, _Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSubnetGroupsMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["MaxRecords"] = _MaxRecords,
		["Filters"] = _Filters,
	}
	asserts.AssertDescribeDBSubnetGroupsMessage(t)
	return t
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
-- @param _DBInstance [DBInstance] 
function M.DeleteDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertDeleteDBInstanceResult(t)
	return t
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
function M.DBClusterSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotNotFoundFault")
	local t = { 
	}
	asserts.AssertDBClusterSnapshotNotFoundFault(t)
	return t
end

keys.StartDBInstanceResult = { ["DBInstance"] = true, nil }

function asserts.AssertStartDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then asserts.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDBInstanceResult[k], "StartDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceResult
--  
-- @param _DBInstance [DBInstance] 
function M.StartDBInstanceResult(_DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDBInstanceResult")
	local t = { 
		["DBInstance"] = _DBInstance,
	}
	asserts.AssertStartDBInstanceResult(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _DBInstances [DBInstanceList] <p> A list of <a>DBInstance</a> instances. </p>
function M.DBInstanceMessage(_Marker, _DBInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceMessage")
	local t = { 
		["Marker"] = _Marker,
		["DBInstances"] = _DBInstances,
	}
	asserts.AssertDBInstanceMessage(t)
	return t
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
-- @param _Values [FilterValueList] <p>This parameter is not currently supported.</p>
-- @param _Name [String] <p>This parameter is not currently supported.</p>
-- Required parameter: Name
-- Required parameter: Values
function M.Filter(_Values, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Filter")
	local t = { 
		["Values"] = _Values,
		["Name"] = _Name,
	}
	asserts.AssertFilter(t)
	return t
end

keys.RestoreDBInstanceToPointInTimeMessage = { ["PubliclyAccessible"] = true, ["DomainIAMRoleName"] = true, ["LicenseModel"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["Engine"] = true, ["MultiAZ"] = true, ["Tags"] = true, ["AutoMinorVersionUpgrade"] = true, ["TdeCredentialArn"] = true, ["DBSubnetGroupName"] = true, ["DBName"] = true, ["TdeCredentialPassword"] = true, ["UseLatestRestorableTime"] = true, ["RestoreTime"] = true, ["SourceDBInstanceIdentifier"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["AvailabilityZone"] = true, ["StorageType"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["Port"] = true, ["TargetDBInstanceIdentifier"] = true, nil }

function asserts.AssertRestoreDBInstanceToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeMessage to be of type 'table'")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	assert(struct["TargetDBInstanceIdentifier"], "Expected key TargetDBInstanceIdentifier to exist in table")
	if struct["PubliclyAccessible"] then asserts.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then asserts.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then asserts.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then asserts.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then asserts.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then asserts.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then asserts.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then asserts.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["TdeCredentialArn"] then asserts.AssertString(struct["TdeCredentialArn"]) end
	if struct["DBSubnetGroupName"] then asserts.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then asserts.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then asserts.AssertString(struct["TdeCredentialPassword"]) end
	if struct["UseLatestRestorableTime"] then asserts.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreTime"] then asserts.AssertTStamp(struct["RestoreTime"]) end
	if struct["SourceDBInstanceIdentifier"] then asserts.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["OptionGroupName"] then asserts.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then asserts.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then asserts.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then asserts.AssertString(struct["StorageType"]) end
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then asserts.AssertIntegerOptional(struct["Port"]) end
	if struct["TargetDBInstanceIdentifier"] then asserts.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreDBInstanceToPointInTimeMessage[k], "RestoreDBInstanceToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeMessage
-- <p/>
-- @param _PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param _DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param _LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param _CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param _Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- @param _MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- @param _Tags [TagList] 
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param _DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param _DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter is not used for the MySQL or MariaDB engines.</p> </note>
-- @param _TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param _UseLatestRestorableTime [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) the DB instance is restored from the latest backup time. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if RestoreTime parameter is provided.</p>
-- @param _RestoreTime [TStamp] <p>The date and time to restore from.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Cannot be specified if UseLatestRestorableTime parameter is true</p> </li> </ul> <p>Example: <code>2009-09-07T23:45:00Z</code> </p>
-- @param _SourceDBInstanceIdentifier [String] <p>The identifier of the source DB instance from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param _Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- @param _AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p> <p>Example: <code>us-east-1a</code> </p>
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param _Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- @param _DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: The same DBInstanceClass as the original DB instance.</p>
-- @param _Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB instance.</p>
-- @param _TargetDBInstanceIdentifier [String] <p>The name of the new database instance to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: SourceDBInstanceIdentifier
-- Required parameter: TargetDBInstanceIdentifier
function M.RestoreDBInstanceToPointInTimeMessage(_PubliclyAccessible, _DomainIAMRoleName, _LicenseModel, _EnableIAMDatabaseAuthentication, _CopyTagsToSnapshot, _Engine, _MultiAZ, _Tags, _AutoMinorVersionUpgrade, _TdeCredentialArn, _DBSubnetGroupName, _DBName, _TdeCredentialPassword, _UseLatestRestorableTime, _RestoreTime, _SourceDBInstanceIdentifier, _OptionGroupName, _Domain, _AvailabilityZone, _StorageType, _Iops, _DBInstanceClass, _Port, _TargetDBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceToPointInTimeMessage")
	local t = { 
		["PubliclyAccessible"] = _PubliclyAccessible,
		["DomainIAMRoleName"] = _DomainIAMRoleName,
		["LicenseModel"] = _LicenseModel,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["Engine"] = _Engine,
		["MultiAZ"] = _MultiAZ,
		["Tags"] = _Tags,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["DBName"] = _DBName,
		["TdeCredentialPassword"] = _TdeCredentialPassword,
		["UseLatestRestorableTime"] = _UseLatestRestorableTime,
		["RestoreTime"] = _RestoreTime,
		["SourceDBInstanceIdentifier"] = _SourceDBInstanceIdentifier,
		["OptionGroupName"] = _OptionGroupName,
		["Domain"] = _Domain,
		["AvailabilityZone"] = _AvailabilityZone,
		["StorageType"] = _StorageType,
		["Iops"] = _Iops,
		["DBInstanceClass"] = _DBInstanceClass,
		["Port"] = _Port,
		["TargetDBInstanceIdentifier"] = _TargetDBInstanceIdentifier,
	}
	asserts.AssertRestoreDBInstanceToPointInTimeMessage(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- @param _PendingMaintenanceActions [PendingMaintenanceActions] <p>A list of the pending maintenance actions for the resource.</p>
function M.PendingMaintenanceActionsMessage(_Marker, _PendingMaintenanceActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingMaintenanceActionsMessage")
	local t = { 
		["Marker"] = _Marker,
		["PendingMaintenanceActions"] = _PendingMaintenanceActions,
	}
	asserts.AssertPendingMaintenanceActionsMessage(t)
	return t
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
function M.DomainNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainNotFoundFault")
	local t = { 
	}
	asserts.AssertDomainNotFoundFault(t)
	return t
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
-- @param _Marker [String] <p> An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param _DBParameterGroupFamily [String] <p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>
-- @param _Parameters [ParametersList] <p>Contains a list of engine default parameters.</p>
function M.EngineDefaults(_Marker, _DBParameterGroupFamily, _Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EngineDefaults")
	local t = { 
		["Marker"] = _Marker,
		["DBParameterGroupFamily"] = _DBParameterGroupFamily,
		["Parameters"] = _Parameters,
	}
	asserts.AssertEngineDefaults(t)
	return t
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
function M.DBParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupQuotaExceededFault")
	local t = { 
	}
	asserts.AssertDBParameterGroupQuotaExceededFault(t)
	return t
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
-- @param _Status [String] <p>The status of the DB instance's Active Directory Domain membership, such as joined, pending-join, failed etc).</p>
-- @param _IAMRoleName [String] <p>The name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param _Domain [String] <p>The identifier of the Active Directory Domain.</p>
-- @param _FQDN [String] <p>The fully qualified domain name of the Active Directory Domain.</p>
function M.DomainMembership(_Status, _IAMRoleName, _Domain, _FQDN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMembership")
	local t = { 
		["Status"] = _Status,
		["IAMRoleName"] = _IAMRoleName,
		["Domain"] = _Domain,
		["FQDN"] = _FQDN,
	}
	asserts.AssertDomainMembership(t)
	return t
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
function M.DBClusterRoleAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleAlreadyExistsFault")
	local t = { 
	}
	asserts.AssertDBClusterRoleAlreadyExistsFault(t)
	return t
end

keys.ReservedDBInstanceMessage = { ["Marker"] = true, ["ReservedDBInstances"] = true, nil }

function asserts.AssertReservedDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceMessage to be of type 'table'")
	if struct["Marker"] then asserts.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstances"] then asserts.AssertReservedDBInstanceList(struct["ReservedDBInstances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedDBInstanceMessage[k], "ReservedDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstances</a> action. </p>
-- @param _Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param _ReservedDBInstances [ReservedDBInstanceList] <p>A list of reserved DB instances.</p>
function M.ReservedDBInstanceMessage(_Marker, _ReservedDBInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceMessage")
	local t = { 
		["Marker"] = _Marker,
		["ReservedDBInstances"] = _ReservedDBInstances,
	}
	asserts.AssertReservedDBInstanceMessage(t)
	return t
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
-- <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>CreateDBInstanceReadReplica</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> </ul>
-- @param _DBParameterGroupName [String] <p>The name of the DP parameter group.</p>
-- @param _ParameterApplyStatus [String] <p>The status of parameter updates.</p>
function M.DBParameterGroupStatus(_DBParameterGroupName, _ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupStatus")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["ParameterApplyStatus"] = _ParameterApplyStatus,
	}
	asserts.AssertDBParameterGroupStatus(t)
	return t
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
-- @param _DBClusterSnapshotAttributes [DBClusterSnapshotAttributeList] <p>The list of attributes and values for the manual DB cluster snapshot.</p>
-- @param _DBClusterSnapshotIdentifier [String] <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
function M.DBClusterSnapshotAttributesResult(_DBClusterSnapshotAttributes, _DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAttributesResult")
	local t = { 
		["DBClusterSnapshotAttributes"] = _DBClusterSnapshotAttributes,
		["DBClusterSnapshotIdentifier"] = _DBClusterSnapshotIdentifier,
	}
	asserts.AssertDBClusterSnapshotAttributesResult(t)
	return t
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
-- @param _HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- @param _Port [Integer] <p>Specifies the port that the database engine is listening on.</p>
-- @param _Address [String] <p>Specifies the DNS address of the DB instance.</p>
function M.Endpoint(_HostedZoneId, _Port, _Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["HostedZoneId"] = _HostedZoneId,
		["Port"] = _Port,
		["Address"] = _Address,
	}
	asserts.AssertEndpoint(t)
	return t
end

keys.InvalidS3BucketFault = { nil }

function asserts.AssertInvalidS3BucketFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3BucketFault[k], "InvalidS3BucketFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketFault
-- <p>The specified Amazon S3 bucket name could not be found or Amazon RDS is not authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
function M.InvalidS3BucketFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketFault")
	local t = { 
	}
	asserts.AssertInvalidS3BucketFault(t)
	return t
end

keys.OptionGroupOptionSetting = { ["SettingDescription"] = true, ["DefaultValue"] = true, ["AllowedValues"] = true, ["IsModifiable"] = true, ["SettingName"] = true, ["ApplyType"] = true, nil }

function asserts.AssertOptionGroupOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionSetting to be of type 'table'")
	if struct["SettingDescription"] then asserts.AssertString(struct["SettingDescription"]) end
	if struct["DefaultValue"] then asserts.AssertString(struct["DefaultValue"]) end
	if struct["AllowedValues"] then asserts.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then asserts.AssertBoolean(struct["IsModifiable"]) end
	if struct["SettingName"] then asserts.AssertString(struct["SettingName"]) end
	if struct["ApplyType"] then asserts.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptionGroupOptionSetting[k], "OptionGroupOptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionSetting
-- <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
-- @param _SettingDescription [String] <p>The description of the option group option.</p>
-- @param _DefaultValue [String] <p>The default value for the option group option.</p>
-- @param _AllowedValues [String] <p>Indicates the acceptable values for the option group option.</p>
-- @param _IsModifiable [Boolean] <p>Boolean value where true indicates that this option group option can be changed from the default value.</p>
-- @param _SettingName [String] <p>The name of the option group option.</p>
-- @param _ApplyType [String] <p>The DB engine specific parameter type for the option group option.</p>
function M.OptionGroupOptionSetting(_SettingDescription, _DefaultValue, _AllowedValues, _IsModifiable, _SettingName, _ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOptionSetting")
	local t = { 
		["SettingDescription"] = _SettingDescription,
		["DefaultValue"] = _DefaultValue,
		["AllowedValues"] = _AllowedValues,
		["IsModifiable"] = _IsModifiable,
		["SettingName"] = _SettingName,
		["ApplyType"] = _ApplyType,
	}
	asserts.AssertOptionGroupOptionSetting(t)
	return t
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
function M.DBClusterRoleNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleNotFoundFault")
	local t = { 
	}
	asserts.AssertDBClusterRoleNotFoundFault(t)
	return t
end

keys.DBSnapshotAttributesResult = { ["DBSnapshotIdentifier"] = true, ["DBSnapshotAttributes"] = true, nil }

function asserts.AssertDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotIdentifier"] then asserts.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotAttributes"] then asserts.AssertDBSnapshotAttributeList(struct["DBSnapshotAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.DBSnapshotAttributesResult[k], "DBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBSnapshotAttributes</a> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param _DBSnapshotIdentifier [String] <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
-- @param _DBSnapshotAttributes [DBSnapshotAttributeList] <p>The list of attributes and values for the manual DB snapshot.</p>
function M.DBSnapshotAttributesResult(_DBSnapshotIdentifier, _DBSnapshotAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAttributesResult")
	local t = { 
		["DBSnapshotIdentifier"] = _DBSnapshotIdentifier,
		["DBSnapshotAttributes"] = _DBSnapshotAttributes,
	}
	asserts.AssertDBSnapshotAttributesResult(t)
	return t
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
-- @param _Status [String] <p>The status of the RDS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- @param _SubscriptionCreationTime [String] <p>The time the RDS event notification subscription was created.</p>
-- @param _SourceType [String] <p>The source type for the RDS event notification subscription.</p>
-- @param _EventCategoriesList [EventCategoriesList] <p>A list of event categories for the RDS event notification subscription.</p>
-- @param _EventSubscriptionArn [String] <p>The Amazon Resource Name (ARN) for the event subscription.</p>
-- @param _SourceIdsList [SourceIdsList] <p>A list of source IDs for the RDS event notification subscription.</p>
-- @param _CustSubscriptionId [String] <p>The RDS event notification subscription Id.</p>
-- @param _Enabled [Boolean] <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>
-- @param _SnsTopicArn [String] <p>The topic ARN of the RDS event notification subscription.</p>
-- @param _CustomerAwsId [String] <p>The AWS customer account associated with the RDS event notification subscription.</p>
function M.EventSubscription(_Status, _SubscriptionCreationTime, _SourceType, _EventCategoriesList, _EventSubscriptionArn, _SourceIdsList, _CustSubscriptionId, _Enabled, _SnsTopicArn, _CustomerAwsId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = _Status,
		["SubscriptionCreationTime"] = _SubscriptionCreationTime,
		["SourceType"] = _SourceType,
		["EventCategoriesList"] = _EventCategoriesList,
		["EventSubscriptionArn"] = _EventSubscriptionArn,
		["SourceIdsList"] = _SourceIdsList,
		["CustSubscriptionId"] = _CustSubscriptionId,
		["Enabled"] = _Enabled,
		["SnsTopicArn"] = _SnsTopicArn,
		["CustomerAwsId"] = _CustomerAwsId,
	}
	asserts.AssertEventSubscription(t)
	return t
end

keys.ModifyDBInstanceMessage = { ["DBParameterGroupName"] = true, ["AllowMajorVersionUpgrade"] = true, ["DomainIAMRoleName"] = true, ["MonitoringInterval"] = true, ["LicenseModel"] = true, ["VpcSecurityGroupIds"] = true, ["EnableIAMDatabaseAuthentication"] = true, ["CopyTagsToSnapshot"] = true, ["NewDBInstanceIdentifier"] = true, ["MultiAZ"] = true, ["DBSecurityGroups"] = true, ["PubliclyAccessible"] = true, ["AutoMinorVersionUpgrade"] = true, ["PreferredBackupWindow"] = true, ["PromotionTier"] = true, ["TdeCredentialArn"] = true, ["AllocatedStorage"] = true, ["DBSubnetGroupName"] = true, ["PreferredMaintenanceWindow"] = true, ["TdeCredentialPassword"] = true, ["DBPortNumber"] = true, ["ApplyImmediately"] = true, ["EngineVersion"] = true, ["BackupRetentionPeriod"] = true, ["OptionGroupName"] = true, ["Domain"] = true, ["MonitoringRoleArn"] = true, ["StorageType"] = true, ["CACertificateIdentifier"] = true, ["MasterUserPassword"] = true, ["Iops"] = true, ["DBInstanceClass"] = true, ["DBInstanceIdentifier"] = true, nil }

function asserts.AssertModifyDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBParameterGroupName"] then asserts.AssertString(struct["DBParameterGroupName"]) end
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
	if struct["Iops"] then asserts.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then asserts.AssertString(struct["DBInstanceClass"]) end
	if struct["DBInstanceIdentifier"] then asserts.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDBInstanceMessage[k], "ModifyDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceMessage
-- <p/>
-- @param _DBParameterGroupName [String] <p>The name of the DB parameter group to apply to the DB instance. Changing this setting does not result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.</p> <p>Default: Uses existing setting</p> <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>
-- @param _AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>
-- @param _DomainIAMRoleName [String] <p>The name of the IAM role to use when making API calls to the Directory Service.</p>
-- @param _MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param _LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param _VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param _CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param _NewDBInstanceIdentifier [String] <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set <code>Apply Immediately</code> to true, or will occur during the next maintenance window if <code>Apply Immediately</code> to false. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _MultiAZ [BooleanOptional] <p> Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Constraints: Cannot be specified if the DB instance is a Read Replica.</p>
-- @param _DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to authorize on this DB instance. Changing this setting does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param _PubliclyAccessible [BooleanOptional] <p>Boolean value that indicates if the DB instance has a publicly resolvable DNS name. Set to <code>True</code> to make the DB instance Internet-facing with a publicly resolvable DNS name, which resolves to a public IP address. Set to <code>False</code> to make the DB instance internal with a DNS name that resolves to a private IP address. </p> <p> <code>PubliclyAccessible</code> only applies to DB instances in a VPC. The DB instance must be part of a public subnet and <code>PubliclyAccessible</code> must be true in order for it to be publicly accessible. </p> <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: false</p>
-- @param _AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and RDS has enabled auto patching for that engine version. </p>
-- @param _PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code> parameter. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format hh24:mi-hh24:mi</p> </li> <li> <p>Times should be in Universal Time Coordinated (UTC)</p> </li> <li> <p>Must not conflict with the preferred maintenance window</p> </li> <li> <p>Must be at least 30 minutes</p> </li> </ul>
-- @param _PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- @param _TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param _AllocatedStorage [IntegerOptional] <p> The new storage capacity of the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless <code>ApplyImmediately</code> is set to <code>true</code> for this request. </p> <p> <b>MySQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 10-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p> <b>SQL Server</b> </p> <p>Cannot be modified.</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- @param _DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. If your DB instance is not in a VPC, you can also use this parameter to move your DB instance into a VPC. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC">Updating the VPC for a DB Instance</a>. </p> <p>Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify <code>true</code> for the <code>ApplyImmediately</code> parameter. </p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens.</p> <p>Example: <code>mySubnetGroup</code> </p>
-- @param _PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- @param _TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param _DBPortNumber [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option group for the DB instance.</p> <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p>
-- @param _ApplyImmediately [Boolean] <p>Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. </p> <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and will be applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. Review the table of parameters in <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html">Modifying a DB Instance and Using the Apply Immediately Parameter</a> to see the impact that setting <code>ApplyImmediately</code> to <code>true</code> or <code>false</code> has for each modified parameter and to determine when the changes will be applied. </p> <p>Default: <code>false</code> </p>
-- @param _EngineVersion [String] <p> The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>For major version upgrades, if a non-default DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.</p> <p>For a list of valid engine versions, see <a>CreateDBInstance</a>.</p>
-- @param _BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Changing this parameter can result in an outage if you change from 0 to a non-zero value or from a non-zero value to 0. These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously applied as soon as possible.</p> <p>Default: Uses existing setting</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Can be specified for a MySQL Read Replica only if the source is running MySQL 5.6</p> </li> <li> <p>Can be specified for a PostgreSQL Read Replica only if the source is running PostgreSQL 9.3.5</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- @param _OptionGroupName [String] <p> Indicates that the DB instance should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param _Domain [String] <p>The Active Directory Domain to move the instance to. Specify <code>none</code> to remove the instance from its current domain. The domain must be created prior to this operation. Currently only a Microsoft SQL Server instance can be created in a Active Directory Domain. </p>
-- @param _MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param _StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param _CACertificateIdentifier [String] <p>Indicates the certificate that needs to be associated with the instance.</p>
-- @param _MasterUserPassword [String] <p>The new password for the DB instance master user. Can be any printable ASCII character except "/", """, or "@".</p> <p> Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <p>Default: Uses existing setting</p> <p>Constraints: Must be 8 to 41 alphanumeric characters (MySQL, MariaDB, and Amazon Aurora), 8 to 30 alphanumeric characters (Oracle), or 8 to 128 alphanumeric characters (SQL Server).</p> <note> <p>Amazon RDS API actions never return the password, so this action provides a way to regain access to a primary instance user if the password is lost. This includes restoring privileges that might have been accidentally revoked.</p> </note>
-- @param _Iops [IntegerOptional] <p> The new Provisioned IOPS (I/O operations per second) value for the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. If you are migrating from Provisioned IOPS to standard storage, set this value to 0. The DB instance will require a reboot for the change in storage type to take effect.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p> <p>Type: Integer</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- @param _DBInstanceClass [String] <p> The new compute and memory capacity of the DB instance. To determine the instance classes that are available for a particular DB engine, use the <a>DescribeOrderableDBInstanceOptions</a> action. Note that not all instance classes are available in all regions for all DB engines. </p> <p> Passing a value for this setting causes an outage during the change and is applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified as <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param _DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.ModifyDBInstanceMessage(_DBParameterGroupName, _AllowMajorVersionUpgrade, _DomainIAMRoleName, _MonitoringInterval, _LicenseModel, _VpcSecurityGroupIds, _EnableIAMDatabaseAuthentication, _CopyTagsToSnapshot, _NewDBInstanceIdentifier, _MultiAZ, _DBSecurityGroups, _PubliclyAccessible, _AutoMinorVersionUpgrade, _PreferredBackupWindow, _PromotionTier, _TdeCredentialArn, _AllocatedStorage, _DBSubnetGroupName, _PreferredMaintenanceWindow, _TdeCredentialPassword, _DBPortNumber, _ApplyImmediately, _EngineVersion, _BackupRetentionPeriod, _OptionGroupName, _Domain, _MonitoringRoleArn, _StorageType, _CACertificateIdentifier, _MasterUserPassword, _Iops, _DBInstanceClass, _DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBInstanceMessage")
	local t = { 
		["DBParameterGroupName"] = _DBParameterGroupName,
		["AllowMajorVersionUpgrade"] = _AllowMajorVersionUpgrade,
		["DomainIAMRoleName"] = _DomainIAMRoleName,
		["MonitoringInterval"] = _MonitoringInterval,
		["LicenseModel"] = _LicenseModel,
		["VpcSecurityGroupIds"] = _VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = _EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = _CopyTagsToSnapshot,
		["NewDBInstanceIdentifier"] = _NewDBInstanceIdentifier,
		["MultiAZ"] = _MultiAZ,
		["DBSecurityGroups"] = _DBSecurityGroups,
		["PubliclyAccessible"] = _PubliclyAccessible,
		["AutoMinorVersionUpgrade"] = _AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = _PreferredBackupWindow,
		["PromotionTier"] = _PromotionTier,
		["TdeCredentialArn"] = _TdeCredentialArn,
		["AllocatedStorage"] = _AllocatedStorage,
		["DBSubnetGroupName"] = _DBSubnetGroupName,
		["PreferredMaintenanceWindow"] = _PreferredMaintenanceWindow,
		["TdeCredentialPassword"] = _TdeCredentialPassword,
		["DBPortNumber"] = _DBPortNumber,
		["ApplyImmediately"] = _ApplyImmediately,
		["EngineVersion"] = _EngineVersion,
		["BackupRetentionPeriod"] = _BackupRetentionPeriod,
		["OptionGroupName"] = _OptionGroupName,
		["Domain"] = _Domain,
		["MonitoringRoleArn"] = _MonitoringRoleArn,
		["StorageType"] = _StorageType,
		["CACertificateIdentifier"] = _CACertificateIdentifier,
		["MasterUserPassword"] = _MasterUserPassword,
		["Iops"] = _Iops,
		["DBInstanceClass"] = _DBInstanceClass,
		["DBInstanceIdentifier"] = _DBInstanceIdentifier,
	}
	asserts.AssertModifyDBInstanceMessage(t)
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
-- <p>The DB subnet is already in use in the Availability Zone.</p>
function M.SubnetAlreadyInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
	}
	asserts.AssertSubnetAlreadyInUse(t)
	return t
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

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
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

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertBooleanOptional(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanOptional to be of type 'boolean'")
end

function M.BooleanOptional(boolean)
	asserts.AssertBooleanOptional(boolean)
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

function asserts.AssertOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOption(v)
	end
end

--  
-- List of Option objects
function M.OptionsList(list)
	asserts.AssertOptionsList(list)
	return list
end

function asserts.AssertDBSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSnapshotAttribute(v)
	end
end

--  
-- List of DBSnapshotAttribute objects
function M.DBSnapshotAttributeList(list)
	asserts.AssertDBSnapshotAttributeList(list)
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

function asserts.AssertDBSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSnapshot(v)
	end
end

--  
-- List of DBSnapshot objects
function M.DBSnapshotList(list)
	asserts.AssertDBSnapshotList(list)
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

function asserts.AssertSourceRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceRegionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSourceRegion(v)
	end
end

--  
-- List of SourceRegion objects
function M.SourceRegionList(list)
	asserts.AssertSourceRegionList(list)
	return list
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

function asserts.AssertOptionGroupOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupOptionSetting(v)
	end
end

--  
-- List of OptionGroupOptionSetting objects
function M.OptionGroupOptionSettingsList(list)
	asserts.AssertOptionGroupOptionSettingsList(list)
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

function asserts.AssertOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingsList(list)
	asserts.AssertOptionSettingsList(list)
	return list
end

function asserts.AssertOptionGroupOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroupOption(v)
	end
end

-- <p>List of available option group options.</p>
-- List of OptionGroupOption objects
function M.OptionGroupOptionsList(list)
	asserts.AssertOptionGroupOptionsList(list)
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

function asserts.AssertOptionGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionGroup(v)
	end
end

--  
-- List of OptionGroup objects
function M.OptionGroupsList(list)
	asserts.AssertOptionGroupsList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- <p>A list of tags.</p>
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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

function asserts.AssertDescribeDBLogFilesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeDBLogFilesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDescribeDBLogFilesDetails(v)
	end
end

--  
-- List of DescribeDBLogFilesDetails objects
function M.DescribeDBLogFilesList(list)
	asserts.AssertDescribeDBLogFilesList(list)
	return list
end

function asserts.AssertOptionsDependedOn(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsDependedOn to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsDependedOn(list)
	asserts.AssertOptionsDependedOn(list)
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

function asserts.AssertOptionNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionNamesList(list)
	asserts.AssertOptionNamesList(list)
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

function asserts.AssertOptionsConflictsWith(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsConflictsWith to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsConflictsWith(list)
	asserts.AssertOptionsConflictsWith(list)
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

function asserts.AssertOptionGroupOptionVersionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionVersionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionVersion(v)
	end
end

--  
-- List of OptionVersion objects
function M.OptionGroupOptionVersionsList(list)
	asserts.AssertOptionGroupOptionVersionsList(list)
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

function asserts.AssertReservedDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedDBInstance(v)
	end
end

--  
-- List of ReservedDBInstance objects
function M.ReservedDBInstanceList(list)
	asserts.AssertReservedDBInstanceList(list)
	return list
end

function asserts.AssertDBSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDBSecurityGroup(v)
	end
end

--  
-- List of DBSecurityGroup objects
function M.DBSecurityGroups(list)
	asserts.AssertDBSecurityGroups(list)
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

function asserts.AssertOptionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionConfiguration(v)
	end
end

--  
-- List of OptionConfiguration objects
function M.OptionConfigurationList(list)
	asserts.AssertOptionConfigurationList(list)
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

function asserts.AssertOptionSettingConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingConfigurationList(list)
	asserts.AssertOptionSettingConfigurationList(list)
	return list
end

function asserts.AssertAccountQuotaList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountQuotaList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountQuota(v)
	end
end

--  
-- List of AccountQuota objects
function M.AccountQuotaList(list)
	asserts.AssertAccountQuotaList(list)
	return list
end

function asserts.AssertReservedDBInstancesOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstancesOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservedDBInstancesOffering(v)
	end
end

--  
-- List of ReservedDBInstancesOffering objects
function M.ReservedDBInstancesOfferingList(list)
	asserts.AssertReservedDBInstancesOfferingList(list)
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

function asserts.AssertCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.CertificateList(list)
	asserts.AssertCertificateList(list)
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


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeCertificates asynchronously, invoking a callback when done
-- @param DescribeCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificatesAsync(DescribeCertificatesMessage, cb)
	assert(DescribeCertificatesMessage, "You must provide a DescribeCertificatesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCertificatesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCertificatesMessage
-- @return response
-- @return error_message
function M.DescribeCertificatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCertificatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterToPointInTime asynchronously, invoking a callback when done
-- @param RestoreDBClusterToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, cb)
	assert(RestoreDBClusterToPointInTimeMessage, "You must provide a RestoreDBClusterToPointInTimeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterToPointInTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RestoreDBClusterToPointInTimeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterToPointInTimeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultParametersAsync(DescribeEngineDefaultParametersMessage, cb)
	assert(DescribeEngineDefaultParametersMessage, "You must provide a DescribeEngineDefaultParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeEngineDefaultParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterSnapshot asynchronously, invoking a callback when done
-- @param DeleteDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, cb)
	assert(DeleteDBClusterSnapshotMessage, "You must provide a DeleteDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, cb)
	assert(CreateDBParameterGroupMessage, "You must provide a CreateDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeDBSecurityGroupIngress asynchronously, invoking a callback when done
-- @param AuthorizeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeDBSecurityGroupIngressAsync(AuthorizeDBSecurityGroupIngressMessage, cb)
	assert(AuthorizeDBSecurityGroupIngressMessage, "You must provide a AuthorizeDBSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AuthorizeDBSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeDBSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeDBSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeDBSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.AuthorizeDBSecurityGroupIngressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeDBSecurityGroupIngressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSubnetGroups asynchronously, invoking a callback when done
-- @param DescribeDBSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, cb)
	assert(DescribeDBSubnetGroupsMessage, "You must provide a DescribeDBSubnetGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBSubnetGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSubnetGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBEngineVersions asynchronously, invoking a callback when done
-- @param DescribeDBEngineVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, cb)
	assert(DescribeDBEngineVersionsMessage, "You must provide a DescribeDBEngineVersionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBEngineVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBEngineVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBEngineVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBSnapshot asynchronously, invoking a callback when done
-- @param CopyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBSnapshotAsync(CopyDBSnapshotMessage, cb)
	assert(CopyDBSnapshotMessage, "You must provide a CopyDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyDBSnapshotMessage
-- @return response
-- @return error_message
function M.CopyDBSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopDBInstance asynchronously, invoking a callback when done
-- @param StopDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StopDBInstanceAsync(StopDBInstanceMessage, cb)
	assert(StopDBInstanceMessage, "You must provide a StopDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopDBInstanceMessage
-- @return response
-- @return error_message
function M.StopDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopDBInstanceAsync(..., function(response, error_message)
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

--- Call CreateDBInstanceReadReplica asynchronously, invoking a callback when done
-- @param CreateDBInstanceReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceReadReplicaAsync(CreateDBInstanceReadReplicaMessage, cb)
	assert(CreateDBInstanceReadReplicaMessage, "You must provide a CreateDBInstanceReadReplicaMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBInstanceReadReplica",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBInstanceReadReplicaMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBInstanceReadReplica synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBInstanceReadReplicaMessage
-- @return response
-- @return error_message
function M.CreateDBInstanceReadReplicaSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBInstanceReadReplicaAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CreateDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, cb)
	assert(CreateDBClusterSnapshotMessage, "You must provide a CreateDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedDBInstancesOfferings asynchronously, invoking a callback when done
-- @param DescribeReservedDBInstancesOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesOfferingsAsync(DescribeReservedDBInstancesOfferingsMessage, cb)
	assert(DescribeReservedDBInstancesOfferingsMessage, "You must provide a DescribeReservedDBInstancesOfferingsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstancesOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedDBInstancesOfferingsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedDBInstancesOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedDBInstancesOfferingsMessage
-- @return response
-- @return error_message
function M.DescribeReservedDBInstancesOfferingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedDBInstancesOfferingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBCluster asynchronously, invoking a callback when done
-- @param DeleteDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterAsync(DeleteDBClusterMessage, cb)
	assert(DeleteDBClusterMessage, "You must provide a DeleteDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, cb)
	assert(ResetDBClusterParameterGroupMessage, "You must provide a ResetDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ResetDBClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceMessage, cb)
	assert(ListTagsForResourceMessage, "You must provide a ListTagsForResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListTagsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBSnapshot asynchronously, invoking a callback when done
-- @param ModifyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAsync(ModifyDBSnapshotMessage, cb)
	assert(ModifyDBSnapshotMessage, "You must provide a ModifyDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSnapshotMessage
-- @return response
-- @return error_message
function M.ModifyDBSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSubnetGroup asynchronously, invoking a callback when done
-- @param DeleteDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, cb)
	assert(DeleteDBSubnetGroupMessage, "You must provide a DeleteDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBInstanceFromDBSnapshot asynchronously, invoking a callback when done
-- @param RestoreDBInstanceFromDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceFromDBSnapshotAsync(RestoreDBInstanceFromDBSnapshotMessage, cb)
	assert(RestoreDBInstanceFromDBSnapshotMessage, "You must provide a RestoreDBInstanceFromDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceFromDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBInstanceFromDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBInstanceFromDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBInstanceFromDBSnapshotMessage
-- @return response
-- @return error_message
function M.RestoreDBInstanceFromDBSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBInstanceFromDBSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOptionGroups asynchronously, invoking a callback when done
-- @param DescribeOptionGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupsAsync(DescribeOptionGroupsMessage, cb)
	assert(DescribeOptionGroupsMessage, "You must provide a DescribeOptionGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOptionGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOptionGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOptionGroupsMessage
-- @return response
-- @return error_message
function M.DescribeOptionGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOptionGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterFromS3 asynchronously, invoking a callback when done
-- @param RestoreDBClusterFromS3Message
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromS3Async(RestoreDBClusterFromS3Message, cb)
	assert(RestoreDBClusterFromS3Message, "You must provide a RestoreDBClusterFromS3Message")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromS3",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBClusterFromS3Message, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBClusterFromS3 synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBClusterFromS3Message
-- @return response
-- @return error_message
function M.RestoreDBClusterFromS3Sync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterFromS3Async(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBInstance asynchronously, invoking a callback when done
-- @param DeleteDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, cb)
	assert(DeleteDBInstanceMessage, "You must provide a DeleteDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CreateDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, cb)
	assert(CreateDBClusterParameterGroupMessage, "You must provide a CreateDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, cb)
	assert(DeleteDBParameterGroupMessage, "You must provide a DeleteDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBParameterGroupAsync(..., function(response, error_message)
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

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceMessage, cb)
	assert(AddTagsToResourceMessage, "You must provide a AddTagsToResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AddTagsToResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyOptionGroup asynchronously, invoking a callback when done
-- @param ModifyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyOptionGroupAsync(ModifyOptionGroupMessage, cb)
	assert(ModifyOptionGroupMessage, "You must provide a ModifyOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyOptionGroupMessage
-- @return response
-- @return error_message
function M.ModifyOptionGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyOptionGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBLogFiles asynchronously, invoking a callback when done
-- @param DescribeDBLogFilesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBLogFilesAsync(DescribeDBLogFilesMessage, cb)
	assert(DescribeDBLogFilesMessage, "You must provide a DescribeDBLogFilesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBLogFiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBLogFilesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBLogFiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBLogFilesMessage
-- @return response
-- @return error_message
function M.DescribeDBLogFilesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBLogFilesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceMessage, cb)
	assert(RemoveTagsFromResourceMessage, "You must provide a RemoveTagsFromResourceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RemoveTagsFromResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservedDBInstances asynchronously, invoking a callback when done
-- @param DescribeReservedDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesAsync(DescribeReservedDBInstancesMessage, cb)
	assert(DescribeReservedDBInstancesMessage, "You must provide a DescribeReservedDBInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReservedDBInstancesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservedDBInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservedDBInstancesMessage
-- @return response
-- @return error_message
function M.DescribeReservedDBInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservedDBInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyOptionGroup asynchronously, invoking a callback when done
-- @param CopyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyOptionGroupAsync(CopyOptionGroupMessage, cb)
	assert(CopyOptionGroupMessage, "You must provide a CopyOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyOptionGroupMessage
-- @return response
-- @return error_message
function M.CopyOptionGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyOptionGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBInstance asynchronously, invoking a callback when done
-- @param CreateDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceAsync(CreateDBInstanceMessage, cb)
	assert(CreateDBInstanceMessage, "You must provide a CreateDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBInstanceAsync(..., function(response, error_message)
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

--- Call ModifyDBSubnetGroup asynchronously, invoking a callback when done
-- @param ModifyDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, cb)
	assert(ModifyDBSubnetGroupMessage, "You must provide a ModifyDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSecurityGroupAsync(DeleteDBSecurityGroupMessage, cb)
	assert(DeleteDBSecurityGroupMessage, "You must provide a DeleteDBSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSecurityGroupMessage
-- @return response
-- @return error_message
function M.DeleteDBSecurityGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSecurityGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBInstanceToPointInTime asynchronously, invoking a callback when done
-- @param RestoreDBInstanceToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceToPointInTimeAsync(RestoreDBInstanceToPointInTimeMessage, cb)
	assert(RestoreDBInstanceToPointInTimeMessage, "You must provide a RestoreDBInstanceToPointInTimeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceToPointInTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreDBInstanceToPointInTimeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreDBInstanceToPointInTime synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreDBInstanceToPointInTimeMessage
-- @return response
-- @return error_message
function M.RestoreDBInstanceToPointInTimeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBInstanceToPointInTimeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddSourceIdentifierToSubscription asynchronously, invoking a callback when done
-- @param AddSourceIdentifierToSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, cb)
	assert(AddSourceIdentifierToSubscriptionMessage, "You must provide a AddSourceIdentifierToSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddSourceIdentifierToSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AddSourceIdentifierToSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddSourceIdentifierToSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, cb)
	assert(CopyDBClusterParameterGroupMessage, "You must provide a CopyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CopyDBClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDBInstance asynchronously, invoking a callback when done
-- @param StartDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StartDBInstanceAsync(StartDBInstanceMessage, cb)
	assert(StartDBInstanceMessage, "You must provide a StartDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartDBInstanceMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartDBInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartDBInstanceMessage
-- @return response
-- @return error_message
function M.StartDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDBInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshotAttributes asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, cb)
	assert(DescribeDBClusterSnapshotAttributesMessage, "You must provide a DescribeDBClusterSnapshotAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshotAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBClusterSnapshotAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreDBClusterFromSnapshot asynchronously, invoking a callback when done
-- @param RestoreDBClusterFromSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, cb)
	assert(RestoreDBClusterFromSnapshotMessage, "You must provide a RestoreDBClusterFromSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RestoreDBClusterFromSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreDBClusterFromSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameters asynchronously, invoking a callback when done
-- @param DescribeDBParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParametersAsync(DescribeDBParametersMessage, cb)
	assert(DescribeDBParametersMessage, "You must provide a DescribeDBParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PromoteReadReplicaDBCluster asynchronously, invoking a callback when done
-- @param PromoteReadReplicaDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, cb)
	assert(PromoteReadReplicaDBClusterMessage, "You must provide a PromoteReadReplicaDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PromoteReadReplicaDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PromoteReadReplicaDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PromoteReadReplicaDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameters asynchronously, invoking a callback when done
-- @param DescribeDBClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, cb)
	assert(DescribeDBClusterParametersMessage, "You must provide a DescribeDBClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBClusterParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBSnapshot asynchronously, invoking a callback when done
-- @param DeleteDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSnapshotAsync(DeleteDBSnapshotMessage, cb)
	assert(DeleteDBSnapshotMessage, "You must provide a DeleteDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDBSnapshotMessage
-- @return response
-- @return error_message
function M.DeleteDBSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBSnapshotAsync(..., function(response, error_message)
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

--- Call DeleteOptionGroup asynchronously, invoking a callback when done
-- @param DeleteOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOptionGroupAsync(DeleteOptionGroupMessage, cb)
	assert(DeleteOptionGroupMessage, "You must provide a DeleteOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteOptionGroupMessage
-- @return response
-- @return error_message
function M.DeleteOptionGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOptionGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PromoteReadReplica asynchronously, invoking a callback when done
-- @param PromoteReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaAsync(PromoteReadReplicaMessage, cb)
	assert(PromoteReadReplicaMessage, "You must provide a PromoteReadReplicaMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PromoteReadReplica",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PromoteReadReplicaMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PromoteReadReplica synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PromoteReadReplicaMessage
-- @return response
-- @return error_message
function M.PromoteReadReplicaSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PromoteReadReplicaAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddRoleToDBCluster asynchronously, invoking a callback when done
-- @param AddRoleToDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, cb)
	assert(AddRoleToDBClusterMessage, "You must provide a AddRoleToDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddRoleToDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.AddRoleToDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddRoleToDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBSnapshotAttribute asynchronously, invoking a callback when done
-- @param ModifyDBSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAttributeAsync(ModifyDBSnapshotAttributeMessage, cb)
	assert(ModifyDBSnapshotAttributeMessage, "You must provide a ModifyDBSnapshotAttributeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshotAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDBSnapshotAttributeMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDBSnapshotAttribute synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDBSnapshotAttributeMessage
-- @return response
-- @return error_message
function M.ModifyDBSnapshotAttributeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBSnapshotAttributeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, cb)
	assert(DescribeDBParameterGroupsMessage, "You must provide a DescribeDBParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBParameterGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBParameterGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, cb)
	assert(ModifyDBClusterParameterGroupMessage, "You must provide a ModifyDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call FailoverDBCluster asynchronously, invoking a callback when done
-- @param FailoverDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.FailoverDBClusterAsync(FailoverDBClusterMessage, cb)
	assert(FailoverDBClusterMessage, "You must provide a FailoverDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".FailoverDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.FailoverDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FailoverDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ApplyPendingMaintenanceAction asynchronously, invoking a callback when done
-- @param ApplyPendingMaintenanceActionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, cb)
	assert(ApplyPendingMaintenanceActionMessage, "You must provide a ApplyPendingMaintenanceActionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ApplyPendingMaintenanceAction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ApplyPendingMaintenanceActionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApplyPendingMaintenanceActionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBInstances asynchronously, invoking a callback when done
-- @param DescribeDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, cb)
	assert(DescribeDBInstancesMessage, "You must provide a DescribeDBInstancesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBInstancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBInstancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PurchaseReservedDBInstancesOffering asynchronously, invoking a callback when done
-- @param PurchaseReservedDBInstancesOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedDBInstancesOfferingAsync(PurchaseReservedDBInstancesOfferingMessage, cb)
	assert(PurchaseReservedDBInstancesOfferingMessage, "You must provide a PurchaseReservedDBInstancesOfferingMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseReservedDBInstancesOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PurchaseReservedDBInstancesOfferingMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseReservedDBInstancesOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseReservedDBInstancesOfferingMessage
-- @return response
-- @return error_message
function M.PurchaseReservedDBInstancesOfferingSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseReservedDBInstancesOfferingAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrderableDBInstanceOptions asynchronously, invoking a callback when done
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, cb)
	assert(DescribeOrderableDBInstanceOptionsMessage, "You must provide a DescribeOrderableDBInstanceOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOrderableDBInstanceOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeOrderableDBInstanceOptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrderableDBInstanceOptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOptionGroup asynchronously, invoking a callback when done
-- @param CreateOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOptionGroupAsync(CreateOptionGroupMessage, cb)
	assert(CreateOptionGroupMessage, "You must provide a CreateOptionGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOptionGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOptionGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOptionGroupMessage
-- @return response
-- @return error_message
function M.CreateOptionGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOptionGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOptionGroupOptions asynchronously, invoking a callback when done
-- @param DescribeOptionGroupOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupOptionsAsync(DescribeOptionGroupOptionsMessage, cb)
	assert(DescribeOptionGroupOptionsMessage, "You must provide a DescribeOptionGroupOptionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroupOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOptionGroupOptionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOptionGroupOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOptionGroupOptionsMessage
-- @return response
-- @return error_message
function M.DescribeOptionGroupOptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOptionGroupOptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetDBParameterGroup asynchronously, invoking a callback when done
-- @param ResetDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, cb)
	assert(ResetDBParameterGroupMessage, "You must provide a ResetDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ResetDBParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetDBParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEngineDefaultClusterParameters asynchronously, invoking a callback when done
-- @param DescribeEngineDefaultClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, cb)
	assert(DescribeEngineDefaultClusterParametersMessage, "You must provide a DescribeEngineDefaultClusterParametersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeEngineDefaultClusterParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEngineDefaultClusterParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSnapshot asynchronously, invoking a callback when done
-- @param CreateDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSnapshotAsync(CreateDBSnapshotMessage, cb)
	assert(CreateDBSnapshotMessage, "You must provide a CreateDBSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSnapshotMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSnapshot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSnapshotMessage
-- @return response
-- @return error_message
function M.CreateDBSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBCluster asynchronously, invoking a callback when done
-- @param CreateDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterAsync(CreateDBClusterMessage, cb)
	assert(CreateDBClusterMessage, "You must provide a CreateDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountAttributes asynchronously, invoking a callback when done
-- @param DescribeAccountAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, cb)
	assert(DescribeAccountAttributesMessage, "You must provide a DescribeAccountAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountAttributesMessage
-- @return response
-- @return error_message
function M.DescribeAccountAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSnapshots asynchronously, invoking a callback when done
-- @param DescribeDBSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotsAsync(DescribeDBSnapshotsMessage, cb)
	assert(DescribeDBSnapshotsMessage, "You must provide a DescribeDBSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSnapshotsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSnapshots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSnapshotsMessage
-- @return response
-- @return error_message
function M.DescribeDBSnapshotsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSnapshotsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBClusterSnapshotAttribute asynchronously, invoking a callback when done
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, cb)
	assert(ModifyDBClusterSnapshotAttributeMessage, "You must provide a ModifyDBClusterSnapshotAttributeMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterSnapshotAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBClusterSnapshotAttributeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterSnapshotAttributeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSecurityGroup asynchronously, invoking a callback when done
-- @param CreateDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSecurityGroupAsync(CreateDBSecurityGroupMessage, cb)
	assert(CreateDBSecurityGroupMessage, "You must provide a CreateDBSecurityGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDBSecurityGroupMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDBSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDBSecurityGroupMessage
-- @return response
-- @return error_message
function M.CreateDBSecurityGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSecurityGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveRoleFromDBCluster asynchronously, invoking a callback when done
-- @param RemoveRoleFromDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, cb)
	assert(RemoveRoleFromDBClusterMessage, "You must provide a RemoveRoleFromDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RemoveRoleFromDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveRoleFromDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeDBSecurityGroupIngress asynchronously, invoking a callback when done
-- @param RevokeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeDBSecurityGroupIngressAsync(RevokeDBSecurityGroupIngressMessage, cb)
	assert(RevokeDBSecurityGroupIngressMessage, "You must provide a RevokeDBSecurityGroupIngressMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RevokeDBSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeDBSecurityGroupIngressMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeDBSecurityGroupIngress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeDBSecurityGroupIngressMessage
-- @return response
-- @return error_message
function M.RevokeDBSecurityGroupIngressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeDBSecurityGroupIngressAsync(..., function(response, error_message)
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

--- Call CopyDBParameterGroup asynchronously, invoking a callback when done
-- @param CopyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, cb)
	assert(CopyDBParameterGroupMessage, "You must provide a CopyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CopyDBParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootDBInstance asynchronously, invoking a callback when done
-- @param RebootDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootDBInstanceAsync(RebootDBInstanceMessage, cb)
	assert(RebootDBInstanceMessage, "You must provide a RebootDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RebootDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RebootDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootDBInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDBSubnetGroup asynchronously, invoking a callback when done
-- @param CreateDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, cb)
	assert(CreateDBSubnetGroupMessage, "You must provide a CreateDBSubnetGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CreateDBSubnetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDBSubnetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBCluster asynchronously, invoking a callback when done
-- @param ModifyDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterAsync(ModifyDBClusterMessage, cb)
	assert(ModifyDBClusterMessage, "You must provide a ModifyDBClusterMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBClusterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBClusterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSnapshotAttributes asynchronously, invoking a callback when done
-- @param DescribeDBSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotAttributesAsync(DescribeDBSnapshotAttributesMessage, cb)
	assert(DescribeDBSnapshotAttributesMessage, "You must provide a DescribeDBSnapshotAttributesMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshotAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSnapshotAttributesMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSnapshotAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSnapshotAttributesMessage
-- @return response
-- @return error_message
function M.DescribeDBSnapshotAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSnapshotAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSourceRegions asynchronously, invoking a callback when done
-- @param DescribeSourceRegionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSourceRegionsAsync(DescribeSourceRegionsMessage, cb)
	assert(DescribeSourceRegionsMessage, "You must provide a DescribeSourceRegionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSourceRegions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSourceRegionsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSourceRegions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSourceRegionsMessage
-- @return response
-- @return error_message
function M.DescribeSourceRegionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSourceRegionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DownloadDBLogFilePortion asynchronously, invoking a callback when done
-- @param DownloadDBLogFilePortionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DownloadDBLogFilePortionAsync(DownloadDBLogFilePortionMessage, cb)
	assert(DownloadDBLogFilePortionMessage, "You must provide a DownloadDBLogFilePortionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DownloadDBLogFilePortion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DownloadDBLogFilePortionMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DownloadDBLogFilePortion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DownloadDBLogFilePortionMessage
-- @return response
-- @return error_message
function M.DownloadDBLogFilePortionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DownloadDBLogFilePortionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusters asynchronously, invoking a callback when done
-- @param DescribeDBClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClustersAsync(DescribeDBClustersMessage, cb)
	assert(DescribeDBClustersMessage, "You must provide a DescribeDBClustersMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBClustersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClustersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterSnapshots asynchronously, invoking a callback when done
-- @param DescribeDBClusterSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, cb)
	assert(DescribeDBClusterSnapshotsMessage, "You must provide a DescribeDBClusterSnapshotsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBClusterSnapshotsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterSnapshotsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBParameterGroup asynchronously, invoking a callback when done
-- @param ModifyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, cb)
	assert(ModifyDBParameterGroupMessage, "You must provide a ModifyDBParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBSecurityGroups asynchronously, invoking a callback when done
-- @param DescribeDBSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSecurityGroupsAsync(DescribeDBSecurityGroupsMessage, cb)
	assert(DescribeDBSecurityGroupsMessage, "You must provide a DescribeDBSecurityGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDBSecurityGroupsMessage, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDBSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDBSecurityGroupsMessage
-- @return response
-- @return error_message
function M.DescribeDBSecurityGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBSecurityGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDBClusterParameterGroup asynchronously, invoking a callback when done
-- @param DeleteDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, cb)
	assert(DeleteDBClusterParameterGroupMessage, "You must provide a DeleteDBClusterParameterGroupMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteDBClusterParameterGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDBClusterParameterGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePendingMaintenanceActions asynchronously, invoking a callback when done
-- @param DescribePendingMaintenanceActionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, cb)
	assert(DescribePendingMaintenanceActionsMessage, "You must provide a DescribePendingMaintenanceActionsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePendingMaintenanceActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribePendingMaintenanceActionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePendingMaintenanceActionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDBClusterParameterGroups asynchronously, invoking a callback when done
-- @param DescribeDBClusterParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, cb)
	assert(DescribeDBClusterParameterGroupsMessage, "You must provide a DescribeDBClusterParameterGroupsMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeDBClusterParameterGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDBClusterParameterGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyDBClusterSnapshot asynchronously, invoking a callback when done
-- @param CopyDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, cb)
	assert(CopyDBClusterSnapshotMessage, "You must provide a CopyDBClusterSnapshotMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CopyDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.CopyDBClusterSnapshotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyDBClusterSnapshotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDBInstance asynchronously, invoking a callback when done
-- @param ModifyDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, cb)
	assert(ModifyDBInstanceMessage, "You must provide a ModifyDBInstanceMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ModifyDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ModifyDBInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDBInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveSourceIdentifierFromSubscription asynchronously, invoking a callback when done
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, cb)
	assert(RemoveSourceIdentifierFromSubscriptionMessage, "You must provide a RemoveSourceIdentifierFromSubscriptionMessage")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveSourceIdentifierFromSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.RemoveSourceIdentifierFromSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveSourceIdentifierFromSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
