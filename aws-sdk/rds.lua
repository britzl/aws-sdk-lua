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

local CertificateNotFoundFault_keys = { nil }

function M.AssertCertificateNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CertificateNotFoundFault_keys[k], "CertificateNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateNotFoundFault
-- <p> <i>CertificateIdentifier</i> does not refer to an existing certificate. </p>
function M.CertificateNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateNotFoundFault")
	local t = { 
	}
	M.AssertCertificateNotFoundFault(t)
	return t
end

local DBSubnetGroupNotFoundFault_keys = { nil }

function M.AssertDBSubnetGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupNotFoundFault_keys[k], "DBSubnetGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotFoundFault
-- <p> <i>DBSubnetGroupName</i> does not refer to an existing DB subnet group. </p>
function M.DBSubnetGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupNotFoundFault")
	local t = { 
	}
	M.AssertDBSubnetGroupNotFoundFault(t)
	return t
end

local CopyDBClusterParameterGroupMessage_keys = { "TargetDBClusterParameterGroupIdentifier" = true, "Tags" = true, "SourceDBClusterParameterGroupIdentifier" = true, "TargetDBClusterParameterGroupDescription" = true, nil }

function M.AssertCopyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBClusterParameterGroupIdentifier"], "Expected key SourceDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupIdentifier"], "Expected key TargetDBClusterParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBClusterParameterGroupDescription"], "Expected key TargetDBClusterParameterGroupDescription to exist in table")
	if struct["TargetDBClusterParameterGroupIdentifier"] then M.AssertString(struct["TargetDBClusterParameterGroupIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterParameterGroupIdentifier"] then M.AssertString(struct["SourceDBClusterParameterGroupIdentifier"]) end
	if struct["TargetDBClusterParameterGroupDescription"] then M.AssertString(struct["TargetDBClusterParameterGroupDescription"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBClusterParameterGroupMessage_keys[k], "CopyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupMessage
--  
-- @param TargetDBClusterParameterGroupIdentifier [String] <p>The identifier for the copied DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>
-- @param Tags [TagList]  
-- @param SourceDBClusterParameterGroupIdentifier [String] <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB cluster parameter group.</p> </li> <li> <p>If the source DB cluster parameter group is in the same region as the copy, specify a valid DB parameter group identifier, for example <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source DB parameter group is in a different region than the copy, specify a valid DB cluster parameter group ARN, for example <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>
-- @param TargetDBClusterParameterGroupDescription [String] <p>A description for the copied DB cluster parameter group.</p>
-- Required parameter: SourceDBClusterParameterGroupIdentifier
-- Required parameter: TargetDBClusterParameterGroupIdentifier
-- Required parameter: TargetDBClusterParameterGroupDescription
function M.CopyDBClusterParameterGroupMessage(TargetDBClusterParameterGroupIdentifier, Tags, SourceDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterParameterGroupMessage")
	local t = { 
		["TargetDBClusterParameterGroupIdentifier"] = TargetDBClusterParameterGroupIdentifier,
		["Tags"] = Tags,
		["SourceDBClusterParameterGroupIdentifier"] = SourceDBClusterParameterGroupIdentifier,
		["TargetDBClusterParameterGroupDescription"] = TargetDBClusterParameterGroupDescription,
	}
	M.AssertCopyDBClusterParameterGroupMessage(t)
	return t
end

local AddSourceIdentifierToSubscriptionMessage_keys = { "SourceIdentifier" = true, "SubscriptionName" = true, nil }

function M.AssertAddSourceIdentifierToSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(AddSourceIdentifierToSubscriptionMessage_keys[k], "AddSourceIdentifierToSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionMessage
-- <p/>
-- @param SourceIdentifier [String] <p>The identifier of the event source to be added. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- @param SubscriptionName [String] <p>The name of the RDS event notification subscription you want to add a source identifier to.</p>
-- Required parameter: SubscriptionName
-- Required parameter: SourceIdentifier
function M.AddSourceIdentifierToSubscriptionMessage(SourceIdentifier, SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddSourceIdentifierToSubscriptionMessage")
	local t = { 
		["SourceIdentifier"] = SourceIdentifier,
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertAddSourceIdentifierToSubscriptionMessage(t)
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
-- <p>The supplied subscription name already exists.</p>
function M.SubscriptionAlreadyExistFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionAlreadyExistFault")
	local t = { 
	}
	M.AssertSubscriptionAlreadyExistFault(t)
	return t
end

local DBSubnetGroupQuotaExceededFault_keys = { nil }

function M.AssertDBSubnetGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupQuotaExceededFault_keys[k], "DBSubnetGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
function M.DBSubnetGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertDBSubnetGroupQuotaExceededFault(t)
	return t
end

local DBClusterRole_keys = { "Status" = true, "RoleArn" = true, nil }

function M.AssertDBClusterRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRole to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["RoleArn"] then M.AssertString(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterRole_keys[k], "DBClusterRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRole
-- <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
-- @param Status [String] <p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>
-- @param RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>
function M.DBClusterRole(Status, RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRole")
	local t = { 
		["Status"] = Status,
		["RoleArn"] = RoleArn,
	}
	M.AssertDBClusterRole(t)
	return t
end

local ModifyOptionGroupMessage_keys = { "OptionsToRemove" = true, "OptionsToInclude" = true, "ApplyImmediately" = true, "OptionGroupName" = true, nil }

function M.AssertModifyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionsToRemove"] then M.AssertOptionNamesList(struct["OptionsToRemove"]) end
	if struct["OptionsToInclude"] then M.AssertOptionConfigurationList(struct["OptionsToInclude"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ModifyOptionGroupMessage_keys[k], "ModifyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupMessage
-- <p/>
-- @param OptionsToRemove [OptionNamesList] <p>Options in this list are removed from the option group.</p>
-- @param OptionsToInclude [OptionConfigurationList] <p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>
-- @param ApplyImmediately [Boolean] <p>Indicates whether the changes should be applied immediately, or during the next maintenance window for each instance associated with the option group.</p>
-- @param OptionGroupName [String] <p>The name of the option group to be modified.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- Required parameter: OptionGroupName
function M.ModifyOptionGroupMessage(OptionsToRemove, OptionsToInclude, ApplyImmediately, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyOptionGroupMessage")
	local t = { 
		["OptionsToRemove"] = OptionsToRemove,
		["OptionsToInclude"] = OptionsToInclude,
		["ApplyImmediately"] = ApplyImmediately,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertModifyOptionGroupMessage(t)
	return t
end

local ModifyEventSubscriptionMessage_keys = { "EventCategories" = true, "Enabled" = true, "SourceType" = true, "SubscriptionName" = true, "SnsTopicArn" = true, nil }

function M.AssertModifyEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["Enabled"] then M.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	for k,_ in pairs(struct) do
		assert(ModifyEventSubscriptionMessage_keys[k], "ModifyEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyEventSubscriptionMessage
-- <p/>
-- @param EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- @param Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription. </p>
-- @param SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- @param SubscriptionName [String] <p>The name of the RDS event notification subscription.</p>
-- @param SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- Required parameter: SubscriptionName
function M.ModifyEventSubscriptionMessage(EventCategories, Enabled, SourceType, SubscriptionName, SnsTopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = EventCategories,
		["Enabled"] = Enabled,
		["SourceType"] = SourceType,
		["SubscriptionName"] = SubscriptionName,
		["SnsTopicArn"] = SnsTopicArn,
	}
	M.AssertModifyEventSubscriptionMessage(t)
	return t
end

local CopyOptionGroupMessage_keys = { "TargetOptionGroupDescription" = true, "Tags" = true, "TargetOptionGroupIdentifier" = true, "SourceOptionGroupIdentifier" = true, nil }

function M.AssertCopyOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupMessage to be of type 'table'")
	assert(struct["SourceOptionGroupIdentifier"], "Expected key SourceOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupIdentifier"], "Expected key TargetOptionGroupIdentifier to exist in table")
	assert(struct["TargetOptionGroupDescription"], "Expected key TargetOptionGroupDescription to exist in table")
	if struct["TargetOptionGroupDescription"] then M.AssertString(struct["TargetOptionGroupDescription"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["TargetOptionGroupIdentifier"] then M.AssertString(struct["TargetOptionGroupIdentifier"]) end
	if struct["SourceOptionGroupIdentifier"] then M.AssertString(struct["SourceOptionGroupIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CopyOptionGroupMessage_keys[k], "CopyOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupMessage
-- <p/>
-- @param TargetOptionGroupDescription [String] <p>The description for the copied option group.</p>
-- @param Tags [TagList] <p/>
-- @param TargetOptionGroupIdentifier [String] <p>The identifier for the copied option group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-option-group</code> </p>
-- @param SourceOptionGroupIdentifier [String] <p>The identifier or ARN for the source option group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid option group.</p> </li> <li> <p>If the source option group is in the same region as the copy, specify a valid option group identifier, for example <code>my-option-group</code>, or a valid ARN.</p> </li> <li> <p>If the source option group is in a different region than the copy, specify a valid option group ARN, for example <code>arn:aws:rds:us-west-2:123456789012:og:special-options</code>.</p> </li> </ul>
-- Required parameter: SourceOptionGroupIdentifier
-- Required parameter: TargetOptionGroupIdentifier
-- Required parameter: TargetOptionGroupDescription
function M.CopyOptionGroupMessage(TargetOptionGroupDescription, Tags, TargetOptionGroupIdentifier, SourceOptionGroupIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyOptionGroupMessage")
	local t = { 
		["TargetOptionGroupDescription"] = TargetOptionGroupDescription,
		["Tags"] = Tags,
		["TargetOptionGroupIdentifier"] = TargetOptionGroupIdentifier,
		["SourceOptionGroupIdentifier"] = SourceOptionGroupIdentifier,
	}
	M.AssertCopyOptionGroupMessage(t)
	return t
end

local DBSecurityGroupMessage_keys = { "Marker" = true, "DBSecurityGroups" = true, nil }

function M.AssertDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBSecurityGroups"] then M.AssertDBSecurityGroups(struct["DBSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupMessage_keys[k], "DBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBSecurityGroups [DBSecurityGroups] <p> A list of <a>DBSecurityGroup</a> instances. </p>
function M.DBSecurityGroupMessage(Marker, DBSecurityGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["DBSecurityGroups"] = DBSecurityGroups,
	}
	M.AssertDBSecurityGroupMessage(t)
	return t
end

local DBSubnetGroup_keys = { "Subnets" = true, "VpcId" = true, "DBSubnetGroupDescription" = true, "SubnetGroupStatus" = true, "DBSubnetGroupArn" = true, "DBSubnetGroupName" = true, nil }

function M.AssertDBSubnetGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroup to be of type 'table'")
	if struct["Subnets"] then M.AssertSubnetList(struct["Subnets"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["DBSubnetGroupDescription"] then M.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetGroupStatus"] then M.AssertString(struct["SubnetGroupStatus"]) end
	if struct["DBSubnetGroupArn"] then M.AssertString(struct["DBSubnetGroupArn"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBSubnetGroup_keys[k], "DBSubnetGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroup
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSubnetGroup</a> </p> </li> <li> <p> <a>ModifyDBSubnetGroup</a> </p> </li> <li> <p> <a>DescribeDBSubnetGroups</a> </p> </li> <li> <p> <a>DeleteDBSubnetGroup</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
-- @param Subnets [SubnetList] <p> Contains a list of <a>Subnet</a> elements. </p>
-- @param VpcId [String] <p>Provides the VpcId of the DB subnet group.</p>
-- @param DBSubnetGroupDescription [String] <p>Provides the description of the DB subnet group.</p>
-- @param SubnetGroupStatus [String] <p>Provides the status of the DB subnet group.</p>
-- @param DBSubnetGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
-- @param DBSubnetGroupName [String] <p>The name of the DB subnet group.</p>
function M.DBSubnetGroup(Subnets, VpcId, DBSubnetGroupDescription, SubnetGroupStatus, DBSubnetGroupArn, DBSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroup")
	local t = { 
		["Subnets"] = Subnets,
		["VpcId"] = VpcId,
		["DBSubnetGroupDescription"] = DBSubnetGroupDescription,
		["SubnetGroupStatus"] = SubnetGroupStatus,
		["DBSubnetGroupArn"] = DBSubnetGroupArn,
		["DBSubnetGroupName"] = DBSubnetGroupName,
	}
	M.AssertDBSubnetGroup(t)
	return t
end

local DBSubnetGroupAlreadyExistsFault_keys = { nil }

function M.AssertDBSubnetGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupAlreadyExistsFault_keys[k], "DBSubnetGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupAlreadyExistsFault
-- <p> <i>DBSubnetGroupName</i> is already used by an existing DB subnet group. </p>
function M.DBSubnetGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBSubnetGroupAlreadyExistsFault(t)
	return t
end

local DeleteDBInstanceMessage_keys = { "FinalDBSnapshotIdentifier" = true, "SkipFinalSnapshot" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDeleteDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then M.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then M.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBInstanceMessage_keys[k], "DeleteDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceMessage
-- <p/>
-- @param FinalDBSnapshotIdentifier [String] <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to <code>false</code>. </p> <note> <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Cannot be specified when deleting a Read Replica.</p> </li> </ul>
-- @param SkipFinalSnapshot [Boolean] <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified, a DB snapshot is created before the DB instance is deleted. </p> <p>Note that when a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when the SkipFinalSnapshot parameter is set to "true".</p> <p>Specify <code>true</code> when deleting a Read Replica.</p> <note> <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.DeleteDBInstanceMessage(FinalDBSnapshotIdentifier, SkipFinalSnapshot, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBInstanceMessage")
	local t = { 
		["FinalDBSnapshotIdentifier"] = FinalDBSnapshotIdentifier,
		["SkipFinalSnapshot"] = SkipFinalSnapshot,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDeleteDBInstanceMessage(t)
	return t
end

local DBSubnetGroupNotAllowedFault_keys = { nil }

function M.AssertDBSubnetGroupNotAllowedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupNotAllowedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupNotAllowedFault_keys[k], "DBSubnetGroupNotAllowedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupNotAllowedFault
-- <p>Indicates that the DBSubnetGroup should not be specified while creating read replicas that lie in the same region as the source instance.</p>
function M.DBSubnetGroupNotAllowedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupNotAllowedFault")
	local t = { 
	}
	M.AssertDBSubnetGroupNotAllowedFault(t)
	return t
end

local DescribeDBClusterParameterGroupsMessage_keys = { "DBClusterParameterGroupName" = true, "Marker" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParameterGroupsMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClusterParameterGroupsMessage_keys[k], "DescribeDBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParameterGroupsMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBClusterParameterGroupsMessage(DBClusterParameterGroupName, Marker, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterParameterGroupsMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeDBClusterParameterGroupsMessage(t)
	return t
end

local DBClusterSnapshotAttribute_keys = { "AttributeName" = true, "AttributeValues" = true, nil }

function M.AssertDBClusterSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then M.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then M.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshotAttribute_keys[k], "DBClusterSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttribute
-- <p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param AttributeName [String] <p>The name of the manual DB cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param AttributeValues [AttributeValueList] <p>The value(s) for the manual DB cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot is public and available for any AWS account to copy or restore.</p>
function M.DBClusterSnapshotAttribute(AttributeName, AttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAttribute")
	local t = { 
		["AttributeName"] = AttributeName,
		["AttributeValues"] = AttributeValues,
	}
	M.AssertDBClusterSnapshotAttribute(t)
	return t
end

local StorageTypeNotSupportedFault_keys = { nil }

function M.AssertStorageTypeNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageTypeNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StorageTypeNotSupportedFault_keys[k], "StorageTypeNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageTypeNotSupportedFault
-- <p> <i>StorageType</i> specified cannot be associated with the DB Instance. </p>
function M.StorageTypeNotSupportedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageTypeNotSupportedFault")
	local t = { 
	}
	M.AssertStorageTypeNotSupportedFault(t)
	return t
end

local CreateOptionGroupResult_keys = { "OptionGroup" = true, nil }

function M.AssertCreateOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then M.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateOptionGroupResult_keys[k], "CreateOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupResult
--  
-- @param OptionGroup [OptionGroup]  
function M.CreateOptionGroupResult(OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOptionGroupResult")
	local t = { 
		["OptionGroup"] = OptionGroup,
	}
	M.AssertCreateOptionGroupResult(t)
	return t
end

local CreateEventSubscriptionMessage_keys = { "EventCategories" = true, "SourceType" = true, "Tags" = true, "Enabled" = true, "SnsTopicArn" = true, "SubscriptionName" = true, "SourceIds" = true, nil }

function M.AssertCreateEventSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEventSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SnsTopicArn"], "Expected key SnsTopicArn to exist in table")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["Enabled"] then M.AssertBooleanOptional(struct["Enabled"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	if struct["SourceIds"] then M.AssertSourceIdsList(struct["SourceIds"]) end
	for k,_ in pairs(struct) do
		assert(CreateEventSubscriptionMessage_keys[k], "CreateEventSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEventSubscriptionMessage
-- <p/>
-- @param EventCategories [EventCategoriesList] <p> A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action. </p>
-- @param SourceType [String] <p>The type of source that will be generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>
-- @param Tags [TagList] <p/>
-- @param Enabled [BooleanOptional] <p> A Boolean value; set to <b>true</b> to activate the subscription, set to <b>false</b> to create the subscription but not active it. </p>
-- @param SnsTopicArn [String] <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
-- @param SubscriptionName [String] <p>The name of the subscription.</p> <p>Constraints: The name must be less than 255 characters.</p>
-- @param SourceIds [SourceIdsList] <p>The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIds are supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> </ul>
-- Required parameter: SubscriptionName
-- Required parameter: SnsTopicArn
function M.CreateEventSubscriptionMessage(EventCategories, SourceType, Tags, Enabled, SnsTopicArn, SubscriptionName, SourceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEventSubscriptionMessage")
	local t = { 
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
		["Tags"] = Tags,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["SubscriptionName"] = SubscriptionName,
		["SourceIds"] = SourceIds,
	}
	M.AssertCreateEventSubscriptionMessage(t)
	return t
end

local AddRoleToDBClusterMessage_keys = { "RoleArn" = true, "DBClusterIdentifier" = true, nil }

function M.AssertAddRoleToDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddRoleToDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then M.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(AddRoleToDBClusterMessage_keys[k], "AddRoleToDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddRoleToDBClusterMessage
--  
-- @param RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- @param DBClusterIdentifier [String] <p>The name of the DB cluster to associate the IAM role with.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: RoleArn
function M.AddRoleToDBClusterMessage(RoleArn, DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddRoleToDBClusterMessage")
	local t = { 
		["RoleArn"] = RoleArn,
		["DBClusterIdentifier"] = DBClusterIdentifier,
	}
	M.AssertAddRoleToDBClusterMessage(t)
	return t
end

local DBSnapshotMessage_keys = { "Marker" = true, "DBSnapshots" = true, nil }

function M.AssertDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBSnapshots"] then M.AssertDBSnapshotList(struct["DBSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(DBSnapshotMessage_keys[k], "DBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSnapshots</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBSnapshots [DBSnapshotList] <p> A list of <a>DBSnapshot</a> instances. </p>
function M.DBSnapshotMessage(Marker, DBSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotMessage")
	local t = { 
		["Marker"] = Marker,
		["DBSnapshots"] = DBSnapshots,
	}
	M.AssertDBSnapshotMessage(t)
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
-- <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
-- @param Value [String] <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
-- @param Key [String] <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and cannot be prefixed with "aws:" or "rds:". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local CopyDBSnapshotMessage_keys = { "CopyTags" = true, "SourceRegion" = true, "Tags" = true, "PreSignedUrl" = true, "TargetDBSnapshotIdentifier" = true, "SourceDBSnapshotIdentifier" = true, "KmsKeyId" = true, "OptionGroupName" = true, nil }

function M.AssertCopyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBSnapshotIdentifier"], "Expected key SourceDBSnapshotIdentifier to exist in table")
	assert(struct["TargetDBSnapshotIdentifier"], "Expected key TargetDBSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then M.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["PreSignedUrl"] then M.AssertString(struct["PreSignedUrl"]) end
	if struct["TargetDBSnapshotIdentifier"] then M.AssertString(struct["TargetDBSnapshotIdentifier"]) end
	if struct["SourceDBSnapshotIdentifier"] then M.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBSnapshotMessage_keys[k], "CopyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotMessage
-- <p/>
-- @param CopyTags [BooleanOptional] <p>True to copy all tags from the source DB snapshot to the target DB snapshot; otherwise false. The default is false.</p>
-- @param SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- @param Tags [TagList] <p/>
-- @param PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBSnapshot</code> API action in the source AWS region that contains the source DB snapshot to copy. </p> <p>You must specify this parameter when you copy an encrypted DB snapshot from another AWS region by using the Amazon RDS API. You can specify the source region option instead of this parameter when you copy an encrypted DB snapshot from another AWS region by using the AWS CLI. </p> <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action that can be executed in the source region that contains the encrypted DB snapshot to be copied. The presigned URL request must contain the following parameter values: </p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot will be copied to. This region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL. </p> <p>For example, if you copy an encrypted DB snapshot from the us-west-2 region to the us-east-1 region, then you will call the <code>CopyDBSnapshot</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CopyDBSnapshot</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region. </p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination region. This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination region, and the action contained in the presigned URL. </p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB snapshot from the us-west-2 region, then your <code>SourceDBSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>. </p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>. </p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param TargetDBSnapshotIdentifier [String] <p>The identifier for the copy of the snapshot. </p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-snapshot</code> </p>
-- @param SourceDBSnapshotIdentifier [String] <p>The identifier for the source DB snapshot.</p> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier. For example, <code>rds:mysql-instance1-snapshot-20130805</code>. </p> <p>If the source snapshot is in a different region than the copy, specify a valid DB snapshot ARN. For example, <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>. </p> <p>If you are copying from a shared manual DB snapshot, this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot. </p> <p>If you are copying an encrypted snapshot this parameter must be in the ARN format for the source region, and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> </ul> <p>Example: <code>rds:mydb-2012-04-02-00-01</code> </p> <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code> </p>
-- @param KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an encrypted DB snapshot from your AWS account, you can specify a value for this parameter to encrypt the copy with a new KMS encryption key. If you don't specify a value for this parameter, then the copy of the DB snapshot is encrypted with the same KMS key as the source DB snapshot. </p> <p>If you copy an encrypted DB snapshot that is shared from another AWS account, then you must specify a value for this parameter. </p> <p>If you specify this parameter when you copy an unencrypted snapshot, the copy is encrypted. </p> <p>If you copy an encrypted snapshot to a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region. </p>
-- @param OptionGroupName [String] <p>The name of an option group to associate with the copy. </p> <p>Specify this option if you are copying a snapshot from one AWS region to another, and your DB instance uses a non-default option group. If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, you must specify this option when copying across regions. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options">Option Group Considerations</a>. </p>
-- Required parameter: SourceDBSnapshotIdentifier
-- Required parameter: TargetDBSnapshotIdentifier
function M.CopyDBSnapshotMessage(CopyTags, SourceRegion, Tags, PreSignedUrl, TargetDBSnapshotIdentifier, SourceDBSnapshotIdentifier, KmsKeyId, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBSnapshotMessage")
	local t = { 
		["CopyTags"] = CopyTags,
		["SourceRegion"] = SourceRegion,
		["Tags"] = Tags,
		["PreSignedUrl"] = PreSignedUrl,
		["TargetDBSnapshotIdentifier"] = TargetDBSnapshotIdentifier,
		["SourceDBSnapshotIdentifier"] = SourceDBSnapshotIdentifier,
		["KmsKeyId"] = KmsKeyId,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertCopyDBSnapshotMessage(t)
	return t
end

local OrderableDBInstanceOption_keys = { "Engine" = true, "SupportsIAMDatabaseAuthentication" = true, "StorageType" = true, "LicenseModel" = true, "SupportsStorageEncryption" = true, "SupportsEnhancedMonitoring" = true, "Vpc" = true, "EngineVersion" = true, "DBInstanceClass" = true, "AvailabilityZones" = true, "MultiAZCapable" = true, "ReadReplicaCapable" = true, "SupportsIops" = true, nil }

function M.AssertOrderableDBInstanceOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOption to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["SupportsIAMDatabaseAuthentication"] then M.AssertBoolean(struct["SupportsIAMDatabaseAuthentication"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["SupportsStorageEncryption"] then M.AssertBoolean(struct["SupportsStorageEncryption"]) end
	if struct["SupportsEnhancedMonitoring"] then M.AssertBoolean(struct["SupportsEnhancedMonitoring"]) end
	if struct["Vpc"] then M.AssertBoolean(struct["Vpc"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZoneList(struct["AvailabilityZones"]) end
	if struct["MultiAZCapable"] then M.AssertBoolean(struct["MultiAZCapable"]) end
	if struct["ReadReplicaCapable"] then M.AssertBoolean(struct["ReadReplicaCapable"]) end
	if struct["SupportsIops"] then M.AssertBoolean(struct["SupportsIops"]) end
	for k,_ in pairs(struct) do
		assert(OrderableDBInstanceOption_keys[k], "OrderableDBInstanceOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOption
-- <p>Contains a list of available options for a DB instance</p> <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param Engine [String] <p>The engine type of the orderable DB instance.</p>
-- @param SupportsIAMDatabaseAuthentication [Boolean] <p>Indicates whether this orderable DB instance supports IAM database authentication.</p>
-- @param StorageType [String] <p>Indicates the storage type for this orderable DB instance.</p>
-- @param LicenseModel [String] <p>The license model for the orderable DB instance.</p>
-- @param SupportsStorageEncryption [Boolean] <p>Indicates whether this orderable DB instance supports encrypted storage.</p>
-- @param SupportsEnhancedMonitoring [Boolean] <p>Indicates whether the DB instance supports enhanced monitoring at intervals from 1 to 60 seconds.</p>
-- @param Vpc [Boolean] <p>Indicates whether this is a VPC orderable DB instance.</p>
-- @param EngineVersion [String] <p>The engine version of the orderable DB instance.</p>
-- @param DBInstanceClass [String] <p>The DB instance class for the orderable DB instance.</p>
-- @param AvailabilityZones [AvailabilityZoneList] <p>A list of Availability Zones for the orderable DB instance.</p>
-- @param MultiAZCapable [Boolean] <p>Indicates whether this orderable DB instance is multi-AZ capable.</p>
-- @param ReadReplicaCapable [Boolean] <p>Indicates whether this orderable DB instance can have a Read Replica.</p>
-- @param SupportsIops [Boolean] <p>Indicates whether this orderable DB instance supports provisioned IOPS.</p>
function M.OrderableDBInstanceOption(Engine, SupportsIAMDatabaseAuthentication, StorageType, LicenseModel, SupportsStorageEncryption, SupportsEnhancedMonitoring, Vpc, EngineVersion, DBInstanceClass, AvailabilityZones, MultiAZCapable, ReadReplicaCapable, SupportsIops, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableDBInstanceOption")
	local t = { 
		["Engine"] = Engine,
		["SupportsIAMDatabaseAuthentication"] = SupportsIAMDatabaseAuthentication,
		["StorageType"] = StorageType,
		["LicenseModel"] = LicenseModel,
		["SupportsStorageEncryption"] = SupportsStorageEncryption,
		["SupportsEnhancedMonitoring"] = SupportsEnhancedMonitoring,
		["Vpc"] = Vpc,
		["EngineVersion"] = EngineVersion,
		["DBInstanceClass"] = DBInstanceClass,
		["AvailabilityZones"] = AvailabilityZones,
		["MultiAZCapable"] = MultiAZCapable,
		["ReadReplicaCapable"] = ReadReplicaCapable,
		["SupportsIops"] = SupportsIops,
	}
	M.AssertOrderableDBInstanceOption(t)
	return t
end

local DBSecurityGroupAlreadyExistsFault_keys = { nil }

function M.AssertDBSecurityGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupAlreadyExistsFault_keys[k], "DBSecurityGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupAlreadyExistsFault
-- <p> A DB security group with the name specified in <i>DBSecurityGroupName</i> already exists. </p>
function M.DBSecurityGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBSecurityGroupAlreadyExistsFault(t)
	return t
end

local DBClusterParameterGroupNameMessage_keys = { "DBClusterParameterGroupName" = true, nil }

function M.AssertDBClusterParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNameMessage to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterParameterGroupNameMessage_keys[k], "DBClusterParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNameMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
function M.DBClusterParameterGroupNameMessage(DBClusterParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupNameMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
	}
	M.AssertDBClusterParameterGroupNameMessage(t)
	return t
end

local InvalidOptionGroupStateFault_keys = { nil }

function M.AssertInvalidOptionGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOptionGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOptionGroupStateFault_keys[k], "InvalidOptionGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOptionGroupStateFault
-- <p> The option group is not in the <i>available</i> state. </p>
function M.InvalidOptionGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOptionGroupStateFault")
	local t = { 
	}
	M.AssertInvalidOptionGroupStateFault(t)
	return t
end

local DescribeDBSecurityGroupsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "DBSecurityGroupName" = true, nil }

function M.AssertDescribeDBSecurityGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSecurityGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBSecurityGroupsMessage_keys[k], "DescribeDBSecurityGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSecurityGroupsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSecurityGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param DBSecurityGroupName [String] <p>The name of the DB security group to return details for.</p>
function M.DescribeDBSecurityGroupsMessage(Marker, MaxRecords, Filters, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSecurityGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertDescribeDBSecurityGroupsMessage(t)
	return t
end

local CopyDBSnapshotResult_keys = { "DBSnapshot" = true, nil }

function M.AssertCopyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then M.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBSnapshotResult_keys[k], "CopyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBSnapshotResult
--  
-- @param DBSnapshot [DBSnapshot]  
function M.CopyDBSnapshotResult(DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = DBSnapshot,
	}
	M.AssertCopyDBSnapshotResult(t)
	return t
end

local DBInstanceAlreadyExistsFault_keys = { nil }

function M.AssertDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBInstanceAlreadyExistsFault_keys[k], "DBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceAlreadyExistsFault
-- <p>User already has a DB instance with the given identifier.</p>
function M.DBInstanceAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBInstanceAlreadyExistsFault(t)
	return t
end

local DBClusterSnapshot_keys = { "Engine" = true, "SnapshotCreateTime" = true, "VpcId" = true, "DBClusterIdentifier" = true, "DBClusterSnapshotArn" = true, "MasterUsername" = true, "LicenseModel" = true, "Status" = true, "PercentProgress" = true, "DBClusterSnapshotIdentifier" = true, "KmsKeyId" = true, "ClusterCreateTime" = true, "StorageEncrypted" = true, "AllocatedStorage" = true, "EngineVersion" = true, "SnapshotType" = true, "SourceDBClusterSnapshotArn" = true, "AvailabilityZones" = true, "IAMDatabaseAuthenticationEnabled" = true, "Port" = true, nil }

function M.AssertDBClusterSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshot to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["SnapshotCreateTime"] then M.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DBClusterSnapshotArn"] then M.AssertString(struct["DBClusterSnapshotArn"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then M.AssertInteger(struct["PercentProgress"]) end
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["ClusterCreateTime"] then M.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["StorageEncrypted"] then M.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["AllocatedStorage"] then M.AssertInteger(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	if struct["SourceDBClusterSnapshotArn"] then M.AssertString(struct["SourceDBClusterSnapshotArn"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then M.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Port"] then M.AssertInteger(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshot_keys[k], "DBClusterSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshot
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBClusterSnapshot</a> </p> </li> <li> <p> <a>DeleteDBClusterSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
-- @param Engine [String] <p>Specifies the name of the database engine.</p>
-- @param SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param VpcId [String] <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
-- @param DBClusterIdentifier [String] <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>
-- @param DBClusterSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>
-- @param MasterUsername [String] <p>Provides the master username for the DB cluster snapshot.</p>
-- @param LicenseModel [String] <p>Provides the license model information for this DB cluster snapshot.</p>
-- @param Status [String] <p>Specifies the status of this DB cluster snapshot.</p>
-- @param PercentProgress [Integer] <p>Specifies the percentage of the estimated data that has been transferred.</p>
-- @param DBClusterSnapshotIdentifier [String] <p>Specifies the identifier for the DB cluster snapshot.</p>
-- @param KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster snapshot.</p>
-- @param ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- @param StorageEncrypted [Boolean] <p>Specifies whether the DB cluster snapshot is encrypted.</p>
-- @param AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- @param EngineVersion [String] <p>Provides the version of the database engine for this DB cluster snapshot.</p>
-- @param SnapshotType [String] <p>Provides the type of the DB cluster snapshot.</p>
-- @param SourceDBClusterSnapshotArn [String] <p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot; otherwise, a null value.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in.</p>
-- @param IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param Port [Integer] <p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>
function M.DBClusterSnapshot(Engine, SnapshotCreateTime, VpcId, DBClusterIdentifier, DBClusterSnapshotArn, MasterUsername, LicenseModel, Status, PercentProgress, DBClusterSnapshotIdentifier, KmsKeyId, ClusterCreateTime, StorageEncrypted, AllocatedStorage, EngineVersion, SnapshotType, SourceDBClusterSnapshotArn, AvailabilityZones, IAMDatabaseAuthenticationEnabled, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshot")
	local t = { 
		["Engine"] = Engine,
		["SnapshotCreateTime"] = SnapshotCreateTime,
		["VpcId"] = VpcId,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["DBClusterSnapshotArn"] = DBClusterSnapshotArn,
		["MasterUsername"] = MasterUsername,
		["LicenseModel"] = LicenseModel,
		["Status"] = Status,
		["PercentProgress"] = PercentProgress,
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
		["KmsKeyId"] = KmsKeyId,
		["ClusterCreateTime"] = ClusterCreateTime,
		["StorageEncrypted"] = StorageEncrypted,
		["AllocatedStorage"] = AllocatedStorage,
		["EngineVersion"] = EngineVersion,
		["SnapshotType"] = SnapshotType,
		["SourceDBClusterSnapshotArn"] = SourceDBClusterSnapshotArn,
		["AvailabilityZones"] = AvailabilityZones,
		["IAMDatabaseAuthenticationEnabled"] = IAMDatabaseAuthenticationEnabled,
		["Port"] = Port,
	}
	M.AssertDBClusterSnapshot(t)
	return t
end

local FailoverDBClusterResult_keys = { "DBCluster" = true, nil }

function M.AssertFailoverDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(FailoverDBClusterResult_keys[k], "FailoverDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterResult
--  
-- @param DBCluster [DBCluster]  
function M.FailoverDBClusterResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailoverDBClusterResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertFailoverDBClusterResult(t)
	return t
end

local SourceRegion_keys = { "Status" = true, "Endpoint" = true, "RegionName" = true, nil }

function M.AssertSourceRegion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegion to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["Endpoint"] then M.AssertString(struct["Endpoint"]) end
	if struct["RegionName"] then M.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(SourceRegion_keys[k], "SourceRegion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegion
-- <p>Contains an AWS Region name as the result of a successful call to the <a>DescribeSourceRegions</a> action.</p>
-- @param Status [String] <p>The status of the source region.</p>
-- @param Endpoint [String] <p>The source region endpoint.</p>
-- @param RegionName [String] <p>The source region name.</p>
function M.SourceRegion(Status, Endpoint, RegionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceRegion")
	local t = { 
		["Status"] = Status,
		["Endpoint"] = Endpoint,
		["RegionName"] = RegionName,
	}
	M.AssertSourceRegion(t)
	return t
end

local PurchaseReservedDBInstancesOfferingMessage_keys = { "ReservedDBInstanceId" = true, "ReservedDBInstancesOfferingId" = true, "DBInstanceCount" = true, "Tags" = true, nil }

function M.AssertPurchaseReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingMessage to be of type 'table'")
	assert(struct["ReservedDBInstancesOfferingId"], "Expected key ReservedDBInstancesOfferingId to exist in table")
	if struct["ReservedDBInstanceId"] then M.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["ReservedDBInstancesOfferingId"] then M.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["DBInstanceCount"] then M.AssertIntegerOptional(struct["DBInstanceCount"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedDBInstancesOfferingMessage_keys[k], "PurchaseReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingMessage
-- <p/>
-- @param ReservedDBInstanceId [String] <p>Customer-specified identifier to track this reservation.</p> <p>Example: myreservationID</p>
-- @param ReservedDBInstancesOfferingId [String] <p>The ID of the Reserved DB instance offering to purchase.</p> <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>
-- @param DBInstanceCount [IntegerOptional] <p>The number of instances to reserve.</p> <p>Default: <code>1</code> </p>
-- @param Tags [TagList] <p/>
-- Required parameter: ReservedDBInstancesOfferingId
function M.PurchaseReservedDBInstancesOfferingMessage(ReservedDBInstanceId, ReservedDBInstancesOfferingId, DBInstanceCount, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedDBInstancesOfferingMessage")
	local t = { 
		["ReservedDBInstanceId"] = ReservedDBInstanceId,
		["ReservedDBInstancesOfferingId"] = ReservedDBInstancesOfferingId,
		["DBInstanceCount"] = DBInstanceCount,
		["Tags"] = Tags,
	}
	M.AssertPurchaseReservedDBInstancesOfferingMessage(t)
	return t
end

local ResetDBParameterGroupMessage_keys = { "DBParameterGroupName" = true, "ResetAllParameters" = true, "Parameters" = true, nil }

function M.AssertResetDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["ResetAllParameters"] then M.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ResetDBParameterGroupMessage_keys[k], "ResetDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBParameterGroupMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param ResetAllParameters [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters in the DB parameter group to default values. </p> <p>Default: <code>true</code> </p>
-- @param Parameters [ParametersList] <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p> <p> <b>MySQL</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>MariaDB</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>Oracle</b> </p> <p>Valid Values (for Apply method): <code>pending-reboot</code> </p>
-- Required parameter: DBParameterGroupName
function M.ResetDBParameterGroupMessage(DBParameterGroupName, ResetAllParameters, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["ResetAllParameters"] = ResetAllParameters,
		["Parameters"] = Parameters,
	}
	M.AssertResetDBParameterGroupMessage(t)
	return t
end

local DBClusterSnapshotMessage_keys = { "Marker" = true, "DBClusterSnapshots" = true, nil }

function M.AssertDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshots"] then M.AssertDBClusterSnapshotList(struct["DBClusterSnapshots"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshotMessage_keys[k], "DBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotMessage
-- <p> Provides a list of DB cluster snapshots for the user as the result of a call to the <a>DescribeDBClusterSnapshots</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBClusterSnapshots [DBClusterSnapshotList] <p>Provides a list of DB cluster snapshots for the user.</p>
function M.DBClusterSnapshotMessage(Marker, DBClusterSnapshots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotMessage")
	local t = { 
		["Marker"] = Marker,
		["DBClusterSnapshots"] = DBClusterSnapshots,
	}
	M.AssertDBClusterSnapshotMessage(t)
	return t
end

local DBClusterMember_keys = { "IsClusterWriter" = true, "DBClusterParameterGroupStatus" = true, "PromotionTier" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDBClusterMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMember to be of type 'table'")
	if struct["IsClusterWriter"] then M.AssertBoolean(struct["IsClusterWriter"]) end
	if struct["DBClusterParameterGroupStatus"] then M.AssertString(struct["DBClusterParameterGroupStatus"]) end
	if struct["PromotionTier"] then M.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterMember_keys[k], "DBClusterMember contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMember
-- <p>Contains information about an instance that is part of a DB cluster.</p>
-- @param IsClusterWriter [Boolean] <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>
-- @param DBClusterParameterGroupStatus [String] <p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>
-- @param PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- @param DBInstanceIdentifier [String] <p>Specifies the instance identifier for this member of the DB cluster.</p>
function M.DBClusterMember(IsClusterWriter, DBClusterParameterGroupStatus, PromotionTier, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterMember")
	local t = { 
		["IsClusterWriter"] = IsClusterWriter,
		["DBClusterParameterGroupStatus"] = DBClusterParameterGroupStatus,
		["PromotionTier"] = PromotionTier,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDBClusterMember(t)
	return t
end

local RebootDBInstanceMessage_keys = { "ForceFailover" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertRebootDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["ForceFailover"] then M.AssertBooleanOptional(struct["ForceFailover"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RebootDBInstanceMessage_keys[k], "RebootDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceMessage
-- <p/>
-- @param ForceFailover [BooleanOptional] <p> When <code>true</code>, the reboot will be conducted through a MultiAZ failover. </p> <p>Constraint: You cannot specify <code>true</code> if the instance is not configured for MultiAZ.</p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.RebootDBInstanceMessage(ForceFailover, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootDBInstanceMessage")
	local t = { 
		["ForceFailover"] = ForceFailover,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertRebootDBInstanceMessage(t)
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
-- <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the following data type:</p> <ul> <li> <p> <a>OrderableDBInstanceOption</a> </p> </li> </ul>
-- @param Name [String] <p>The name of the availability zone.</p>
function M.AvailabilityZone(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AvailabilityZone")
	local t = { 
		["Name"] = Name,
	}
	M.AssertAvailabilityZone(t)
	return t
end

local ModifyDBClusterParameterGroupMessage_keys = { "DBClusterParameterGroupName" = true, "Parameters" = true, nil }

function M.AssertModifyDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBClusterParameterGroupMessage_keys[k], "ModifyDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterParameterGroupMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to modify.</p>
-- @param Parameters [ParametersList] <p>A list of parameters in the DB cluster parameter group to modify.</p>
-- Required parameter: DBClusterParameterGroupName
-- Required parameter: Parameters
function M.ModifyDBClusterParameterGroupMessage(DBClusterParameterGroupName, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["Parameters"] = Parameters,
	}
	M.AssertModifyDBClusterParameterGroupMessage(t)
	return t
end

local ModifyDBSnapshotAttributeMessage_keys = { "ValuesToAdd" = true, "ValuesToRemove" = true, "DBSnapshotIdentifier" = true, "AttributeName" = true, nil }

function M.AssertModifyDBSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then M.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["ValuesToRemove"] then M.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["AttributeName"] then M.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSnapshotAttributeMessage_keys[k], "ModifyDBSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeMessage
-- <p/>
-- @param ValuesToAdd [AttributeValueList] <p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- @param ValuesToRemove [AttributeValueList] <p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore the manual DB snapshot.</p>
-- @param DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to modify the attributes for.</p>
-- @param AttributeName [String] <p>The name of the DB snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, set this value to <code>restore</code>.</p>
-- Required parameter: DBSnapshotIdentifier
-- Required parameter: AttributeName
function M.ModifyDBSnapshotAttributeMessage(ValuesToAdd, ValuesToRemove, DBSnapshotIdentifier, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotAttributeMessage")
	local t = { 
		["ValuesToAdd"] = ValuesToAdd,
		["ValuesToRemove"] = ValuesToRemove,
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["AttributeName"] = AttributeName,
	}
	M.AssertModifyDBSnapshotAttributeMessage(t)
	return t
end

local DBClusterAlreadyExistsFault_keys = { nil }

function M.AssertDBClusterAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterAlreadyExistsFault_keys[k], "DBClusterAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterAlreadyExistsFault
-- <p>User already has a DB cluster with the given identifier.</p>
function M.DBClusterAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBClusterAlreadyExistsFault(t)
	return t
end

local CreateDBSecurityGroupMessage_keys = { "Tags" = true, "DBSecurityGroupDescription" = true, "DBSecurityGroupName" = true, nil }

function M.AssertCreateDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	assert(struct["DBSecurityGroupDescription"], "Expected key DBSecurityGroupDescription to exist in table")
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["DBSecurityGroupDescription"] then M.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSecurityGroupMessage_keys[k], "CreateDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupMessage
-- <p/>
-- @param Tags [TagList] <p/>
-- @param DBSecurityGroupDescription [String] <p>The description for the DB security group.</p>
-- @param DBSecurityGroupName [String] <p>The name for the DB security group. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul> <p>Example: <code>mysecuritygroup</code> </p>
-- Required parameter: DBSecurityGroupName
-- Required parameter: DBSecurityGroupDescription
function M.CreateDBSecurityGroupMessage(Tags, DBSecurityGroupDescription, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSecurityGroupMessage")
	local t = { 
		["Tags"] = Tags,
		["DBSecurityGroupDescription"] = DBSecurityGroupDescription,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertCreateDBSecurityGroupMessage(t)
	return t
end

local Certificate_keys = { "CertificateArn" = true, "ValidTill" = true, "CertificateIdentifier" = true, "Thumbprint" = true, "CertificateType" = true, "ValidFrom" = true, nil }

function M.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["CertificateArn"] then M.AssertString(struct["CertificateArn"]) end
	if struct["ValidTill"] then M.AssertTStamp(struct["ValidTill"]) end
	if struct["CertificateIdentifier"] then M.AssertString(struct["CertificateIdentifier"]) end
	if struct["Thumbprint"] then M.AssertString(struct["Thumbprint"]) end
	if struct["CertificateType"] then M.AssertString(struct["CertificateType"]) end
	if struct["ValidFrom"] then M.AssertTStamp(struct["ValidFrom"]) end
	for k,_ in pairs(struct) do
		assert(Certificate_keys[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>A CA certificate for an AWS account.</p>
-- @param CertificateArn [String] <p>The Amazon Resource Name (ARN) for the certificate.</p>
-- @param ValidTill [TStamp] <p>The final date that the certificate continues to be valid.</p>
-- @param CertificateIdentifier [String] <p>The unique key that identifies a certificate.</p>
-- @param Thumbprint [String] <p>The thumbprint of the certificate.</p>
-- @param CertificateType [String] <p>The type of the certificate.</p>
-- @param ValidFrom [TStamp] <p>The starting date from which the certificate is valid.</p>
function M.Certificate(CertificateArn, ValidTill, CertificateIdentifier, Thumbprint, CertificateType, ValidFrom, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["ValidTill"] = ValidTill,
		["CertificateIdentifier"] = CertificateIdentifier,
		["Thumbprint"] = Thumbprint,
		["CertificateType"] = CertificateType,
		["ValidFrom"] = ValidFrom,
	}
	M.AssertCertificate(t)
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
-- <p/>
-- @param TagList [TagList] <p>List of tags returned by the ListTagsForResource operation.</p>
function M.TagListMessage(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagListMessage")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertTagListMessage(t)
	return t
end

local ReservedDBInstanceNotFoundFault_keys = { nil }

function M.AssertReservedDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedDBInstanceNotFoundFault_keys[k], "ReservedDBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceNotFoundFault
-- <p>The specified reserved DB Instance not found.</p>
function M.ReservedDBInstanceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceNotFoundFault")
	local t = { 
	}
	M.AssertReservedDBInstanceNotFoundFault(t)
	return t
end

local DBSubnetGroupDoesNotCoverEnoughAZs_keys = { nil }

function M.AssertDBSubnetGroupDoesNotCoverEnoughAZs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupDoesNotCoverEnoughAZs to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupDoesNotCoverEnoughAZs_keys[k], "DBSubnetGroupDoesNotCoverEnoughAZs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupDoesNotCoverEnoughAZs
-- <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
function M.DBSubnetGroupDoesNotCoverEnoughAZs(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupDoesNotCoverEnoughAZs")
	local t = { 
	}
	M.AssertDBSubnetGroupDoesNotCoverEnoughAZs(t)
	return t
end

local PromoteReadReplicaDBClusterResult_keys = { "DBCluster" = true, nil }

function M.AssertPromoteReadReplicaDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(PromoteReadReplicaDBClusterResult_keys[k], "PromoteReadReplicaDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterResult
--  
-- @param DBCluster [DBCluster]  
function M.PromoteReadReplicaDBClusterResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaDBClusterResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertPromoteReadReplicaDBClusterResult(t)
	return t
end

local ListTagsForResourceMessage_keys = { "ResourceName" = true, "Filters" = true, nil }

function M.AssertListTagsForResourceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceMessage to be of type 'table'")
	assert(struct["ResourceName"], "Expected key ResourceName to exist in table")
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceMessage_keys[k], "ListTagsForResourceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceMessage
-- <p/>
-- @param ResourceName [String] <p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: ResourceName
function M.ListTagsForResourceMessage(ResourceName, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceMessage")
	local t = { 
		["ResourceName"] = ResourceName,
		["Filters"] = Filters,
	}
	M.AssertListTagsForResourceMessage(t)
	return t
end

local RestoreDBInstanceFromDBSnapshotResult_keys = { "DBInstance" = true, nil }

function M.AssertRestoreDBInstanceFromDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBInstanceFromDBSnapshotResult_keys[k], "RestoreDBInstanceFromDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotResult
--  
-- @param DBInstance [DBInstance]  
function M.RestoreDBInstanceFromDBSnapshotResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceFromDBSnapshotResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertRestoreDBInstanceFromDBSnapshotResult(t)
	return t
end

local ResetDBClusterParameterGroupMessage_keys = { "DBClusterParameterGroupName" = true, "ResetAllParameters" = true, "Parameters" = true, nil }

function M.AssertResetDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["ResetAllParameters"] then M.AssertBoolean(struct["ResetAllParameters"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ResetDBClusterParameterGroupMessage_keys[k], "ResetDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetDBClusterParameterGroupMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to reset.</p>
-- @param ResetAllParameters [Boolean] <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster parameter group to their default values, and <code>false</code> otherwise. You cannot use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>
-- @param Parameters [ParametersList] <p>A list of parameter names in the DB cluster parameter group to reset to the default values. You cannot use this parameter if the <code>ResetAllParameters</code> parameter is set to <code>true</code>.</p>
-- Required parameter: DBClusterParameterGroupName
function M.ResetDBClusterParameterGroupMessage(DBClusterParameterGroupName, ResetAllParameters, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["ResetAllParameters"] = ResetAllParameters,
		["Parameters"] = Parameters,
	}
	M.AssertResetDBClusterParameterGroupMessage(t)
	return t
end

local PromoteReadReplicaMessage_keys = { "PreferredBackupWindow" = true, "BackupRetentionPeriod" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertPromoteReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(PromoteReadReplicaMessage_keys[k], "PromoteReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaMessage
-- <p/>
-- @param PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 8</p> </li> </ul>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing Read Replica DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required parameter: DBInstanceIdentifier
function M.PromoteReadReplicaMessage(PreferredBackupWindow, BackupRetentionPeriod, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaMessage")
	local t = { 
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertPromoteReadReplicaMessage(t)
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
-- <p>DB subnet group does not cover all Availability Zones after it is created because users' change.</p>
function M.InvalidVPCNetworkStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCNetworkStateFault")
	local t = { 
	}
	M.AssertInvalidVPCNetworkStateFault(t)
	return t
end

local OptionGroups_keys = { "Marker" = true, "OptionGroupsList" = true, nil }

function M.AssertOptionGroups(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroups to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["OptionGroupsList"] then M.AssertOptionGroupsList(struct["OptionGroupsList"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroups_keys[k], "OptionGroups contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroups
-- <p>List of option groups.</p>
-- @param Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param OptionGroupsList [OptionGroupsList] <p>List of option groups.</p>
function M.OptionGroups(Marker, OptionGroupsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroups")
	local t = { 
		["Marker"] = Marker,
		["OptionGroupsList"] = OptionGroupsList,
	}
	M.AssertOptionGroups(t)
	return t
end

local InvalidDBSnapshotStateFault_keys = { nil }

function M.AssertInvalidDBSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBSnapshotStateFault_keys[k], "InvalidDBSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSnapshotStateFault
-- <p>The state of the DB snapshot does not allow deletion.</p>
function M.InvalidDBSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSnapshotStateFault")
	local t = { 
	}
	M.AssertInvalidDBSnapshotStateFault(t)
	return t
end

local DescribeCertificatesMessage_keys = { "Marker" = true, "CertificateIdentifier" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeCertificatesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificatesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["CertificateIdentifier"] then M.AssertString(struct["CertificateIdentifier"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificatesMessage_keys[k], "DescribeCertificatesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificatesMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param CertificateIdentifier [String] <p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeCertificatesMessage(Marker, CertificateIdentifier, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificatesMessage")
	local t = { 
		["Marker"] = Marker,
		["CertificateIdentifier"] = CertificateIdentifier,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeCertificatesMessage(t)
	return t
end

local ResourcePendingMaintenanceActions_keys = { "PendingMaintenanceActionDetails" = true, "ResourceIdentifier" = true, nil }

function M.AssertResourcePendingMaintenanceActions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePendingMaintenanceActions to be of type 'table'")
	if struct["PendingMaintenanceActionDetails"] then M.AssertPendingMaintenanceActionDetails(struct["PendingMaintenanceActionDetails"]) end
	if struct["ResourceIdentifier"] then M.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ResourcePendingMaintenanceActions_keys[k], "ResourcePendingMaintenanceActions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePendingMaintenanceActions
-- <p>Describes the pending maintenance actions for a resource.</p>
-- @param PendingMaintenanceActionDetails [PendingMaintenanceActionDetails] <p>A list that provides details about the pending maintenance actions for the resource.</p>
-- @param ResourceIdentifier [String] <p>The ARN of the resource that has pending maintenance actions.</p>
function M.ResourcePendingMaintenanceActions(PendingMaintenanceActionDetails, ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourcePendingMaintenanceActions")
	local t = { 
		["PendingMaintenanceActionDetails"] = PendingMaintenanceActionDetails,
		["ResourceIdentifier"] = ResourceIdentifier,
	}
	M.AssertResourcePendingMaintenanceActions(t)
	return t
end

local PurchaseReservedDBInstancesOfferingResult_keys = { "ReservedDBInstance" = true, nil }

function M.AssertPurchaseReservedDBInstancesOfferingResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseReservedDBInstancesOfferingResult to be of type 'table'")
	if struct["ReservedDBInstance"] then M.AssertReservedDBInstance(struct["ReservedDBInstance"]) end
	for k,_ in pairs(struct) do
		assert(PurchaseReservedDBInstancesOfferingResult_keys[k], "PurchaseReservedDBInstancesOfferingResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseReservedDBInstancesOfferingResult
--  
-- @param ReservedDBInstance [ReservedDBInstance]  
function M.PurchaseReservedDBInstancesOfferingResult(ReservedDBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurchaseReservedDBInstancesOfferingResult")
	local t = { 
		["ReservedDBInstance"] = ReservedDBInstance,
	}
	M.AssertPurchaseReservedDBInstancesOfferingResult(t)
	return t
end

local DBLogFileNotFoundFault_keys = { nil }

function M.AssertDBLogFileNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBLogFileNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBLogFileNotFoundFault_keys[k], "DBLogFileNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBLogFileNotFoundFault
-- <p> <i>LogFileName</i> does not refer to an existing DB log file.</p>
function M.DBLogFileNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBLogFileNotFoundFault")
	local t = { 
	}
	M.AssertDBLogFileNotFoundFault(t)
	return t
end

local DBSecurityGroupMembership_keys = { "Status" = true, "DBSecurityGroupName" = true, nil }

function M.AssertDBSecurityGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupMembership_keys[k], "DBSecurityGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupMembership
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> <li> <p> <a>RestoreDBInstanceToPointInTime</a> </p> </li> </ul>
-- @param Status [String] <p>The status of the DB security group.</p>
-- @param DBSecurityGroupName [String] <p>The name of the DB security group.</p>
function M.DBSecurityGroupMembership(Status, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertDBSecurityGroupMembership(t)
	return t
end

local DBParameterGroupNotFoundFault_keys = { nil }

function M.AssertDBParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBParameterGroupNotFoundFault_keys[k], "DBParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNotFoundFault
-- <p> <i>DBParameterGroupName</i> does not refer to an existing DB parameter group. </p>
function M.DBParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupNotFoundFault")
	local t = { 
	}
	M.AssertDBParameterGroupNotFoundFault(t)
	return t
end

local DeleteDBClusterMessage_keys = { "FinalDBSnapshotIdentifier" = true, "SkipFinalSnapshot" = true, "DBClusterIdentifier" = true, nil }

function M.AssertDeleteDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["FinalDBSnapshotIdentifier"] then M.AssertString(struct["FinalDBSnapshotIdentifier"]) end
	if struct["SkipFinalSnapshot"] then M.AssertBoolean(struct["SkipFinalSnapshot"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBClusterMessage_keys[k], "DeleteDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterMessage
-- <p/>
-- @param FinalDBSnapshotIdentifier [String] <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p> <note> <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to true results in an error. </p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param SkipFinalSnapshot [Boolean] <p> Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is deleted. </p> <note> <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is <code>false</code>.</p> </note> <p>Default: <code>false</code> </p>
-- @param DBClusterIdentifier [String] <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBClusterIdentifier
function M.DeleteDBClusterMessage(FinalDBSnapshotIdentifier, SkipFinalSnapshot, DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterMessage")
	local t = { 
		["FinalDBSnapshotIdentifier"] = FinalDBSnapshotIdentifier,
		["SkipFinalSnapshot"] = SkipFinalSnapshot,
		["DBClusterIdentifier"] = DBClusterIdentifier,
	}
	M.AssertDeleteDBClusterMessage(t)
	return t
end

local ModifyDBClusterSnapshotAttributeMessage_keys = { "ValuesToAdd" = true, "DBClusterSnapshotIdentifier" = true, "ValuesToRemove" = true, "AttributeName" = true, nil }

function M.AssertModifyDBClusterSnapshotAttributeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["ValuesToAdd"] then M.AssertAttributeValueList(struct["ValuesToAdd"]) end
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["ValuesToRemove"] then M.AssertAttributeValueList(struct["ValuesToRemove"]) end
	if struct["AttributeName"] then M.AssertString(struct["AttributeName"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBClusterSnapshotAttributeMessage_keys[k], "ModifyDBClusterSnapshotAttributeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeMessage
-- <p/>
-- @param ValuesToAdd [AttributeValueList] <p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p>
-- @param DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
-- @param ValuesToRemove [AttributeValueList] <p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
-- @param AttributeName [String] <p>The name of the DB cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to <code>restore</code>.</p>
-- Required parameter: DBClusterSnapshotIdentifier
-- Required parameter: AttributeName
function M.ModifyDBClusterSnapshotAttributeMessage(ValuesToAdd, DBClusterSnapshotIdentifier, ValuesToRemove, AttributeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterSnapshotAttributeMessage")
	local t = { 
		["ValuesToAdd"] = ValuesToAdd,
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
		["ValuesToRemove"] = ValuesToRemove,
		["AttributeName"] = AttributeName,
	}
	M.AssertModifyDBClusterSnapshotAttributeMessage(t)
	return t
end

local CreateOptionGroupMessage_keys = { "OptionGroupDescription" = true, "EngineName" = true, "MajorEngineVersion" = true, "OptionGroupName" = true, "Tags" = true, nil }

function M.AssertCreateOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	assert(struct["MajorEngineVersion"], "Expected key MajorEngineVersion to exist in table")
	assert(struct["OptionGroupDescription"], "Expected key OptionGroupDescription to exist in table")
	if struct["OptionGroupDescription"] then M.AssertString(struct["OptionGroupDescription"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["MajorEngineVersion"] then M.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateOptionGroupMessage_keys[k], "CreateOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOptionGroupMessage
-- <p/>
-- @param OptionGroupDescription [String] <p>The description of the option group.</p>
-- @param EngineName [String] <p>Specifies the name of the engine that this option group should be associated with.</p>
-- @param MajorEngineVersion [String] <p>Specifies the major version of the engine that this option group should be associated with.</p>
-- @param OptionGroupName [String] <p>Specifies the name of the option group to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>myoptiongroup</code> </p>
-- @param Tags [TagList] <p/>
-- Required parameter: OptionGroupName
-- Required parameter: EngineName
-- Required parameter: MajorEngineVersion
-- Required parameter: OptionGroupDescription
function M.CreateOptionGroupMessage(OptionGroupDescription, EngineName, MajorEngineVersion, OptionGroupName, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOptionGroupMessage")
	local t = { 
		["OptionGroupDescription"] = OptionGroupDescription,
		["EngineName"] = EngineName,
		["MajorEngineVersion"] = MajorEngineVersion,
		["OptionGroupName"] = OptionGroupName,
		["Tags"] = Tags,
	}
	M.AssertCreateOptionGroupMessage(t)
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
-- <p/>
-- @param SubscriptionName [String] <p>The name of the RDS event notification subscription you want to delete.</p>
-- Required parameter: SubscriptionName
function M.DeleteEventSubscriptionMessage(SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionMessage")
	local t = { 
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertDeleteEventSubscriptionMessage(t)
	return t
end

local CreateDBSubnetGroupResult_keys = { "DBSubnetGroup" = true, nil }

function M.AssertCreateDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then M.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSubnetGroupResult_keys[k], "CreateDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupResult
--  
-- @param DBSubnetGroup [DBSubnetGroup]  
function M.CreateDBSubnetGroupResult(DBSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSubnetGroupResult")
	local t = { 
		["DBSubnetGroup"] = DBSubnetGroup,
	}
	M.AssertCreateDBSubnetGroupResult(t)
	return t
end

local ReservedDBInstanceAlreadyExistsFault_keys = { nil }

function M.AssertReservedDBInstanceAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedDBInstanceAlreadyExistsFault_keys[k], "ReservedDBInstanceAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceAlreadyExistsFault
-- <p>User already has a reservation with the given identifier.</p>
function M.ReservedDBInstanceAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceAlreadyExistsFault")
	local t = { 
	}
	M.AssertReservedDBInstanceAlreadyExistsFault(t)
	return t
end

local DescribeOrderableDBInstanceOptionsMessage_keys = { "Engine" = true, "Vpc" = true, "LicenseModel" = true, "MaxRecords" = true, "Filters" = true, "EngineVersion" = true, "Marker" = true, "DBInstanceClass" = true, nil }

function M.AssertDescribeOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrderableDBInstanceOptionsMessage to be of type 'table'")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["Vpc"] then M.AssertBooleanOptional(struct["Vpc"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOrderableDBInstanceOptionsMessage_keys[k], "DescribeOrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrderableDBInstanceOptionsMessage
-- <p/>
-- @param Engine [String] <p>The name of the engine to retrieve DB instance options for.</p>
-- @param Vpc [BooleanOptional] <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.</p>
-- @param LicenseModel [String] <p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param EngineVersion [String] <p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
-- Required parameter: Engine
function M.DescribeOrderableDBInstanceOptionsMessage(Engine, Vpc, LicenseModel, MaxRecords, Filters, EngineVersion, Marker, DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrderableDBInstanceOptionsMessage")
	local t = { 
		["Engine"] = Engine,
		["Vpc"] = Vpc,
		["LicenseModel"] = LicenseModel,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["EngineVersion"] = EngineVersion,
		["Marker"] = Marker,
		["DBInstanceClass"] = DBInstanceClass,
	}
	M.AssertDescribeOrderableDBInstanceOptionsMessage(t)
	return t
end

local DeleteDBClusterParameterGroupMessage_keys = { "DBClusterParameterGroupName" = true, nil }

function M.AssertDeleteDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBClusterParameterGroupMessage_keys[k], "DeleteDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterParameterGroupMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB cluster parameter group.</p> </li> <li> <p>You cannot delete a default DB cluster parameter group.</p> </li> <li> <p>Cannot be associated with any DB clusters.</p> </li> </ul>
-- Required parameter: DBClusterParameterGroupName
function M.DeleteDBClusterParameterGroupMessage(DBClusterParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
	}
	M.AssertDeleteDBClusterParameterGroupMessage(t)
	return t
end

local StopDBInstanceMessage_keys = { "DBSnapshotIdentifier" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertStopDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(StopDBInstanceMessage_keys[k], "StopDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceMessage
--  
-- @param DBSnapshotIdentifier [String] <p> The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped. </p>
-- @param DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required parameter: DBInstanceIdentifier
function M.StopDBInstanceMessage(DBSnapshotIdentifier, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDBInstanceMessage")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertStopDBInstanceMessage(t)
	return t
end

local DeleteDBClusterSnapshotResult_keys = { "DBClusterSnapshot" = true, nil }

function M.AssertDeleteDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then M.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBClusterSnapshotResult_keys[k], "DeleteDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotResult
--  
-- @param DBClusterSnapshot [DBClusterSnapshot]  
function M.DeleteDBClusterSnapshotResult(DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = DBClusterSnapshot,
	}
	M.AssertDeleteDBClusterSnapshotResult(t)
	return t
end

local UpgradeTarget_keys = { "Engine" = true, "IsMajorVersionUpgrade" = true, "AutoUpgrade" = true, "Description" = true, "EngineVersion" = true, nil }

function M.AssertUpgradeTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpgradeTarget to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["IsMajorVersionUpgrade"] then M.AssertBoolean(struct["IsMajorVersionUpgrade"]) end
	if struct["AutoUpgrade"] then M.AssertBoolean(struct["AutoUpgrade"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpgradeTarget_keys[k], "UpgradeTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpgradeTarget
-- <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- @param Engine [String] <p>The name of the upgrade target database engine.</p>
-- @param IsMajorVersionUpgrade [Boolean] <p>A value that indicates whether a database engine will be upgraded to a major version.</p>
-- @param AutoUpgrade [Boolean] <p>A value that indicates whether the target version will be applied to any source DB instances that have AutoMinorVersionUpgrade set to true.</p>
-- @param Description [String] <p>The version of the database engine that a DB instance can be upgraded to.</p>
-- @param EngineVersion [String] <p>The version number of the upgrade target database engine.</p>
function M.UpgradeTarget(Engine, IsMajorVersionUpgrade, AutoUpgrade, Description, EngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpgradeTarget")
	local t = { 
		["Engine"] = Engine,
		["IsMajorVersionUpgrade"] = IsMajorVersionUpgrade,
		["AutoUpgrade"] = AutoUpgrade,
		["Description"] = Description,
		["EngineVersion"] = EngineVersion,
	}
	M.AssertUpgradeTarget(t)
	return t
end

local ModifyDBSnapshotResult_keys = { "DBSnapshot" = true, nil }

function M.AssertModifyDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then M.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSnapshotResult_keys[k], "ModifyDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotResult
--  
-- @param DBSnapshot [DBSnapshot]  
function M.ModifyDBSnapshotResult(DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = DBSnapshot,
	}
	M.AssertModifyDBSnapshotResult(t)
	return t
end

local CreateDBSnapshotMessage_keys = { "DBSnapshotIdentifier" = true, "DBInstanceIdentifier" = true, "Tags" = true, nil }

function M.AssertCreateDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSnapshotMessage_keys[k], "CreateDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotMessage
-- <p/>
-- @param DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier. This is the unique key that identifies a DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param Tags [TagList] <p/>
-- Required parameter: DBSnapshotIdentifier
-- Required parameter: DBInstanceIdentifier
function M.CreateDBSnapshotMessage(DBSnapshotIdentifier, DBInstanceIdentifier, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
		["Tags"] = Tags,
	}
	M.AssertCreateDBSnapshotMessage(t)
	return t
end

local ModifyDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertModifyDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBInstanceResult_keys[k], "ModifyDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.ModifyDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertModifyDBInstanceResult(t)
	return t
end

local RestoreDBClusterFromS3Message_keys = { "SourceEngine" = true, "MasterUsername" = true, "VpcSecurityGroupIds" = true, "EnableIAMDatabaseAuthentication" = true, "S3IngestionRoleArn" = true, "Engine" = true, "Tags" = true, "S3Prefix" = true, "PreferredBackupWindow" = true, "SourceEngineVersion" = true, "BackupRetentionPeriod" = true, "PreferredMaintenanceWindow" = true, "S3BucketName" = true, "DBClusterParameterGroupName" = true, "EngineVersion" = true, "DBSubnetGroupName" = true, "OptionGroupName" = true, "CharacterSetName" = true, "DBClusterIdentifier" = true, "MasterUserPassword" = true, "KmsKeyId" = true, "StorageEncrypted" = true, "DatabaseName" = true, "AvailabilityZones" = true, "Port" = true, nil }

function M.AssertRestoreDBClusterFromS3Message(struct)
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
	if struct["SourceEngine"] then M.AssertString(struct["SourceEngine"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["S3IngestionRoleArn"] then M.AssertString(struct["S3IngestionRoleArn"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["S3Prefix"] then M.AssertString(struct["S3Prefix"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["SourceEngineVersion"] then M.AssertString(struct["SourceEngineVersion"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then M.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterFromS3Message_keys[k], "RestoreDBClusterFromS3Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Message
--  
-- @param SourceEngine [String] <p>The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket. </p> <p>Valid values: <code>mysql</code> </p>
-- @param MasterUsername [String] <p>The name of the master user for the restored DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param S3IngestionRoleArn [String] <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.</p>
-- @param Engine [String] <p>The name of the database engine to be used for the restored DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- @param Tags [TagList]  
-- @param S3Prefix [String] <p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster. If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is created by using all of the files in the Amazon S3 bucket.</p>
-- @param PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param SourceEngineVersion [String] <p>The version of the database that the backup files were created from.</p> <p>MySQL version 5.5 and 5.6 are supported. </p> <p>Example: <code>5.6.22</code> </p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param S3BucketName [String] <p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to associate with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- @param DBSubnetGroupName [String] <p>A DB subnet group to associate with the restored DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param OptionGroupName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. An option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- @param CharacterSetName [String] <p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>
-- @param DBClusterIdentifier [String] <p>The name of the DB cluster to create from the source data in the S3 bucket. This parameter is isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param StorageEncrypted [BooleanOptional] <p>Specifies whether the restored DB cluster is encrypted.</p>
-- @param DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- @param Port [IntegerOptional] <p>The port number on which the instances in the restored DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: Engine
-- Required parameter: MasterUsername
-- Required parameter: MasterUserPassword
-- Required parameter: SourceEngine
-- Required parameter: SourceEngineVersion
-- Required parameter: S3BucketName
-- Required parameter: S3IngestionRoleArn
function M.RestoreDBClusterFromS3Message(SourceEngine, MasterUsername, VpcSecurityGroupIds, EnableIAMDatabaseAuthentication, S3IngestionRoleArn, Engine, Tags, S3Prefix, PreferredBackupWindow, SourceEngineVersion, BackupRetentionPeriod, PreferredMaintenanceWindow, S3BucketName, DBClusterParameterGroupName, EngineVersion, DBSubnetGroupName, OptionGroupName, CharacterSetName, DBClusterIdentifier, MasterUserPassword, KmsKeyId, StorageEncrypted, DatabaseName, AvailabilityZones, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromS3Message")
	local t = { 
		["SourceEngine"] = SourceEngine,
		["MasterUsername"] = MasterUsername,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["S3IngestionRoleArn"] = S3IngestionRoleArn,
		["Engine"] = Engine,
		["Tags"] = Tags,
		["S3Prefix"] = S3Prefix,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["SourceEngineVersion"] = SourceEngineVersion,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["S3BucketName"] = S3BucketName,
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["EngineVersion"] = EngineVersion,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["OptionGroupName"] = OptionGroupName,
		["CharacterSetName"] = CharacterSetName,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["MasterUserPassword"] = MasterUserPassword,
		["KmsKeyId"] = KmsKeyId,
		["StorageEncrypted"] = StorageEncrypted,
		["DatabaseName"] = DatabaseName,
		["AvailabilityZones"] = AvailabilityZones,
		["Port"] = Port,
	}
	M.AssertRestoreDBClusterFromS3Message(t)
	return t
end

local DBClusterNotFoundFault_keys = { nil }

function M.AssertDBClusterNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterNotFoundFault_keys[k], "DBClusterNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterNotFoundFault
-- <p> <i>DBClusterIdentifier</i> does not refer to an existing DB cluster. </p>
function M.DBClusterNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterNotFoundFault")
	local t = { 
	}
	M.AssertDBClusterNotFoundFault(t)
	return t
end

local PointInTimeRestoreNotEnabledFault_keys = { nil }

function M.AssertPointInTimeRestoreNotEnabledFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PointInTimeRestoreNotEnabledFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PointInTimeRestoreNotEnabledFault_keys[k], "PointInTimeRestoreNotEnabledFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PointInTimeRestoreNotEnabledFault
-- <p> <i>SourceDBInstanceIdentifier</i> refers to a DB instance with <i>BackupRetentionPeriod</i> equal to 0. </p>
function M.PointInTimeRestoreNotEnabledFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PointInTimeRestoreNotEnabledFault")
	local t = { 
	}
	M.AssertPointInTimeRestoreNotEnabledFault(t)
	return t
end

local DescribeAccountAttributesMessage_keys = { nil }

function M.AssertDescribeAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountAttributesMessage to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeAccountAttributesMessage_keys[k], "DescribeAccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountAttributesMessage
-- <p/>
function M.DescribeAccountAttributesMessage(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountAttributesMessage")
	local t = { 
	}
	M.AssertDescribeAccountAttributesMessage(t)
	return t
end

local DescribeDBParametersMessage_keys = { "Marker" = true, "DBParameterGroupName" = true, "MaxRecords" = true, "Filters" = true, "Source" = true, nil }

function M.AssertDescribeDBParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBParametersMessage_keys[k], "DescribeDBParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParametersMessage
--  
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param Source [String] <p>The parameter types to return.</p> <p>Default: All parameter types returned</p> <p>Valid Values: <code>user | system | engine-default</code> </p>
-- Required parameter: DBParameterGroupName
function M.DescribeDBParametersMessage(Marker, DBParameterGroupName, MaxRecords, Filters, Source, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroupName"] = DBParameterGroupName,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["Source"] = Source,
	}
	M.AssertDescribeDBParametersMessage(t)
	return t
end

local InvalidDBSubnetGroupFault_keys = { nil }

function M.AssertInvalidDBSubnetGroupFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBSubnetGroupFault_keys[k], "InvalidDBSubnetGroupFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupFault
-- <p>Indicates the DBSubnetGroup does not belong to the same VPC as that of an existing cross region read replica of the same source instance.</p>
function M.InvalidDBSubnetGroupFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetGroupFault")
	local t = { 
	}
	M.AssertInvalidDBSubnetGroupFault(t)
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

local DBClusterParameterGroupsMessage_keys = { "Marker" = true, "DBClusterParameterGroups" = true, nil }

function M.AssertDBClusterParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBClusterParameterGroups"] then M.AssertDBClusterParameterGroupList(struct["DBClusterParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterParameterGroupsMessage_keys[k], "DBClusterParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBClusterParameterGroups [DBClusterParameterGroupList] <p>A list of DB cluster parameter groups.</p>
function M.DBClusterParameterGroupsMessage(Marker, DBClusterParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["DBClusterParameterGroups"] = DBClusterParameterGroups,
	}
	M.AssertDBClusterParameterGroupsMessage(t)
	return t
end

local CreateDBSnapshotResult_keys = { "DBSnapshot" = true, nil }

function M.AssertCreateDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then M.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSnapshotResult_keys[k], "CreateDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSnapshotResult
--  
-- @param DBSnapshot [DBSnapshot]  
function M.CreateDBSnapshotResult(DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = DBSnapshot,
	}
	M.AssertCreateDBSnapshotResult(t)
	return t
end

local DeleteDBParameterGroupMessage_keys = { "DBParameterGroupName" = true, nil }

function M.AssertDeleteDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBParameterGroupMessage_keys[k], "DeleteDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBParameterGroupMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>You cannot delete a default DB parameter group</p> </li> <li> <p>Cannot be associated with any DB instances</p> </li> </ul>
-- Required parameter: DBParameterGroupName
function M.DeleteDBParameterGroupMessage(DBParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
	}
	M.AssertDeleteDBParameterGroupMessage(t)
	return t
end

local DBUpgradeDependencyFailureFault_keys = { nil }

function M.AssertDBUpgradeDependencyFailureFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBUpgradeDependencyFailureFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBUpgradeDependencyFailureFault_keys[k], "DBUpgradeDependencyFailureFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBUpgradeDependencyFailureFault
-- <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
function M.DBUpgradeDependencyFailureFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBUpgradeDependencyFailureFault")
	local t = { 
	}
	M.AssertDBUpgradeDependencyFailureFault(t)
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
-- <p>DB security group authorization quota has been reached.</p>
function M.AuthorizationQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationQuotaExceededFault")
	local t = { 
	}
	M.AssertAuthorizationQuotaExceededFault(t)
	return t
end

local InvalidDBClusterSnapshotStateFault_keys = { nil }

function M.AssertInvalidDBClusterSnapshotStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterSnapshotStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBClusterSnapshotStateFault_keys[k], "InvalidDBClusterSnapshotStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterSnapshotStateFault
-- <p>The supplied value is not a valid DB cluster snapshot state.</p>
function M.InvalidDBClusterSnapshotStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBClusterSnapshotStateFault")
	local t = { 
	}
	M.AssertInvalidDBClusterSnapshotStateFault(t)
	return t
end

local DescribeReservedDBInstancesMessage_keys = { "MultiAZ" = true, "OfferingType" = true, "ProductDescription" = true, "ReservedDBInstancesOfferingId" = true, "Marker" = true, "Duration" = true, "MaxRecords" = true, "Filters" = true, "ReservedDBInstanceId" = true, "DBInstanceClass" = true, nil }

function M.AssertDescribeReservedDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesMessage to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then M.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Duration"] then M.AssertString(struct["Duration"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["ReservedDBInstanceId"] then M.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedDBInstancesMessage_keys[k], "DescribeReservedDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesMessage
-- <p/>
-- @param MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only those reservations matching the specified Multi-AZ parameter.</p>
-- @param OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- @param ProductDescription [String] <p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>
-- @param ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param Duration [String] <p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param ReservedDBInstanceId [String] <p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>
-- @param DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>
function M.DescribeReservedDBInstancesMessage(MultiAZ, OfferingType, ProductDescription, ReservedDBInstancesOfferingId, Marker, Duration, MaxRecords, Filters, ReservedDBInstanceId, DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedDBInstancesMessage")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["OfferingType"] = OfferingType,
		["ProductDescription"] = ProductDescription,
		["ReservedDBInstancesOfferingId"] = ReservedDBInstancesOfferingId,
		["Marker"] = Marker,
		["Duration"] = Duration,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["ReservedDBInstanceId"] = ReservedDBInstanceId,
		["DBInstanceClass"] = DBInstanceClass,
	}
	M.AssertDescribeReservedDBInstancesMessage(t)
	return t
end

local CreateDBInstanceReadReplicaResult_keys = { "DBInstance" = true, nil }

function M.AssertCreateDBInstanceReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBInstanceReadReplicaResult_keys[k], "CreateDBInstanceReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaResult
--  
-- @param DBInstance [DBInstance]  
function M.CreateDBInstanceReadReplicaResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceReadReplicaResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertCreateDBInstanceReadReplicaResult(t)
	return t
end

local DescribeEventsMessage_keys = { "EventCategories" = true, "SourceType" = true, "Marker" = true, "MaxRecords" = true, "StartTime" = true, "Duration" = true, "Filters" = true, "SourceIdentifier" = true, "EndTime" = true, nil }

function M.AssertDescribeEventsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsMessage to be of type 'table'")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["Duration"] then M.AssertIntegerOptional(struct["Duration"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["EndTime"] then M.AssertTStamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsMessage_keys[k], "DescribeEventsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsMessage
-- <p/>
-- @param EventCategories [EventCategoriesList] <p>A list of event categories that trigger notifications for a event notification subscription.</p>
-- @param SourceType [SourceType] <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param StartTime [TStamp] <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
-- @param Duration [IntegerOptional] <p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param SourceIdentifier [String] <p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If SourceIdentifier is supplied, SourceType must also be provided.</p> </li> <li> <p>If the source type is <code>DBInstance</code>, then a <code>DBInstanceIdentifier</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBParameterGroup</code>, a <code>DBParameterGroupName</code> must be supplied.</p> </li> <li> <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code> must be supplied.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param EndTime [TStamp] <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>
function M.DescribeEventsMessage(EventCategories, SourceType, Marker, MaxRecords, StartTime, Duration, Filters, SourceIdentifier, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsMessage")
	local t = { 
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["StartTime"] = StartTime,
		["Duration"] = Duration,
		["Filters"] = Filters,
		["SourceIdentifier"] = SourceIdentifier,
		["EndTime"] = EndTime,
	}
	M.AssertDescribeEventsMessage(t)
	return t
end

local StorageQuotaExceededFault_keys = { nil }

function M.AssertStorageQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StorageQuotaExceededFault_keys[k], "StorageQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageQuotaExceededFault
-- <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
function M.StorageQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StorageQuotaExceededFault")
	local t = { 
	}
	M.AssertStorageQuotaExceededFault(t)
	return t
end

local DBCluster_keys = { "MasterUsername" = true, "ReaderEndpoint" = true, "ReadReplicaIdentifiers" = true, "CloneGroupId" = true, "VpcSecurityGroups" = true, "IAMDatabaseAuthenticationEnabled" = true, "HostedZoneId" = true, "Status" = true, "MultiAZ" = true, "LatestRestorableTime" = true, "PreferredBackupWindow" = true, "DBSubnetGroup" = true, "AllocatedStorage" = true, "DBClusterOptionGroupMemberships" = true, "BackupRetentionPeriod" = true, "PreferredMaintenanceWindow" = true, "Engine" = true, "Endpoint" = true, "AssociatedRoles" = true, "EarliestRestorableTime" = true, "PercentProgress" = true, "ReplicationSourceIdentifier" = true, "ClusterCreateTime" = true, "EngineVersion" = true, "CharacterSetName" = true, "DBClusterIdentifier" = true, "DbClusterResourceId" = true, "DBClusterMembers" = true, "DBClusterArn" = true, "KmsKeyId" = true, "StorageEncrypted" = true, "DatabaseName" = true, "DBClusterParameterGroup" = true, "AvailabilityZones" = true, "Port" = true, nil }

function M.AssertDBCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBCluster to be of type 'table'")
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["ReaderEndpoint"] then M.AssertString(struct["ReaderEndpoint"]) end
	if struct["ReadReplicaIdentifiers"] then M.AssertReadReplicaIdentifierList(struct["ReadReplicaIdentifiers"]) end
	if struct["CloneGroupId"] then M.AssertString(struct["CloneGroupId"]) end
	if struct["VpcSecurityGroups"] then M.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then M.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["HostedZoneId"] then M.AssertString(struct["HostedZoneId"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then M.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["DBSubnetGroup"] then M.AssertString(struct["DBSubnetGroup"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBClusterOptionGroupMemberships"] then M.AssertDBClusterOptionGroupMemberships(struct["DBClusterOptionGroupMemberships"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["Endpoint"] then M.AssertString(struct["Endpoint"]) end
	if struct["AssociatedRoles"] then M.AssertDBClusterRoles(struct["AssociatedRoles"]) end
	if struct["EarliestRestorableTime"] then M.AssertTStamp(struct["EarliestRestorableTime"]) end
	if struct["PercentProgress"] then M.AssertString(struct["PercentProgress"]) end
	if struct["ReplicationSourceIdentifier"] then M.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["ClusterCreateTime"] then M.AssertTStamp(struct["ClusterCreateTime"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["DbClusterResourceId"] then M.AssertString(struct["DbClusterResourceId"]) end
	if struct["DBClusterMembers"] then M.AssertDBClusterMemberList(struct["DBClusterMembers"]) end
	if struct["DBClusterArn"] then M.AssertString(struct["DBClusterArn"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then M.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["DBClusterParameterGroup"] then M.AssertString(struct["DBClusterParameterGroup"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(DBCluster_keys[k], "DBCluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBCluster
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBCluster</a> </p> </li> <li> <p> <a>DeleteDBCluster</a> </p> </li> <li> <p> <a>FailoverDBCluster</a> </p> </li> <li> <p> <a>ModifyDBCluster</a> </p> </li> <li> <p> <a>RestoreDBClusterFromSnapshot</a> </p> </li> <li> <p> <a>RestoreDBClusterToPointInTime</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
-- @param MasterUsername [String] <p>Contains the master username for the DB cluster.</p>
-- @param ReaderEndpoint [String] <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p> <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection will be dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.</p>
-- @param ReadReplicaIdentifiers [ReadReplicaIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB cluster.</p>
-- @param CloneGroupId [String] <p>Identifies the clone group to which the DB cluster is associated.</p>
-- @param VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
-- @param IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- @param Status [String] <p>Specifies the current state of this DB cluster.</p>
-- @param MultiAZ [Boolean] <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
-- @param LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- @param PreferredBackupWindow [String] <p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- @param DBSubnetGroup [String] <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
-- @param AllocatedStorage [IntegerOptional] <p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gigabytes (GB). For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size is not fixed, but instead automatically adjusts as needed.</p>
-- @param DBClusterOptionGroupMemberships [DBClusterOptionGroupMemberships] <p>Provides the list of option group memberships for this DB cluster.</p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- @param PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- @param Engine [String] <p>Provides the name of the database engine to be used for this DB cluster.</p>
-- @param Endpoint [String] <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
-- @param AssociatedRoles [DBClusterRoles] <p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.</p>
-- @param EarliestRestorableTime [TStamp] <p>Specifies the earliest time to which a database can be restored with point-in-time restore.</p>
-- @param PercentProgress [String] <p>Specifies the progress of the operation as a percentage.</p>
-- @param ReplicationSourceIdentifier [String] <p>Contains the identifier of the source DB cluster if this DB cluster is a Read Replica.</p>
-- @param ClusterCreateTime [TStamp] <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
-- @param EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param CharacterSetName [String] <p>If present, specifies the name of the character set that this cluster is associated with.</p>
-- @param DBClusterIdentifier [String] <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
-- @param DbClusterResourceId [String] <p>The region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB cluster is accessed.</p>
-- @param DBClusterMembers [DBClusterMemberList] <p>Provides the list of instances that make up the DB cluster.</p>
-- @param DBClusterArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
-- @param KmsKeyId [String] <p>If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB cluster.</p>
-- @param StorageEncrypted [Boolean] <p>Specifies whether the DB cluster is encrypted.</p>
-- @param DatabaseName [String] <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
-- @param DBClusterParameterGroup [String] <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be created in.</p>
-- @param Port [IntegerOptional] <p>Specifies the port that the database engine is listening on.</p>
function M.DBCluster(MasterUsername, ReaderEndpoint, ReadReplicaIdentifiers, CloneGroupId, VpcSecurityGroups, IAMDatabaseAuthenticationEnabled, HostedZoneId, Status, MultiAZ, LatestRestorableTime, PreferredBackupWindow, DBSubnetGroup, AllocatedStorage, DBClusterOptionGroupMemberships, BackupRetentionPeriod, PreferredMaintenanceWindow, Engine, Endpoint, AssociatedRoles, EarliestRestorableTime, PercentProgress, ReplicationSourceIdentifier, ClusterCreateTime, EngineVersion, CharacterSetName, DBClusterIdentifier, DbClusterResourceId, DBClusterMembers, DBClusterArn, KmsKeyId, StorageEncrypted, DatabaseName, DBClusterParameterGroup, AvailabilityZones, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBCluster")
	local t = { 
		["MasterUsername"] = MasterUsername,
		["ReaderEndpoint"] = ReaderEndpoint,
		["ReadReplicaIdentifiers"] = ReadReplicaIdentifiers,
		["CloneGroupId"] = CloneGroupId,
		["VpcSecurityGroups"] = VpcSecurityGroups,
		["IAMDatabaseAuthenticationEnabled"] = IAMDatabaseAuthenticationEnabled,
		["HostedZoneId"] = HostedZoneId,
		["Status"] = Status,
		["MultiAZ"] = MultiAZ,
		["LatestRestorableTime"] = LatestRestorableTime,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["DBSubnetGroup"] = DBSubnetGroup,
		["AllocatedStorage"] = AllocatedStorage,
		["DBClusterOptionGroupMemberships"] = DBClusterOptionGroupMemberships,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["Engine"] = Engine,
		["Endpoint"] = Endpoint,
		["AssociatedRoles"] = AssociatedRoles,
		["EarliestRestorableTime"] = EarliestRestorableTime,
		["PercentProgress"] = PercentProgress,
		["ReplicationSourceIdentifier"] = ReplicationSourceIdentifier,
		["ClusterCreateTime"] = ClusterCreateTime,
		["EngineVersion"] = EngineVersion,
		["CharacterSetName"] = CharacterSetName,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["DbClusterResourceId"] = DbClusterResourceId,
		["DBClusterMembers"] = DBClusterMembers,
		["DBClusterArn"] = DBClusterArn,
		["KmsKeyId"] = KmsKeyId,
		["StorageEncrypted"] = StorageEncrypted,
		["DatabaseName"] = DatabaseName,
		["DBClusterParameterGroup"] = DBClusterParameterGroup,
		["AvailabilityZones"] = AvailabilityZones,
		["Port"] = Port,
	}
	M.AssertDBCluster(t)
	return t
end

local DBSnapshotAlreadyExistsFault_keys = { nil }

function M.AssertDBSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSnapshotAlreadyExistsFault_keys[k], "DBSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAlreadyExistsFault
-- <p> <i>DBSnapshotIdentifier</i> is already used by an existing snapshot. </p>
function M.DBSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBSnapshotAlreadyExistsFault(t)
	return t
end

local DBSnapshotAttribute_keys = { "AttributeName" = true, "AttributeValues" = true, nil }

function M.AssertDBSnapshotAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttribute to be of type 'table'")
	if struct["AttributeName"] then M.AssertString(struct["AttributeName"]) end
	if struct["AttributeValues"] then M.AssertAttributeValueList(struct["AttributeValues"]) end
	for k,_ in pairs(struct) do
		assert(DBSnapshotAttribute_keys[k], "DBSnapshotAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttribute
-- <p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- @param AttributeName [String] <p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param AttributeValues [AttributeValueList] <p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any AWS account to copy or restore.</p>
function M.DBSnapshotAttribute(AttributeName, AttributeValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAttribute")
	local t = { 
		["AttributeName"] = AttributeName,
		["AttributeValues"] = AttributeValues,
	}
	M.AssertDBSnapshotAttribute(t)
	return t
end

local DescribeDBSnapshotAttributesMessage_keys = { "DBSnapshotIdentifier" = true, nil }

function M.AssertDescribeDBSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBSnapshotAttributesMessage_keys[k], "DescribeDBSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesMessage
-- <p/>
-- @param DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to describe the attributes for.</p>
-- Required parameter: DBSnapshotIdentifier
function M.DescribeDBSnapshotAttributesMessage(DBSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotAttributesMessage")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
	}
	M.AssertDescribeDBSnapshotAttributesMessage(t)
	return t
end

local Event_keys = { "EventCategories" = true, "SourceType" = true, "SourceArn" = true, "Date" = true, "Message" = true, "SourceIdentifier" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertSourceType(struct["SourceType"]) end
	if struct["SourceArn"] then M.AssertString(struct["SourceArn"]) end
	if struct["Date"] then M.AssertTStamp(struct["Date"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p> This data type is used as a response element in the <a>DescribeEvents</a> action. </p>
-- @param EventCategories [EventCategoriesList] <p>Specifies the category for the event.</p>
-- @param SourceType [SourceType] <p>Specifies the source type for this event.</p>
-- @param SourceArn [String] <p>The Amazon Resource Name (ARN) for the event.</p>
-- @param Date [TStamp] <p>Specifies the date and time of the event.</p>
-- @param Message [String] <p>Provides the text of this event.</p>
-- @param SourceIdentifier [String] <p>Provides the identifier for the source of the event.</p>
function M.Event(EventCategories, SourceType, SourceArn, Date, Message, SourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
		["SourceArn"] = SourceArn,
		["Date"] = Date,
		["Message"] = Message,
		["SourceIdentifier"] = SourceIdentifier,
	}
	M.AssertEvent(t)
	return t
end

local DeleteDBClusterSnapshotMessage_keys = { "DBClusterSnapshotIdentifier" = true, nil }

function M.AssertDeleteDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBClusterSnapshotMessage_keys[k], "DeleteDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterSnapshotMessage
-- <p/>
-- @param DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>
-- Required parameter: DBClusterSnapshotIdentifier
function M.DeleteDBClusterSnapshotMessage(DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterSnapshotMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
	}
	M.AssertDeleteDBClusterSnapshotMessage(t)
	return t
end

local RestoreDBClusterToPointInTimeResult_keys = { "DBCluster" = true, nil }

function M.AssertRestoreDBClusterToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterToPointInTimeResult_keys[k], "RestoreDBClusterToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeResult
--  
-- @param DBCluster [DBCluster]  
function M.RestoreDBClusterToPointInTimeResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterToPointInTimeResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertRestoreDBClusterToPointInTimeResult(t)
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
-- <p>The requested source could not be found.</p>
function M.SourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceNotFoundFault")
	local t = { 
	}
	M.AssertSourceNotFoundFault(t)
	return t
end

local DescribeDBClusterSnapshotsMessage_keys = { "IncludeShared" = true, "DBClusterIdentifier" = true, "IncludePublic" = true, "MaxRecords" = true, "Marker" = true, "DBClusterSnapshotIdentifier" = true, "Filters" = true, "SnapshotType" = true, nil }

function M.AssertDescribeDBClusterSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then M.AssertBoolean(struct["IncludeShared"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["IncludePublic"] then M.AssertBoolean(struct["IncludePublic"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClusterSnapshotsMessage_keys[k], "DescribeDBClusterSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotsMessage
-- <p/>
-- @param IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param DBClusterIdentifier [String] <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter cannot be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>. The default is false.</p> <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Marker [String] <p>An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBClusterSnapshotIdentifier [String] <p>A specific DB cluster snapshot identifier to describe. This parameter cannot be used in conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param SnapshotType [String] <p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public DB cluster snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
function M.DescribeDBClusterSnapshotsMessage(IncludeShared, DBClusterIdentifier, IncludePublic, MaxRecords, Marker, DBClusterSnapshotIdentifier, Filters, SnapshotType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotsMessage")
	local t = { 
		["IncludeShared"] = IncludeShared,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["IncludePublic"] = IncludePublic,
		["MaxRecords"] = MaxRecords,
		["Marker"] = Marker,
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
		["Filters"] = Filters,
		["SnapshotType"] = SnapshotType,
	}
	M.AssertDescribeDBClusterSnapshotsMessage(t)
	return t
end

local Parameter_keys = { "ApplyMethod" = true, "Description" = true, "DataType" = true, "IsModifiable" = true, "AllowedValues" = true, "Source" = true, "ParameterValue" = true, "ParameterName" = true, "MinimumEngineVersion" = true, "ApplyType" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ApplyMethod"] then M.AssertApplyMethod(struct["ApplyMethod"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["ParameterValue"] then M.AssertString(struct["ParameterValue"]) end
	if struct["ParameterName"] then M.AssertString(struct["ParameterName"]) end
	if struct["MinimumEngineVersion"] then M.AssertString(struct["MinimumEngineVersion"]) end
	if struct["ApplyType"] then M.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p> This data type is used as a request parameter in the <a>ModifyDBParameterGroup</a> and <a>ResetDBParameterGroup</a> actions. </p> <p>This data type is used as a response element in the <a>DescribeEngineDefaultParameters</a> and <a>DescribeDBParameters</a> actions.</p>
-- @param ApplyMethod [ApplyMethod] <p>Indicates when to apply parameter updates.</p>
-- @param Description [String] <p>Provides a description of the parameter.</p>
-- @param DataType [String] <p>Specifies the valid data type for the parameter.</p>
-- @param IsModifiable [Boolean] <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>
-- @param AllowedValues [String] <p>Specifies the valid range of values for the parameter.</p>
-- @param Source [String] <p>Indicates the source of the parameter value.</p>
-- @param ParameterValue [String] <p>Specifies the value of the parameter.</p>
-- @param ParameterName [String] <p>Specifies the name of the parameter.</p>
-- @param MinimumEngineVersion [String] <p>The earliest engine version to which the parameter can apply.</p>
-- @param ApplyType [String] <p>Specifies the engine specific parameters type.</p>
function M.Parameter(ApplyMethod, Description, DataType, IsModifiable, AllowedValues, Source, ParameterValue, ParameterName, MinimumEngineVersion, ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["ApplyMethod"] = ApplyMethod,
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

local ModifyDBSubnetGroupResult_keys = { "DBSubnetGroup" = true, nil }

function M.AssertModifyDBSubnetGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupResult to be of type 'table'")
	if struct["DBSubnetGroup"] then M.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSubnetGroupResult_keys[k], "ModifyDBSubnetGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupResult
--  
-- @param DBSubnetGroup [DBSubnetGroup]  
function M.ModifyDBSubnetGroupResult(DBSubnetGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSubnetGroupResult")
	local t = { 
		["DBSubnetGroup"] = DBSubnetGroup,
	}
	M.AssertModifyDBSubnetGroupResult(t)
	return t
end

local CharacterSet_keys = { "CharacterSetName" = true, "CharacterSetDescription" = true, nil }

function M.AssertCharacterSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CharacterSet to be of type 'table'")
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["CharacterSetDescription"] then M.AssertString(struct["CharacterSetDescription"]) end
	for k,_ in pairs(struct) do
		assert(CharacterSet_keys[k], "CharacterSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CharacterSet
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param CharacterSetName [String] <p>The name of the character set.</p>
-- @param CharacterSetDescription [String] <p>The description of the character set.</p>
function M.CharacterSet(CharacterSetName, CharacterSetDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CharacterSet")
	local t = { 
		["CharacterSetName"] = CharacterSetName,
		["CharacterSetDescription"] = CharacterSetDescription,
	}
	M.AssertCharacterSet(t)
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
-- <p>Data returned from the <b>DescribeEventCategories</b> action.</p>
-- @param EventCategoriesMapList [EventCategoriesMapList] <p>A list of EventCategoriesMap data types.</p>
function M.EventCategoriesMessage(EventCategoriesMapList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMessage")
	local t = { 
		["EventCategoriesMapList"] = EventCategoriesMapList,
	}
	M.AssertEventCategoriesMessage(t)
	return t
end

local DescribeDBClusterSnapshotAttributesResult_keys = { "DBClusterSnapshotAttributesResult" = true, nil }

function M.AssertDescribeDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then M.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClusterSnapshotAttributesResult_keys[k], "DescribeDBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesResult
--  
-- @param DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult]  
function M.DescribeDBClusterSnapshotAttributesResult(DBClusterSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotAttributesResult")
	local t = { 
		["DBClusterSnapshotAttributesResult"] = DBClusterSnapshotAttributesResult,
	}
	M.AssertDescribeDBClusterSnapshotAttributesResult(t)
	return t
end

local DBInstanceNotFoundFault_keys = { nil }

function M.AssertDBInstanceNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBInstanceNotFoundFault_keys[k], "DBInstanceNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceNotFoundFault
-- <p> <i>DBInstanceIdentifier</i> does not refer to an existing DB instance. </p>
function M.DBInstanceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceNotFoundFault")
	local t = { 
	}
	M.AssertDBInstanceNotFoundFault(t)
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
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>DescribeReservedDBInstancesOfferings</a> actions. </p>
-- @param RecurringChargeAmount [Double] <p>The amount of the recurring charge.</p>
-- @param RecurringChargeFrequency [String] <p>The frequency of the recurring charge.</p>
function M.RecurringCharge(RecurringChargeAmount, RecurringChargeFrequency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecurringCharge")
	local t = { 
		["RecurringChargeAmount"] = RecurringChargeAmount,
		["RecurringChargeFrequency"] = RecurringChargeFrequency,
	}
	M.AssertRecurringCharge(t)
	return t
end

local AccountAttributesMessage_keys = { "AccountQuotas" = true, nil }

function M.AssertAccountAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountAttributesMessage to be of type 'table'")
	if struct["AccountQuotas"] then M.AssertAccountQuotaList(struct["AccountQuotas"]) end
	for k,_ in pairs(struct) do
		assert(AccountAttributesMessage_keys[k], "AccountAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountAttributesMessage
-- <p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>
-- @param AccountQuotas [AccountQuotaList] <p>A list of <a>AccountQuota</a> objects. Within this list, each quota has a name, a count of usage toward the quota maximum, and a maximum value for the quota.</p>
function M.AccountAttributesMessage(AccountQuotas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountAttributesMessage")
	local t = { 
		["AccountQuotas"] = AccountQuotas,
	}
	M.AssertAccountAttributesMessage(t)
	return t
end

local RestoreDBInstanceFromDBSnapshotMessage_keys = { "PubliclyAccessible" = true, "DomainIAMRoleName" = true, "LicenseModel" = true, "EnableIAMDatabaseAuthentication" = true, "CopyTagsToSnapshot" = true, "Engine" = true, "MultiAZ" = true, "Tags" = true, "AutoMinorVersionUpgrade" = true, "DBSnapshotIdentifier" = true, "DBSubnetGroupName" = true, "DBName" = true, "TdeCredentialPassword" = true, "TdeCredentialArn" = true, "OptionGroupName" = true, "Domain" = true, "AvailabilityZone" = true, "StorageType" = true, "Iops" = true, "DBInstanceClass" = true, "Port" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertRestoreDBInstanceFromDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceFromDBSnapshotMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then M.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then M.AssertString(struct["TdeCredentialPassword"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBInstanceFromDBSnapshotMessage_keys[k], "RestoreDBInstanceFromDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceFromDBSnapshotMessage
-- <p/>
-- @param PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source. You can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- @param MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- @param Tags [TagList] <p/>
-- @param AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- @param DBSnapshotIdentifier [String] <p>The identifier for the DB snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p>
-- @param DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.</p> </note>
-- @param TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- @param AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p> <p>Example: <code>us-east-1a</code> </p>
-- @param StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param Iops [IntegerOptional] <p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter is not specified, the IOPS value will be taken from the backup. If this parameter is set to 0, the new instance will be converted to a non-PIOPS instance, which will take additional time, though your DB instance will be available for connections before the conversion starts.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- @param DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Default: The same port as the original DB instance</p> <p>Constraints: Value must be <code>1150-65535</code> </p>
-- @param DBInstanceIdentifier [String] <p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server)</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: DBSnapshotIdentifier
function M.RestoreDBInstanceFromDBSnapshotMessage(PubliclyAccessible, DomainIAMRoleName, LicenseModel, EnableIAMDatabaseAuthentication, CopyTagsToSnapshot, Engine, MultiAZ, Tags, AutoMinorVersionUpgrade, DBSnapshotIdentifier, DBSubnetGroupName, DBName, TdeCredentialPassword, TdeCredentialArn, OptionGroupName, Domain, AvailabilityZone, StorageType, Iops, DBInstanceClass, Port, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceFromDBSnapshotMessage")
	local t = { 
		["PubliclyAccessible"] = PubliclyAccessible,
		["DomainIAMRoleName"] = DomainIAMRoleName,
		["LicenseModel"] = LicenseModel,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["Engine"] = Engine,
		["MultiAZ"] = MultiAZ,
		["Tags"] = Tags,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["DBName"] = DBName,
		["TdeCredentialPassword"] = TdeCredentialPassword,
		["TdeCredentialArn"] = TdeCredentialArn,
		["OptionGroupName"] = OptionGroupName,
		["Domain"] = Domain,
		["AvailabilityZone"] = AvailabilityZone,
		["StorageType"] = StorageType,
		["Iops"] = Iops,
		["DBInstanceClass"] = DBInstanceClass,
		["Port"] = Port,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertRestoreDBInstanceFromDBSnapshotMessage(t)
	return t
end

local InvalidDBClusterStateFault_keys = { nil }

function M.AssertInvalidDBClusterStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBClusterStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBClusterStateFault_keys[k], "InvalidDBClusterStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBClusterStateFault
-- <p>The DB cluster is not in a valid state.</p>
function M.InvalidDBClusterStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBClusterStateFault")
	local t = { 
	}
	M.AssertInvalidDBClusterStateFault(t)
	return t
end

local DBEngineVersion_keys = { "Engine" = true, "DBParameterGroupFamily" = true, "SupportedCharacterSets" = true, "DefaultCharacterSet" = true, "SupportedTimezones" = true, "DBEngineDescription" = true, "EngineVersion" = true, "DBEngineVersionDescription" = true, "ValidUpgradeTarget" = true, nil }

function M.AssertDBEngineVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersion to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["SupportedCharacterSets"] then M.AssertSupportedCharacterSetsList(struct["SupportedCharacterSets"]) end
	if struct["DefaultCharacterSet"] then M.AssertCharacterSet(struct["DefaultCharacterSet"]) end
	if struct["SupportedTimezones"] then M.AssertSupportedTimezonesList(struct["SupportedTimezones"]) end
	if struct["DBEngineDescription"] then M.AssertString(struct["DBEngineDescription"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBEngineVersionDescription"] then M.AssertString(struct["DBEngineVersionDescription"]) end
	if struct["ValidUpgradeTarget"] then M.AssertValidUpgradeTargetList(struct["ValidUpgradeTarget"]) end
	for k,_ in pairs(struct) do
		assert(DBEngineVersion_keys[k], "DBEngineVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersion
-- <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-- @param Engine [String] <p>The name of the database engine.</p>
-- @param DBParameterGroupFamily [String] <p>The name of the DB parameter group family for the database engine.</p>
-- @param SupportedCharacterSets [SupportedCharacterSetsList] <p> A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- @param DefaultCharacterSet [CharacterSet] <p> The default character set for new instances of this engine version, if the <code>CharacterSetName</code> parameter of the CreateDBInstance API is not specified. </p>
-- @param SupportedTimezones [SupportedTimezonesList] <p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action. </p>
-- @param DBEngineDescription [String] <p>The description of the database engine.</p>
-- @param EngineVersion [String] <p>The version number of the database engine.</p>
-- @param DBEngineVersionDescription [String] <p>The description of the database engine version.</p>
-- @param ValidUpgradeTarget [ValidUpgradeTargetList] <p>A list of engine versions that this database engine version can be upgraded to.</p>
function M.DBEngineVersion(Engine, DBParameterGroupFamily, SupportedCharacterSets, DefaultCharacterSet, SupportedTimezones, DBEngineDescription, EngineVersion, DBEngineVersionDescription, ValidUpgradeTarget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBEngineVersion")
	local t = { 
		["Engine"] = Engine,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["SupportedCharacterSets"] = SupportedCharacterSets,
		["DefaultCharacterSet"] = DefaultCharacterSet,
		["SupportedTimezones"] = SupportedTimezones,
		["DBEngineDescription"] = DBEngineDescription,
		["EngineVersion"] = EngineVersion,
		["DBEngineVersionDescription"] = DBEngineVersionDescription,
		["ValidUpgradeTarget"] = ValidUpgradeTarget,
	}
	M.AssertDBEngineVersion(t)
	return t
end

local DBSubnetQuotaExceededFault_keys = { nil }

function M.AssertDBSubnetQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSubnetQuotaExceededFault_keys[k], "DBSubnetQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
function M.DBSubnetQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetQuotaExceededFault")
	local t = { 
	}
	M.AssertDBSubnetQuotaExceededFault(t)
	return t
end

local RemoveSourceIdentifierFromSubscriptionMessage_keys = { "SourceIdentifier" = true, "SubscriptionName" = true, nil }

function M.AssertRemoveSourceIdentifierFromSubscriptionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionMessage to be of type 'table'")
	assert(struct["SubscriptionName"], "Expected key SubscriptionName to exist in table")
	assert(struct["SourceIdentifier"], "Expected key SourceIdentifier to exist in table")
	if struct["SourceIdentifier"] then M.AssertString(struct["SourceIdentifier"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(RemoveSourceIdentifierFromSubscriptionMessage_keys[k], "RemoveSourceIdentifierFromSubscriptionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionMessage
-- <p/>
-- @param SourceIdentifier [String] <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security group. </p>
-- @param SubscriptionName [String] <p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>
-- Required parameter: SubscriptionName
-- Required parameter: SourceIdentifier
function M.RemoveSourceIdentifierFromSubscriptionMessage(SourceIdentifier, SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveSourceIdentifierFromSubscriptionMessage")
	local t = { 
		["SourceIdentifier"] = SourceIdentifier,
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertRemoveSourceIdentifierFromSubscriptionMessage(t)
	return t
end

local DescribeDBSnapshotsMessage_keys = { "IncludeShared" = true, "IncludePublic" = true, "Marker" = true, "MaxRecords" = true, "DBSnapshotIdentifier" = true, "Filters" = true, "SnapshotType" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDescribeDBSnapshotsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotsMessage to be of type 'table'")
	if struct["IncludeShared"] then M.AssertBoolean(struct["IncludeShared"]) end
	if struct["IncludePublic"] then M.AssertBoolean(struct["IncludePublic"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBSnapshotsMessage_keys[k], "DescribeDBSnapshotsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotsMessage
-- <p/>
-- @param IncludeShared [Boolean] <p>Set this value to <code>true</code> to include shared manual DB snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param IncludePublic [Boolean] <p>Set this value to <code>true</code> to include manual DB snapshots that are public and can be copied or restored by any AWS account, otherwise set this value to <code>false</code>. The default is <code>false</code>.</p> <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param DBSnapshotIdentifier [String] <p> A specific DB snapshot identifier to describe. This parameter cannot be used in conjunction with <code>DBInstanceIdentifier</code>. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param SnapshotType [String] <p>The type of snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
-- @param DBInstanceIdentifier [String] <p>The ID of the DB instance to retrieve the list of DB snapshots for. This parameter cannot be used in conjunction with <code>DBSnapshotIdentifier</code>. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBSnapshotsMessage(IncludeShared, IncludePublic, Marker, MaxRecords, DBSnapshotIdentifier, Filters, SnapshotType, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotsMessage")
	local t = { 
		["IncludeShared"] = IncludeShared,
		["IncludePublic"] = IncludePublic,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["Filters"] = Filters,
		["SnapshotType"] = SnapshotType,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDescribeDBSnapshotsMessage(t)
	return t
end

local ModifyDBClusterResult_keys = { "DBCluster" = true, nil }

function M.AssertModifyDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBClusterResult_keys[k], "ModifyDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterResult
--  
-- @param DBCluster [DBCluster]  
function M.ModifyDBClusterResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertModifyDBClusterResult(t)
	return t
end

local CreateDBClusterSnapshotResult_keys = { "DBClusterSnapshot" = true, nil }

function M.AssertCreateDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then M.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterSnapshotResult_keys[k], "CreateDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotResult
--  
-- @param DBClusterSnapshot [DBClusterSnapshot]  
function M.CreateDBClusterSnapshotResult(DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = DBClusterSnapshot,
	}
	M.AssertCreateDBClusterSnapshotResult(t)
	return t
end

local DeleteDBSubnetGroupMessage_keys = { "DBSubnetGroupName" = true, nil }

function M.AssertDeleteDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBSubnetGroupMessage_keys[k], "DeleteDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSubnetGroupMessage
-- <p/>
-- @param DBSubnetGroupName [String] <p>The name of the database subnet group to delete.</p> <note> <p>You cannot delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- Required parameter: DBSubnetGroupName
function M.DeleteDBSubnetGroupMessage(DBSubnetGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = DBSubnetGroupName,
	}
	M.AssertDeleteDBSubnetGroupMessage(t)
	return t
end

local DescribeEventSubscriptionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "SubscriptionName" = true, nil }

function M.AssertDescribeEventSubscriptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventSubscriptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["SubscriptionName"] then M.AssertString(struct["SubscriptionName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventSubscriptionsMessage_keys[k], "DescribeEventSubscriptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventSubscriptionsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param SubscriptionName [String] <p>The name of the RDS event notification subscription you want to describe.</p>
function M.DescribeEventSubscriptionsMessage(Marker, MaxRecords, Filters, SubscriptionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventSubscriptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["SubscriptionName"] = SubscriptionName,
	}
	M.AssertDescribeEventSubscriptionsMessage(t)
	return t
end

local OptionVersion_keys = { "Version" = true, "IsDefault" = true, nil }

function M.AssertOptionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionVersion to be of type 'table'")
	if struct["Version"] then M.AssertString(struct["Version"]) end
	if struct["IsDefault"] then M.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(OptionVersion_keys[k], "OptionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionVersion
-- <p>The version for an option. Option group option versions are returned by the <a>DescribeOptionGroupOptions</a> action.</p>
-- @param Version [String] <p>The version of the option.</p>
-- @param IsDefault [Boolean] <p>True if the version is the default version of the option; otherwise, false.</p>
function M.OptionVersion(Version, IsDefault, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionVersion")
	local t = { 
		["Version"] = Version,
		["IsDefault"] = IsDefault,
	}
	M.AssertOptionVersion(t)
	return t
end

local RestoreDBInstanceToPointInTimeResult_keys = { "DBInstance" = true, nil }

function M.AssertRestoreDBInstanceToPointInTimeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBInstanceToPointInTimeResult_keys[k], "RestoreDBInstanceToPointInTimeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeResult
--  
-- @param DBInstance [DBInstance]  
function M.RestoreDBInstanceToPointInTimeResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceToPointInTimeResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertRestoreDBInstanceToPointInTimeResult(t)
	return t
end

local CreateDBInstanceReadReplicaMessage_keys = { "SourceRegion" = true, "AvailabilityZone" = true, "DBSubnetGroupName" = true, "MonitoringRoleArn" = true, "PubliclyAccessible" = true, "Tags" = true, "StorageType" = true, "PreSignedUrl" = true, "AutoMinorVersionUpgrade" = true, "EnableIAMDatabaseAuthentication" = true, "KmsKeyId" = true, "Iops" = true, "OptionGroupName" = true, "MonitoringInterval" = true, "CopyTagsToSnapshot" = true, "DBInstanceClass" = true, "SourceDBInstanceIdentifier" = true, "Port" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertCreateDBInstanceReadReplicaMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceReadReplicaMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MonitoringRoleArn"] then M.AssertString(struct["MonitoringRoleArn"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["PreSignedUrl"] then M.AssertString(struct["PreSignedUrl"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["MonitoringInterval"] then M.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["SourceDBInstanceIdentifier"] then M.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBInstanceReadReplicaMessage_keys[k], "CreateDBInstanceReadReplicaMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceReadReplicaMessage
--  
-- @param SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- @param AvailabilityZone [String] <p>The Amazon EC2 Availability Zone that the Read Replica will be created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p>
-- @param DBSubnetGroupName [String] <p>Specifies a DB subnet group for the DB instance. The new DB instance will be created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance is not created in a VPC.</p> <p>Constraints:</p> <ul> <li> <p>Can only be specified if the source DB instance identifier specifies a DB instance in another region.</p> </li> <li> <p>The specified DB subnet group must be in the same region in which the operation is running.</p> </li> <li> <p>All Read Replicas in one region that are created from the same source DB instance must either:&gt;</p> <ul> <li> <p>Specify DB subnet groups from the same VPC. All these Read Replicas will be created in the same VPC.</p> </li> <li> <p>Not specify a DB subnet group. All these Read Replicas will be created outside of any VPC.</p> </li> </ul> </li> </ul> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param Tags [TagList]  
-- @param StorageType [String] <p>Specifies the storage type to be associated with the Read Replica.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code> CreateDBInstanceReadReplica</code> API action in the AWS region that contains the source DB instance. The <code>PreSignedUrl</code> parameter must be used when encrypting a Read Replica from another AWS region.</p> <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action that can be executed in the source region that contains the encrypted DB instance. The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the Read Replica is created in. This region is the same one where the <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL. </p> <p> For example, if you create an encrypted Read Replica in the us-east-1 region, and the source DB instance is in the west-2 region, then you call the <code>CreateDBInstanceReadReplica</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CreateDBInstanceReadReplica</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region.</p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the Read Replica in the destination region. This is the same identifier for both the <code>CreateDBInstanceReadReplica</code> action that is called in the destination region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted Read Replica to be created. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you create an encrypted Read Replica from a DB instance in the us-west-2 region, then your <code>SourceDBInstanceIdentifier</code> would look like this example: <code> arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the Read Replica during the maintenance window.</p> <p>Default: Inherits from the source DB instance</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p>You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param KmsKeyId [String] <p>The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you create an unencrypted Read Replica and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target Read Replica using the specified KMS encryption key. </p> <p>If you create an encrypted Read Replica from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the Read Replica with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the Read Replica is encrypted with the same KMS key as the source DB instance. </p> <p> If you create an encrypted Read Replica in a different AWS region, then you must specify a KMS key for the destination AWS region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- @param Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
-- @param OptionGroupName [String] <p>The option group the DB instance will be associated with. If omitted, the default option group for the engine specified will be used.</p>
-- @param MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the Read Replica. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the Read Replica to snapshots of the Read Replica; otherwise false. The default is false.</p>
-- @param DBInstanceClass [String] <p>The compute and memory capacity of the Read Replica. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: Inherits from the source DB instance.</p>
-- @param SourceDBInstanceIdentifier [String] <p>The identifier of the DB instance that will act as the source for the Read Replica. Each DB instance can have up to five Read Replicas.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing MySQL, MariaDB, or PostgreSQL DB instance.</p> </li> <li> <p>Can specify a DB instance that is a MySQL Read Replica only if the source is running MySQL 5.6.</p> </li> <li> <p>Can specify a DB instance that is a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or later.</p> </li> <li> <p>The specified DB instance must have automatic backups enabled, its backup retention period must be greater than 0.</p> </li> <li> <p>If the source DB instance is in the same region as the Read Replica, specify a valid DB instance identifier.</p> </li> <li> <p>If the source DB instance is in a different region than the Read Replica, specify a valid DB instance ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing a Amazon RDS Amazon Resource Name (ARN)</a>.</p> </li> </ul>
-- @param Port [IntegerOptional] <p>The port number that the DB instance uses for connections.</p> <p>Default: Inherits from the source DB instance</p> <p>Valid Values: <code>1150-65535</code> </p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier of the Read Replica. This identifier is the unique key that identifies a DB instance. This parameter is stored as a lowercase string.</p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: SourceDBInstanceIdentifier
function M.CreateDBInstanceReadReplicaMessage(SourceRegion, AvailabilityZone, DBSubnetGroupName, MonitoringRoleArn, PubliclyAccessible, Tags, StorageType, PreSignedUrl, AutoMinorVersionUpgrade, EnableIAMDatabaseAuthentication, KmsKeyId, Iops, OptionGroupName, MonitoringInterval, CopyTagsToSnapshot, DBInstanceClass, SourceDBInstanceIdentifier, Port, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceReadReplicaMessage")
	local t = { 
		["SourceRegion"] = SourceRegion,
		["AvailabilityZone"] = AvailabilityZone,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["MonitoringRoleArn"] = MonitoringRoleArn,
		["PubliclyAccessible"] = PubliclyAccessible,
		["Tags"] = Tags,
		["StorageType"] = StorageType,
		["PreSignedUrl"] = PreSignedUrl,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = KmsKeyId,
		["Iops"] = Iops,
		["OptionGroupName"] = OptionGroupName,
		["MonitoringInterval"] = MonitoringInterval,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["DBInstanceClass"] = DBInstanceClass,
		["SourceDBInstanceIdentifier"] = SourceDBInstanceIdentifier,
		["Port"] = Port,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertCreateDBInstanceReadReplicaMessage(t)
	return t
end

local DescribeDBClustersMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "DBClusterIdentifier" = true, nil }

function M.AssertDescribeDBClustersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClustersMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClustersMessage_keys[k], "DescribeDBClustersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClustersMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <a>DescribeDBClusters</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>A filter that specifies one or more DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>
-- @param DBClusterIdentifier [String] <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBClustersMessage(Marker, MaxRecords, Filters, DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClustersMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["DBClusterIdentifier"] = DBClusterIdentifier,
	}
	M.AssertDescribeDBClustersMessage(t)
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
-- <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
function M.InvalidRestoreFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRestoreFault")
	local t = { 
	}
	M.AssertInvalidRestoreFault(t)
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
-- <p>The supplied category does not exist.</p>
function M.SubscriptionCategoryNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionCategoryNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionCategoryNotFoundFault(t)
	return t
end

local DBInstance_keys = { "PubliclyAccessible" = true, "MasterUsername" = true, "MonitoringInterval" = true, "LicenseModel" = true, "MonitoringRoleArn" = true, "VpcSecurityGroups" = true, "InstanceCreateTime" = true, "CopyTagsToSnapshot" = true, "OptionGroupMemberships" = true, "PendingModifiedValues" = true, "Engine" = true, "MultiAZ" = true, "LatestRestorableTime" = true, "DBSecurityGroups" = true, "DBParameterGroups" = true, "ReadReplicaSourceDBInstanceIdentifier" = true, "AutoMinorVersionUpgrade" = true, "PreferredBackupWindow" = true, "PromotionTier" = true, "DBSubnetGroup" = true, "SecondaryAvailabilityZone" = true, "ReadReplicaDBInstanceIdentifiers" = true, "AllocatedStorage" = true, "DBInstanceArn" = true, "BackupRetentionPeriod" = true, "DBName" = true, "PreferredMaintenanceWindow" = true, "Endpoint" = true, "DBInstanceStatus" = true, "StatusInfos" = true, "IAMDatabaseAuthenticationEnabled" = true, "EngineVersion" = true, "ReadReplicaDBClusterIdentifiers" = true, "TdeCredentialArn" = true, "EnhancedMonitoringResourceArn" = true, "CharacterSetName" = true, "AvailabilityZone" = true, "DomainMemberships" = true, "DBClusterIdentifier" = true, "StorageType" = true, "DbiResourceId" = true, "CACertificateIdentifier" = true, "Iops" = true, "StorageEncrypted" = true, "KmsKeyId" = true, "Timezone" = true, "DBInstanceClass" = true, "DbInstancePort" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstance to be of type 'table'")
	if struct["PubliclyAccessible"] then M.AssertBoolean(struct["PubliclyAccessible"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then M.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["MonitoringRoleArn"] then M.AssertString(struct["MonitoringRoleArn"]) end
	if struct["VpcSecurityGroups"] then M.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroups"]) end
	if struct["InstanceCreateTime"] then M.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBoolean(struct["CopyTagsToSnapshot"]) end
	if struct["OptionGroupMemberships"] then M.AssertOptionGroupMembershipList(struct["OptionGroupMemberships"]) end
	if struct["PendingModifiedValues"] then M.AssertPendingModifiedValues(struct["PendingModifiedValues"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["LatestRestorableTime"] then M.AssertTStamp(struct["LatestRestorableTime"]) end
	if struct["DBSecurityGroups"] then M.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroups"]) end
	if struct["DBParameterGroups"] then M.AssertDBParameterGroupStatusList(struct["DBParameterGroups"]) end
	if struct["ReadReplicaSourceDBInstanceIdentifier"] then M.AssertString(struct["ReadReplicaSourceDBInstanceIdentifier"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBoolean(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then M.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["DBSubnetGroup"] then M.AssertDBSubnetGroup(struct["DBSubnetGroup"]) end
	if struct["SecondaryAvailabilityZone"] then M.AssertString(struct["SecondaryAvailabilityZone"]) end
	if struct["ReadReplicaDBInstanceIdentifiers"] then M.AssertReadReplicaDBInstanceIdentifierList(struct["ReadReplicaDBInstanceIdentifiers"]) end
	if struct["AllocatedStorage"] then M.AssertInteger(struct["AllocatedStorage"]) end
	if struct["DBInstanceArn"] then M.AssertString(struct["DBInstanceArn"]) end
	if struct["BackupRetentionPeriod"] then M.AssertInteger(struct["BackupRetentionPeriod"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["Endpoint"] then M.AssertEndpoint(struct["Endpoint"]) end
	if struct["DBInstanceStatus"] then M.AssertString(struct["DBInstanceStatus"]) end
	if struct["StatusInfos"] then M.AssertDBInstanceStatusInfoList(struct["StatusInfos"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then M.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["ReadReplicaDBClusterIdentifiers"] then M.AssertReadReplicaDBClusterIdentifierList(struct["ReadReplicaDBClusterIdentifiers"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["EnhancedMonitoringResourceArn"] then M.AssertString(struct["EnhancedMonitoringResourceArn"]) end
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["DomainMemberships"] then M.AssertDomainMembershipList(struct["DomainMemberships"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["DbiResourceId"] then M.AssertString(struct["DbiResourceId"]) end
	if struct["CACertificateIdentifier"] then M.AssertString(struct["CACertificateIdentifier"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then M.AssertBoolean(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then M.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["DbInstancePort"] then M.AssertInteger(struct["DbInstancePort"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DBInstance_keys[k], "DBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstance
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>StopDBInstance</a> </p> </li> <li> <p> <a>StartDBInstance</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
-- @param PubliclyAccessible [Boolean] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param MasterUsername [String] <p>Contains the master username for the DB instance.</p>
-- @param MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
-- @param LicenseModel [String] <p>License model information for this DB instance.</p>
-- @param MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.</p>
-- @param VpcSecurityGroups [VpcSecurityGroupMembershipList] <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
-- @param InstanceCreateTime [TStamp] <p>Provides the date and time the DB instance was created.</p>
-- @param CopyTagsToSnapshot [Boolean] <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
-- @param OptionGroupMemberships [OptionGroupMembershipList] <p>Provides the list of option group memberships for this DB instance.</p>
-- @param PendingModifiedValues [PendingModifiedValues] <p>Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
-- @param Engine [String] <p>Provides the name of the database engine to be used for this DB instance.</p>
-- @param MultiAZ [Boolean] <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
-- @param LatestRestorableTime [TStamp] <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
-- @param DBSecurityGroups [DBSecurityGroupMembershipList] <p> Provides List of DB security group elements containing only <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements. </p>
-- @param DBParameterGroups [DBParameterGroupStatusList] <p>Provides the list of DB parameter groups applied to this DB instance.</p>
-- @param ReadReplicaSourceDBInstanceIdentifier [String] <p>Contains the identifier of the source DB instance if this DB instance is a Read Replica.</p>
-- @param AutoMinorVersionUpgrade [Boolean] <p>Indicates that minor version patches are applied automatically.</p>
-- @param PreferredBackupWindow [String] <p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
-- @param PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p>
-- @param DBSubnetGroup [DBSubnetGroup] <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
-- @param SecondaryAvailabilityZone [String] <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
-- @param ReadReplicaDBInstanceIdentifiers [ReadReplicaDBInstanceIdentifierList] <p>Contains one or more identifiers of the Read Replicas associated with this DB instance.</p>
-- @param AllocatedStorage [Integer] <p>Specifies the allocated storage size specified in gigabytes.</p>
-- @param DBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the DB instance.</p>
-- @param BackupRetentionPeriod [Integer] <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
-- @param DBName [String] <p>The meaning of this parameter differs according to the database engine you use. For example, this value returns MySQL, MariaDB, or PostgreSQL information when returning values from CreateDBInstanceReadReplica since Read Replicas are only supported for these engines.</p> <p> <b>MySQL, MariaDB, SQL Server, PostgreSQL</b> </p> <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p> <p>Type: String</p> <p> <b>Oracle</b> </p> <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>
-- @param PreferredMaintenanceWindow [String] <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
-- @param Endpoint [Endpoint] <p>Specifies the connection endpoint.</p>
-- @param DBInstanceStatus [String] <p>Specifies the current state of this database.</p>
-- @param StatusInfos [DBInstanceStatusInfoList] <p>The status of a Read Replica. If the instance is not a Read Replica, this will be blank.</p>
-- @param IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p> <p>IAM database authentication can be enabled for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p> </li> </ul>
-- @param EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param ReadReplicaDBClusterIdentifiers [ReadReplicaDBClusterIdentifierList] <p>Contains one or more identifiers of Aurora DB clusters that are Read Replicas of this DB instance.</p>
-- @param TdeCredentialArn [String] <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
-- @param EnhancedMonitoringResourceArn [String] <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
-- @param CharacterSetName [String] <p>If present, specifies the name of the character set that this instance is associated with.</p>
-- @param AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
-- @param DomainMemberships [DomainMembershipList] <p>The Active Directory Domain membership records associated with the DB instance.</p>
-- @param DBClusterIdentifier [String] <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
-- @param StorageType [String] <p>Specifies the storage type associated with DB instance.</p>
-- @param DbiResourceId [String] <p>The region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the KMS key for the DB instance is accessed.</p>
-- @param CACertificateIdentifier [String] <p>The identifier of the CA certificate for this DB instance.</p>
-- @param Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
-- @param StorageEncrypted [Boolean] <p>Specifies whether the DB instance is encrypted.</p>
-- @param KmsKeyId [String] <p> If <code>StorageEncrypted</code> is true, the KMS key identifier for the encrypted DB instance. </p>
-- @param Timezone [String] <p>The time zone of the DB instance. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- @param DBInstanceClass [String] <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
-- @param DbInstancePort [Integer] <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
-- @param DBInstanceIdentifier [String] <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
function M.DBInstance(PubliclyAccessible, MasterUsername, MonitoringInterval, LicenseModel, MonitoringRoleArn, VpcSecurityGroups, InstanceCreateTime, CopyTagsToSnapshot, OptionGroupMemberships, PendingModifiedValues, Engine, MultiAZ, LatestRestorableTime, DBSecurityGroups, DBParameterGroups, ReadReplicaSourceDBInstanceIdentifier, AutoMinorVersionUpgrade, PreferredBackupWindow, PromotionTier, DBSubnetGroup, SecondaryAvailabilityZone, ReadReplicaDBInstanceIdentifiers, AllocatedStorage, DBInstanceArn, BackupRetentionPeriod, DBName, PreferredMaintenanceWindow, Endpoint, DBInstanceStatus, StatusInfos, IAMDatabaseAuthenticationEnabled, EngineVersion, ReadReplicaDBClusterIdentifiers, TdeCredentialArn, EnhancedMonitoringResourceArn, CharacterSetName, AvailabilityZone, DomainMemberships, DBClusterIdentifier, StorageType, DbiResourceId, CACertificateIdentifier, Iops, StorageEncrypted, KmsKeyId, Timezone, DBInstanceClass, DbInstancePort, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstance")
	local t = { 
		["PubliclyAccessible"] = PubliclyAccessible,
		["MasterUsername"] = MasterUsername,
		["MonitoringInterval"] = MonitoringInterval,
		["LicenseModel"] = LicenseModel,
		["MonitoringRoleArn"] = MonitoringRoleArn,
		["VpcSecurityGroups"] = VpcSecurityGroups,
		["InstanceCreateTime"] = InstanceCreateTime,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["OptionGroupMemberships"] = OptionGroupMemberships,
		["PendingModifiedValues"] = PendingModifiedValues,
		["Engine"] = Engine,
		["MultiAZ"] = MultiAZ,
		["LatestRestorableTime"] = LatestRestorableTime,
		["DBSecurityGroups"] = DBSecurityGroups,
		["DBParameterGroups"] = DBParameterGroups,
		["ReadReplicaSourceDBInstanceIdentifier"] = ReadReplicaSourceDBInstanceIdentifier,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["PromotionTier"] = PromotionTier,
		["DBSubnetGroup"] = DBSubnetGroup,
		["SecondaryAvailabilityZone"] = SecondaryAvailabilityZone,
		["ReadReplicaDBInstanceIdentifiers"] = ReadReplicaDBInstanceIdentifiers,
		["AllocatedStorage"] = AllocatedStorage,
		["DBInstanceArn"] = DBInstanceArn,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["DBName"] = DBName,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["Endpoint"] = Endpoint,
		["DBInstanceStatus"] = DBInstanceStatus,
		["StatusInfos"] = StatusInfos,
		["IAMDatabaseAuthenticationEnabled"] = IAMDatabaseAuthenticationEnabled,
		["EngineVersion"] = EngineVersion,
		["ReadReplicaDBClusterIdentifiers"] = ReadReplicaDBClusterIdentifiers,
		["TdeCredentialArn"] = TdeCredentialArn,
		["EnhancedMonitoringResourceArn"] = EnhancedMonitoringResourceArn,
		["CharacterSetName"] = CharacterSetName,
		["AvailabilityZone"] = AvailabilityZone,
		["DomainMemberships"] = DomainMemberships,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["StorageType"] = StorageType,
		["DbiResourceId"] = DbiResourceId,
		["CACertificateIdentifier"] = CACertificateIdentifier,
		["Iops"] = Iops,
		["StorageEncrypted"] = StorageEncrypted,
		["KmsKeyId"] = KmsKeyId,
		["Timezone"] = Timezone,
		["DBInstanceClass"] = DBInstanceClass,
		["DbInstancePort"] = DbInstancePort,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDBInstance(t)
	return t
end

local RestoreDBClusterFromSnapshotResult_keys = { "DBCluster" = true, nil }

function M.AssertRestoreDBClusterFromSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterFromSnapshotResult_keys[k], "RestoreDBClusterFromSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotResult
--  
-- @param DBCluster [DBCluster]  
function M.RestoreDBClusterFromSnapshotResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromSnapshotResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertRestoreDBClusterFromSnapshotResult(t)
	return t
end

local PendingMaintenanceAction_keys = { "Description" = true, "OptInStatus" = true, "ForcedApplyDate" = true, "AutoAppliedAfterDate" = true, "Action" = true, "CurrentApplyDate" = true, nil }

function M.AssertPendingMaintenanceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceAction to be of type 'table'")
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["OptInStatus"] then M.AssertString(struct["OptInStatus"]) end
	if struct["ForcedApplyDate"] then M.AssertTStamp(struct["ForcedApplyDate"]) end
	if struct["AutoAppliedAfterDate"] then M.AssertTStamp(struct["AutoAppliedAfterDate"]) end
	if struct["Action"] then M.AssertString(struct["Action"]) end
	if struct["CurrentApplyDate"] then M.AssertTStamp(struct["CurrentApplyDate"]) end
	for k,_ in pairs(struct) do
		assert(PendingMaintenanceAction_keys[k], "PendingMaintenanceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceAction
-- <p>Provides information about a pending maintenance action for a resource.</p>
-- @param Description [String] <p>A description providing more detail about the maintenance action.</p>
-- @param OptInStatus [String] <p>Indicates the type of opt-in request that has been received for the resource.</p>
-- @param ForcedApplyDate [TStamp] <p>The date when the maintenance action will be automatically applied. The maintenance action will be applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>
-- @param AutoAppliedAfterDate [TStamp] <p>The date of the maintenance window when the action will be applied. The maintenance action will be applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
-- @param Action [String] <p>The type of pending maintenance action that is available for the resource.</p>
-- @param CurrentApplyDate [TStamp] <p>The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received and nothing has been specified as <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
function M.PendingMaintenanceAction(Description, OptInStatus, ForcedApplyDate, AutoAppliedAfterDate, Action, CurrentApplyDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingMaintenanceAction")
	local t = { 
		["Description"] = Description,
		["OptInStatus"] = OptInStatus,
		["ForcedApplyDate"] = ForcedApplyDate,
		["AutoAppliedAfterDate"] = AutoAppliedAfterDate,
		["Action"] = Action,
		["CurrentApplyDate"] = CurrentApplyDate,
	}
	M.AssertPendingMaintenanceAction(t)
	return t
end

local DeleteEventSubscriptionResult_keys = { "EventSubscription" = true, nil }

function M.AssertDeleteEventSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventSubscriptionResult_keys[k], "DeleteEventSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventSubscriptionResult
--  
-- @param EventSubscription [EventSubscription]  
function M.DeleteEventSubscriptionResult(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventSubscriptionResult")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertDeleteEventSubscriptionResult(t)
	return t
end

local ReservedDBInstance_keys = { "MultiAZ" = true, "OfferingType" = true, "FixedPrice" = true, "CurrencyCode" = true, "ProductDescription" = true, "ReservedDBInstancesOfferingId" = true, "RecurringCharges" = true, "ReservedDBInstanceArn" = true, "Duration" = true, "State" = true, "DBInstanceCount" = true, "StartTime" = true, "ReservedDBInstanceId" = true, "DBInstanceClass" = true, "UsagePrice" = true, nil }

function M.AssertReservedDBInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstance to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["CurrencyCode"] then M.AssertString(struct["CurrencyCode"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then M.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ReservedDBInstanceArn"] then M.AssertString(struct["ReservedDBInstanceArn"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["State"] then M.AssertString(struct["State"]) end
	if struct["DBInstanceCount"] then M.AssertInteger(struct["DBInstanceCount"]) end
	if struct["StartTime"] then M.AssertTStamp(struct["StartTime"]) end
	if struct["ReservedDBInstanceId"] then M.AssertString(struct["ReservedDBInstanceId"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	for k,_ in pairs(struct) do
		assert(ReservedDBInstance_keys[k], "ReservedDBInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstance
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>PurchaseReservedDBInstancesOffering</a> actions. </p>
-- @param MultiAZ [Boolean] <p>Indicates if the reservation applies to Multi-AZ deployments.</p>
-- @param OfferingType [String] <p>The offering type of this reserved DB instance.</p>
-- @param FixedPrice [Double] <p>The fixed price charged for this reserved DB instance.</p>
-- @param CurrencyCode [String] <p>The currency code for the reserved DB instance.</p>
-- @param ProductDescription [String] <p>The description of the reserved DB instance.</p>
-- @param ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- @param RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- @param ReservedDBInstanceArn [String] <p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>
-- @param Duration [Integer] <p>The duration of the reservation in seconds.</p>
-- @param State [String] <p>The state of the reserved DB instance.</p>
-- @param DBInstanceCount [Integer] <p>The number of reserved DB instances.</p>
-- @param StartTime [TStamp] <p>The time the reservation started.</p>
-- @param ReservedDBInstanceId [String] <p>The unique identifier for the reservation.</p>
-- @param DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- @param UsagePrice [Double] <p>The hourly price charged for this reserved DB instance.</p>
function M.ReservedDBInstance(MultiAZ, OfferingType, FixedPrice, CurrencyCode, ProductDescription, ReservedDBInstancesOfferingId, RecurringCharges, ReservedDBInstanceArn, Duration, State, DBInstanceCount, StartTime, ReservedDBInstanceId, DBInstanceClass, UsagePrice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstance")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["CurrencyCode"] = CurrencyCode,
		["ProductDescription"] = ProductDescription,
		["ReservedDBInstancesOfferingId"] = ReservedDBInstancesOfferingId,
		["RecurringCharges"] = RecurringCharges,
		["ReservedDBInstanceArn"] = ReservedDBInstanceArn,
		["Duration"] = Duration,
		["State"] = State,
		["DBInstanceCount"] = DBInstanceCount,
		["StartTime"] = StartTime,
		["ReservedDBInstanceId"] = ReservedDBInstanceId,
		["DBInstanceClass"] = DBInstanceClass,
		["UsagePrice"] = UsagePrice,
	}
	M.AssertReservedDBInstance(t)
	return t
end

local InvalidDBSubnetStateFault_keys = { nil }

function M.AssertInvalidDBSubnetStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBSubnetStateFault_keys[k], "InvalidDBSubnetStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetStateFault
-- <p> The DB subnet is not in the <i>available</i> state. </p>
function M.InvalidDBSubnetStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetStateFault")
	local t = { 
	}
	M.AssertInvalidDBSubnetStateFault(t)
	return t
end

local AuthorizeDBSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "CIDRIP" = true, "EC2SecurityGroupId" = true, "DBSecurityGroupName" = true, nil }

function M.AssertAuthorizeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then M.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeDBSecurityGroupIngressMessage_keys[k], "AuthorizeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressMessage
-- <p/>
-- @param EC2SecurityGroupName [String] <p> Name of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param EC2SecurityGroupOwnerId [String] <p> AWS account number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param CIDRIP [String] <p>The IP range to authorize.</p>
-- @param EC2SecurityGroupId [String] <p> Id of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param DBSecurityGroupName [String] <p>The name of the DB security group to add authorization to.</p>
-- Required parameter: DBSecurityGroupName
function M.AuthorizeDBSecurityGroupIngressMessage(EC2SecurityGroupName, EC2SecurityGroupOwnerId, CIDRIP, EC2SecurityGroupId, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeDBSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["CIDRIP"] = CIDRIP,
		["EC2SecurityGroupId"] = EC2SecurityGroupId,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertAuthorizeDBSecurityGroupIngressMessage(t)
	return t
end

local OptionGroupMembership_keys = { "Status" = true, "OptionGroupName" = true, nil }

function M.AssertOptionGroupMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroupMembership_keys[k], "OptionGroupMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupMembership
-- <p>Provides information on the option groups the DB instance is a member of.</p>
-- @param Status [String] <p>The status of the DB instance's option group membership. Valid values are: <code>in-sync</code>, <code>pending-apply</code>, <code>pending-removal</code>, <code>pending-maintenance-apply</code>, <code>pending-maintenance-removal</code>, <code>applying</code>, <code>removing</code>, and <code>failed</code>. </p>
-- @param OptionGroupName [String] <p>The name of the option group that the instance belongs to.</p>
function M.OptionGroupMembership(Status, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupMembership")
	local t = { 
		["Status"] = Status,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertOptionGroupMembership(t)
	return t
end

local CreateDBParameterGroupResult_keys = { "DBParameterGroup" = true, nil }

function M.AssertCreateDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then M.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBParameterGroupResult_keys[k], "CreateDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupResult
--  
-- @param DBParameterGroup [DBParameterGroup]  
function M.CreateDBParameterGroupResult(DBParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBParameterGroupResult")
	local t = { 
		["DBParameterGroup"] = DBParameterGroup,
	}
	M.AssertCreateDBParameterGroupResult(t)
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
-- <p>The specified resource ID was not found.</p>
function M.ResourceNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundFault")
	local t = { 
	}
	M.AssertResourceNotFoundFault(t)
	return t
end

local CreateDBClusterResult_keys = { "DBCluster" = true, nil }

function M.AssertCreateDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterResult_keys[k], "CreateDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterResult
--  
-- @param DBCluster [DBCluster]  
function M.CreateDBClusterResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertCreateDBClusterResult(t)
	return t
end

local PromoteReadReplicaResult_keys = { "DBInstance" = true, nil }

function M.AssertPromoteReadReplicaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(PromoteReadReplicaResult_keys[k], "PromoteReadReplicaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaResult
--  
-- @param DBInstance [DBInstance]  
function M.PromoteReadReplicaResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertPromoteReadReplicaResult(t)
	return t
end

local OptionSetting_keys = { "IsCollection" = true, "Name" = true, "DataType" = true, "DefaultValue" = true, "Value" = true, "AllowedValues" = true, "IsModifiable" = true, "ApplyType" = true, "Description" = true, nil }

function M.AssertOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionSetting to be of type 'table'")
	if struct["IsCollection"] then M.AssertBoolean(struct["IsCollection"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["DefaultValue"] then M.AssertString(struct["DefaultValue"]) end
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["ApplyType"] then M.AssertString(struct["ApplyType"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(OptionSetting_keys[k], "OptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionSetting
-- <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
-- @param IsCollection [Boolean] <p>Indicates if the option setting is part of a collection.</p>
-- @param Name [String] <p>The name of the option that has settings that you can set.</p>
-- @param DataType [String] <p>The data type of the option setting.</p>
-- @param DefaultValue [String] <p>The default value of the option setting.</p>
-- @param Value [String] <p>The current value of the option setting.</p>
-- @param AllowedValues [String] <p>The allowed values of the option setting.</p>
-- @param IsModifiable [Boolean] <p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>
-- @param ApplyType [String] <p>The DB engine specific parameter type.</p>
-- @param Description [String] <p>The description of the option setting.</p>
function M.OptionSetting(IsCollection, Name, DataType, DefaultValue, Value, AllowedValues, IsModifiable, ApplyType, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionSetting")
	local t = { 
		["IsCollection"] = IsCollection,
		["Name"] = Name,
		["DataType"] = DataType,
		["DefaultValue"] = DefaultValue,
		["Value"] = Value,
		["AllowedValues"] = AllowedValues,
		["IsModifiable"] = IsModifiable,
		["ApplyType"] = ApplyType,
		["Description"] = Description,
	}
	M.AssertOptionSetting(t)
	return t
end

local CreateDBClusterMessage_keys = { "MasterUsername" = true, "VpcSecurityGroupIds" = true, "EnableIAMDatabaseAuthentication" = true, "Engine" = true, "Tags" = true, "PreferredBackupWindow" = true, "SourceRegion" = true, "BackupRetentionPeriod" = true, "PreferredMaintenanceWindow" = true, "DBClusterParameterGroupName" = true, "PreSignedUrl" = true, "ReplicationSourceIdentifier" = true, "EngineVersion" = true, "DBSubnetGroupName" = true, "OptionGroupName" = true, "CharacterSetName" = true, "DBClusterIdentifier" = true, "MasterUserPassword" = true, "KmsKeyId" = true, "StorageEncrypted" = true, "DatabaseName" = true, "AvailabilityZones" = true, "Port" = true, nil }

function M.AssertCreateDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["PreSignedUrl"] then M.AssertString(struct["PreSignedUrl"]) end
	if struct["ReplicationSourceIdentifier"] then M.AssertString(struct["ReplicationSourceIdentifier"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["StorageEncrypted"] then M.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterMessage_keys[k], "CreateDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterMessage
-- <p/>
-- @param MasterUsername [String] <p>The name of the master user for the DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param Engine [String] <p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>aurora</code> </p>
-- @param Tags [TagList] <p/>
-- @param PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param SourceRegion [String] <p>The ID of the region that contains the source for the read replica.</p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param DBClusterParameterGroupName [String] <p> The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, <code>default.aurora5.6</code> will be used. </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param PreSignedUrl [String] <p>A URL that contains a Signature Version 4 signed request for the <code>CreateDBCluster</code> action to be called in the source region where the DB cluster will be replicated from. You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p> <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action that can be executed in the source region that contains the encrypted DB cluster to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination region. This should refer to the same KMS key for both the <code>CreateDBCluster</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that Aurora Read Replica will be created in.</p> </li> <li> <p> <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster from the us-west-2 region, then your <code>ReplicationSourceIdentifier</code> would look like Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param ReplicationSourceIdentifier [String] <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.</p>
-- @param EngineVersion [String] <p>The version number of the database engine to use.</p> <p> <b>Aurora</b> </p> <p>Example: <code>5.6.10a</code> </p>
-- @param DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group.</p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- @param CharacterSetName [String] <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
-- @param DBClusterIdentifier [String] <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param MasterUserPassword [String] <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param KmsKeyId [String] <p>The KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p> <p>If you create a Read Replica of an encrypted DB cluster in another region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination region. This key is used to encrypt the Read Replica in that region.</p>
-- @param StorageEncrypted [BooleanOptional] <p>Specifies whether the DB cluster is encrypted.</p>
-- @param DatabaseName [String] <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon RDS will not create a database in the DB cluster you are creating.</p>
-- @param AvailabilityZones [AvailabilityZones] <p>A list of EC2 Availability Zones that instances in the DB cluster can be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p>
-- @param Port [IntegerOptional] <p>The port number on which the instances in the DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: Engine
function M.CreateDBClusterMessage(MasterUsername, VpcSecurityGroupIds, EnableIAMDatabaseAuthentication, Engine, Tags, PreferredBackupWindow, SourceRegion, BackupRetentionPeriod, PreferredMaintenanceWindow, DBClusterParameterGroupName, PreSignedUrl, ReplicationSourceIdentifier, EngineVersion, DBSubnetGroupName, OptionGroupName, CharacterSetName, DBClusterIdentifier, MasterUserPassword, KmsKeyId, StorageEncrypted, DatabaseName, AvailabilityZones, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterMessage")
	local t = { 
		["MasterUsername"] = MasterUsername,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["Engine"] = Engine,
		["Tags"] = Tags,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["SourceRegion"] = SourceRegion,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["PreSignedUrl"] = PreSignedUrl,
		["ReplicationSourceIdentifier"] = ReplicationSourceIdentifier,
		["EngineVersion"] = EngineVersion,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["OptionGroupName"] = OptionGroupName,
		["CharacterSetName"] = CharacterSetName,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["MasterUserPassword"] = MasterUserPassword,
		["KmsKeyId"] = KmsKeyId,
		["StorageEncrypted"] = StorageEncrypted,
		["DatabaseName"] = DatabaseName,
		["AvailabilityZones"] = AvailabilityZones,
		["Port"] = Port,
	}
	M.AssertCreateDBClusterMessage(t)
	return t
end

local DownloadDBLogFilePortionDetails_keys = { "Marker" = true, "AdditionalDataPending" = true, "LogFileData" = true, nil }

function M.AssertDownloadDBLogFilePortionDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionDetails to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["AdditionalDataPending"] then M.AssertBoolean(struct["AdditionalDataPending"]) end
	if struct["LogFileData"] then M.AssertString(struct["LogFileData"]) end
	for k,_ in pairs(struct) do
		assert(DownloadDBLogFilePortionDetails_keys[k], "DownloadDBLogFilePortionDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionDetails
-- <p>This data type is used as a response element to <a>DownloadDBLogFilePortion</a>.</p>
-- @param Marker [String] <p>A pagination token that can be used in a subsequent DownloadDBLogFilePortion request.</p>
-- @param AdditionalDataPending [Boolean] <p>Boolean value that if true, indicates there is more data to be downloaded.</p>
-- @param LogFileData [String] <p>Entries from the specified log file.</p>
function M.DownloadDBLogFilePortionDetails(Marker, AdditionalDataPending, LogFileData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDBLogFilePortionDetails")
	local t = { 
		["Marker"] = Marker,
		["AdditionalDataPending"] = AdditionalDataPending,
		["LogFileData"] = LogFileData,
	}
	M.AssertDownloadDBLogFilePortionDetails(t)
	return t
end

local DBParameterGroupAlreadyExistsFault_keys = { nil }

function M.AssertDBParameterGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBParameterGroupAlreadyExistsFault_keys[k], "DBParameterGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupAlreadyExistsFault
-- <p>A DB parameter group with the same name exists.</p>
function M.DBParameterGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBParameterGroupAlreadyExistsFault(t)
	return t
end

local DBEngineVersionMessage_keys = { "Marker" = true, "DBEngineVersions" = true, nil }

function M.AssertDBEngineVersionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBEngineVersionMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBEngineVersions"] then M.AssertDBEngineVersionList(struct["DBEngineVersions"]) end
	for k,_ in pairs(struct) do
		assert(DBEngineVersionMessage_keys[k], "DBEngineVersionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBEngineVersionMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBEngineVersions</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBEngineVersions [DBEngineVersionList] <p> A list of <code>DBEngineVersion</code> elements. </p>
function M.DBEngineVersionMessage(Marker, DBEngineVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBEngineVersionMessage")
	local t = { 
		["Marker"] = Marker,
		["DBEngineVersions"] = DBEngineVersions,
	}
	M.AssertDBEngineVersionMessage(t)
	return t
end

local DescribeDBInstancesMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDescribeDBInstancesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBInstancesMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBInstancesMessage_keys[k], "DescribeDBInstancesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBInstancesMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>A filter that specifies one or more DB instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB Clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.</p> </li> </ul>
-- @param DBInstanceIdentifier [String] <p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
function M.DescribeDBInstancesMessage(Marker, MaxRecords, Filters, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBInstancesMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDescribeDBInstancesMessage(t)
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
-- <p>You do not have permission to publish to the SNS topic ARN.</p>
function M.SNSNoAuthorizationFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSNoAuthorizationFault")
	local t = { 
	}
	M.AssertSNSNoAuthorizationFault(t)
	return t
end

local DBParameterGroupDetails_keys = { "Marker" = true, "Parameters" = true, nil }

function M.AssertDBParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DBParameterGroupDetails_keys[k], "DBParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupDetails
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameters</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param Parameters [ParametersList] <p> A list of <a>Parameter</a> values. </p>
function M.DBParameterGroupDetails(Marker, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupDetails")
	local t = { 
		["Marker"] = Marker,
		["Parameters"] = Parameters,
	}
	M.AssertDBParameterGroupDetails(t)
	return t
end

local CreateDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertCreateDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBInstanceResult_keys[k], "CreateDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.CreateDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertCreateDBInstanceResult(t)
	return t
end

local InvalidDBInstanceStateFault_keys = { nil }

function M.AssertInvalidDBInstanceStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBInstanceStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBInstanceStateFault_keys[k], "InvalidDBInstanceStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBInstanceStateFault
-- <p> The specified DB instance is not in the <i>available</i> state. </p>
function M.InvalidDBInstanceStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBInstanceStateFault")
	local t = { 
	}
	M.AssertInvalidDBInstanceStateFault(t)
	return t
end

local DeleteDBSnapshotResult_keys = { "DBSnapshot" = true, nil }

function M.AssertDeleteDBSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotResult to be of type 'table'")
	if struct["DBSnapshot"] then M.AssertDBSnapshot(struct["DBSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBSnapshotResult_keys[k], "DeleteDBSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotResult
--  
-- @param DBSnapshot [DBSnapshot]  
function M.DeleteDBSnapshotResult(DBSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSnapshotResult")
	local t = { 
		["DBSnapshot"] = DBSnapshot,
	}
	M.AssertDeleteDBSnapshotResult(t)
	return t
end

local CreateDBSecurityGroupResult_keys = { "DBSecurityGroup" = true, nil }

function M.AssertCreateDBSecurityGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSecurityGroupResult to be of type 'table'")
	if struct["DBSecurityGroup"] then M.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSecurityGroupResult_keys[k], "CreateDBSecurityGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSecurityGroupResult
--  
-- @param DBSecurityGroup [DBSecurityGroup]  
function M.CreateDBSecurityGroupResult(DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSecurityGroupResult")
	local t = { 
		["DBSecurityGroup"] = DBSecurityGroup,
	}
	M.AssertCreateDBSecurityGroupResult(t)
	return t
end

local CreateDBClusterParameterGroupResult_keys = { "DBClusterParameterGroup" = true, nil }

function M.AssertCreateDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then M.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterParameterGroupResult_keys[k], "CreateDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupResult
--  
-- @param DBClusterParameterGroup [DBClusterParameterGroup]  
function M.CreateDBClusterParameterGroupResult(DBClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterParameterGroupResult")
	local t = { 
		["DBClusterParameterGroup"] = DBClusterParameterGroup,
	}
	M.AssertCreateDBClusterParameterGroupResult(t)
	return t
end

local DBSecurityGroupNotSupportedFault_keys = { nil }

function M.AssertDBSecurityGroupNotSupportedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotSupportedFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupNotSupportedFault_keys[k], "DBSecurityGroupNotSupportedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotSupportedFault
-- <p>A DB security group is not allowed for this action.</p>
function M.DBSecurityGroupNotSupportedFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupNotSupportedFault")
	local t = { 
	}
	M.AssertDBSecurityGroupNotSupportedFault(t)
	return t
end

local DBSecurityGroupQuotaExceededFault_keys = { nil }

function M.AssertDBSecurityGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupQuotaExceededFault_keys[k], "DBSecurityGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB security groups.</p>
function M.DBSecurityGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertDBSecurityGroupQuotaExceededFault(t)
	return t
end

local OptionGroupOption_keys = { "MinimumRequiredMinorEngineVersion" = true, "OptionsDependedOn" = true, "MajorEngineVersion" = true, "OptionGroupOptionVersions" = true, "Persistent" = true, "Description" = true, "DefaultPort" = true, "Permanent" = true, "OptionGroupOptionSettings" = true, "OptionsConflictsWith" = true, "EngineName" = true, "PortRequired" = true, "Name" = true, nil }

function M.AssertOptionGroupOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOption to be of type 'table'")
	if struct["MinimumRequiredMinorEngineVersion"] then M.AssertString(struct["MinimumRequiredMinorEngineVersion"]) end
	if struct["OptionsDependedOn"] then M.AssertOptionsDependedOn(struct["OptionsDependedOn"]) end
	if struct["MajorEngineVersion"] then M.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupOptionVersions"] then M.AssertOptionGroupOptionVersionsList(struct["OptionGroupOptionVersions"]) end
	if struct["Persistent"] then M.AssertBoolean(struct["Persistent"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DefaultPort"] then M.AssertIntegerOptional(struct["DefaultPort"]) end
	if struct["Permanent"] then M.AssertBoolean(struct["Permanent"]) end
	if struct["OptionGroupOptionSettings"] then M.AssertOptionGroupOptionSettingsList(struct["OptionGroupOptionSettings"]) end
	if struct["OptionsConflictsWith"] then M.AssertOptionsConflictsWith(struct["OptionsConflictsWith"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["PortRequired"] then M.AssertBoolean(struct["PortRequired"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroupOption_keys[k], "OptionGroupOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOption
-- <p>Available option.</p>
-- @param MinimumRequiredMinorEngineVersion [String] <p>The minimum required engine version for the option to be applied.</p>
-- @param OptionsDependedOn [OptionsDependedOn] <p>The options that are prerequisites for this option.</p>
-- @param MajorEngineVersion [String] <p>Indicates the major engine version that the option is available for.</p>
-- @param OptionGroupOptionVersions [OptionGroupOptionVersionsList] <p>The versions that are available for the option.</p>
-- @param Persistent [Boolean] <p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>
-- @param Description [String] <p>The description of the option.</p>
-- @param DefaultPort [IntegerOptional] <p>If the option requires a port, specifies the default port for the option.</p>
-- @param Permanent [Boolean] <p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>
-- @param OptionGroupOptionSettings [OptionGroupOptionSettingsList] <p>The option settings that are available (and the default value) for each option in an option group.</p>
-- @param OptionsConflictsWith [OptionsConflictsWith] <p>The options that conflict with this option.</p>
-- @param EngineName [String] <p>The name of the engine that this option can be applied to.</p>
-- @param PortRequired [Boolean] <p>Specifies whether the option requires a port.</p>
-- @param Name [String] <p>The name of the option.</p>
function M.OptionGroupOption(MinimumRequiredMinorEngineVersion, OptionsDependedOn, MajorEngineVersion, OptionGroupOptionVersions, Persistent, Description, DefaultPort, Permanent, OptionGroupOptionSettings, OptionsConflictsWith, EngineName, PortRequired, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOption")
	local t = { 
		["MinimumRequiredMinorEngineVersion"] = MinimumRequiredMinorEngineVersion,
		["OptionsDependedOn"] = OptionsDependedOn,
		["MajorEngineVersion"] = MajorEngineVersion,
		["OptionGroupOptionVersions"] = OptionGroupOptionVersions,
		["Persistent"] = Persistent,
		["Description"] = Description,
		["DefaultPort"] = DefaultPort,
		["Permanent"] = Permanent,
		["OptionGroupOptionSettings"] = OptionGroupOptionSettings,
		["OptionsConflictsWith"] = OptionsConflictsWith,
		["EngineName"] = EngineName,
		["PortRequired"] = PortRequired,
		["Name"] = Name,
	}
	M.AssertOptionGroupOption(t)
	return t
end

local DBClusterParameterGroup_keys = { "DBClusterParameterGroupName" = true, "DBParameterGroupFamily" = true, "Description" = true, "DBClusterParameterGroupArn" = true, nil }

function M.AssertDBClusterParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroup to be of type 'table'")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["DBClusterParameterGroupArn"] then M.AssertString(struct["DBClusterParameterGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterParameterGroup_keys[k], "DBClusterParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroup
-- <p>Contains the result of a successful invocation of the <a>CreateDBClusterParameterGroup</a> or <a>CopyDBClusterParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBClusterParameterGroup</a> action, and as a response element in the <a>DescribeDBClusterParameterGroups</a> action. </p>
-- @param DBClusterParameterGroupName [String] <p>Provides the name of the DB cluster parameter group.</p>
-- @param DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>
-- @param Description [String] <p>Provides the customer-specified description for this DB cluster parameter group.</p>
-- @param DBClusterParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>
function M.DBClusterParameterGroup(DBClusterParameterGroupName, DBParameterGroupFamily, Description, DBClusterParameterGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroup")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["Description"] = Description,
		["DBClusterParameterGroupArn"] = DBClusterParameterGroupArn,
	}
	M.AssertDBClusterParameterGroup(t)
	return t
end

local DBClusterQuotaExceededFault_keys = { nil }

function M.AssertDBClusterQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterQuotaExceededFault_keys[k], "DBClusterQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterQuotaExceededFault
-- <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
function M.DBClusterQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterQuotaExceededFault")
	local t = { 
	}
	M.AssertDBClusterQuotaExceededFault(t)
	return t
end

local DescribeDBEngineVersionsMessage_keys = { "Engine" = true, "DBParameterGroupFamily" = true, "ListSupportedCharacterSets" = true, "DefaultOnly" = true, "ListSupportedTimezones" = true, "MaxRecords" = true, "Filters" = true, "EngineVersion" = true, "Marker" = true, nil }

function M.AssertDescribeDBEngineVersionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBEngineVersionsMessage to be of type 'table'")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["ListSupportedCharacterSets"] then M.AssertBooleanOptional(struct["ListSupportedCharacterSets"]) end
	if struct["DefaultOnly"] then M.AssertBoolean(struct["DefaultOnly"]) end
	if struct["ListSupportedTimezones"] then M.AssertBooleanOptional(struct["ListSupportedTimezones"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBEngineVersionsMessage_keys[k], "DescribeDBEngineVersionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBEngineVersionsMessage
--  
-- @param Engine [String] <p>The database engine to return.</p>
-- @param DBParameterGroupFamily [String] <p>The name of a specific DB parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param ListSupportedCharacterSets [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
-- @param DefaultOnly [Boolean] <p>Indicates that only the default version of the specified engine or engine and major version combination is returned.</p>
-- @param ListSupportedTimezones [BooleanOptional] <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>Not currently supported.</p>
-- @param EngineVersion [String] <p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
function M.DescribeDBEngineVersionsMessage(Engine, DBParameterGroupFamily, ListSupportedCharacterSets, DefaultOnly, ListSupportedTimezones, MaxRecords, Filters, EngineVersion, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBEngineVersionsMessage")
	local t = { 
		["Engine"] = Engine,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["ListSupportedCharacterSets"] = ListSupportedCharacterSets,
		["DefaultOnly"] = DefaultOnly,
		["ListSupportedTimezones"] = ListSupportedTimezones,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["EngineVersion"] = EngineVersion,
		["Marker"] = Marker,
	}
	M.AssertDescribeDBEngineVersionsMessage(t)
	return t
end

local AddSourceIdentifierToSubscriptionResult_keys = { "EventSubscription" = true, nil }

function M.AssertAddSourceIdentifierToSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddSourceIdentifierToSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(AddSourceIdentifierToSubscriptionResult_keys[k], "AddSourceIdentifierToSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddSourceIdentifierToSubscriptionResult
--  
-- @param EventSubscription [EventSubscription]  
function M.AddSourceIdentifierToSubscriptionResult(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddSourceIdentifierToSubscriptionResult")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertAddSourceIdentifierToSubscriptionResult(t)
	return t
end

local ApplyPendingMaintenanceActionResult_keys = { "ResourcePendingMaintenanceActions" = true, nil }

function M.AssertApplyPendingMaintenanceActionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionResult to be of type 'table'")
	if struct["ResourcePendingMaintenanceActions"] then M.AssertResourcePendingMaintenanceActions(struct["ResourcePendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(ApplyPendingMaintenanceActionResult_keys[k], "ApplyPendingMaintenanceActionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionResult
--  
-- @param ResourcePendingMaintenanceActions [ResourcePendingMaintenanceActions]  
function M.ApplyPendingMaintenanceActionResult(ResourcePendingMaintenanceActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplyPendingMaintenanceActionResult")
	local t = { 
		["ResourcePendingMaintenanceActions"] = ResourcePendingMaintenanceActions,
	}
	M.AssertApplyPendingMaintenanceActionResult(t)
	return t
end

local CopyDBClusterParameterGroupResult_keys = { "DBClusterParameterGroup" = true, nil }

function M.AssertCopyDBClusterParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterParameterGroupResult to be of type 'table'")
	if struct["DBClusterParameterGroup"] then M.AssertDBClusterParameterGroup(struct["DBClusterParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBClusterParameterGroupResult_keys[k], "CopyDBClusterParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterParameterGroupResult
--  
-- @param DBClusterParameterGroup [DBClusterParameterGroup]  
function M.CopyDBClusterParameterGroupResult(DBClusterParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterParameterGroupResult")
	local t = { 
		["DBClusterParameterGroup"] = DBClusterParameterGroup,
	}
	M.AssertCopyDBClusterParameterGroupResult(t)
	return t
end

local OptionGroupOptionsMessage_keys = { "OptionGroupOptions" = true, "Marker" = true, nil }

function M.AssertOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionsMessage to be of type 'table'")
	if struct["OptionGroupOptions"] then M.AssertOptionGroupOptionsList(struct["OptionGroupOptions"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroupOptionsMessage_keys[k], "OptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionsMessage
-- <p/>
-- @param OptionGroupOptions [OptionGroupOptionsList] <p/>
-- @param Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
function M.OptionGroupOptionsMessage(OptionGroupOptions, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOptionsMessage")
	local t = { 
		["OptionGroupOptions"] = OptionGroupOptions,
		["Marker"] = Marker,
	}
	M.AssertOptionGroupOptionsMessage(t)
	return t
end

local DBClusterOptionGroupStatus_keys = { "Status" = true, "DBClusterOptionGroupName" = true, nil }

function M.AssertDBClusterOptionGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterOptionGroupStatus to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["DBClusterOptionGroupName"] then M.AssertString(struct["DBClusterOptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterOptionGroupStatus_keys[k], "DBClusterOptionGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterOptionGroupStatus
-- <p>Contains status information for a DB cluster option group.</p>
-- @param Status [String] <p>Specifies the status of the DB cluster option group.</p>
-- @param DBClusterOptionGroupName [String] <p>Specifies the name of the DB cluster option group.</p>
function M.DBClusterOptionGroupStatus(Status, DBClusterOptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterOptionGroupStatus")
	local t = { 
		["Status"] = Status,
		["DBClusterOptionGroupName"] = DBClusterOptionGroupName,
	}
	M.AssertDBClusterOptionGroupStatus(t)
	return t
end

local DBParameterGroup_keys = { "DBParameterGroupArn" = true, "DBParameterGroupName" = true, "DBParameterGroupFamily" = true, "Description" = true, nil }

function M.AssertDBParameterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroup to be of type 'table'")
	if struct["DBParameterGroupArn"] then M.AssertString(struct["DBParameterGroupArn"]) end
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(DBParameterGroup_keys[k], "DBParameterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroup
-- <p>Contains the result of a successful invocation of the <a>CreateDBParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBParameterGroup</a> action, and as a response element in the <a>DescribeDBParameterGroups</a> action. </p>
-- @param DBParameterGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB parameter group.</p>
-- @param DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
-- @param DBParameterGroupFamily [String] <p>Provides the name of the DB parameter group family that this DB parameter group is compatible with.</p>
-- @param Description [String] <p>Provides the customer-specified description for this DB parameter group.</p>
function M.DBParameterGroup(DBParameterGroupArn, DBParameterGroupName, DBParameterGroupFamily, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroup")
	local t = { 
		["DBParameterGroupArn"] = DBParameterGroupArn,
		["DBParameterGroupName"] = DBParameterGroupName,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["Description"] = Description,
	}
	M.AssertDBParameterGroup(t)
	return t
end

local StopDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertStopDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(StopDBInstanceResult_keys[k], "StopDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.StopDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertStopDBInstanceResult(t)
	return t
end

local DescribeEventCategoriesMessage_keys = { "SourceType" = true, "Filters" = true, nil }

function M.AssertDescribeEventCategoriesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventCategoriesMessage to be of type 'table'")
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventCategoriesMessage_keys[k], "DescribeEventCategoriesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventCategoriesMessage
-- <p/>
-- @param SourceType [String] <p>The type of source that will be generating the events.</p> <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeEventCategoriesMessage(SourceType, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventCategoriesMessage")
	local t = { 
		["SourceType"] = SourceType,
		["Filters"] = Filters,
	}
	M.AssertDescribeEventCategoriesMessage(t)
	return t
end

local RestoreDBClusterToPointInTimeMessage_keys = { "VpcSecurityGroupIds" = true, "DBClusterIdentifier" = true, "Tags" = true, "UseLatestRestorableTime" = true, "RestoreType" = true, "EnableIAMDatabaseAuthentication" = true, "KmsKeyId" = true, "SourceDBClusterIdentifier" = true, "DBSubnetGroupName" = true, "RestoreToTime" = true, "Port" = true, "OptionGroupName" = true, nil }

function M.AssertRestoreDBClusterToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterToPointInTimeMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SourceDBClusterIdentifier"], "Expected key SourceDBClusterIdentifier to exist in table")
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["UseLatestRestorableTime"] then M.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreType"] then M.AssertString(struct["RestoreType"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["SourceDBClusterIdentifier"] then M.AssertString(struct["SourceDBClusterIdentifier"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["RestoreToTime"] then M.AssertTStamp(struct["RestoreToTime"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterToPointInTimeMessage_keys[k], "RestoreDBClusterToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterToPointInTimeMessage
-- <p/>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster belongs to.</p>
-- @param DBClusterIdentifier [String] <p>The name of the new DB cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param Tags [TagList] <p/>
-- @param UseLatestRestorableTime [Boolean] <p>A value that is set to <code>true</code> to restore the DB cluster to the latest restorable backup time, and <code>false</code> otherwise. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is provided.</p>
-- @param RestoreType [String] <p>The type of restore to be performed. You can specify one of the following values:</p> <ul> <li> <p> <code>full-copy</code> - The new DB cluster is restored as a full copy of the source DB cluster.</p> </li> <li> <p> <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source DB cluster.</p> </li> </ul> <p>Constraints: You cannot specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p> <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored as a full copy of the source DB cluster.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster will be encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p> </li> <li> <p>If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the restore request is rejected.</p>
-- @param SourceDBClusterIdentifier [String] <p>The identifier of the source DB cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param DBSubnetGroupName [String] <p>The DB subnet group name to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param RestoreToTime [TStamp] <p>The date and time to restore the DB cluster to.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not provided</p> </li> <li> <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p> </li> <li> <p>Cannot be specified if <code>RestoreType</code> parameter is <code>copy-on-write</code> </p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>
-- @param Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param OptionGroupName [String] <p>The name of the option group for the new DB cluster.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: SourceDBClusterIdentifier
function M.RestoreDBClusterToPointInTimeMessage(VpcSecurityGroupIds, DBClusterIdentifier, Tags, UseLatestRestorableTime, RestoreType, EnableIAMDatabaseAuthentication, KmsKeyId, SourceDBClusterIdentifier, DBSubnetGroupName, RestoreToTime, Port, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterToPointInTimeMessage")
	local t = { 
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["Tags"] = Tags,
		["UseLatestRestorableTime"] = UseLatestRestorableTime,
		["RestoreType"] = RestoreType,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = KmsKeyId,
		["SourceDBClusterIdentifier"] = SourceDBClusterIdentifier,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["RestoreToTime"] = RestoreToTime,
		["Port"] = Port,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertRestoreDBClusterToPointInTimeMessage(t)
	return t
end

local CreateDBClusterSnapshotMessage_keys = { "DBClusterSnapshotIdentifier" = true, "DBClusterIdentifier" = true, "Tags" = true, nil }

function M.AssertCreateDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterSnapshotMessage_keys[k], "CreateDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterSnapshotMessage
-- <p/>
-- @param DBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1-snapshot1</code> </p>
-- @param DBClusterIdentifier [String] <p>The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>
-- @param Tags [TagList] <p>The tags to be assigned to the DB cluster snapshot.</p>
-- Required parameter: DBClusterSnapshotIdentifier
-- Required parameter: DBClusterIdentifier
function M.CreateDBClusterSnapshotMessage(DBClusterSnapshotIdentifier, DBClusterIdentifier, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterSnapshotMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["Tags"] = Tags,
	}
	M.AssertCreateDBClusterSnapshotMessage(t)
	return t
end

local RebootDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertRebootDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(RebootDBInstanceResult_keys[k], "RebootDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.RebootDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertRebootDBInstanceResult(t)
	return t
end

local PromoteReadReplicaDBClusterMessage_keys = { "DBClusterIdentifier" = true, nil }

function M.AssertPromoteReadReplicaDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PromoteReadReplicaDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(PromoteReadReplicaDBClusterMessage_keys[k], "PromoteReadReplicaDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PromoteReadReplicaDBClusterMessage
-- <p/>
-- @param DBClusterIdentifier [String] <p>The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-replica1</code> </p>
-- Required parameter: DBClusterIdentifier
function M.PromoteReadReplicaDBClusterMessage(DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PromoteReadReplicaDBClusterMessage")
	local t = { 
		["DBClusterIdentifier"] = DBClusterIdentifier,
	}
	M.AssertPromoteReadReplicaDBClusterMessage(t)
	return t
end

local CopyDBParameterGroupResult_keys = { "DBParameterGroup" = true, nil }

function M.AssertCopyDBParameterGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupResult to be of type 'table'")
	if struct["DBParameterGroup"] then M.AssertDBParameterGroup(struct["DBParameterGroup"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBParameterGroupResult_keys[k], "CopyDBParameterGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupResult
--  
-- @param DBParameterGroup [DBParameterGroup]  
function M.CopyDBParameterGroupResult(DBParameterGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBParameterGroupResult")
	local t = { 
		["DBParameterGroup"] = DBParameterGroup,
	}
	M.AssertCopyDBParameterGroupResult(t)
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
-- <p>SNS has responded that there is a problem with the SND topic specified.</p>
function M.SNSInvalidTopicFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSInvalidTopicFault")
	local t = { 
	}
	M.AssertSNSInvalidTopicFault(t)
	return t
end

local RemoveSourceIdentifierFromSubscriptionResult_keys = { "EventSubscription" = true, nil }

function M.AssertRemoveSourceIdentifierFromSubscriptionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveSourceIdentifierFromSubscriptionResult to be of type 'table'")
	if struct["EventSubscription"] then M.AssertEventSubscription(struct["EventSubscription"]) end
	for k,_ in pairs(struct) do
		assert(RemoveSourceIdentifierFromSubscriptionResult_keys[k], "RemoveSourceIdentifierFromSubscriptionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveSourceIdentifierFromSubscriptionResult
--  
-- @param EventSubscription [EventSubscription]  
function M.RemoveSourceIdentifierFromSubscriptionResult(EventSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveSourceIdentifierFromSubscriptionResult")
	local t = { 
		["EventSubscription"] = EventSubscription,
	}
	M.AssertRemoveSourceIdentifierFromSubscriptionResult(t)
	return t
end

local DeleteDBClusterResult_keys = { "DBCluster" = true, nil }

function M.AssertDeleteDBClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBClusterResult to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBClusterResult_keys[k], "DeleteDBClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBClusterResult
--  
-- @param DBCluster [DBCluster]  
function M.DeleteDBClusterResult(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBClusterResult")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertDeleteDBClusterResult(t)
	return t
end

local CopyDBClusterSnapshotMessage_keys = { "CopyTags" = true, "SourceRegion" = true, "Tags" = true, "SourceDBClusterSnapshotIdentifier" = true, "PreSignedUrl" = true, "KmsKeyId" = true, "TargetDBClusterSnapshotIdentifier" = true, nil }

function M.AssertCopyDBClusterSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotMessage to be of type 'table'")
	assert(struct["SourceDBClusterSnapshotIdentifier"], "Expected key SourceDBClusterSnapshotIdentifier to exist in table")
	assert(struct["TargetDBClusterSnapshotIdentifier"], "Expected key TargetDBClusterSnapshotIdentifier to exist in table")
	if struct["CopyTags"] then M.AssertBooleanOptional(struct["CopyTags"]) end
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["SourceDBClusterSnapshotIdentifier"] then M.AssertString(struct["SourceDBClusterSnapshotIdentifier"]) end
	if struct["PreSignedUrl"] then M.AssertString(struct["PreSignedUrl"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["TargetDBClusterSnapshotIdentifier"] then M.AssertString(struct["TargetDBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBClusterSnapshotMessage_keys[k], "CopyDBClusterSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotMessage
-- <p/>
-- @param CopyTags [BooleanOptional] <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot; otherwise false. The default is false.</p>
-- @param SourceRegion [String] <p>The ID of the region that contains the snapshot to be copied.</p>
-- @param Tags [TagList] <p/>
-- @param SourceDBClusterSnapshotIdentifier [String] <p>The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.</p> <p>You cannot copy an encrypted, shared DB cluster snapshot from one AWS region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Must specify a valid system snapshot in the "available" state.</p> </li> <li> <p>If the source snapshot is in the same region as the copy, specify a valid DB snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different region than the copy, specify a valid DB cluster snapshot ARN. For more information, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html"> Copying a DB Snapshot or DB Cluster Snapshot</a>.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>
-- @param PreSignedUrl [String] <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS region that contains the source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS region.</p> <p>The pre-signed URL must be a valid request for the <code>CopyDBSClusterSnapshot</code> API action that can be executed in the source region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>
-- @param KmsKeyId [String] <p>The AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, Amazon RDS encrypts the target DB cluster snapshot using the specified KMS encryption key. </p> <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. </p> <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted DB cluster snapshot to another region, you must set <code>KmsKeyId</code> to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination region. KMS encryption keys are specific to the region that they are created in, and you cannot use encryption keys from one region in another region.</p>
-- @param TargetDBClusterSnapshotIdentifier [String] <p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>
-- Required parameter: SourceDBClusterSnapshotIdentifier
-- Required parameter: TargetDBClusterSnapshotIdentifier
function M.CopyDBClusterSnapshotMessage(CopyTags, SourceRegion, Tags, SourceDBClusterSnapshotIdentifier, PreSignedUrl, KmsKeyId, TargetDBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterSnapshotMessage")
	local t = { 
		["CopyTags"] = CopyTags,
		["SourceRegion"] = SourceRegion,
		["Tags"] = Tags,
		["SourceDBClusterSnapshotIdentifier"] = SourceDBClusterSnapshotIdentifier,
		["PreSignedUrl"] = PreSignedUrl,
		["KmsKeyId"] = KmsKeyId,
		["TargetDBClusterSnapshotIdentifier"] = TargetDBClusterSnapshotIdentifier,
	}
	M.AssertCopyDBClusterSnapshotMessage(t)
	return t
end

local DescribeEngineDefaultClusterParametersResult_keys = { "EngineDefaults" = true, nil }

function M.AssertDescribeEngineDefaultClusterParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersResult to be of type 'table'")
	if struct["EngineDefaults"] then M.AssertEngineDefaults(struct["EngineDefaults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEngineDefaultClusterParametersResult_keys[k], "DescribeEngineDefaultClusterParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersResult
--  
-- @param EngineDefaults [EngineDefaults]  
function M.DescribeEngineDefaultClusterParametersResult(EngineDefaults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultClusterParametersResult")
	local t = { 
		["EngineDefaults"] = EngineDefaults,
	}
	M.AssertDescribeEngineDefaultClusterParametersResult(t)
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
-- <p>The subscription name does not exist.</p>
function M.SubscriptionNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionNotFoundFault")
	local t = { 
	}
	M.AssertSubscriptionNotFoundFault(t)
	return t
end

local DescribeReservedDBInstancesOfferingsMessage_keys = { "MultiAZ" = true, "OfferingType" = true, "ProductDescription" = true, "ReservedDBInstancesOfferingId" = true, "Marker" = true, "MaxRecords" = true, "Filters" = true, "Duration" = true, "DBInstanceClass" = true, nil }

function M.AssertDescribeReservedDBInstancesOfferingsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservedDBInstancesOfferingsMessage to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["ReservedDBInstancesOfferingId"] then M.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["Duration"] then M.AssertString(struct["Duration"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReservedDBInstancesOfferingsMessage_keys[k], "DescribeReservedDBInstancesOfferingsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservedDBInstancesOfferingsMessage
-- <p/>
-- @param MultiAZ [BooleanOptional] <p>The Multi-AZ filter value. Specify this parameter to show only the available offerings matching the specified Multi-AZ parameter.</p>
-- @param OfferingType [String] <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code> </p>
-- @param ProductDescription [String] <p>Product description filter value. Specify this parameter to show only the available offerings matching the specified product description.</p>
-- @param ReservedDBInstancesOfferingId [String] <p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so that the following results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param Duration [String] <p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>
-- @param DBInstanceClass [String] <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
function M.DescribeReservedDBInstancesOfferingsMessage(MultiAZ, OfferingType, ProductDescription, ReservedDBInstancesOfferingId, Marker, MaxRecords, Filters, Duration, DBInstanceClass, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReservedDBInstancesOfferingsMessage")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["OfferingType"] = OfferingType,
		["ProductDescription"] = ProductDescription,
		["ReservedDBInstancesOfferingId"] = ReservedDBInstancesOfferingId,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["Duration"] = Duration,
		["DBInstanceClass"] = DBInstanceClass,
	}
	M.AssertDescribeReservedDBInstancesOfferingsMessage(t)
	return t
end

local DeleteOptionGroupMessage_keys = { "OptionGroupName" = true, nil }

function M.AssertDeleteOptionGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOptionGroupMessage to be of type 'table'")
	assert(struct["OptionGroupName"], "Expected key OptionGroupName to exist in table")
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteOptionGroupMessage_keys[k], "DeleteOptionGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOptionGroupMessage
-- <p/>
-- @param OptionGroupName [String] <p>The name of the option group to be deleted.</p> <note> <p>You cannot delete default option groups.</p> </note>
-- Required parameter: OptionGroupName
function M.DeleteOptionGroupMessage(OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOptionGroupMessage")
	local t = { 
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertDeleteOptionGroupMessage(t)
	return t
end

local DescribePendingMaintenanceActionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "ResourceIdentifier" = true, nil }

function M.AssertDescribePendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["ResourceIdentifier"] then M.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribePendingMaintenanceActionsMessage_keys[k], "DescribePendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePendingMaintenanceActionsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>
-- @param ResourceIdentifier [String] <p>The ARN of a resource to return pending maintenance actions for.</p>
function M.DescribePendingMaintenanceActionsMessage(Marker, MaxRecords, Filters, ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePendingMaintenanceActionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["ResourceIdentifier"] = ResourceIdentifier,
	}
	M.AssertDescribePendingMaintenanceActionsMessage(t)
	return t
end

local InvalidDBParameterGroupStateFault_keys = { nil }

function M.AssertInvalidDBParameterGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBParameterGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBParameterGroupStateFault_keys[k], "InvalidDBParameterGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBParameterGroupStateFault
-- <p>The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you cannot delete it when the parameter group is in this state.</p>
function M.InvalidDBParameterGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBParameterGroupStateFault")
	local t = { 
	}
	M.AssertInvalidDBParameterGroupStateFault(t)
	return t
end

local DescribeOptionGroupsMessage_keys = { "MajorEngineVersion" = true, "MaxRecords" = true, "Filters" = true, "Marker" = true, "EngineName" = true, "OptionGroupName" = true, nil }

function M.AssertDescribeOptionGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupsMessage to be of type 'table'")
	if struct["MajorEngineVersion"] then M.AssertString(struct["MajorEngineVersion"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOptionGroupsMessage_keys[k], "DescribeOptionGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupsMessage
-- <p/>
-- @param MajorEngineVersion [String] <p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param EngineName [String] <p>Filters the list of option groups to only include groups associated with a specific database engine.</p>
-- @param OptionGroupName [String] <p>The name of the option group to describe. Cannot be supplied together with EngineName or MajorEngineVersion.</p>
function M.DescribeOptionGroupsMessage(MajorEngineVersion, MaxRecords, Filters, Marker, EngineName, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOptionGroupsMessage")
	local t = { 
		["MajorEngineVersion"] = MajorEngineVersion,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["Marker"] = Marker,
		["EngineName"] = EngineName,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertDescribeOptionGroupsMessage(t)
	return t
end

local DBSnapshotNotFoundFault_keys = { nil }

function M.AssertDBSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSnapshotNotFoundFault_keys[k], "DBSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotNotFoundFault
-- <p> <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot. </p>
function M.DBSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotNotFoundFault")
	local t = { 
	}
	M.AssertDBSnapshotNotFoundFault(t)
	return t
end

local DBClusterParameterGroupDetails_keys = { "Marker" = true, "Parameters" = true, nil }

function M.AssertDBClusterParameterGroupDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupDetails to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterParameterGroupDetails_keys[k], "DBClusterParameterGroupDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupDetails
-- <p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param Parameters [ParametersList] <p>Provides a list of parameters for the DB cluster parameter group.</p>
function M.DBClusterParameterGroupDetails(Marker, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupDetails")
	local t = { 
		["Marker"] = Marker,
		["Parameters"] = Parameters,
	}
	M.AssertDBClusterParameterGroupDetails(t)
	return t
end

local CreateDBSubnetGroupMessage_keys = { "DBSubnetGroupName" = true, "DBSubnetGroupDescription" = true, "SubnetIds" = true, "Tags" = true, nil }

function M.AssertCreateDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["DBSubnetGroupDescription"], "Expected key DBSubnetGroupDescription to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then M.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBSubnetGroupMessage_keys[k], "CreateDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBSubnetGroupMessage
-- <p/>
-- @param DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- @param SubnetIds [SubnetIdentifierList] <p>The EC2 Subnet IDs for the DB subnet group.</p>
-- @param Tags [TagList] <p/>
-- Required parameter: DBSubnetGroupName
-- Required parameter: DBSubnetGroupDescription
-- Required parameter: SubnetIds
function M.CreateDBSubnetGroupMessage(DBSubnetGroupName, DBSubnetGroupDescription, SubnetIds, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["DBSubnetGroupDescription"] = DBSubnetGroupDescription,
		["SubnetIds"] = SubnetIds,
		["Tags"] = Tags,
	}
	M.AssertCreateDBSubnetGroupMessage(t)
	return t
end

local DBSubnetGroupMessage_keys = { "Marker" = true, "DBSubnetGroups" = true, nil }

function M.AssertDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSubnetGroupMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroups"] then M.AssertDBSubnetGroups(struct["DBSubnetGroups"]) end
	for k,_ in pairs(struct) do
		assert(DBSubnetGroupMessage_keys[k], "DBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSubnetGroupMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBSubnetGroups [DBSubnetGroups] <p> A list of <a>DBSubnetGroup</a> instances. </p>
function M.DBSubnetGroupMessage(Marker, DBSubnetGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSubnetGroupMessage")
	local t = { 
		["Marker"] = Marker,
		["DBSubnetGroups"] = DBSubnetGroups,
	}
	M.AssertDBSubnetGroupMessage(t)
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
-- <p>This data type is used as a response element for queries on VPC security group membership.</p>
-- @param Status [String] <p>The status of the VPC security group.</p>
-- @param VpcSecurityGroupId [String] <p>The name of the VPC security group.</p>
function M.VpcSecurityGroupMembership(Status, VpcSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VpcSecurityGroupMembership")
	local t = { 
		["Status"] = Status,
		["VpcSecurityGroupId"] = VpcSecurityGroupId,
	}
	M.AssertVpcSecurityGroupMembership(t)
	return t
end

local RestoreDBClusterFromSnapshotMessage_keys = { "Engine" = true, "DBClusterIdentifier" = true, "Tags" = true, "VpcSecurityGroupIds" = true, "EnableIAMDatabaseAuthentication" = true, "KmsKeyId" = true, "DatabaseName" = true, "EngineVersion" = true, "DBSubnetGroupName" = true, "AvailabilityZones" = true, "Port" = true, "OptionGroupName" = true, "SnapshotIdentifier" = true, nil }

function M.AssertRestoreDBClusterFromSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromSnapshotMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["SnapshotIdentifier"], "Expected key SnapshotIdentifier to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["DatabaseName"] then M.AssertString(struct["DatabaseName"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["AvailabilityZones"] then M.AssertAvailabilityZones(struct["AvailabilityZones"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotIdentifier"] then M.AssertString(struct["SnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterFromSnapshotMessage_keys[k], "RestoreDBClusterFromSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromSnapshotMessage
-- <p/>
-- @param Engine [String] <p>The database engine to use for the new DB cluster.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p>
-- @param DBClusterIdentifier [String] <p>The name of the DB cluster to create from the DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>
-- @param Tags [TagList] <p>The tags to be assigned to the restored DB cluster.</p>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the new DB cluster will belong to.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param KmsKeyId [String] <p>The KMS key identifier to use when restoring an encrypted DB cluster from a DB cluster snapshot.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following will occur:</p> <ul> <li> <p>If the DB cluster snapshot is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB cluster snapshot.</p> </li> <li> <p>If the DB cluster snapshot is not encrypted, then the restored DB cluster is encrypted using the specified encryption key.</p> </li> </ul>
-- @param DatabaseName [String] <p>The database name for the restored DB cluster.</p>
-- @param EngineVersion [String] <p>The version of the database engine to use for the new DB cluster.</p>
-- @param DBSubnetGroupName [String] <p>The name of the DB subnet group to use for the new DB cluster.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param AvailabilityZones [AvailabilityZones] <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>
-- @param Port [IntegerOptional] <p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param OptionGroupName [String] <p>The name of the option group to use for the restored DB cluster.</p>
-- @param SnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBClusterIdentifier
-- Required parameter: SnapshotIdentifier
-- Required parameter: Engine
function M.RestoreDBClusterFromSnapshotMessage(Engine, DBClusterIdentifier, Tags, VpcSecurityGroupIds, EnableIAMDatabaseAuthentication, KmsKeyId, DatabaseName, EngineVersion, DBSubnetGroupName, AvailabilityZones, Port, OptionGroupName, SnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromSnapshotMessage")
	local t = { 
		["Engine"] = Engine,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["Tags"] = Tags,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["KmsKeyId"] = KmsKeyId,
		["DatabaseName"] = DatabaseName,
		["EngineVersion"] = EngineVersion,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["AvailabilityZones"] = AvailabilityZones,
		["Port"] = Port,
		["OptionGroupName"] = OptionGroupName,
		["SnapshotIdentifier"] = SnapshotIdentifier,
	}
	M.AssertRestoreDBClusterFromSnapshotMessage(t)
	return t
end

local RevokeDBSecurityGroupIngressMessage_keys = { "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "CIDRIP" = true, "EC2SecurityGroupId" = true, "DBSecurityGroupName" = true, nil }

function M.AssertRevokeDBSecurityGroupIngressMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	if struct["EC2SecurityGroupId"] then M.AssertString(struct["EC2SecurityGroupId"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(RevokeDBSecurityGroupIngressMessage_keys[k], "RevokeDBSecurityGroupIngressMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressMessage
-- <p/>
-- @param EC2SecurityGroupName [String] <p> The name of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param EC2SecurityGroupOwnerId [String] <p> The AWS Account Number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS Access Key ID is not an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param CIDRIP [String] <p> The IP range to revoke access from. Must be a valid CIDR range. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code> cannot be provided. </p>
-- @param EC2SecurityGroupId [String] <p> The id of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>
-- @param DBSecurityGroupName [String] <p>The name of the DB security group to revoke ingress from.</p>
-- Required parameter: DBSecurityGroupName
function M.RevokeDBSecurityGroupIngressMessage(EC2SecurityGroupName, EC2SecurityGroupOwnerId, CIDRIP, EC2SecurityGroupId, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeDBSecurityGroupIngressMessage")
	local t = { 
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["CIDRIP"] = CIDRIP,
		["EC2SecurityGroupId"] = EC2SecurityGroupId,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertRevokeDBSecurityGroupIngressMessage(t)
	return t
end

local InstanceQuotaExceededFault_keys = { nil }

function M.AssertInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InstanceQuotaExceededFault_keys[k], "InstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB instances.</p>
function M.InstanceQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceQuotaExceededFault")
	local t = { 
	}
	M.AssertInstanceQuotaExceededFault(t)
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
-- <p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param EventSubscriptionsList [EventSubscriptionsList] <p>A list of EventSubscriptions data types.</p>
function M.EventSubscriptionsMessage(Marker, EventSubscriptionsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["EventSubscriptionsList"] = EventSubscriptionsList,
	}
	M.AssertEventSubscriptionsMessage(t)
	return t
end

local ReservedDBInstancesOfferingNotFoundFault_keys = { nil }

function M.AssertReservedDBInstancesOfferingNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedDBInstancesOfferingNotFoundFault_keys[k], "ReservedDBInstancesOfferingNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingNotFoundFault
-- <p>Specified offering does not exist.</p>
function M.ReservedDBInstancesOfferingNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOfferingNotFoundFault")
	local t = { 
	}
	M.AssertReservedDBInstancesOfferingNotFoundFault(t)
	return t
end

local KMSKeyNotAccessibleFault_keys = { nil }

function M.AssertKMSKeyNotAccessibleFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSKeyNotAccessibleFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(KMSKeyNotAccessibleFault_keys[k], "KMSKeyNotAccessibleFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSKeyNotAccessibleFault
-- <p>Error accessing KMS key.</p>
function M.KMSKeyNotAccessibleFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSKeyNotAccessibleFault")
	local t = { 
	}
	M.AssertKMSKeyNotAccessibleFault(t)
	return t
end

local DBSecurityGroupNotFoundFault_keys = { nil }

function M.AssertDBSecurityGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBSecurityGroupNotFoundFault_keys[k], "DBSecurityGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroupNotFoundFault
-- <p> <i>DBSecurityGroupName</i> does not refer to an existing DB security group. </p>
function M.DBSecurityGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroupNotFoundFault")
	local t = { 
	}
	M.AssertDBSecurityGroupNotFoundFault(t)
	return t
end

local ModifyDBClusterMessage_keys = { "DBClusterParameterGroupName" = true, "EnableIAMDatabaseAuthentication" = true, "DBClusterIdentifier" = true, "PreferredMaintenanceWindow" = true, "NewDBClusterIdentifier" = true, "VpcSecurityGroupIds" = true, "ApplyImmediately" = true, "PreferredBackupWindow" = true, "MasterUserPassword" = true, "BackupRetentionPeriod" = true, "Port" = true, "OptionGroupName" = true, nil }

function M.AssertModifyDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["NewDBClusterIdentifier"] then M.AssertString(struct["NewDBClusterIdentifier"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBClusterMessage_keys[k], "ModifyDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>A Boolean value that is true to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.</p> <p>Default: <code>false</code> </p>
-- @param DBClusterIdentifier [String] <p>The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB cluster.</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>
-- @param PreferredMaintenanceWindow [String] <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param NewDBClusterIdentifier [String] <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of VPC security groups that the DB cluster will belong to.</p>
-- @param ApplyImmediately [Boolean] <p>A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set to <code>false</code>, changes to the DB cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter only affects the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: <code>false</code> </p>
-- @param PreferredBackupWindow [String] <p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param MasterUserPassword [String] <p>The new password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>
-- @param Port [IntegerOptional] <p>The port number on which the DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>
-- @param OptionGroupName [String] <p>A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case, and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options cannot be removed from an option group. The option group cannot be removed from a DB cluster once it is associated with a DB cluster.</p>
-- Required parameter: DBClusterIdentifier
function M.ModifyDBClusterMessage(DBClusterParameterGroupName, EnableIAMDatabaseAuthentication, DBClusterIdentifier, PreferredMaintenanceWindow, NewDBClusterIdentifier, VpcSecurityGroupIds, ApplyImmediately, PreferredBackupWindow, MasterUserPassword, BackupRetentionPeriod, Port, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["NewDBClusterIdentifier"] = NewDBClusterIdentifier,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["ApplyImmediately"] = ApplyImmediately,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["MasterUserPassword"] = MasterUserPassword,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["Port"] = Port,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertModifyDBClusterMessage(t)
	return t
end

local ModifyDBClusterSnapshotAttributeResult_keys = { "DBClusterSnapshotAttributesResult" = true, nil }

function M.AssertModifyDBClusterSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBClusterSnapshotAttributeResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributesResult"] then M.AssertDBClusterSnapshotAttributesResult(struct["DBClusterSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBClusterSnapshotAttributeResult_keys[k], "ModifyDBClusterSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBClusterSnapshotAttributeResult
--  
-- @param DBClusterSnapshotAttributesResult [DBClusterSnapshotAttributesResult]  
function M.ModifyDBClusterSnapshotAttributeResult(DBClusterSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBClusterSnapshotAttributeResult")
	local t = { 
		["DBClusterSnapshotAttributesResult"] = DBClusterSnapshotAttributesResult,
	}
	M.AssertModifyDBClusterSnapshotAttributeResult(t)
	return t
end

local ApplyPendingMaintenanceActionMessage_keys = { "ApplyAction" = true, "OptInType" = true, "ResourceIdentifier" = true, nil }

function M.AssertApplyPendingMaintenanceActionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplyPendingMaintenanceActionMessage to be of type 'table'")
	assert(struct["ResourceIdentifier"], "Expected key ResourceIdentifier to exist in table")
	assert(struct["ApplyAction"], "Expected key ApplyAction to exist in table")
	assert(struct["OptInType"], "Expected key OptInType to exist in table")
	if struct["ApplyAction"] then M.AssertString(struct["ApplyAction"]) end
	if struct["OptInType"] then M.AssertString(struct["OptInType"]) end
	if struct["ResourceIdentifier"] then M.AssertString(struct["ResourceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ApplyPendingMaintenanceActionMessage_keys[k], "ApplyPendingMaintenanceActionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplyPendingMaintenanceActionMessage
-- <p/>
-- @param ApplyAction [String] <p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code> </p>
-- @param OptInType [String] <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>immediate</code> cannot be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>
-- @param ResourceIdentifier [String] <p>The RDS Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- Required parameter: ResourceIdentifier
-- Required parameter: ApplyAction
-- Required parameter: OptInType
function M.ApplyPendingMaintenanceActionMessage(ApplyAction, OptInType, ResourceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplyPendingMaintenanceActionMessage")
	local t = { 
		["ApplyAction"] = ApplyAction,
		["OptInType"] = OptInType,
		["ResourceIdentifier"] = ResourceIdentifier,
	}
	M.AssertApplyPendingMaintenanceActionMessage(t)
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
-- <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p> <p>RDS may not also be authorized via IAM to perform necessary actions on your behalf.</p>
function M.AuthorizationNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationNotFoundFault")
	local t = { 
	}
	M.AssertAuthorizationNotFoundFault(t)
	return t
end

local CreateDBParameterGroupMessage_keys = { "DBParameterGroupName" = true, "DBParameterGroupFamily" = true, "Description" = true, "Tags" = true, nil }

function M.AssertCreateDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBParameterGroupMessage_keys[k], "CreateDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBParameterGroupMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @param DBParameterGroupFamily [String] <p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
-- @param Description [String] <p>The description for the DB parameter group.</p>
-- @param Tags [TagList] <p/>
-- Required parameter: DBParameterGroupName
-- Required parameter: DBParameterGroupFamily
-- Required parameter: Description
function M.CreateDBParameterGroupMessage(DBParameterGroupName, DBParameterGroupFamily, Description, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["Description"] = Description,
		["Tags"] = Tags,
	}
	M.AssertCreateDBParameterGroupMessage(t)
	return t
end

local PendingModifiedValues_keys = { "MultiAZ" = true, "StorageType" = true, "CACertificateIdentifier" = true, "LicenseModel" = true, "MasterUserPassword" = true, "Port" = true, "Iops" = true, "AllocatedStorage" = true, "EngineVersion" = true, "DBInstanceClass" = true, "DBSubnetGroupName" = true, "BackupRetentionPeriod" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertPendingModifiedValues(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingModifiedValues to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then M.AssertString(struct["CACertificateIdentifier"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(PendingModifiedValues_keys[k], "PendingModifiedValues contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingModifiedValues
-- <p> This data type is used as a response element in the <a>ModifyDBInstance</a> action. </p>
-- @param MultiAZ [BooleanOptional] <p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>
-- @param StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p>
-- @param CACertificateIdentifier [String] <p>Specifies the identifier of the CA certificate for the DB instance.</p>
-- @param LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param MasterUserPassword [String] <p>Contains the pending or in-progress change of the master credentials for the DB instance.</p>
-- @param Port [IntegerOptional] <p>Specifies the pending port for the DB instance.</p>
-- @param Iops [IntegerOptional] <p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is being applied.</p>
-- @param AllocatedStorage [IntegerOptional] <p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be applied or is in progress. </p>
-- @param EngineVersion [String] <p>Indicates the database engine version.</p>
-- @param DBInstanceClass [String] <p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or is in progress. </p>
-- @param DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. </p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>Specifies the pending number of days for which automated backups are retained.</p>
-- @param DBInstanceIdentifier [String] <p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be applied or is in progress. </p>
function M.PendingModifiedValues(MultiAZ, StorageType, CACertificateIdentifier, LicenseModel, MasterUserPassword, Port, Iops, AllocatedStorage, EngineVersion, DBInstanceClass, DBSubnetGroupName, BackupRetentionPeriod, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingModifiedValues")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["StorageType"] = StorageType,
		["CACertificateIdentifier"] = CACertificateIdentifier,
		["LicenseModel"] = LicenseModel,
		["MasterUserPassword"] = MasterUserPassword,
		["Port"] = Port,
		["Iops"] = Iops,
		["AllocatedStorage"] = AllocatedStorage,
		["EngineVersion"] = EngineVersion,
		["DBInstanceClass"] = DBInstanceClass,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertPendingModifiedValues(t)
	return t
end

local DescribeDBParameterGroupsMessage_keys = { "Marker" = true, "DBParameterGroupName" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBParameterGroupsMessage_keys[k], "DescribeDBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBParameterGroupsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBParameterGroupName [String] <p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBParameterGroupsMessage(Marker, DBParameterGroupName, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroupName"] = DBParameterGroupName,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeDBParameterGroupsMessage(t)
	return t
end

local CreateDBInstanceMessage_keys = { "DBParameterGroupName" = true, "PubliclyAccessible" = true, "DomainIAMRoleName" = true, "MasterUsername" = true, "MonitoringInterval" = true, "LicenseModel" = true, "VpcSecurityGroupIds" = true, "EnableIAMDatabaseAuthentication" = true, "CopyTagsToSnapshot" = true, "Engine" = true, "MultiAZ" = true, "DBSecurityGroups" = true, "Tags" = true, "AutoMinorVersionUpgrade" = true, "PreferredBackupWindow" = true, "PromotionTier" = true, "TdeCredentialArn" = true, "AllocatedStorage" = true, "DBSubnetGroupName" = true, "DBName" = true, "PreferredMaintenanceWindow" = true, "TdeCredentialPassword" = true, "Domain" = true, "EngineVersion" = true, "BackupRetentionPeriod" = true, "OptionGroupName" = true, "CharacterSetName" = true, "AvailabilityZone" = true, "MonitoringRoleArn" = true, "DBClusterIdentifier" = true, "StorageType" = true, "MasterUserPassword" = true, "Iops" = true, "StorageEncrypted" = true, "KmsKeyId" = true, "Timezone" = true, "DBInstanceClass" = true, "Port" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertCreateDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["DBInstanceClass"], "Expected key DBInstanceClass to exist in table")
	assert(struct["Engine"], "Expected key Engine to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then M.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["MonitoringInterval"] then M.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then M.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then M.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then M.AssertString(struct["TdeCredentialPassword"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["CharacterSetName"] then M.AssertString(struct["CharacterSetName"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["MonitoringRoleArn"] then M.AssertString(struct["MonitoringRoleArn"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["StorageEncrypted"] then M.AssertBooleanOptional(struct["StorageEncrypted"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["Timezone"] then M.AssertString(struct["Timezone"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBInstanceMessage_keys[k], "CreateDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBInstanceMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine will be used.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b> true</p> </li> <li> <p> <b>VPC:</b> false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param MasterUsername [String] <p>The name for the master database user.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the name for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 128 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>MySQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Oracle</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 30 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 63 alphanumeric characters.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>
-- @param MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param LicenseModel [String] <p>License model information for this DB instance.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to associate with this DB instance.</p> <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false. </p> <p> You can enable IAM database authentication for the following database engines:</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param Engine [String] <p>The name of the database engine to be used for this instance. </p> <p>Not every database engine is available for every AWS region. </p> <p>Valid Values: </p> <ul> <li> <p> <code>aurora</code> </p> </li> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>
-- @param MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment. You cannot set the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p>
-- @param DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>
-- @param Tags [TagList] <p/>
-- @param AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window.</p> <p>Default: <code>true</code> </p>
-- @param PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html">DB Instance Backups</a>. </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow"> Adjusting the Preferred DB Instance Maintenance Window</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Times should be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>
-- @param PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- @param TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param AllocatedStorage [IntegerOptional] <p>The amount of storage (in gigabytes) to be initially allocated for the database instance.</p> <p>Type: Integer</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>MariaDB</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must be an integer from 5 to 6144.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must be an integer from 10 to 6144.</p> <p> <b>SQL Server</b> </p> <p>Constraints: Must be an integer from 200 to 4096 (Standard Edition and Enterprise Edition) or from 20 to 4096 (Express Edition and Web Edition)</p>
-- @param DBSubnetGroupName [String] <p>A DB subnet group to associate with this DB instance.</p> <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
-- @param DBName [String] <p>The meaning of this parameter differs according to the database engine you use.</p> <p>Type: String</p> <p> <b>MySQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>MariaDB</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter is not specified, the default "postgres" database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 63 alphanumeric characters</p> </li> <li> <p>Must begin with a letter or an underscore. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul> <p> <b>Oracle</b> </p> <p>The Oracle System ID (SID) of the created DB instance. If you specify <code>null</code>, the default value <code>ORCL</code> is used. You can't specify the string NULL, or any other reserved word, for <code>DBName</code>. </p> <p>Default: <code>ORCL</code> </p> <p>Constraints:</p> <ul> <li> <p>Cannot be longer than 8 characters</p> </li> </ul> <p> <b>SQL Server</b> </p> <p>Not applicable. Must be null.</p> <p> <b>Amazon Aurora</b> </p> <p>The name of the database to create when the primary instance of the DB cluster is created. If this parameter is not specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 alphanumeric characters</p> </li> <li> <p>Cannot be a word reserved by the specified database engine</p> </li> </ul>
-- @param PreferredMaintenanceWindow [String] <p> The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBMaintenance.html">DB Instance Maintenance</a>. </p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p> Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. To see the time blocks available, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>
-- @param TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param Domain [String] <p>Specify the Active Directory Domain to create the instance in.</p>
-- @param EngineVersion [String] <p>The version number of the database engine to use.</p> <p>The following are the database engines and major and minor versions that are available with Amazon RDS. Not every database engine is available for every AWS region.</p> <p> <b>Amazon Aurora</b> </p> <ul> <li> <p>Version 5.6 (available in these AWS regions: ap-northeast-1, ap-northeast-2, ap-south-1, ap-southeast-2, eu-west-1, us-east-1, us-east-2, us-west-2): <code> 5.6.10a</code> </p> </li> </ul> <p> <b>MariaDB</b> </p> <ul> <li> <p> <code>10.1.19</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.1.14</code> (supported in all regions except us-east-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>10.0.28</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.24</code> (supported in all AWS regions)</p> </li> <li> <p> <code>10.0.17</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2016</b> </p> <ul> <li> <p> <code>13.00.4422.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>13.00.2164.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> </ul> <p> <b>Microsoft SQL Server 2014</b> </p> <ul> <li> <p> <code>12.00.5546.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.5000.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>12.00.4422.0.v1</code> (supported for all editions except Enterprise Edition, and all AWS regions except ca-central-1 and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2012</b> </p> <ul> <li> <p> <code>11.00.6594.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.6020.0.v1</code> (supported for all editions, and all AWS regions)</p> </li> <li> <p> <code>11.00.5058.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>11.00.2100.60.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>Microsoft SQL Server 2008 R2</b> </p> <ul> <li> <p> <code>10.50.6529.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.6000.34.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> <li> <p> <code>10.50.2789.0.v1</code> (supported for all editions, and all AWS regions except us-east-2, ca-central-1, and eu-west-2)</p> </li> </ul> <p> <b>MySQL</b> </p> <ul> <li> <p> <code>5.7.17</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.16</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.11</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.7.10</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.6.35</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.34</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.29</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.6.27</code> (supported in all regions except us-east-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.23</code> (supported in all regions except us-east-2, ap-south-1, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.22</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.21</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19b</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> <li> <p> <code>5.6.19a</code> (supported in all regions except us-east-2, ap-south-1, ap-northeast-2, ca-central-1, eu-west-2)</p> </li> </ul> <p/> <ul> <li> <p> <code>5.5.54</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.53</code> (supported in all AWS regions)</p> </li> <li> <p> <code>5.5.46</code> (supported in all AWS regions)</p> </li> </ul> <p> <b>Oracle 12c</b> </p> <ul> <li> <p> <code>12.1.0.2.v8</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v7</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v6</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v5</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v4</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v3</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v2</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> <li> <p> <code>12.1.0.2.v1</code> (supported for EE in all AWS regions, and SE2 in all AWS regions except us-gov-west-1)</p> </li> </ul> <p> <b>Oracle 11g</b> </p> <ul> <li> <p> <code>11.2.0.4.v12</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v11</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v10</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v9</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v8</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v7</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v6</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v5</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v4</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v3</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> <li> <p> <code>11.2.0.4.v1</code> (supported for EE, SE1, and SE, in all AWS regions)</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <ul> <li> <p> <b>Version 9.6.x:</b> <code> 9.6.1 | 9.6.2</code> </p> </li> <li> <p> <b>Version 9.5.x:</b> <code>9.5.6 | 9.5.4 | 9.5.2</code> </p> </li> <li> <p> <b>Version 9.4.x:</b> <code>9.4.11 | 9.4.9 | 9.4.7</code> </p> </li> <li> <p> <b>Version 9.3.x:</b> <code>9.3.16 | 9.3.14 | 9.3.12</code> </p> </li> </ul>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- @param OptionGroupName [String] <p>Indicates that the DB instance should be associated with the specified option group.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param CharacterSetName [String] <p>For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.</p>
-- @param AvailabilityZone [String] <p> The EC2 Availability Zone that the database instance will be created in. For information on regions and Availability Zones, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a>. </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The AvailabilityZone parameter cannot be specified if the MultiAZ parameter is set to <code>true</code>. The specified Availability Zone must be in the same region as the current endpoint. </p>
-- @param MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param DBClusterIdentifier [String] <p>The identifier of the DB cluster that the instance will belong to.</p> <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p> <p>Type: String</p>
-- @param StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param MasterUserPassword [String] <p>The password for the master database user. Can be any printable ASCII character except "/", """, or "@".</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You specify the password for the master database user when you create your DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must contain from 8 to 30 characters.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p>
-- @param Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be a multiple between 3 and 10 of the storage amount for the DB instance. Must also be an integer multiple of 1000. For example, if the size of your DB instance is 500 GB, then your <code>Iops</code> value can be 2000, 3000, 4000, or 5000. </p>
-- @param StorageEncrypted [BooleanOptional] <p>Specifies whether the DB instance is encrypted.</p> <p>Default: false</p>
-- @param KmsKeyId [String] <p>The KMS key identifier for an encrypted DB instance.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.</p>
-- @param Timezone [String] <p>The time zone of the DB instance. The time zone parameter is currently supported only by <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone">Microsoft SQL Server</a>. </p>
-- @param DBInstanceClass [String] <p>The compute and memory capacity of the DB instance. Note that not all instance classes are available in all regions for all DB engines.</p> <p> Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens (1 to 15 for SQL Server).</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: DBInstanceClass
-- Required parameter: Engine
function M.CreateDBInstanceMessage(DBParameterGroupName, PubliclyAccessible, DomainIAMRoleName, MasterUsername, MonitoringInterval, LicenseModel, VpcSecurityGroupIds, EnableIAMDatabaseAuthentication, CopyTagsToSnapshot, Engine, MultiAZ, DBSecurityGroups, Tags, AutoMinorVersionUpgrade, PreferredBackupWindow, PromotionTier, TdeCredentialArn, AllocatedStorage, DBSubnetGroupName, DBName, PreferredMaintenanceWindow, TdeCredentialPassword, Domain, EngineVersion, BackupRetentionPeriod, OptionGroupName, CharacterSetName, AvailabilityZone, MonitoringRoleArn, DBClusterIdentifier, StorageType, MasterUserPassword, Iops, StorageEncrypted, KmsKeyId, Timezone, DBInstanceClass, Port, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBInstanceMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["PubliclyAccessible"] = PubliclyAccessible,
		["DomainIAMRoleName"] = DomainIAMRoleName,
		["MasterUsername"] = MasterUsername,
		["MonitoringInterval"] = MonitoringInterval,
		["LicenseModel"] = LicenseModel,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["Engine"] = Engine,
		["MultiAZ"] = MultiAZ,
		["DBSecurityGroups"] = DBSecurityGroups,
		["Tags"] = Tags,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["PromotionTier"] = PromotionTier,
		["TdeCredentialArn"] = TdeCredentialArn,
		["AllocatedStorage"] = AllocatedStorage,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["DBName"] = DBName,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["TdeCredentialPassword"] = TdeCredentialPassword,
		["Domain"] = Domain,
		["EngineVersion"] = EngineVersion,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["OptionGroupName"] = OptionGroupName,
		["CharacterSetName"] = CharacterSetName,
		["AvailabilityZone"] = AvailabilityZone,
		["MonitoringRoleArn"] = MonitoringRoleArn,
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["StorageType"] = StorageType,
		["MasterUserPassword"] = MasterUserPassword,
		["Iops"] = Iops,
		["StorageEncrypted"] = StorageEncrypted,
		["KmsKeyId"] = KmsKeyId,
		["Timezone"] = Timezone,
		["DBInstanceClass"] = DBInstanceClass,
		["Port"] = Port,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertCreateDBInstanceMessage(t)
	return t
end

local CertificateMessage_keys = { "Certificates" = true, "Marker" = true, nil }

function M.AssertCertificateMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateMessage to be of type 'table'")
	if struct["Certificates"] then M.AssertCertificateList(struct["Certificates"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(CertificateMessage_keys[k], "CertificateMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateMessage
-- <p>Data returned by the <b>DescribeCertificates</b> action.</p>
-- @param Certificates [CertificateList] <p>The list of <a>Certificate</a> objects for the AWS account.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous <a>DescribeCertificates</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
function M.CertificateMessage(Certificates, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateMessage")
	local t = { 
		["Certificates"] = Certificates,
		["Marker"] = Marker,
	}
	M.AssertCertificateMessage(t)
	return t
end

local OptionGroup_keys = { "VpcId" = true, "MajorEngineVersion" = true, "OptionGroupDescription" = true, "Options" = true, "OptionGroupArn" = true, "EngineName" = true, "AllowsVpcAndNonVpcInstanceMemberships" = true, "OptionGroupName" = true, nil }

function M.AssertOptionGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroup to be of type 'table'")
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["MajorEngineVersion"] then M.AssertString(struct["MajorEngineVersion"]) end
	if struct["OptionGroupDescription"] then M.AssertString(struct["OptionGroupDescription"]) end
	if struct["Options"] then M.AssertOptionsList(struct["Options"]) end
	if struct["OptionGroupArn"] then M.AssertString(struct["OptionGroupArn"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["AllowsVpcAndNonVpcInstanceMemberships"] then M.AssertBoolean(struct["AllowsVpcAndNonVpcInstanceMemberships"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroup_keys[k], "OptionGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroup
-- <p/>
-- @param VpcId [String] <p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank. If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank, then this option group can be applied to both VPC and non-VPC instances. If this field contains a value, then this option group can only be applied to instances that are in the VPC indicated by this field. </p>
-- @param MajorEngineVersion [String] <p>Indicates the major engine version associated with this option group.</p>
-- @param OptionGroupDescription [String] <p>Provides a description of the option group.</p>
-- @param Options [OptionsList] <p>Indicates what options are available in the option group.</p>
-- @param OptionGroupArn [String] <p>The Amazon Resource Name (ARN) for the option group.</p>
-- @param EngineName [String] <p>Indicates the name of the engine that this option group can be applied to.</p>
-- @param AllowsVpcAndNonVpcInstanceMemberships [Boolean] <p>Indicates whether this option group can be applied to both VPC and non-VPC instances. The value <code>true</code> indicates the option group can be applied to both VPC and non-VPC instances. </p>
-- @param OptionGroupName [String] <p>Specifies the name of the option group.</p>
function M.OptionGroup(VpcId, MajorEngineVersion, OptionGroupDescription, Options, OptionGroupArn, EngineName, AllowsVpcAndNonVpcInstanceMemberships, OptionGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroup")
	local t = { 
		["VpcId"] = VpcId,
		["MajorEngineVersion"] = MajorEngineVersion,
		["OptionGroupDescription"] = OptionGroupDescription,
		["Options"] = Options,
		["OptionGroupArn"] = OptionGroupArn,
		["EngineName"] = EngineName,
		["AllowsVpcAndNonVpcInstanceMemberships"] = AllowsVpcAndNonVpcInstanceMemberships,
		["OptionGroupName"] = OptionGroupName,
	}
	M.AssertOptionGroup(t)
	return t
end

local InvalidDBSubnetGroupStateFault_keys = { nil }

function M.AssertInvalidDBSubnetGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSubnetGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBSubnetGroupStateFault_keys[k], "InvalidDBSubnetGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSubnetGroupStateFault
-- <p>The DB subnet group cannot be deleted because it is in use.</p>
function M.InvalidDBSubnetGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSubnetGroupStateFault")
	local t = { 
	}
	M.AssertInvalidDBSubnetGroupStateFault(t)
	return t
end

local AuthorizeDBSecurityGroupIngressResult_keys = { "DBSecurityGroup" = true, nil }

function M.AssertAuthorizeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then M.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizeDBSecurityGroupIngressResult_keys[k], "AuthorizeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeDBSecurityGroupIngressResult
--  
-- @param DBSecurityGroup [DBSecurityGroup]  
function M.AuthorizeDBSecurityGroupIngressResult(DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizeDBSecurityGroupIngressResult")
	local t = { 
		["DBSecurityGroup"] = DBSecurityGroup,
	}
	M.AssertAuthorizeDBSecurityGroupIngressResult(t)
	return t
end

local ProvisionedIopsNotAvailableInAZFault_keys = { nil }

function M.AssertProvisionedIopsNotAvailableInAZFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProvisionedIopsNotAvailableInAZFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ProvisionedIopsNotAvailableInAZFault_keys[k], "ProvisionedIopsNotAvailableInAZFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProvisionedIopsNotAvailableInAZFault
-- <p>Provisioned IOPS not available in the specified Availability Zone.</p>
function M.ProvisionedIopsNotAvailableInAZFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ProvisionedIopsNotAvailableInAZFault")
	local t = { 
	}
	M.AssertProvisionedIopsNotAvailableInAZFault(t)
	return t
end

local DescribeEngineDefaultParametersMessage_keys = { "Marker" = true, "DBParameterGroupFamily" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeEngineDefaultParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEngineDefaultParametersMessage_keys[k], "DescribeEngineDefaultParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultParametersMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBParameterGroupFamily [String] <p>The name of the DB parameter group family.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>Not currently supported.</p>
-- Required parameter: DBParameterGroupFamily
function M.DescribeEngineDefaultParametersMessage(Marker, DBParameterGroupFamily, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeEngineDefaultParametersMessage(t)
	return t
end

local InvalidDBSecurityGroupStateFault_keys = { nil }

function M.AssertInvalidDBSecurityGroupStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDBSecurityGroupStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidDBSecurityGroupStateFault_keys[k], "InvalidDBSecurityGroupStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDBSecurityGroupStateFault
-- <p>The state of the DB security group does not allow deletion.</p>
function M.InvalidDBSecurityGroupStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDBSecurityGroupStateFault")
	local t = { 
	}
	M.AssertInvalidDBSecurityGroupStateFault(t)
	return t
end

local OptionGroupAlreadyExistsFault_keys = { nil }

function M.AssertOptionGroupAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OptionGroupAlreadyExistsFault_keys[k], "OptionGroupAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupAlreadyExistsFault
-- <p>The option group you are trying to create already exists.</p>
function M.OptionGroupAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupAlreadyExistsFault")
	local t = { 
	}
	M.AssertOptionGroupAlreadyExistsFault(t)
	return t
end

local InsufficientDBClusterCapacityFault_keys = { nil }

function M.AssertInsufficientDBClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientDBClusterCapacityFault_keys[k], "InsufficientDBClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBClusterCapacityFault
-- <p>The DB cluster does not have enough capacity for the current operation.</p>
function M.InsufficientDBClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDBClusterCapacityFault")
	local t = { 
	}
	M.AssertInsufficientDBClusterCapacityFault(t)
	return t
end

local DescribeDBLogFilesResponse_keys = { "DescribeDBLogFiles" = true, "Marker" = true, nil }

function M.AssertDescribeDBLogFilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesResponse to be of type 'table'")
	if struct["DescribeDBLogFiles"] then M.AssertDescribeDBLogFilesList(struct["DescribeDBLogFiles"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBLogFilesResponse_keys[k], "DescribeDBLogFilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesResponse
-- <p> The response from a call to <a>DescribeDBLogFiles</a>. </p>
-- @param DescribeDBLogFiles [DescribeDBLogFilesList] <p>The DB log files returned.</p>
-- @param Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBLogFiles request.</p>
function M.DescribeDBLogFilesResponse(DescribeDBLogFiles, Marker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesResponse")
	local t = { 
		["DescribeDBLogFiles"] = DescribeDBLogFiles,
		["Marker"] = Marker,
	}
	M.AssertDescribeDBLogFilesResponse(t)
	return t
end

local SharedSnapshotQuotaExceededFault_keys = { nil }

function M.AssertSharedSnapshotQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SharedSnapshotQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SharedSnapshotQuotaExceededFault_keys[k], "SharedSnapshotQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SharedSnapshotQuotaExceededFault
-- <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
function M.SharedSnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SharedSnapshotQuotaExceededFault")
	local t = { 
	}
	M.AssertSharedSnapshotQuotaExceededFault(t)
	return t
end

local CopyOptionGroupResult_keys = { "OptionGroup" = true, nil }

function M.AssertCopyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then M.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(CopyOptionGroupResult_keys[k], "CopyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyOptionGroupResult
--  
-- @param OptionGroup [OptionGroup]  
function M.CopyOptionGroupResult(OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyOptionGroupResult")
	local t = { 
		["OptionGroup"] = OptionGroup,
	}
	M.AssertCopyOptionGroupResult(t)
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

local RemoveRoleFromDBClusterMessage_keys = { "RoleArn" = true, "DBClusterIdentifier" = true, nil }

function M.AssertRemoveRoleFromDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveRoleFromDBClusterMessage to be of type 'table'")
	assert(struct["DBClusterIdentifier"], "Expected key DBClusterIdentifier to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["RoleArn"] then M.AssertString(struct["RoleArn"]) end
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RemoveRoleFromDBClusterMessage_keys[k], "RemoveRoleFromDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveRoleFromDBClusterMessage
--  
-- @param RoleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
-- @param DBClusterIdentifier [String] <p>The name of the DB cluster to disassociate the IAM role from.</p>
-- Required parameter: DBClusterIdentifier
-- Required parameter: RoleArn
function M.RemoveRoleFromDBClusterMessage(RoleArn, DBClusterIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveRoleFromDBClusterMessage")
	local t = { 
		["RoleArn"] = RoleArn,
		["DBClusterIdentifier"] = DBClusterIdentifier,
	}
	M.AssertRemoveRoleFromDBClusterMessage(t)
	return t
end

local DBSecurityGroup_keys = { "VpcId" = true, "DBSecurityGroupDescription" = true, "IPRanges" = true, "OwnerId" = true, "DBSecurityGroupArn" = true, "EC2SecurityGroups" = true, "DBSecurityGroupName" = true, nil }

function M.AssertDBSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSecurityGroup to be of type 'table'")
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["DBSecurityGroupDescription"] then M.AssertString(struct["DBSecurityGroupDescription"]) end
	if struct["IPRanges"] then M.AssertIPRangeList(struct["IPRanges"]) end
	if struct["OwnerId"] then M.AssertString(struct["OwnerId"]) end
	if struct["DBSecurityGroupArn"] then M.AssertString(struct["DBSecurityGroupArn"]) end
	if struct["EC2SecurityGroups"] then M.AssertEC2SecurityGroupList(struct["EC2SecurityGroups"]) end
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBSecurityGroup_keys[k], "DBSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSecurityGroup
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>CreateDBSecurityGroup</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action.</p>
-- @param VpcId [String] <p>Provides the VpcId of the DB security group.</p>
-- @param DBSecurityGroupDescription [String] <p>Provides the description of the DB security group.</p>
-- @param IPRanges [IPRangeList] <p> Contains a list of <a>IPRange</a> elements. </p>
-- @param OwnerId [String] <p>Provides the AWS ID of the owner of a specific DB security group.</p>
-- @param DBSecurityGroupArn [String] <p>The Amazon Resource Name (ARN) for the DB security group.</p>
-- @param EC2SecurityGroups [EC2SecurityGroupList] <p> Contains a list of <a>EC2SecurityGroup</a> elements. </p>
-- @param DBSecurityGroupName [String] <p>Specifies the name of the DB security group.</p>
function M.DBSecurityGroup(VpcId, DBSecurityGroupDescription, IPRanges, OwnerId, DBSecurityGroupArn, EC2SecurityGroups, DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSecurityGroup")
	local t = { 
		["VpcId"] = VpcId,
		["DBSecurityGroupDescription"] = DBSecurityGroupDescription,
		["IPRanges"] = IPRanges,
		["OwnerId"] = OwnerId,
		["DBSecurityGroupArn"] = DBSecurityGroupArn,
		["EC2SecurityGroups"] = EC2SecurityGroups,
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertDBSecurityGroup(t)
	return t
end

local EC2SecurityGroup_keys = { "Status" = true, "EC2SecurityGroupName" = true, "EC2SecurityGroupOwnerId" = true, "EC2SecurityGroupId" = true, nil }

function M.AssertEC2SecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EC2SecurityGroup to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["EC2SecurityGroupName"] then M.AssertString(struct["EC2SecurityGroupName"]) end
	if struct["EC2SecurityGroupOwnerId"] then M.AssertString(struct["EC2SecurityGroupOwnerId"]) end
	if struct["EC2SecurityGroupId"] then M.AssertString(struct["EC2SecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(EC2SecurityGroup_keys[k], "EC2SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EC2SecurityGroup
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul>
-- @param Status [String] <p>Provides the status of the EC2 security group. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- @param EC2SecurityGroupName [String] <p>Specifies the name of the EC2 security group.</p>
-- @param EC2SecurityGroupOwnerId [String] <p> Specifies the AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>
-- @param EC2SecurityGroupId [String] <p>Specifies the id of the EC2 security group.</p>
function M.EC2SecurityGroup(Status, EC2SecurityGroupName, EC2SecurityGroupOwnerId, EC2SecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EC2SecurityGroup")
	local t = { 
		["Status"] = Status,
		["EC2SecurityGroupName"] = EC2SecurityGroupName,
		["EC2SecurityGroupOwnerId"] = EC2SecurityGroupOwnerId,
		["EC2SecurityGroupId"] = EC2SecurityGroupId,
	}
	M.AssertEC2SecurityGroup(t)
	return t
end

local DescribeOptionGroupOptionsMessage_keys = { "Marker" = true, "EngineName" = true, "MaxRecords" = true, "MajorEngineVersion" = true, "Filters" = true, nil }

function M.AssertDescribeOptionGroupOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOptionGroupOptionsMessage to be of type 'table'")
	assert(struct["EngineName"], "Expected key EngineName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["EngineName"] then M.AssertString(struct["EngineName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["MajorEngineVersion"] then M.AssertString(struct["MajorEngineVersion"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeOptionGroupOptionsMessage_keys[k], "DescribeOptionGroupOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOptionGroupOptionsMessage
-- <p/>
-- @param Marker [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @param EngineName [String] <p>A required parameter. Options available for the given engine name will be described.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param MajorEngineVersion [String] <p>If specified, filters the results to include only options for the specified major engine version.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: EngineName
function M.DescribeOptionGroupOptionsMessage(Marker, EngineName, MaxRecords, MajorEngineVersion, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOptionGroupOptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["EngineName"] = EngineName,
		["MaxRecords"] = MaxRecords,
		["MajorEngineVersion"] = MajorEngineVersion,
		["Filters"] = Filters,
	}
	M.AssertDescribeOptionGroupOptionsMessage(t)
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
-- <p>The specified CIDRIP or EC2 security group is already authorized for the specified DB security group.</p>
function M.AuthorizationAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationAlreadyExistsFault")
	local t = { 
	}
	M.AssertAuthorizationAlreadyExistsFault(t)
	return t
end

local DBParameterGroupsMessage_keys = { "Marker" = true, "DBParameterGroups" = true, nil }

function M.AssertDBParameterGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroups"] then M.AssertDBParameterGroupList(struct["DBParameterGroups"]) end
	for k,_ in pairs(struct) do
		assert(DBParameterGroupsMessage_keys[k], "DBParameterGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBParameterGroups</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBParameterGroups [DBParameterGroupList] <p> A list of <a>DBParameterGroup</a> instances. </p>
function M.DBParameterGroupsMessage(Marker, DBParameterGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroups"] = DBParameterGroups,
	}
	M.AssertDBParameterGroupsMessage(t)
	return t
end

local OptionGroupNotFoundFault_keys = { nil }

function M.AssertOptionGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OptionGroupNotFoundFault_keys[k], "OptionGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupNotFoundFault
-- <p>The specified option group could not be found.</p>
function M.OptionGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupNotFoundFault")
	local t = { 
	}
	M.AssertOptionGroupNotFoundFault(t)
	return t
end

local DBSnapshot_keys = { "MasterUsername" = true, "LicenseModel" = true, "InstanceCreateTime" = true, "Engine" = true, "VpcId" = true, "SourceRegion" = true, "AllocatedStorage" = true, "Status" = true, "PercentProgress" = true, "SourceDBSnapshotIdentifier" = true, "DBSnapshotIdentifier" = true, "DBSnapshotArn" = true, "EngineVersion" = true, "TdeCredentialArn" = true, "OptionGroupName" = true, "SnapshotCreateTime" = true, "AvailabilityZone" = true, "StorageType" = true, "Encrypted" = true, "IAMDatabaseAuthenticationEnabled" = true, "Iops" = true, "KmsKeyId" = true, "SnapshotType" = true, "Timezone" = true, "Port" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDBSnapshot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshot to be of type 'table'")
	if struct["MasterUsername"] then M.AssertString(struct["MasterUsername"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["InstanceCreateTime"] then M.AssertTStamp(struct["InstanceCreateTime"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["VpcId"] then M.AssertString(struct["VpcId"]) end
	if struct["SourceRegion"] then M.AssertString(struct["SourceRegion"]) end
	if struct["AllocatedStorage"] then M.AssertInteger(struct["AllocatedStorage"]) end
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["PercentProgress"] then M.AssertInteger(struct["PercentProgress"]) end
	if struct["SourceDBSnapshotIdentifier"] then M.AssertString(struct["SourceDBSnapshotIdentifier"]) end
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotArn"] then M.AssertString(struct["DBSnapshotArn"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["SnapshotCreateTime"] then M.AssertTStamp(struct["SnapshotCreateTime"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["Encrypted"] then M.AssertBoolean(struct["Encrypted"]) end
	if struct["IAMDatabaseAuthenticationEnabled"] then M.AssertBoolean(struct["IAMDatabaseAuthenticationEnabled"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["SnapshotType"] then M.AssertString(struct["SnapshotType"]) end
	if struct["Timezone"] then M.AssertString(struct["Timezone"]) end
	if struct["Port"] then M.AssertInteger(struct["Port"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DBSnapshot_keys[k], "DBSnapshot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshot
-- <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSnapshot</a> </p> </li> <li> <p> <a>DeleteDBSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSnapshots</a> action.</p>
-- @param MasterUsername [String] <p>Provides the master username for the DB snapshot.</p>
-- @param LicenseModel [String] <p>License model information for the restored DB instance.</p>
-- @param InstanceCreateTime [TStamp] <p>Specifies the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param Engine [String] <p>Specifies the name of the database engine.</p>
-- @param VpcId [String] <p>Provides the VPC ID associated with the DB snapshot.</p>
-- @param SourceRegion [String] <p>The region that the DB snapshot was created in or copied from.</p>
-- @param AllocatedStorage [Integer] <p>Specifies the allocated storage size in gigabytes (GB).</p>
-- @param Status [String] <p>Specifies the status of this DB snapshot.</p>
-- @param PercentProgress [Integer] <p>The percentage of the estimated data that has been transferred.</p>
-- @param SourceDBSnapshotIdentifier [String] <p>The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.</p>
-- @param DBSnapshotIdentifier [String] <p>Specifies the identifier for the DB snapshot.</p>
-- @param DBSnapshotArn [String] <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
-- @param EngineVersion [String] <p>Specifies the version of the database engine.</p>
-- @param TdeCredentialArn [String] <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
-- @param OptionGroupName [String] <p>Provides the option group name for the DB snapshot.</p>
-- @param SnapshotCreateTime [TStamp] <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
-- @param AvailabilityZone [String] <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
-- @param StorageType [String] <p>Specifies the storage type associated with DB snapshot.</p>
-- @param Encrypted [Boolean] <p>Specifies whether the DB snapshot is encrypted.</p>
-- @param IAMDatabaseAuthenticationEnabled [Boolean] <p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled; otherwise false.</p>
-- @param Iops [IntegerOptional] <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
-- @param KmsKeyId [String] <p> If <code>Encrypted</code> is true, the KMS key identifier for the encrypted DB snapshot. </p>
-- @param SnapshotType [String] <p>Provides the type of the DB snapshot.</p>
-- @param Timezone [String] <p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified. </p>
-- @param Port [Integer] <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
-- @param DBInstanceIdentifier [String] <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
function M.DBSnapshot(MasterUsername, LicenseModel, InstanceCreateTime, Engine, VpcId, SourceRegion, AllocatedStorage, Status, PercentProgress, SourceDBSnapshotIdentifier, DBSnapshotIdentifier, DBSnapshotArn, EngineVersion, TdeCredentialArn, OptionGroupName, SnapshotCreateTime, AvailabilityZone, StorageType, Encrypted, IAMDatabaseAuthenticationEnabled, Iops, KmsKeyId, SnapshotType, Timezone, Port, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshot")
	local t = { 
		["MasterUsername"] = MasterUsername,
		["LicenseModel"] = LicenseModel,
		["InstanceCreateTime"] = InstanceCreateTime,
		["Engine"] = Engine,
		["VpcId"] = VpcId,
		["SourceRegion"] = SourceRegion,
		["AllocatedStorage"] = AllocatedStorage,
		["Status"] = Status,
		["PercentProgress"] = PercentProgress,
		["SourceDBSnapshotIdentifier"] = SourceDBSnapshotIdentifier,
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["DBSnapshotArn"] = DBSnapshotArn,
		["EngineVersion"] = EngineVersion,
		["TdeCredentialArn"] = TdeCredentialArn,
		["OptionGroupName"] = OptionGroupName,
		["SnapshotCreateTime"] = SnapshotCreateTime,
		["AvailabilityZone"] = AvailabilityZone,
		["StorageType"] = StorageType,
		["Encrypted"] = Encrypted,
		["IAMDatabaseAuthenticationEnabled"] = IAMDatabaseAuthenticationEnabled,
		["Iops"] = Iops,
		["KmsKeyId"] = KmsKeyId,
		["SnapshotType"] = SnapshotType,
		["Timezone"] = Timezone,
		["Port"] = Port,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDBSnapshot(t)
	return t
end

local DBClusterRoleQuotaExceededFault_keys = { nil }

function M.AssertDBClusterRoleQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterRoleQuotaExceededFault_keys[k], "DBClusterRoleQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleQuotaExceededFault
-- <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
function M.DBClusterRoleQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleQuotaExceededFault")
	local t = { 
	}
	M.AssertDBClusterRoleQuotaExceededFault(t)
	return t
end

local InsufficientStorageClusterCapacityFault_keys = { nil }

function M.AssertInsufficientStorageClusterCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientStorageClusterCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientStorageClusterCapacityFault_keys[k], "InsufficientStorageClusterCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientStorageClusterCapacityFault
-- <p>There is insufficient storage available for the current action. You may be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.</p>
function M.InsufficientStorageClusterCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientStorageClusterCapacityFault")
	local t = { 
	}
	M.AssertInsufficientStorageClusterCapacityFault(t)
	return t
end

local DescribeEngineDefaultClusterParametersMessage_keys = { "Marker" = true, "DBParameterGroupFamily" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeEngineDefaultClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEngineDefaultClusterParametersMessage to be of type 'table'")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEngineDefaultClusterParametersMessage_keys[k], "DescribeEngineDefaultClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEngineDefaultClusterParametersMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBParameterGroupFamily [String] <p>The name of the DB cluster parameter group family to return engine parameter information for.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: DBParameterGroupFamily
function M.DescribeEngineDefaultClusterParametersMessage(Marker, DBParameterGroupFamily, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEngineDefaultClusterParametersMessage")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeEngineDefaultClusterParametersMessage(t)
	return t
end

local ModifyDBSnapshotMessage_keys = { "DBSnapshotIdentifier" = true, "EngineVersion" = true, nil }

function M.AssertModifyDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSnapshotMessage_keys[k], "ModifyDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotMessage
--  
-- @param DBSnapshotIdentifier [String] <p>The identifier of the DB snapshot to modify.</p>
-- @param EngineVersion [String] <p>The engine version to update the DB snapshot to. </p>
-- Required parameter: DBSnapshotIdentifier
function M.ModifyDBSnapshotMessage(DBSnapshotIdentifier, EngineVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["EngineVersion"] = EngineVersion,
	}
	M.AssertModifyDBSnapshotMessage(t)
	return t
end

local InsufficientDBInstanceCapacityFault_keys = { nil }

function M.AssertInsufficientDBInstanceCapacityFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientDBInstanceCapacityFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientDBInstanceCapacityFault_keys[k], "InsufficientDBInstanceCapacityFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientDBInstanceCapacityFault
-- <p>Specified DB instance class is not available in the specified Availability Zone.</p>
function M.InsufficientDBInstanceCapacityFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientDBInstanceCapacityFault")
	local t = { 
	}
	M.AssertInsufficientDBInstanceCapacityFault(t)
	return t
end

local CreateDBClusterParameterGroupMessage_keys = { "DBClusterParameterGroupName" = true, "DBParameterGroupFamily" = true, "Description" = true, "Tags" = true, nil }

function M.AssertCreateDBClusterParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDBClusterParameterGroupMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	assert(struct["DBParameterGroupFamily"], "Expected key DBParameterGroupFamily to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Description"] then M.AssertString(struct["Description"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateDBClusterParameterGroupMessage_keys[k], "CreateDBClusterParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDBClusterParameterGroupMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>
-- @param DBParameterGroupFamily [String] <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
-- @param Description [String] <p>The description for the DB cluster parameter group.</p>
-- @param Tags [TagList] <p/>
-- Required parameter: DBClusterParameterGroupName
-- Required parameter: DBParameterGroupFamily
-- Required parameter: Description
function M.CreateDBClusterParameterGroupMessage(DBClusterParameterGroupName, DBParameterGroupFamily, Description, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDBClusterParameterGroupMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["Description"] = Description,
		["Tags"] = Tags,
	}
	M.AssertCreateDBClusterParameterGroupMessage(t)
	return t
end

local DBClusterMessage_keys = { "Marker" = true, "DBClusters" = true, nil }

function M.AssertDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBClusters"] then M.AssertDBClusterList(struct["DBClusters"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterMessage_keys[k], "DBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeDBClusters</a> action.</p>
-- @param Marker [String] <p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>
-- @param DBClusters [DBClusterList] <p>Contains a list of DB clusters for the user.</p>
function M.DBClusterMessage(Marker, DBClusters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterMessage")
	local t = { 
		["Marker"] = Marker,
		["DBClusters"] = DBClusters,
	}
	M.AssertDBClusterMessage(t)
	return t
end

local EventCategoriesMap_keys = { "EventCategories" = true, "SourceType" = true, nil }

function M.AssertEventCategoriesMap(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventCategoriesMap to be of type 'table'")
	if struct["EventCategories"] then M.AssertEventCategoriesList(struct["EventCategories"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(EventCategoriesMap_keys[k], "EventCategoriesMap contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventCategoriesMap
-- <p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>
-- @param EventCategories [EventCategoriesList] <p>The event categories for the specified source type</p>
-- @param SourceType [String] <p>The source type that the returned categories belong to</p>
function M.EventCategoriesMap(EventCategories, SourceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventCategoriesMap")
	local t = { 
		["EventCategories"] = EventCategories,
		["SourceType"] = SourceType,
	}
	M.AssertEventCategoriesMap(t)
	return t
end

local OrderableDBInstanceOptionsMessage_keys = { "Marker" = true, "OrderableDBInstanceOptions" = true, nil }

function M.AssertOrderableDBInstanceOptionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrderableDBInstanceOptionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["OrderableDBInstanceOptions"] then M.AssertOrderableDBInstanceOptionsList(struct["OrderableDBInstanceOptions"]) end
	for k,_ in pairs(struct) do
		assert(OrderableDBInstanceOptionsMessage_keys[k], "OrderableDBInstanceOptionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrderableDBInstanceOptionsMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param OrderableDBInstanceOptions [OrderableDBInstanceOptionsList] <p>An <a>OrderableDBInstanceOption</a> structure containing information about orderable options for the DB instance.</p>
function M.OrderableDBInstanceOptionsMessage(Marker, OrderableDBInstanceOptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrderableDBInstanceOptionsMessage")
	local t = { 
		["Marker"] = Marker,
		["OrderableDBInstanceOptions"] = OrderableDBInstanceOptions,
	}
	M.AssertOrderableDBInstanceOptionsMessage(t)
	return t
end

local DescribeDBSnapshotAttributesResult_keys = { "DBSnapshotAttributesResult" = true, nil }

function M.AssertDescribeDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then M.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBSnapshotAttributesResult_keys[k], "DescribeDBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSnapshotAttributesResult
--  
-- @param DBSnapshotAttributesResult [DBSnapshotAttributesResult]  
function M.DescribeDBSnapshotAttributesResult(DBSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSnapshotAttributesResult")
	local t = { 
		["DBSnapshotAttributesResult"] = DBSnapshotAttributesResult,
	}
	M.AssertDescribeDBSnapshotAttributesResult(t)
	return t
end

local AccountQuota_keys = { "Max" = true, "AccountQuotaName" = true, "Used" = true, nil }

function M.AssertAccountQuota(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountQuota to be of type 'table'")
	if struct["Max"] then M.AssertLong(struct["Max"]) end
	if struct["AccountQuotaName"] then M.AssertString(struct["AccountQuotaName"]) end
	if struct["Used"] then M.AssertLong(struct["Used"]) end
	for k,_ in pairs(struct) do
		assert(AccountQuota_keys[k], "AccountQuota contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountQuota
-- <p>Describes a quota for an AWS account, for example, the number of DB instances allowed.</p>
-- @param Max [Long] <p>The maximum allowed value for the quota.</p>
-- @param AccountQuotaName [String] <p>The name of the Amazon RDS quota for this AWS account.</p>
-- @param Used [Long] <p>The amount currently used toward the quota maximum.</p>
function M.AccountQuota(Max, AccountQuotaName, Used, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountQuota")
	local t = { 
		["Max"] = Max,
		["AccountQuotaName"] = AccountQuotaName,
		["Used"] = Used,
	}
	M.AssertAccountQuota(t)
	return t
end

local DescribeDBClusterParametersMessage_keys = { "DBClusterParameterGroupName" = true, "Source" = true, "MaxRecords" = true, "Marker" = true, "Filters" = true, nil }

function M.AssertDescribeDBClusterParametersMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterParametersMessage to be of type 'table'")
	assert(struct["DBClusterParameterGroupName"], "Expected key DBClusterParameterGroupName to exist in table")
	if struct["DBClusterParameterGroupName"] then M.AssertString(struct["DBClusterParameterGroupName"]) end
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClusterParametersMessage_keys[k], "DescribeDBClusterParametersMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterParametersMessage
-- <p/>
-- @param DBClusterParameterGroupName [String] <p>The name of a specific DB cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param Source [String] <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- Required parameter: DBClusterParameterGroupName
function M.DescribeDBClusterParametersMessage(DBClusterParameterGroupName, Source, MaxRecords, Marker, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterParametersMessage")
	local t = { 
		["DBClusterParameterGroupName"] = DBClusterParameterGroupName,
		["Source"] = Source,
		["MaxRecords"] = MaxRecords,
		["Marker"] = Marker,
		["Filters"] = Filters,
	}
	M.AssertDescribeDBClusterParametersMessage(t)
	return t
end

local ModifyDBSubnetGroupMessage_keys = { "DBSubnetGroupName" = true, "DBSubnetGroupDescription" = true, "SubnetIds" = true, nil }

function M.AssertModifyDBSubnetGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSubnetGroupMessage to be of type 'table'")
	assert(struct["DBSubnetGroupName"], "Expected key DBSubnetGroupName to exist in table")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBSubnetGroupDescription"] then M.AssertString(struct["DBSubnetGroupDescription"]) end
	if struct["SubnetIds"] then M.AssertSubnetIdentifierList(struct["SubnetIds"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSubnetGroupMessage_keys[k], "ModifyDBSubnetGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSubnetGroupMessage
-- <p/>
-- @param DBSubnetGroupName [String] <p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param DBSubnetGroupDescription [String] <p>The description for the DB subnet group.</p>
-- @param SubnetIds [SubnetIdentifierList] <p>The EC2 subnet IDs for the DB subnet group.</p>
-- Required parameter: DBSubnetGroupName
-- Required parameter: SubnetIds
function M.ModifyDBSubnetGroupMessage(DBSubnetGroupName, DBSubnetGroupDescription, SubnetIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSubnetGroupMessage")
	local t = { 
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["DBSubnetGroupDescription"] = DBSubnetGroupDescription,
		["SubnetIds"] = SubnetIds,
	}
	M.AssertModifyDBSubnetGroupMessage(t)
	return t
end

local DownloadDBLogFilePortionMessage_keys = { "Marker" = true, "NumberOfLines" = true, "LogFileName" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDownloadDBLogFilePortionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DownloadDBLogFilePortionMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	assert(struct["LogFileName"], "Expected key LogFileName to exist in table")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["NumberOfLines"] then M.AssertInteger(struct["NumberOfLines"]) end
	if struct["LogFileName"] then M.AssertString(struct["LogFileName"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DownloadDBLogFilePortionMessage_keys[k], "DownloadDBLogFilePortionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DownloadDBLogFilePortionMessage
-- <p/>
-- @param Marker [String] <p>The pagination token provided in the previous request or "0". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>
-- @param NumberOfLines [Integer] <p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file will be truncated at 1 MB in size.</p> <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning or the end of the log file, depending on the value of the Marker parameter.</p> <ul> <li> <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a maximum of 10000 lines, starting with the most recent log entries first.</p> </li> <li> <p>If NumberOfLines is specified and Marker is not specified, then the most recent lines from the end of the log file are returned.</p> </li> <li> <p>If Marker is specified as "0", then the specified number of lines from the beginning of the log file are returned.</p> </li> <li> <p>You can download the log file in blocks of lines by specifying the size of the block using the NumberOfLines parameter, and by specifying a value of "0" for the Marker parameter in your first request. Include the Marker value returned in the response as the Marker value for the next request, continuing until the AdditionalDataPending response element returns false.</p> </li> </ul>
-- @param LogFileName [String] <p>The name of the log file to be downloaded.</p>
-- @param DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
-- Required parameter: LogFileName
function M.DownloadDBLogFilePortionMessage(Marker, NumberOfLines, LogFileName, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DownloadDBLogFilePortionMessage")
	local t = { 
		["Marker"] = Marker,
		["NumberOfLines"] = NumberOfLines,
		["LogFileName"] = LogFileName,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDownloadDBLogFilePortionMessage(t)
	return t
end

local ModifyDBSnapshotAttributeResult_keys = { "DBSnapshotAttributesResult" = true, nil }

function M.AssertModifyDBSnapshotAttributeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBSnapshotAttributeResult to be of type 'table'")
	if struct["DBSnapshotAttributesResult"] then M.AssertDBSnapshotAttributesResult(struct["DBSnapshotAttributesResult"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBSnapshotAttributeResult_keys[k], "ModifyDBSnapshotAttributeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBSnapshotAttributeResult
--  
-- @param DBSnapshotAttributesResult [DBSnapshotAttributesResult]  
function M.ModifyDBSnapshotAttributeResult(DBSnapshotAttributesResult, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBSnapshotAttributeResult")
	local t = { 
		["DBSnapshotAttributesResult"] = DBSnapshotAttributesResult,
	}
	M.AssertModifyDBSnapshotAttributeResult(t)
	return t
end

local CopyDBClusterSnapshotResult_keys = { "DBClusterSnapshot" = true, nil }

function M.AssertCopyDBClusterSnapshotResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBClusterSnapshotResult to be of type 'table'")
	if struct["DBClusterSnapshot"] then M.AssertDBClusterSnapshot(struct["DBClusterSnapshot"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBClusterSnapshotResult_keys[k], "CopyDBClusterSnapshotResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBClusterSnapshotResult
--  
-- @param DBClusterSnapshot [DBClusterSnapshot]  
function M.CopyDBClusterSnapshotResult(DBClusterSnapshot, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBClusterSnapshotResult")
	local t = { 
		["DBClusterSnapshot"] = DBClusterSnapshot,
	}
	M.AssertCopyDBClusterSnapshotResult(t)
	return t
end

local CopyDBParameterGroupMessage_keys = { "SourceDBParameterGroupIdentifier" = true, "TargetDBParameterGroupDescription" = true, "TargetDBParameterGroupIdentifier" = true, "Tags" = true, nil }

function M.AssertCopyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyDBParameterGroupMessage to be of type 'table'")
	assert(struct["SourceDBParameterGroupIdentifier"], "Expected key SourceDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupIdentifier"], "Expected key TargetDBParameterGroupIdentifier to exist in table")
	assert(struct["TargetDBParameterGroupDescription"], "Expected key TargetDBParameterGroupDescription to exist in table")
	if struct["SourceDBParameterGroupIdentifier"] then M.AssertString(struct["SourceDBParameterGroupIdentifier"]) end
	if struct["TargetDBParameterGroupDescription"] then M.AssertString(struct["TargetDBParameterGroupDescription"]) end
	if struct["TargetDBParameterGroupIdentifier"] then M.AssertString(struct["TargetDBParameterGroupIdentifier"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CopyDBParameterGroupMessage_keys[k], "CopyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyDBParameterGroupMessage
-- <p/>
-- @param SourceDBParameterGroupIdentifier [String] <p> The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB parameter group.</p> </li> <li> <p> Must specify a valid DB parameter group identifier, for example <code>my-db-param-group</code>, or a valid ARN.</p> </li> </ul>
-- @param TargetDBParameterGroupDescription [String] <p>A description for the copied DB parameter group.</p>
-- @param TargetDBParameterGroupIdentifier [String] <p>The identifier for the copied DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-parameter-group</code> </p>
-- @param Tags [TagList] <p/>
-- Required parameter: SourceDBParameterGroupIdentifier
-- Required parameter: TargetDBParameterGroupIdentifier
-- Required parameter: TargetDBParameterGroupDescription
function M.CopyDBParameterGroupMessage(SourceDBParameterGroupIdentifier, TargetDBParameterGroupDescription, TargetDBParameterGroupIdentifier, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CopyDBParameterGroupMessage")
	local t = { 
		["SourceDBParameterGroupIdentifier"] = SourceDBParameterGroupIdentifier,
		["TargetDBParameterGroupDescription"] = TargetDBParameterGroupDescription,
		["TargetDBParameterGroupIdentifier"] = TargetDBParameterGroupIdentifier,
		["Tags"] = Tags,
	}
	M.AssertCopyDBParameterGroupMessage(t)
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
-- <p> Contains the result of a successful invocation of the <a>DescribeEvents</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param Events [EventList] <p> A list of <a>Event</a> instances. </p>
function M.EventsMessage(Marker, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventsMessage")
	local t = { 
		["Marker"] = Marker,
		["Events"] = Events,
	}
	M.AssertEventsMessage(t)
	return t
end

local DeleteDBSnapshotMessage_keys = { "DBSnapshotIdentifier" = true, nil }

function M.AssertDeleteDBSnapshotMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSnapshotMessage to be of type 'table'")
	assert(struct["DBSnapshotIdentifier"], "Expected key DBSnapshotIdentifier to exist in table")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBSnapshotMessage_keys[k], "DeleteDBSnapshotMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSnapshotMessage
-- <p/>
-- @param DBSnapshotIdentifier [String] <p>The DBSnapshot identifier.</p> <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>
-- Required parameter: DBSnapshotIdentifier
function M.DeleteDBSnapshotMessage(DBSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSnapshotMessage")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
	}
	M.AssertDeleteDBSnapshotMessage(t)
	return t
end

local ReservedDBInstancesOffering_keys = { "MultiAZ" = true, "OfferingType" = true, "FixedPrice" = true, "UsagePrice" = true, "ReservedDBInstancesOfferingId" = true, "RecurringCharges" = true, "ProductDescription" = true, "Duration" = true, "DBInstanceClass" = true, "CurrencyCode" = true, nil }

function M.AssertReservedDBInstancesOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOffering to be of type 'table'")
	if struct["MultiAZ"] then M.AssertBoolean(struct["MultiAZ"]) end
	if struct["OfferingType"] then M.AssertString(struct["OfferingType"]) end
	if struct["FixedPrice"] then M.AssertDouble(struct["FixedPrice"]) end
	if struct["UsagePrice"] then M.AssertDouble(struct["UsagePrice"]) end
	if struct["ReservedDBInstancesOfferingId"] then M.AssertString(struct["ReservedDBInstancesOfferingId"]) end
	if struct["RecurringCharges"] then M.AssertRecurringChargeList(struct["RecurringCharges"]) end
	if struct["ProductDescription"] then M.AssertString(struct["ProductDescription"]) end
	if struct["Duration"] then M.AssertInteger(struct["Duration"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["CurrencyCode"] then M.AssertString(struct["CurrencyCode"]) end
	for k,_ in pairs(struct) do
		assert(ReservedDBInstancesOffering_keys[k], "ReservedDBInstancesOffering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOffering
-- <p> This data type is used as a response element in the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param MultiAZ [Boolean] <p>Indicates if the offering applies to Multi-AZ deployments.</p>
-- @param OfferingType [String] <p>The offering type.</p>
-- @param FixedPrice [Double] <p>The fixed price charged for this offering.</p>
-- @param UsagePrice [Double] <p>The hourly price charged for this offering.</p>
-- @param ReservedDBInstancesOfferingId [String] <p>The offering identifier.</p>
-- @param RecurringCharges [RecurringChargeList] <p>The recurring price charged to run this reserved DB instance.</p>
-- @param ProductDescription [String] <p>The database engine used by the offering.</p>
-- @param Duration [Integer] <p>The duration of the offering in seconds.</p>
-- @param DBInstanceClass [String] <p>The DB instance class for the reserved DB instance.</p>
-- @param CurrencyCode [String] <p>The currency code for the reserved DB instance offering.</p>
function M.ReservedDBInstancesOffering(MultiAZ, OfferingType, FixedPrice, UsagePrice, ReservedDBInstancesOfferingId, RecurringCharges, ProductDescription, Duration, DBInstanceClass, CurrencyCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOffering")
	local t = { 
		["MultiAZ"] = MultiAZ,
		["OfferingType"] = OfferingType,
		["FixedPrice"] = FixedPrice,
		["UsagePrice"] = UsagePrice,
		["ReservedDBInstancesOfferingId"] = ReservedDBInstancesOfferingId,
		["RecurringCharges"] = RecurringCharges,
		["ProductDescription"] = ProductDescription,
		["Duration"] = Duration,
		["DBInstanceClass"] = DBInstanceClass,
		["CurrencyCode"] = CurrencyCode,
	}
	M.AssertReservedDBInstancesOffering(t)
	return t
end

local OptionGroupQuotaExceededFault_keys = { nil }

function M.AssertOptionGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OptionGroupQuotaExceededFault_keys[k], "OptionGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupQuotaExceededFault
-- <p>The quota of 20 option groups was exceeded for this AWS account.</p>
function M.OptionGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertOptionGroupQuotaExceededFault(t)
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
-- <p/>
-- @param ResourceName [String] <p>The Amazon RDS resource the tags will be added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param Tags [TagList] <p>The tags to be assigned to the Amazon RDS resource.</p>
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

local IPRange_keys = { "Status" = true, "CIDRIP" = true, nil }

function M.AssertIPRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPRange to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["CIDRIP"] then M.AssertString(struct["CIDRIP"]) end
	for k,_ in pairs(struct) do
		assert(IPRange_keys[k], "IPRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPRange
-- <p> This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action. </p>
-- @param Status [String] <p>Specifies the status of the IP range. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
-- @param CIDRIP [String] <p>Specifies the IP range.</p>
function M.IPRange(Status, CIDRIP, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IPRange")
	local t = { 
		["Status"] = Status,
		["CIDRIP"] = CIDRIP,
	}
	M.AssertIPRange(t)
	return t
end

local ReservedDBInstanceQuotaExceededFault_keys = { nil }

function M.AssertReservedDBInstanceQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReservedDBInstanceQuotaExceededFault_keys[k], "ReservedDBInstanceQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceQuotaExceededFault
-- <p>Request would exceed the user's DB Instance quota.</p>
function M.ReservedDBInstanceQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceQuotaExceededFault")
	local t = { 
	}
	M.AssertReservedDBInstanceQuotaExceededFault(t)
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
-- <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
function M.InvalidSubnet(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSubnet")
	local t = { 
	}
	M.AssertInvalidSubnet(t)
	return t
end

local DBClusterParameterGroupNotFoundFault_keys = { nil }

function M.AssertDBClusterParameterGroupNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterParameterGroupNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterParameterGroupNotFoundFault_keys[k], "DBClusterParameterGroupNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterParameterGroupNotFoundFault
-- <p> <i>DBClusterParameterGroupName</i> does not refer to an existing DB Cluster parameter group. </p>
function M.DBClusterParameterGroupNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterParameterGroupNotFoundFault")
	local t = { 
	}
	M.AssertDBClusterParameterGroupNotFoundFault(t)
	return t
end

local FailoverDBClusterMessage_keys = { "DBClusterIdentifier" = true, "TargetDBInstanceIdentifier" = true, nil }

function M.AssertFailoverDBClusterMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailoverDBClusterMessage to be of type 'table'")
	if struct["DBClusterIdentifier"] then M.AssertString(struct["DBClusterIdentifier"]) end
	if struct["TargetDBInstanceIdentifier"] then M.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(FailoverDBClusterMessage_keys[k], "FailoverDBClusterMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailoverDBClusterMessage
-- <p/>
-- @param DBClusterIdentifier [String] <p>A DB cluster identifier to force a failover for. This parameter is not case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param TargetDBInstanceIdentifier [String] <p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Aurora Replica in the DB cluster. For example, <code>mydbcluster-replica1</code>.</p>
function M.FailoverDBClusterMessage(DBClusterIdentifier, TargetDBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailoverDBClusterMessage")
	local t = { 
		["DBClusterIdentifier"] = DBClusterIdentifier,
		["TargetDBInstanceIdentifier"] = TargetDBInstanceIdentifier,
	}
	M.AssertFailoverDBClusterMessage(t)
	return t
end

local ModifyOptionGroupResult_keys = { "OptionGroup" = true, nil }

function M.AssertModifyOptionGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyOptionGroupResult to be of type 'table'")
	if struct["OptionGroup"] then M.AssertOptionGroup(struct["OptionGroup"]) end
	for k,_ in pairs(struct) do
		assert(ModifyOptionGroupResult_keys[k], "ModifyOptionGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyOptionGroupResult
--  
-- @param OptionGroup [OptionGroup]  
function M.ModifyOptionGroupResult(OptionGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyOptionGroupResult")
	local t = { 
		["OptionGroup"] = OptionGroup,
	}
	M.AssertModifyOptionGroupResult(t)
	return t
end

local DBParameterGroupNameMessage_keys = { "DBParameterGroupName" = true, nil }

function M.AssertDBParameterGroupNameMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupNameMessage to be of type 'table'")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DBParameterGroupNameMessage_keys[k], "DBParameterGroupNameMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupNameMessage
-- <p> Contains the result of a successful invocation of the <a>ModifyDBParameterGroup</a> or <a>ResetDBParameterGroup</a> action. </p>
-- @param DBParameterGroupName [String] <p>Provides the name of the DB parameter group.</p>
function M.DBParameterGroupNameMessage(DBParameterGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupNameMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
	}
	M.AssertDBParameterGroupNameMessage(t)
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
-- <p>The SNS topic ARN does not exist.</p>
function M.SNSTopicArnNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSTopicArnNotFoundFault")
	local t = { 
	}
	M.AssertSNSTopicArnNotFoundFault(t)
	return t
end

local Option_keys = { "DBSecurityGroupMemberships" = true, "OptionName" = true, "Persistent" = true, "VpcSecurityGroupMemberships" = true, "OptionSettings" = true, "Permanent" = true, "OptionVersion" = true, "Port" = true, "OptionDescription" = true, nil }

function M.AssertOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Option to be of type 'table'")
	if struct["DBSecurityGroupMemberships"] then M.AssertDBSecurityGroupMembershipList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then M.AssertString(struct["OptionName"]) end
	if struct["Persistent"] then M.AssertBoolean(struct["Persistent"]) end
	if struct["VpcSecurityGroupMemberships"] then M.AssertVpcSecurityGroupMembershipList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then M.AssertOptionSettingConfigurationList(struct["OptionSettings"]) end
	if struct["Permanent"] then M.AssertBoolean(struct["Permanent"]) end
	if struct["OptionVersion"] then M.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["OptionDescription"] then M.AssertString(struct["OptionDescription"]) end
	for k,_ in pairs(struct) do
		assert(Option_keys[k], "Option contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Option
-- <p>Option details.</p>
-- @param DBSecurityGroupMemberships [DBSecurityGroupMembershipList] <p>If the option requires access to a port, then this DB security group allows access to the port.</p>
-- @param OptionName [String] <p>The name of the option.</p>
-- @param Persistent [Boolean] <p>Indicate if this option is persistent.</p>
-- @param VpcSecurityGroupMemberships [VpcSecurityGroupMembershipList] <p>If the option requires access to a port, then this VPC security group allows access to the port.</p>
-- @param OptionSettings [OptionSettingConfigurationList] <p>The option settings for this option.</p>
-- @param Permanent [Boolean] <p>Indicate if this option is permanent.</p>
-- @param OptionVersion [String] <p>The version of the option.</p>
-- @param Port [IntegerOptional] <p>If required, the port configured for this option to use.</p>
-- @param OptionDescription [String] <p>The description of the option.</p>
function M.Option(DBSecurityGroupMemberships, OptionName, Persistent, VpcSecurityGroupMemberships, OptionSettings, Permanent, OptionVersion, Port, OptionDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Option")
	local t = { 
		["DBSecurityGroupMemberships"] = DBSecurityGroupMemberships,
		["OptionName"] = OptionName,
		["Persistent"] = Persistent,
		["VpcSecurityGroupMemberships"] = VpcSecurityGroupMemberships,
		["OptionSettings"] = OptionSettings,
		["Permanent"] = Permanent,
		["OptionVersion"] = OptionVersion,
		["Port"] = Port,
		["OptionDescription"] = OptionDescription,
	}
	M.AssertOption(t)
	return t
end

local DescribeDBLogFilesDetails_keys = { "LastWritten" = true, "LogFileName" = true, "Size" = true, nil }

function M.AssertDescribeDBLogFilesDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesDetails to be of type 'table'")
	if struct["LastWritten"] then M.AssertLong(struct["LastWritten"]) end
	if struct["LogFileName"] then M.AssertString(struct["LogFileName"]) end
	if struct["Size"] then M.AssertLong(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBLogFilesDetails_keys[k], "DescribeDBLogFilesDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesDetails
-- <p>This data type is used as a response element to <a>DescribeDBLogFiles</a>.</p>
-- @param LastWritten [Long] <p>A POSIX timestamp when the last log entry was written.</p>
-- @param LogFileName [String] <p>The name of the log file for the specified DB instance.</p>
-- @param Size [Long] <p>The size, in bytes, of the log file for the specified DB instance.</p>
function M.DescribeDBLogFilesDetails(LastWritten, LogFileName, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesDetails")
	local t = { 
		["LastWritten"] = LastWritten,
		["LogFileName"] = LogFileName,
		["Size"] = Size,
	}
	M.AssertDescribeDBLogFilesDetails(t)
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
-- <p>You have reached the maximum number of event subscriptions.</p>
function M.EventSubscriptionQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscriptionQuotaExceededFault")
	local t = { 
	}
	M.AssertEventSubscriptionQuotaExceededFault(t)
	return t
end

local OptionConfiguration_keys = { "DBSecurityGroupMemberships" = true, "OptionName" = true, "VpcSecurityGroupMemberships" = true, "OptionSettings" = true, "OptionVersion" = true, "Port" = true, nil }

function M.AssertOptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionConfiguration to be of type 'table'")
	assert(struct["OptionName"], "Expected key OptionName to exist in table")
	if struct["DBSecurityGroupMemberships"] then M.AssertDBSecurityGroupNameList(struct["DBSecurityGroupMemberships"]) end
	if struct["OptionName"] then M.AssertString(struct["OptionName"]) end
	if struct["VpcSecurityGroupMemberships"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupMemberships"]) end
	if struct["OptionSettings"] then M.AssertOptionSettingsList(struct["OptionSettings"]) end
	if struct["OptionVersion"] then M.AssertString(struct["OptionVersion"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(OptionConfiguration_keys[k], "OptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionConfiguration
-- <p>A list of all available options</p>
-- @param DBSecurityGroupMemberships [DBSecurityGroupNameList] <p>A list of DBSecurityGroupMemebrship name strings used for this option.</p>
-- @param OptionName [String] <p>The configuration of options to include in a group.</p>
-- @param VpcSecurityGroupMemberships [VpcSecurityGroupIdList] <p>A list of VpcSecurityGroupMemebrship name strings used for this option.</p>
-- @param OptionSettings [OptionSettingsList] <p>The option settings to include in an option group.</p>
-- @param OptionVersion [String] <p>The version for the option.</p>
-- @param Port [IntegerOptional] <p>The optional port for the option.</p>
-- Required parameter: OptionName
function M.OptionConfiguration(DBSecurityGroupMemberships, OptionName, VpcSecurityGroupMemberships, OptionSettings, OptionVersion, Port, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionConfiguration")
	local t = { 
		["DBSecurityGroupMemberships"] = DBSecurityGroupMemberships,
		["OptionName"] = OptionName,
		["VpcSecurityGroupMemberships"] = VpcSecurityGroupMemberships,
		["OptionSettings"] = OptionSettings,
		["OptionVersion"] = OptionVersion,
		["Port"] = Port,
	}
	M.AssertOptionConfiguration(t)
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

local DBInstanceStatusInfo_keys = { "Status" = true, "Message" = true, "StatusType" = true, "Normal" = true, nil }

function M.AssertDBInstanceStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceStatusInfo to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["StatusType"] then M.AssertString(struct["StatusType"]) end
	if struct["Normal"] then M.AssertBoolean(struct["Normal"]) end
	for k,_ in pairs(struct) do
		assert(DBInstanceStatusInfo_keys[k], "DBInstanceStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceStatusInfo
-- <p>Provides a list of status information for a DB instance.</p>
-- @param Status [String] <p>Status of the DB instance. For a StatusType of read replica, the values can be replicating, error, stopped, or terminated.</p>
-- @param Message [String] <p>Details of the error if there is an error for the instance. If the instance is not in an error state, this value is blank.</p>
-- @param StatusType [String] <p>This value is currently "read replication."</p>
-- @param Normal [Boolean] <p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>
function M.DBInstanceStatusInfo(Status, Message, StatusType, Normal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceStatusInfo")
	local t = { 
		["Status"] = Status,
		["Message"] = Message,
		["StatusType"] = StatusType,
		["Normal"] = Normal,
	}
	M.AssertDBInstanceStatusInfo(t)
	return t
end

local DBClusterSnapshotAlreadyExistsFault_keys = { nil }

function M.AssertDBClusterSnapshotAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshotAlreadyExistsFault_keys[k], "DBClusterSnapshotAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAlreadyExistsFault
-- <p>User already has a DB cluster snapshot with the given identifier.</p>
function M.DBClusterSnapshotAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBClusterSnapshotAlreadyExistsFault(t)
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
-- <p/>
-- @param ResourceName [String] <p>The Amazon RDS resource the tags will be removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
-- @param TagKeys [KeyList] <p>The tag key (name) of the tag to be removed.</p>
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

local RevokeDBSecurityGroupIngressResult_keys = { "DBSecurityGroup" = true, nil }

function M.AssertRevokeDBSecurityGroupIngressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeDBSecurityGroupIngressResult to be of type 'table'")
	if struct["DBSecurityGroup"] then M.AssertDBSecurityGroup(struct["DBSecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(RevokeDBSecurityGroupIngressResult_keys[k], "RevokeDBSecurityGroupIngressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeDBSecurityGroupIngressResult
--  
-- @param DBSecurityGroup [DBSecurityGroup]  
function M.RevokeDBSecurityGroupIngressResult(DBSecurityGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeDBSecurityGroupIngressResult")
	local t = { 
		["DBSecurityGroup"] = DBSecurityGroup,
	}
	M.AssertRevokeDBSecurityGroupIngressResult(t)
	return t
end

local InvalidEventSubscriptionStateFault_keys = { nil }

function M.AssertInvalidEventSubscriptionStateFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventSubscriptionStateFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidEventSubscriptionStateFault_keys[k], "InvalidEventSubscriptionStateFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventSubscriptionStateFault
-- <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
function M.InvalidEventSubscriptionStateFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventSubscriptionStateFault")
	local t = { 
	}
	M.AssertInvalidEventSubscriptionStateFault(t)
	return t
end

local RestoreDBClusterFromS3Result_keys = { "DBCluster" = true, nil }

function M.AssertRestoreDBClusterFromS3Result(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBClusterFromS3Result to be of type 'table'")
	if struct["DBCluster"] then M.AssertDBCluster(struct["DBCluster"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBClusterFromS3Result_keys[k], "RestoreDBClusterFromS3Result contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBClusterFromS3Result
--  
-- @param DBCluster [DBCluster]  
function M.RestoreDBClusterFromS3Result(DBCluster, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBClusterFromS3Result")
	local t = { 
		["DBCluster"] = DBCluster,
	}
	M.AssertRestoreDBClusterFromS3Result(t)
	return t
end

local SourceRegionMessage_keys = { "Marker" = true, "SourceRegions" = true, nil }

function M.AssertSourceRegionMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceRegionMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["SourceRegions"] then M.AssertSourceRegionList(struct["SourceRegions"]) end
	for k,_ in pairs(struct) do
		assert(SourceRegionMessage_keys[k], "SourceRegionMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceRegionMessage
-- <p>Contains the result of a successful invocation of the <a>DescribeSourceRegions</a> action.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param SourceRegions [SourceRegionList] <p>A list of SourceRegion instances that contains each source AWS Region that the current region can get a Read Replica or a DB snapshot from.</p>
function M.SourceRegionMessage(Marker, SourceRegions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceRegionMessage")
	local t = { 
		["Marker"] = Marker,
		["SourceRegions"] = SourceRegions,
	}
	M.AssertSourceRegionMessage(t)
	return t
end

local Timezone_keys = { "TimezoneName" = true, nil }

function M.AssertTimezone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timezone to be of type 'table'")
	if struct["TimezoneName"] then M.AssertString(struct["TimezoneName"]) end
	for k,_ in pairs(struct) do
		assert(Timezone_keys[k], "Timezone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timezone
-- <p>A time zone associated with a <a>DBInstance</a> or a <a>DBSnapshot</a>. This data type is an element in the response to the <a>DescribeDBInstances</a>, the <a>DescribeDBSnapshots</a>, and the <a>DescribeDBEngineVersions</a> actions. </p>
-- @param TimezoneName [String] <p>The name of the time zone.</p>
function M.Timezone(TimezoneName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Timezone")
	local t = { 
		["TimezoneName"] = TimezoneName,
	}
	M.AssertTimezone(t)
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
-- <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
-- @param SubnetStatus [String] <p>Specifies the status of the subnet.</p>
-- @param SubnetIdentifier [String] <p>Specifies the identifier of the subnet.</p>
-- @param SubnetAvailabilityZone [AvailabilityZone] <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
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

local DescribeSourceRegionsMessage_keys = { "Marker" = true, "MaxRecords" = true, "Filters" = true, "RegionName" = true, nil }

function M.AssertDescribeSourceRegionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSourceRegionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["RegionName"] then M.AssertString(struct["RegionName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSourceRegionsMessage_keys[k], "DescribeSourceRegionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSourceRegionsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous <a>DescribeSourceRegions</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
-- @param MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param RegionName [String] <p>The source region name. For example, <code>us-east-1</code>.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid AWS Region name.</p> </li> </ul>
function M.DescribeSourceRegionsMessage(Marker, MaxRecords, Filters, RegionName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSourceRegionsMessage")
	local t = { 
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
		["RegionName"] = RegionName,
	}
	M.AssertDescribeSourceRegionsMessage(t)
	return t
end

local ReservedDBInstancesOfferingMessage_keys = { "Marker" = true, "ReservedDBInstancesOfferings" = true, nil }

function M.AssertReservedDBInstancesOfferingMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstancesOfferingMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstancesOfferings"] then M.AssertReservedDBInstancesOfferingList(struct["ReservedDBInstancesOfferings"]) end
	for k,_ in pairs(struct) do
		assert(ReservedDBInstancesOfferingMessage_keys[k], "ReservedDBInstancesOfferingMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstancesOfferingMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param ReservedDBInstancesOfferings [ReservedDBInstancesOfferingList] <p>A list of reserved DB instance offerings.</p>
function M.ReservedDBInstancesOfferingMessage(Marker, ReservedDBInstancesOfferings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstancesOfferingMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedDBInstancesOfferings"] = ReservedDBInstancesOfferings,
	}
	M.AssertReservedDBInstancesOfferingMessage(t)
	return t
end

local DescribeDBLogFilesMessage_keys = { "FileLastWritten" = true, "Marker" = true, "MaxRecords" = true, "FileSize" = true, "Filters" = true, "FilenameContains" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertDescribeDBLogFilesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBLogFilesMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["FileLastWritten"] then M.AssertLong(struct["FileLastWritten"]) end
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["FileSize"] then M.AssertLong(struct["FileSize"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	if struct["FilenameContains"] then M.AssertString(struct["FilenameContains"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBLogFilesMessage_keys[k], "DescribeDBLogFilesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBLogFilesMessage
-- <p/>
-- @param FileLastWritten [Long] <p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>
-- @param Marker [String] <p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>
-- @param MaxRecords [IntegerOptional] <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
-- @param FileSize [Long] <p>Filters the available log files for files larger than the specified size.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
-- @param FilenameContains [String] <p>Filters the available log files for log file names that contain the specified string.</p>
-- @param DBInstanceIdentifier [String] <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.DescribeDBLogFilesMessage(FileLastWritten, Marker, MaxRecords, FileSize, Filters, FilenameContains, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBLogFilesMessage")
	local t = { 
		["FileLastWritten"] = FileLastWritten,
		["Marker"] = Marker,
		["MaxRecords"] = MaxRecords,
		["FileSize"] = FileSize,
		["Filters"] = Filters,
		["FilenameContains"] = FilenameContains,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertDescribeDBLogFilesMessage(t)
	return t
end

local DescribeDBClusterSnapshotAttributesMessage_keys = { "DBClusterSnapshotIdentifier" = true, nil }

function M.AssertDescribeDBClusterSnapshotAttributesMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBClusterSnapshotAttributesMessage to be of type 'table'")
	assert(struct["DBClusterSnapshotIdentifier"], "Expected key DBClusterSnapshotIdentifier to exist in table")
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBClusterSnapshotAttributesMessage_keys[k], "DescribeDBClusterSnapshotAttributesMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBClusterSnapshotAttributesMessage
-- <p/>
-- @param DBClusterSnapshotIdentifier [String] <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
-- Required parameter: DBClusterSnapshotIdentifier
function M.DescribeDBClusterSnapshotAttributesMessage(DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBClusterSnapshotAttributesMessage")
	local t = { 
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
	}
	M.AssertDescribeDBClusterSnapshotAttributesMessage(t)
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
-- <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
function M.SnapshotQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnapshotQuotaExceededFault")
	local t = { 
	}
	M.AssertSnapshotQuotaExceededFault(t)
	return t
end

local StartDBInstanceMessage_keys = { "DBInstanceIdentifier" = true, nil }

function M.AssertStartDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(StartDBInstanceMessage_keys[k], "StartDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceMessage
--  
-- @param DBInstanceIdentifier [String] <p> The user-supplied instance identifier. </p>
-- Required parameter: DBInstanceIdentifier
function M.StartDBInstanceMessage(DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDBInstanceMessage")
	local t = { 
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertStartDBInstanceMessage(t)
	return t
end

local ModifyDBParameterGroupMessage_keys = { "DBParameterGroupName" = true, "Parameters" = true, nil }

function M.AssertModifyDBParameterGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBParameterGroupMessage to be of type 'table'")
	assert(struct["DBParameterGroupName"], "Expected key DBParameterGroupName to exist in table")
	assert(struct["Parameters"], "Expected key Parameters to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBParameterGroupMessage_keys[k], "ModifyDBParameterGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBParameterGroupMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param Parameters [ParametersList] <p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for the application method): <code>immediate | pending-reboot</code> </p> <note> <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p> </note>
-- Required parameter: DBParameterGroupName
-- Required parameter: Parameters
function M.ModifyDBParameterGroupMessage(DBParameterGroupName, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBParameterGroupMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["Parameters"] = Parameters,
	}
	M.AssertModifyDBParameterGroupMessage(t)
	return t
end

local DeleteDBSecurityGroupMessage_keys = { "DBSecurityGroupName" = true, nil }

function M.AssertDeleteDBSecurityGroupMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBSecurityGroupMessage to be of type 'table'")
	assert(struct["DBSecurityGroupName"], "Expected key DBSecurityGroupName to exist in table")
	if struct["DBSecurityGroupName"] then M.AssertString(struct["DBSecurityGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBSecurityGroupMessage_keys[k], "DeleteDBSecurityGroupMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBSecurityGroupMessage
-- <p/>
-- @param DBSecurityGroupName [String] <p>The name of the DB security group to delete.</p> <note> <p>You cannot delete the default DB security group.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be "Default"</p> </li> </ul>
-- Required parameter: DBSecurityGroupName
function M.DeleteDBSecurityGroupMessage(DBSecurityGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBSecurityGroupMessage")
	local t = { 
		["DBSecurityGroupName"] = DBSecurityGroupName,
	}
	M.AssertDeleteDBSecurityGroupMessage(t)
	return t
end

local DescribeDBSubnetGroupsMessage_keys = { "Marker" = true, "DBSubnetGroupName" = true, "MaxRecords" = true, "Filters" = true, nil }

function M.AssertDescribeDBSubnetGroupsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDBSubnetGroupsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["MaxRecords"] then M.AssertIntegerOptional(struct["MaxRecords"]) end
	if struct["Filters"] then M.AssertFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDBSubnetGroupsMessage_keys[k], "DescribeDBSubnetGroupsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDBSubnetGroupsMessage
-- <p/>
-- @param Marker [String] <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param DBSubnetGroupName [String] <p>The name of the DB subnet group to return details for.</p>
-- @param MaxRecords [IntegerOptional] <p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>
-- @param Filters [FilterList] <p>This parameter is not currently supported.</p>
function M.DescribeDBSubnetGroupsMessage(Marker, DBSubnetGroupName, MaxRecords, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDBSubnetGroupsMessage")
	local t = { 
		["Marker"] = Marker,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["MaxRecords"] = MaxRecords,
		["Filters"] = Filters,
	}
	M.AssertDescribeDBSubnetGroupsMessage(t)
	return t
end

local DeleteDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertDeleteDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDBInstanceResult_keys[k], "DeleteDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.DeleteDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertDeleteDBInstanceResult(t)
	return t
end

local DBClusterSnapshotNotFoundFault_keys = { nil }

function M.AssertDBClusterSnapshotNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshotNotFoundFault_keys[k], "DBClusterSnapshotNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotNotFoundFault
-- <p> <i>DBClusterSnapshotIdentifier</i> does not refer to an existing DB cluster snapshot. </p>
function M.DBClusterSnapshotNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotNotFoundFault")
	local t = { 
	}
	M.AssertDBClusterSnapshotNotFoundFault(t)
	return t
end

local StartDBInstanceResult_keys = { "DBInstance" = true, nil }

function M.AssertStartDBInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDBInstanceResult to be of type 'table'")
	if struct["DBInstance"] then M.AssertDBInstance(struct["DBInstance"]) end
	for k,_ in pairs(struct) do
		assert(StartDBInstanceResult_keys[k], "StartDBInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDBInstanceResult
--  
-- @param DBInstance [DBInstance]  
function M.StartDBInstanceResult(DBInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartDBInstanceResult")
	local t = { 
		["DBInstance"] = DBInstance,
	}
	M.AssertStartDBInstanceResult(t)
	return t
end

local DBInstanceMessage_keys = { "Marker" = true, "DBInstances" = true, nil }

function M.AssertDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBInstanceMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBInstances"] then M.AssertDBInstanceList(struct["DBInstances"]) end
	for k,_ in pairs(struct) do
		assert(DBInstanceMessage_keys[k], "DBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeDBInstances</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param DBInstances [DBInstanceList] <p> A list of <a>DBInstance</a> instances. </p>
function M.DBInstanceMessage(Marker, DBInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBInstanceMessage")
	local t = { 
		["Marker"] = Marker,
		["DBInstances"] = DBInstances,
	}
	M.AssertDBInstanceMessage(t)
	return t
end

local Filter_keys = { "Values" = true, "Name" = true, nil }

function M.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertFilterValueList(struct["Values"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Filter_keys[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>This type is not currently supported.</p>
-- @param Values [FilterValueList] <p>This parameter is not currently supported.</p>
-- @param Name [String] <p>This parameter is not currently supported.</p>
-- Required parameter: Name
-- Required parameter: Values
function M.Filter(Values, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Filter")
	local t = { 
		["Values"] = Values,
		["Name"] = Name,
	}
	M.AssertFilter(t)
	return t
end

local RestoreDBInstanceToPointInTimeMessage_keys = { "PubliclyAccessible" = true, "DomainIAMRoleName" = true, "LicenseModel" = true, "EnableIAMDatabaseAuthentication" = true, "CopyTagsToSnapshot" = true, "Engine" = true, "MultiAZ" = true, "Tags" = true, "AutoMinorVersionUpgrade" = true, "TdeCredentialArn" = true, "DBSubnetGroupName" = true, "DBName" = true, "TdeCredentialPassword" = true, "UseLatestRestorableTime" = true, "RestoreTime" = true, "SourceDBInstanceIdentifier" = true, "OptionGroupName" = true, "Domain" = true, "AvailabilityZone" = true, "StorageType" = true, "Iops" = true, "DBInstanceClass" = true, "Port" = true, "TargetDBInstanceIdentifier" = true, nil }

function M.AssertRestoreDBInstanceToPointInTimeMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreDBInstanceToPointInTimeMessage to be of type 'table'")
	assert(struct["SourceDBInstanceIdentifier"], "Expected key SourceDBInstanceIdentifier to exist in table")
	assert(struct["TargetDBInstanceIdentifier"], "Expected key TargetDBInstanceIdentifier to exist in table")
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["DomainIAMRoleName"] then M.AssertString(struct["DomainIAMRoleName"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["Engine"] then M.AssertString(struct["Engine"]) end
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["DBName"] then M.AssertString(struct["DBName"]) end
	if struct["TdeCredentialPassword"] then M.AssertString(struct["TdeCredentialPassword"]) end
	if struct["UseLatestRestorableTime"] then M.AssertBoolean(struct["UseLatestRestorableTime"]) end
	if struct["RestoreTime"] then M.AssertTStamp(struct["RestoreTime"]) end
	if struct["SourceDBInstanceIdentifier"] then M.AssertString(struct["SourceDBInstanceIdentifier"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["AvailabilityZone"] then M.AssertString(struct["AvailabilityZone"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["Port"] then M.AssertIntegerOptional(struct["Port"]) end
	if struct["TargetDBInstanceIdentifier"] then M.AssertString(struct["TargetDBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(RestoreDBInstanceToPointInTimeMessage_keys[k], "RestoreDBInstanceToPointInTimeMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreDBInstanceToPointInTimeMessage
-- <p/>
-- @param PubliclyAccessible [BooleanOptional] <p>Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether a VPC has been requested or not. The following list shows the default behavior in each case.</p> <ul> <li> <p> <b>Default VPC:</b>true</p> </li> <li> <p> <b>VPC:</b>false</p> </li> </ul> <p>If no DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be publicly accessible. If a specific DB subnet group has been specified as part of the request and the PubliclyAccessible value has not been set, the DB instance will be private.</p>
-- @param DomainIAMRoleName [String] <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param LicenseModel [String] <p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher.</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the restored DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param Engine [String] <p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p> <p> Valid Values: <code>MySQL</code> | <code>mariadb</code> | <code>oracle-se1</code> | <code>oracle-se</code> | <code>oracle-ee</code> | <code>sqlserver-ee</code> | <code>sqlserver-se</code> | <code>sqlserver-ex</code> | <code>sqlserver-web</code> | <code>postgres</code> | <code>aurora</code> </p>
-- @param MultiAZ [BooleanOptional] <p>Specifies if the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to <code>true</code>.</p>
-- @param Tags [TagList] <p/>
-- @param AutoMinorVersionUpgrade [BooleanOptional] <p>Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window.</p>
-- @param TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param DBSubnetGroupName [String] <p>The DB subnet group name to use for the new instance.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>
-- @param DBName [String] <p>The database name for the restored DB instance.</p> <note> <p>This parameter is not used for the MySQL or MariaDB engines.</p> </note>
-- @param TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param UseLatestRestorableTime [Boolean] <p> Specifies whether (<code>true</code>) or not (<code>false</code>) the DB instance is restored from the latest backup time. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if RestoreTime parameter is provided.</p>
-- @param RestoreTime [TStamp] <p>The date and time to restore from.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Cannot be specified if UseLatestRestorableTime parameter is true</p> </li> </ul> <p>Example: <code>2009-09-07T23:45:00Z</code> </p>
-- @param SourceDBInstanceIdentifier [String] <p>The identifier of the source DB instance from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing database instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param OptionGroupName [String] <p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param Domain [String] <p>Specify the Active Directory Domain to restore the instance in.</p>
-- @param AvailabilityZone [String] <p>The EC2 Availability Zone that the database instance will be created in.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You cannot specify the AvailabilityZone parameter if the MultiAZ parameter is set to true.</p> <p>Example: <code>us-east-1a</code> </p>
-- @param StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param Iops [IntegerOptional] <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p>
-- @param DBInstanceClass [String] <p>The compute and memory capacity of the Amazon RDS DB instance.</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p> <p>Default: The same DBInstanceClass as the original DB instance.</p>
-- @param Port [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB instance.</p>
-- @param TargetDBInstanceIdentifier [String] <p>The name of the new database instance to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: SourceDBInstanceIdentifier
-- Required parameter: TargetDBInstanceIdentifier
function M.RestoreDBInstanceToPointInTimeMessage(PubliclyAccessible, DomainIAMRoleName, LicenseModel, EnableIAMDatabaseAuthentication, CopyTagsToSnapshot, Engine, MultiAZ, Tags, AutoMinorVersionUpgrade, TdeCredentialArn, DBSubnetGroupName, DBName, TdeCredentialPassword, UseLatestRestorableTime, RestoreTime, SourceDBInstanceIdentifier, OptionGroupName, Domain, AvailabilityZone, StorageType, Iops, DBInstanceClass, Port, TargetDBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RestoreDBInstanceToPointInTimeMessage")
	local t = { 
		["PubliclyAccessible"] = PubliclyAccessible,
		["DomainIAMRoleName"] = DomainIAMRoleName,
		["LicenseModel"] = LicenseModel,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["Engine"] = Engine,
		["MultiAZ"] = MultiAZ,
		["Tags"] = Tags,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["TdeCredentialArn"] = TdeCredentialArn,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["DBName"] = DBName,
		["TdeCredentialPassword"] = TdeCredentialPassword,
		["UseLatestRestorableTime"] = UseLatestRestorableTime,
		["RestoreTime"] = RestoreTime,
		["SourceDBInstanceIdentifier"] = SourceDBInstanceIdentifier,
		["OptionGroupName"] = OptionGroupName,
		["Domain"] = Domain,
		["AvailabilityZone"] = AvailabilityZone,
		["StorageType"] = StorageType,
		["Iops"] = Iops,
		["DBInstanceClass"] = DBInstanceClass,
		["Port"] = Port,
		["TargetDBInstanceIdentifier"] = TargetDBInstanceIdentifier,
	}
	M.AssertRestoreDBInstanceToPointInTimeMessage(t)
	return t
end

local PendingMaintenanceActionsMessage_keys = { "Marker" = true, "PendingMaintenanceActions" = true, nil }

function M.AssertPendingMaintenanceActionsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingMaintenanceActionsMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["PendingMaintenanceActions"] then M.AssertPendingMaintenanceActions(struct["PendingMaintenanceActions"]) end
	for k,_ in pairs(struct) do
		assert(PendingMaintenanceActionsMessage_keys[k], "PendingMaintenanceActionsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingMaintenanceActionsMessage
-- <p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>
-- @param Marker [String] <p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>
-- @param PendingMaintenanceActions [PendingMaintenanceActions] <p>A list of the pending maintenance actions for the resource.</p>
function M.PendingMaintenanceActionsMessage(Marker, PendingMaintenanceActions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingMaintenanceActionsMessage")
	local t = { 
		["Marker"] = Marker,
		["PendingMaintenanceActions"] = PendingMaintenanceActions,
	}
	M.AssertPendingMaintenanceActionsMessage(t)
	return t
end

local DomainNotFoundFault_keys = { nil }

function M.AssertDomainNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DomainNotFoundFault_keys[k], "DomainNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainNotFoundFault
-- <p> <i>Domain</i> does not refer to an existing Active Directory Domain. </p>
function M.DomainNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainNotFoundFault")
	local t = { 
	}
	M.AssertDomainNotFoundFault(t)
	return t
end

local EngineDefaults_keys = { "Marker" = true, "DBParameterGroupFamily" = true, "Parameters" = true, nil }

function M.AssertEngineDefaults(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EngineDefaults to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["DBParameterGroupFamily"] then M.AssertString(struct["DBParameterGroupFamily"]) end
	if struct["Parameters"] then M.AssertParametersList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(EngineDefaults_keys[k], "EngineDefaults contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EngineDefaults
-- <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>
-- @param DBParameterGroupFamily [String] <p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>
-- @param Parameters [ParametersList] <p>Contains a list of engine default parameters.</p>
function M.EngineDefaults(Marker, DBParameterGroupFamily, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EngineDefaults")
	local t = { 
		["Marker"] = Marker,
		["DBParameterGroupFamily"] = DBParameterGroupFamily,
		["Parameters"] = Parameters,
	}
	M.AssertEngineDefaults(t)
	return t
end

local DBParameterGroupQuotaExceededFault_keys = { nil }

function M.AssertDBParameterGroupQuotaExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupQuotaExceededFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBParameterGroupQuotaExceededFault_keys[k], "DBParameterGroupQuotaExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupQuotaExceededFault
-- <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
function M.DBParameterGroupQuotaExceededFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupQuotaExceededFault")
	local t = { 
	}
	M.AssertDBParameterGroupQuotaExceededFault(t)
	return t
end

local DomainMembership_keys = { "Status" = true, "IAMRoleName" = true, "Domain" = true, "FQDN" = true, nil }

function M.AssertDomainMembership(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainMembership to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["IAMRoleName"] then M.AssertString(struct["IAMRoleName"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["FQDN"] then M.AssertString(struct["FQDN"]) end
	for k,_ in pairs(struct) do
		assert(DomainMembership_keys[k], "DomainMembership contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainMembership
-- <p>An Active Directory Domain membership record associated with the DB instance.</p>
-- @param Status [String] <p>The status of the DB instance's Active Directory Domain membership, such as joined, pending-join, failed etc).</p>
-- @param IAMRoleName [String] <p>The name of the IAM role to be used when making API calls to the Directory Service.</p>
-- @param Domain [String] <p>The identifier of the Active Directory Domain.</p>
-- @param FQDN [String] <p>The fully qualified domain name of the Active Directory Domain.</p>
function M.DomainMembership(Status, IAMRoleName, Domain, FQDN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainMembership")
	local t = { 
		["Status"] = Status,
		["IAMRoleName"] = IAMRoleName,
		["Domain"] = Domain,
		["FQDN"] = FQDN,
	}
	M.AssertDomainMembership(t)
	return t
end

local DBClusterRoleAlreadyExistsFault_keys = { nil }

function M.AssertDBClusterRoleAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleAlreadyExistsFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterRoleAlreadyExistsFault_keys[k], "DBClusterRoleAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleAlreadyExistsFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
function M.DBClusterRoleAlreadyExistsFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleAlreadyExistsFault")
	local t = { 
	}
	M.AssertDBClusterRoleAlreadyExistsFault(t)
	return t
end

local ReservedDBInstanceMessage_keys = { "Marker" = true, "ReservedDBInstances" = true, nil }

function M.AssertReservedDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedDBInstanceMessage to be of type 'table'")
	if struct["Marker"] then M.AssertString(struct["Marker"]) end
	if struct["ReservedDBInstances"] then M.AssertReservedDBInstanceList(struct["ReservedDBInstances"]) end
	for k,_ in pairs(struct) do
		assert(ReservedDBInstanceMessage_keys[k], "ReservedDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedDBInstanceMessage
-- <p> Contains the result of a successful invocation of the <a>DescribeReservedDBInstances</a> action. </p>
-- @param Marker [String] <p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
-- @param ReservedDBInstances [ReservedDBInstanceList] <p>A list of reserved DB instances.</p>
function M.ReservedDBInstanceMessage(Marker, ReservedDBInstances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReservedDBInstanceMessage")
	local t = { 
		["Marker"] = Marker,
		["ReservedDBInstances"] = ReservedDBInstances,
	}
	M.AssertReservedDBInstanceMessage(t)
	return t
end

local DBParameterGroupStatus_keys = { "DBParameterGroupName" = true, "ParameterApplyStatus" = true, nil }

function M.AssertDBParameterGroupStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBParameterGroupStatus to be of type 'table'")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["ParameterApplyStatus"] then M.AssertString(struct["ParameterApplyStatus"]) end
	for k,_ in pairs(struct) do
		assert(DBParameterGroupStatus_keys[k], "DBParameterGroupStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBParameterGroupStatus
-- <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>CreateDBInstanceReadReplica</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> </ul>
-- @param DBParameterGroupName [String] <p>The name of the DP parameter group.</p>
-- @param ParameterApplyStatus [String] <p>The status of parameter updates.</p>
function M.DBParameterGroupStatus(DBParameterGroupName, ParameterApplyStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBParameterGroupStatus")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["ParameterApplyStatus"] = ParameterApplyStatus,
	}
	M.AssertDBParameterGroupStatus(t)
	return t
end

local DBClusterSnapshotAttributesResult_keys = { "DBClusterSnapshotAttributes" = true, "DBClusterSnapshotIdentifier" = true, nil }

function M.AssertDBClusterSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterSnapshotAttributesResult to be of type 'table'")
	if struct["DBClusterSnapshotAttributes"] then M.AssertDBClusterSnapshotAttributeList(struct["DBClusterSnapshotAttributes"]) end
	if struct["DBClusterSnapshotIdentifier"] then M.AssertString(struct["DBClusterSnapshotIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(DBClusterSnapshotAttributesResult_keys[k], "DBClusterSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-- @param DBClusterSnapshotAttributes [DBClusterSnapshotAttributeList] <p>The list of attributes and values for the manual DB cluster snapshot.</p>
-- @param DBClusterSnapshotIdentifier [String] <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
function M.DBClusterSnapshotAttributesResult(DBClusterSnapshotAttributes, DBClusterSnapshotIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterSnapshotAttributesResult")
	local t = { 
		["DBClusterSnapshotAttributes"] = DBClusterSnapshotAttributes,
		["DBClusterSnapshotIdentifier"] = DBClusterSnapshotIdentifier,
	}
	M.AssertDBClusterSnapshotAttributesResult(t)
	return t
end

local Endpoint_keys = { "HostedZoneId" = true, "Port" = true, "Address" = true, nil }

function M.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["HostedZoneId"] then M.AssertString(struct["HostedZoneId"]) end
	if struct["Port"] then M.AssertInteger(struct["Port"]) end
	if struct["Address"] then M.AssertString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(Endpoint_keys[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DescribeDBInstances</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> </ul>
-- @param HostedZoneId [String] <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
-- @param Port [Integer] <p>Specifies the port that the database engine is listening on.</p>
-- @param Address [String] <p>Specifies the DNS address of the DB instance.</p>
function M.Endpoint(HostedZoneId, Port, Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["Port"] = Port,
		["Address"] = Address,
	}
	M.AssertEndpoint(t)
	return t
end

local InvalidS3BucketFault_keys = { nil }

function M.AssertInvalidS3BucketFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3BucketFault_keys[k], "InvalidS3BucketFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketFault
-- <p>The specified Amazon S3 bucket name could not be found or Amazon RDS is not authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
function M.InvalidS3BucketFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketFault")
	local t = { 
	}
	M.AssertInvalidS3BucketFault(t)
	return t
end

local OptionGroupOptionSetting_keys = { "SettingDescription" = true, "DefaultValue" = true, "AllowedValues" = true, "IsModifiable" = true, "SettingName" = true, "ApplyType" = true, nil }

function M.AssertOptionGroupOptionSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptionGroupOptionSetting to be of type 'table'")
	if struct["SettingDescription"] then M.AssertString(struct["SettingDescription"]) end
	if struct["DefaultValue"] then M.AssertString(struct["DefaultValue"]) end
	if struct["AllowedValues"] then M.AssertString(struct["AllowedValues"]) end
	if struct["IsModifiable"] then M.AssertBoolean(struct["IsModifiable"]) end
	if struct["SettingName"] then M.AssertString(struct["SettingName"]) end
	if struct["ApplyType"] then M.AssertString(struct["ApplyType"]) end
	for k,_ in pairs(struct) do
		assert(OptionGroupOptionSetting_keys[k], "OptionGroupOptionSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptionGroupOptionSetting
-- <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
-- @param SettingDescription [String] <p>The description of the option group option.</p>
-- @param DefaultValue [String] <p>The default value for the option group option.</p>
-- @param AllowedValues [String] <p>Indicates the acceptable values for the option group option.</p>
-- @param IsModifiable [Boolean] <p>Boolean value where true indicates that this option group option can be changed from the default value.</p>
-- @param SettingName [String] <p>The name of the option group option.</p>
-- @param ApplyType [String] <p>The DB engine specific parameter type for the option group option.</p>
function M.OptionGroupOptionSetting(SettingDescription, DefaultValue, AllowedValues, IsModifiable, SettingName, ApplyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptionGroupOptionSetting")
	local t = { 
		["SettingDescription"] = SettingDescription,
		["DefaultValue"] = DefaultValue,
		["AllowedValues"] = AllowedValues,
		["IsModifiable"] = IsModifiable,
		["SettingName"] = SettingName,
		["ApplyType"] = ApplyType,
	}
	M.AssertOptionGroupOptionSetting(t)
	return t
end

local DBClusterRoleNotFoundFault_keys = { nil }

function M.AssertDBClusterRoleNotFoundFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBClusterRoleNotFoundFault to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DBClusterRoleNotFoundFault_keys[k], "DBClusterRoleNotFoundFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBClusterRoleNotFoundFault
-- <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
function M.DBClusterRoleNotFoundFault(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBClusterRoleNotFoundFault")
	local t = { 
	}
	M.AssertDBClusterRoleNotFoundFault(t)
	return t
end

local DBSnapshotAttributesResult_keys = { "DBSnapshotIdentifier" = true, "DBSnapshotAttributes" = true, nil }

function M.AssertDBSnapshotAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DBSnapshotAttributesResult to be of type 'table'")
	if struct["DBSnapshotIdentifier"] then M.AssertString(struct["DBSnapshotIdentifier"]) end
	if struct["DBSnapshotAttributes"] then M.AssertDBSnapshotAttributeList(struct["DBSnapshotAttributes"]) end
	for k,_ in pairs(struct) do
		assert(DBSnapshotAttributesResult_keys[k], "DBSnapshotAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DBSnapshotAttributesResult
-- <p>Contains the results of a successful call to the <a>DescribeDBSnapshotAttributes</a> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-- @param DBSnapshotIdentifier [String] <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
-- @param DBSnapshotAttributes [DBSnapshotAttributeList] <p>The list of attributes and values for the manual DB snapshot.</p>
function M.DBSnapshotAttributesResult(DBSnapshotIdentifier, DBSnapshotAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DBSnapshotAttributesResult")
	local t = { 
		["DBSnapshotIdentifier"] = DBSnapshotIdentifier,
		["DBSnapshotAttributes"] = DBSnapshotAttributes,
	}
	M.AssertDBSnapshotAttributesResult(t)
	return t
end

local EventSubscription_keys = { "Status" = true, "SubscriptionCreationTime" = true, "SourceType" = true, "EventCategoriesList" = true, "EventSubscriptionArn" = true, "SourceIdsList" = true, "CustSubscriptionId" = true, "Enabled" = true, "SnsTopicArn" = true, "CustomerAwsId" = true, nil }

function M.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	if struct["Status"] then M.AssertString(struct["Status"]) end
	if struct["SubscriptionCreationTime"] then M.AssertString(struct["SubscriptionCreationTime"]) end
	if struct["SourceType"] then M.AssertString(struct["SourceType"]) end
	if struct["EventCategoriesList"] then M.AssertEventCategoriesList(struct["EventCategoriesList"]) end
	if struct["EventSubscriptionArn"] then M.AssertString(struct["EventSubscriptionArn"]) end
	if struct["SourceIdsList"] then M.AssertSourceIdsList(struct["SourceIdsList"]) end
	if struct["CustSubscriptionId"] then M.AssertString(struct["CustSubscriptionId"]) end
	if struct["Enabled"] then M.AssertBoolean(struct["Enabled"]) end
	if struct["SnsTopicArn"] then M.AssertString(struct["SnsTopicArn"]) end
	if struct["CustomerAwsId"] then M.AssertString(struct["CustomerAwsId"]) end
	for k,_ in pairs(struct) do
		assert(EventSubscription_keys[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
-- @param Status [String] <p>The status of the RDS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
-- @param SubscriptionCreationTime [String] <p>The time the RDS event notification subscription was created.</p>
-- @param SourceType [String] <p>The source type for the RDS event notification subscription.</p>
-- @param EventCategoriesList [EventCategoriesList] <p>A list of event categories for the RDS event notification subscription.</p>
-- @param EventSubscriptionArn [String] <p>The Amazon Resource Name (ARN) for the event subscription.</p>
-- @param SourceIdsList [SourceIdsList] <p>A list of source IDs for the RDS event notification subscription.</p>
-- @param CustSubscriptionId [String] <p>The RDS event notification subscription Id.</p>
-- @param Enabled [Boolean] <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>
-- @param SnsTopicArn [String] <p>The topic ARN of the RDS event notification subscription.</p>
-- @param CustomerAwsId [String] <p>The AWS customer account associated with the RDS event notification subscription.</p>
function M.EventSubscription(Status, SubscriptionCreationTime, SourceType, EventCategoriesList, EventSubscriptionArn, SourceIdsList, CustSubscriptionId, Enabled, SnsTopicArn, CustomerAwsId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["Status"] = Status,
		["SubscriptionCreationTime"] = SubscriptionCreationTime,
		["SourceType"] = SourceType,
		["EventCategoriesList"] = EventCategoriesList,
		["EventSubscriptionArn"] = EventSubscriptionArn,
		["SourceIdsList"] = SourceIdsList,
		["CustSubscriptionId"] = CustSubscriptionId,
		["Enabled"] = Enabled,
		["SnsTopicArn"] = SnsTopicArn,
		["CustomerAwsId"] = CustomerAwsId,
	}
	M.AssertEventSubscription(t)
	return t
end

local ModifyDBInstanceMessage_keys = { "DBParameterGroupName" = true, "AllowMajorVersionUpgrade" = true, "DomainIAMRoleName" = true, "MonitoringInterval" = true, "LicenseModel" = true, "VpcSecurityGroupIds" = true, "EnableIAMDatabaseAuthentication" = true, "CopyTagsToSnapshot" = true, "NewDBInstanceIdentifier" = true, "MultiAZ" = true, "DBSecurityGroups" = true, "PubliclyAccessible" = true, "AutoMinorVersionUpgrade" = true, "PreferredBackupWindow" = true, "PromotionTier" = true, "TdeCredentialArn" = true, "AllocatedStorage" = true, "DBSubnetGroupName" = true, "PreferredMaintenanceWindow" = true, "TdeCredentialPassword" = true, "DBPortNumber" = true, "ApplyImmediately" = true, "EngineVersion" = true, "BackupRetentionPeriod" = true, "OptionGroupName" = true, "Domain" = true, "MonitoringRoleArn" = true, "StorageType" = true, "CACertificateIdentifier" = true, "MasterUserPassword" = true, "Iops" = true, "DBInstanceClass" = true, "DBInstanceIdentifier" = true, nil }

function M.AssertModifyDBInstanceMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDBInstanceMessage to be of type 'table'")
	assert(struct["DBInstanceIdentifier"], "Expected key DBInstanceIdentifier to exist in table")
	if struct["DBParameterGroupName"] then M.AssertString(struct["DBParameterGroupName"]) end
	if struct["AllowMajorVersionUpgrade"] then M.AssertBoolean(struct["AllowMajorVersionUpgrade"]) end
	if struct["DomainIAMRoleName"] then M.AssertString(struct["DomainIAMRoleName"]) end
	if struct["MonitoringInterval"] then M.AssertIntegerOptional(struct["MonitoringInterval"]) end
	if struct["LicenseModel"] then M.AssertString(struct["LicenseModel"]) end
	if struct["VpcSecurityGroupIds"] then M.AssertVpcSecurityGroupIdList(struct["VpcSecurityGroupIds"]) end
	if struct["EnableIAMDatabaseAuthentication"] then M.AssertBooleanOptional(struct["EnableIAMDatabaseAuthentication"]) end
	if struct["CopyTagsToSnapshot"] then M.AssertBooleanOptional(struct["CopyTagsToSnapshot"]) end
	if struct["NewDBInstanceIdentifier"] then M.AssertString(struct["NewDBInstanceIdentifier"]) end
	if struct["MultiAZ"] then M.AssertBooleanOptional(struct["MultiAZ"]) end
	if struct["DBSecurityGroups"] then M.AssertDBSecurityGroupNameList(struct["DBSecurityGroups"]) end
	if struct["PubliclyAccessible"] then M.AssertBooleanOptional(struct["PubliclyAccessible"]) end
	if struct["AutoMinorVersionUpgrade"] then M.AssertBooleanOptional(struct["AutoMinorVersionUpgrade"]) end
	if struct["PreferredBackupWindow"] then M.AssertString(struct["PreferredBackupWindow"]) end
	if struct["PromotionTier"] then M.AssertIntegerOptional(struct["PromotionTier"]) end
	if struct["TdeCredentialArn"] then M.AssertString(struct["TdeCredentialArn"]) end
	if struct["AllocatedStorage"] then M.AssertIntegerOptional(struct["AllocatedStorage"]) end
	if struct["DBSubnetGroupName"] then M.AssertString(struct["DBSubnetGroupName"]) end
	if struct["PreferredMaintenanceWindow"] then M.AssertString(struct["PreferredMaintenanceWindow"]) end
	if struct["TdeCredentialPassword"] then M.AssertString(struct["TdeCredentialPassword"]) end
	if struct["DBPortNumber"] then M.AssertIntegerOptional(struct["DBPortNumber"]) end
	if struct["ApplyImmediately"] then M.AssertBoolean(struct["ApplyImmediately"]) end
	if struct["EngineVersion"] then M.AssertString(struct["EngineVersion"]) end
	if struct["BackupRetentionPeriod"] then M.AssertIntegerOptional(struct["BackupRetentionPeriod"]) end
	if struct["OptionGroupName"] then M.AssertString(struct["OptionGroupName"]) end
	if struct["Domain"] then M.AssertString(struct["Domain"]) end
	if struct["MonitoringRoleArn"] then M.AssertString(struct["MonitoringRoleArn"]) end
	if struct["StorageType"] then M.AssertString(struct["StorageType"]) end
	if struct["CACertificateIdentifier"] then M.AssertString(struct["CACertificateIdentifier"]) end
	if struct["MasterUserPassword"] then M.AssertString(struct["MasterUserPassword"]) end
	if struct["Iops"] then M.AssertIntegerOptional(struct["Iops"]) end
	if struct["DBInstanceClass"] then M.AssertString(struct["DBInstanceClass"]) end
	if struct["DBInstanceIdentifier"] then M.AssertString(struct["DBInstanceIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDBInstanceMessage_keys[k], "ModifyDBInstanceMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDBInstanceMessage
-- <p/>
-- @param DBParameterGroupName [String] <p>The name of the DB parameter group to apply to the DB instance. Changing this setting does not result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.</p> <p>Default: Uses existing setting</p> <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>
-- @param AllowMajorVersionUpgrade [Boolean] <p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>
-- @param DomainIAMRoleName [String] <p>The name of the IAM role to use when making API calls to the Directory Service.</p>
-- @param MonitoringInterval [IntegerOptional] <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>
-- @param LicenseModel [String] <p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>
-- @param VpcSecurityGroupIds [VpcSecurityGroupIdList] <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param EnableIAMDatabaseAuthentication [BooleanOptional] <p>True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts; otherwise false.</p> <p> You can enable IAM database authentication for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> </ul> <p>Default: <code>false</code> </p>
-- @param CopyTagsToSnapshot [BooleanOptional] <p>True to copy all tags from the DB instance to snapshots of the DB instance; otherwise false. The default is false.</p>
-- @param NewDBInstanceIdentifier [String] <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set <code>Apply Immediately</code> to true, or will occur during the next maintenance window if <code>Apply Immediately</code> to false. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param MultiAZ [BooleanOptional] <p> Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Constraints: Cannot be specified if the DB instance is a Read Replica.</p>
-- @param DBSecurityGroups [DBSecurityGroupNameList] <p>A list of DB security groups to authorize on this DB instance. Changing this setting does not result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 alphanumeric characters</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- @param PubliclyAccessible [BooleanOptional] <p>Boolean value that indicates if the DB instance has a publicly resolvable DNS name. Set to <code>True</code> to make the DB instance Internet-facing with a publicly resolvable DNS name, which resolves to a public IP address. Set to <code>False</code> to make the DB instance internal with a DNS name that resolves to a private IP address. </p> <p> <code>PubliclyAccessible</code> only applies to DB instances in a VPC. The DB instance must be part of a public subnet and <code>PubliclyAccessible</code> must be true in order for it to be publicly accessible. </p> <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: false</p>
-- @param AutoMinorVersionUpgrade [BooleanOptional] <p> Indicates that minor version upgrades will be applied automatically to the DB instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and RDS has enabled auto patching for that engine version. </p>
-- @param PreferredBackupWindow [String] <p> The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code> parameter. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format hh24:mi-hh24:mi</p> </li> <li> <p>Times should be in Universal Time Coordinated (UTC)</p> </li> <li> <p>Must not conflict with the preferred maintenance window</p> </li> <li> <p>Must be at least 30 minutes</p> </li> </ul>
-- @param PromotionTier [IntegerOptional] <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance"> Fault Tolerance for an Aurora DB Cluster</a>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>
-- @param TdeCredentialArn [String] <p>The ARN from the Key Store with which to associate the instance for TDE encryption.</p>
-- @param AllocatedStorage [IntegerOptional] <p> The new storage capacity of the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless <code>ApplyImmediately</code> is set to <code>true</code> for this request. </p> <p> <b>MySQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 5-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p>Default: Uses existing setting</p> <p>Valid Values: 10-6144</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p> <p> <b>SQL Server</b> </p> <p>Cannot be modified.</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- @param DBSubnetGroupName [String] <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. If your DB instance is not in a VPC, you can also use this parameter to move your DB instance into a VPC. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC">Updating the VPC for a DB Instance</a>. </p> <p>Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify <code>true</code> for the <code>ApplyImmediately</code> parameter. </p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, underscores, spaces, or hyphens.</p> <p>Example: <code>mySubnetGroup</code> </p>
-- @param PreferredMaintenanceWindow [String] <p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>
-- @param TdeCredentialPassword [String] <p>The password for the given ARN from the Key Store in order to access the device.</p>
-- @param DBPortNumber [IntegerOptional] <p>The port number on which the database accepts connections.</p> <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option group for the DB instance.</p> <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid Values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid Values: <code>1150-65535</code> except for <code>1434</code>, <code>3389</code>, <code>47001</code>, <code>49152</code>, and <code>49152</code> through <code>49156</code>. </p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid Values: <code>1150-65535</code> </p>
-- @param ApplyImmediately [Boolean] <p>Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. </p> <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and will be applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. Review the table of parameters in <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html">Modifying a DB Instance and Using the Apply Immediately Parameter</a> to see the impact that setting <code>ApplyImmediately</code> to <code>true</code> or <code>false</code> has for each modified parameter and to determine when the changes will be applied. </p> <p>Default: <code>false</code> </p>
-- @param EngineVersion [String] <p> The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>For major version upgrades, if a non-default DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.</p> <p>For a list of valid engine versions, see <a>CreateDBInstance</a>.</p>
-- @param BackupRetentionPeriod [IntegerOptional] <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Changing this parameter can result in an outage if you change from 0 to a non-zero value or from a non-zero value to 0. These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously applied as soon as possible.</p> <p>Default: Uses existing setting</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Can be specified for a MySQL Read Replica only if the source is running MySQL 5.6</p> </li> <li> <p>Can be specified for a PostgreSQL Read Replica only if the source is running PostgreSQL 9.3.5</p> </li> <li> <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p> </li> </ul>
-- @param OptionGroupName [String] <p> Indicates that the DB instance should be associated with the specified option group. Changing this parameter does not result in an outage except in the following case and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, cannot be removed from an option group, and that option group cannot be removed from a DB instance once it is associated with a DB instance</p>
-- @param Domain [String] <p>The Active Directory Domain to move the instance to. Specify <code>none</code> to remove the instance from its current domain. The domain must be created prior to this operation. Currently only a Microsoft SQL Server instance can be created in a Active Directory Domain. </p>
-- @param MonitoringRoleArn [String] <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole">To create an IAM role for Amazon RDS Enhanced Monitoring</a>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
-- @param StorageType [String] <p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>standard</code> </p>
-- @param CACertificateIdentifier [String] <p>Indicates the certificate that needs to be associated with the instance.</p>
-- @param MasterUserPassword [String] <p>The new password for the DB instance master user. Can be any printable ASCII character except "/", """, or "@".</p> <p> Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <p>Default: Uses existing setting</p> <p>Constraints: Must be 8 to 41 alphanumeric characters (MySQL, MariaDB, and Amazon Aurora), 8 to 30 alphanumeric characters (Oracle), or 8 to 128 alphanumeric characters (SQL Server).</p> <note> <p>Amazon RDS API actions never return the password, so this action provides a way to regain access to a primary instance user if the password is lost. This includes restoring privileges that might have been accidentally revoked.</p> </note>
-- @param Iops [IntegerOptional] <p> The new Provisioned IOPS (I/O operations per second) value for the RDS instance. Changing this setting does not result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Constraints: Value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. If you are migrating from Provisioned IOPS to standard storage, set this value to 0. The DB instance will require a reboot for the change in storage type to take effect.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine is not supported.</p> <p>Type: Integer</p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance will be available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance will be suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.</p>
-- @param DBInstanceClass [String] <p> The new compute and memory capacity of the DB instance. To determine the instance classes that are available for a particular DB engine, use the <a>DescribeOrderableDBInstanceOptions</a> action. Note that not all instance classes are available in all regions for all DB engines. </p> <p> Passing a value for this setting causes an outage during the change and is applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified as <code>true</code> for this request. </p> <p>Default: Uses existing setting</p> <p>Valid Values: <code>db.t1.micro | db.m1.small | db.m1.medium | db.m1.large | db.m1.xlarge | db.m2.xlarge | db.m2.2xlarge | db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small | db.t2.medium | db.t2.large</code> </p>
-- @param DBInstanceIdentifier [String] <p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier for an existing DB instance</p> </li> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens</p> </li> </ul>
-- Required parameter: DBInstanceIdentifier
function M.ModifyDBInstanceMessage(DBParameterGroupName, AllowMajorVersionUpgrade, DomainIAMRoleName, MonitoringInterval, LicenseModel, VpcSecurityGroupIds, EnableIAMDatabaseAuthentication, CopyTagsToSnapshot, NewDBInstanceIdentifier, MultiAZ, DBSecurityGroups, PubliclyAccessible, AutoMinorVersionUpgrade, PreferredBackupWindow, PromotionTier, TdeCredentialArn, AllocatedStorage, DBSubnetGroupName, PreferredMaintenanceWindow, TdeCredentialPassword, DBPortNumber, ApplyImmediately, EngineVersion, BackupRetentionPeriod, OptionGroupName, Domain, MonitoringRoleArn, StorageType, CACertificateIdentifier, MasterUserPassword, Iops, DBInstanceClass, DBInstanceIdentifier, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDBInstanceMessage")
	local t = { 
		["DBParameterGroupName"] = DBParameterGroupName,
		["AllowMajorVersionUpgrade"] = AllowMajorVersionUpgrade,
		["DomainIAMRoleName"] = DomainIAMRoleName,
		["MonitoringInterval"] = MonitoringInterval,
		["LicenseModel"] = LicenseModel,
		["VpcSecurityGroupIds"] = VpcSecurityGroupIds,
		["EnableIAMDatabaseAuthentication"] = EnableIAMDatabaseAuthentication,
		["CopyTagsToSnapshot"] = CopyTagsToSnapshot,
		["NewDBInstanceIdentifier"] = NewDBInstanceIdentifier,
		["MultiAZ"] = MultiAZ,
		["DBSecurityGroups"] = DBSecurityGroups,
		["PubliclyAccessible"] = PubliclyAccessible,
		["AutoMinorVersionUpgrade"] = AutoMinorVersionUpgrade,
		["PreferredBackupWindow"] = PreferredBackupWindow,
		["PromotionTier"] = PromotionTier,
		["TdeCredentialArn"] = TdeCredentialArn,
		["AllocatedStorage"] = AllocatedStorage,
		["DBSubnetGroupName"] = DBSubnetGroupName,
		["PreferredMaintenanceWindow"] = PreferredMaintenanceWindow,
		["TdeCredentialPassword"] = TdeCredentialPassword,
		["DBPortNumber"] = DBPortNumber,
		["ApplyImmediately"] = ApplyImmediately,
		["EngineVersion"] = EngineVersion,
		["BackupRetentionPeriod"] = BackupRetentionPeriod,
		["OptionGroupName"] = OptionGroupName,
		["Domain"] = Domain,
		["MonitoringRoleArn"] = MonitoringRoleArn,
		["StorageType"] = StorageType,
		["CACertificateIdentifier"] = CACertificateIdentifier,
		["MasterUserPassword"] = MasterUserPassword,
		["Iops"] = Iops,
		["DBInstanceClass"] = DBInstanceClass,
		["DBInstanceIdentifier"] = DBInstanceIdentifier,
	}
	M.AssertModifyDBInstanceMessage(t)
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
-- <p>The DB subnet is already in use in the Availability Zone.</p>
function M.SubnetAlreadyInUse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubnetAlreadyInUse")
	local t = { 
	}
	M.AssertSubnetAlreadyInUse(t)
	return t
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

function M.AssertApplyMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplyMethod to be of type 'string'")
end

--  
function M.ApplyMethod(str)
	M.AssertApplyMethod(str)
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

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
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

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
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

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertBooleanOptional(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanOptional to be of type 'boolean'")
end

function M.BooleanOptional(boolean)
	M.AssertBooleanOptional(boolean)
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

function M.AssertOptionGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionGroupMembership(v)
	end
end

--  
-- List of OptionGroupMembership objects
function M.OptionGroupMembershipList(list)
	M.AssertOptionGroupMembershipList(list)
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

function M.AssertOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOption(v)
	end
end

--  
-- List of Option objects
function M.OptionsList(list)
	M.AssertOptionsList(list)
	return list
end

function M.AssertDBSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBSnapshotAttribute(v)
	end
end

--  
-- List of DBSnapshotAttribute objects
function M.DBSnapshotAttributeList(list)
	M.AssertDBSnapshotAttributeList(list)
	return list
end

function M.AssertDBSecurityGroupMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBSecurityGroupMembership(v)
	end
end

--  
-- List of DBSecurityGroupMembership objects
function M.DBSecurityGroupMembershipList(list)
	M.AssertDBSecurityGroupMembershipList(list)
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

function M.AssertDBSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBSnapshot(v)
	end
end

--  
-- List of DBSnapshot objects
function M.DBSnapshotList(list)
	M.AssertDBSnapshotList(list)
	return list
end

function M.AssertValidUpgradeTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValidUpgradeTargetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUpgradeTarget(v)
	end
end

--  
-- List of UpgradeTarget objects
function M.ValidUpgradeTargetList(list)
	M.AssertValidUpgradeTargetList(list)
	return list
end

function M.AssertSourceRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SourceRegionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSourceRegion(v)
	end
end

--  
-- List of SourceRegion objects
function M.SourceRegionList(list)
	M.AssertSourceRegionList(list)
	return list
end

function M.AssertReadReplicaDBInstanceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBInstanceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBInstanceIdentifierList(list)
	M.AssertReadReplicaDBInstanceIdentifierList(list)
	return list
end

function M.AssertDBParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBParameterGroup(v)
	end
end

--  
-- List of DBParameterGroup objects
function M.DBParameterGroupList(list)
	M.AssertDBParameterGroupList(list)
	return list
end

function M.AssertFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.FilterList(list)
	M.AssertFilterList(list)
	return list
end

function M.AssertOptionGroupOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionGroupOptionSetting(v)
	end
end

--  
-- List of OptionGroupOptionSetting objects
function M.OptionGroupOptionSettingsList(list)
	M.AssertOptionGroupOptionSettingsList(list)
	return list
end

function M.AssertReadReplicaIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaIdentifierList(list)
	M.AssertReadReplicaIdentifierList(list)
	return list
end

function M.AssertPendingMaintenanceActions(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourcePendingMaintenanceActions(v)
	end
end

--  
-- List of ResourcePendingMaintenanceActions objects
function M.PendingMaintenanceActions(list)
	M.AssertPendingMaintenanceActions(list)
	return list
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

function M.AssertOptionSettingsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingsList(list)
	M.AssertOptionSettingsList(list)
	return list
end

function M.AssertOptionGroupOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionGroupOption(v)
	end
end

-- <p>List of available option group options.</p>
-- List of OptionGroupOption objects
function M.OptionGroupOptionsList(list)
	M.AssertOptionGroupOptionsList(list)
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

function M.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.FilterValueList(list)
	M.AssertFilterValueList(list)
	return list
end

function M.AssertDBParameterGroupStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBParameterGroupStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBParameterGroupStatus(v)
	end
end

--  
-- List of DBParameterGroupStatus objects
function M.DBParameterGroupStatusList(list)
	M.AssertDBParameterGroupStatusList(list)
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

function M.AssertDBClusterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBCluster(v)
	end
end

--  
-- List of DBCluster objects
function M.DBClusterList(list)
	M.AssertDBClusterList(list)
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

function M.AssertDBEngineVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBEngineVersionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBEngineVersion(v)
	end
end

--  
-- List of DBEngineVersion objects
function M.DBEngineVersionList(list)
	M.AssertDBEngineVersionList(list)
	return list
end

function M.AssertDBInstanceStatusInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceStatusInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBInstanceStatusInfo(v)
	end
end

--  
-- List of DBInstanceStatusInfo objects
function M.DBInstanceStatusInfoList(list)
	M.AssertDBInstanceStatusInfoList(list)
	return list
end

function M.AssertOptionGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionGroup(v)
	end
end

--  
-- List of OptionGroup objects
function M.OptionGroupsList(list)
	M.AssertOptionGroupsList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

-- <p>A list of tags.</p>
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
	return list
end

function M.AssertDBSecurityGroupNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroupNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.DBSecurityGroupNameList(list)
	M.AssertDBSecurityGroupNameList(list)
	return list
end

function M.AssertDBSubnetGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSubnetGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBSubnetGroup(v)
	end
end

--  
-- List of DBSubnetGroup objects
function M.DBSubnetGroups(list)
	M.AssertDBSubnetGroups(list)
	return list
end

function M.AssertSupportedTimezonesList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedTimezonesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTimezone(v)
	end
end

--  
-- List of Timezone objects
function M.SupportedTimezonesList(list)
	M.AssertSupportedTimezonesList(list)
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

function M.AssertOrderableDBInstanceOptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderableDBInstanceOptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOrderableDBInstanceOption(v)
	end
end

--  
-- List of OrderableDBInstanceOption objects
function M.OrderableDBInstanceOptionsList(list)
	M.AssertOrderableDBInstanceOptionsList(list)
	return list
end

function M.AssertDomainMembershipList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainMembershipList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainMembership(v)
	end
end

-- <p>List of Active Directory Domain membership records associated with a DB instance.</p>
-- List of DomainMembership objects
function M.DomainMembershipList(list)
	M.AssertDomainMembershipList(list)
	return list
end

function M.AssertPendingMaintenanceActionDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected PendingMaintenanceActionDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPendingMaintenanceAction(v)
	end
end

--  
-- List of PendingMaintenanceAction objects
function M.PendingMaintenanceActionDetails(list)
	M.AssertPendingMaintenanceActionDetails(list)
	return list
end

function M.AssertDescribeDBLogFilesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeDBLogFilesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDescribeDBLogFilesDetails(v)
	end
end

--  
-- List of DescribeDBLogFilesDetails objects
function M.DescribeDBLogFilesList(list)
	M.AssertDescribeDBLogFilesList(list)
	return list
end

function M.AssertOptionsDependedOn(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsDependedOn to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsDependedOn(list)
	M.AssertOptionsDependedOn(list)
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

function M.AssertOptionNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionNamesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionNamesList(list)
	M.AssertOptionNamesList(list)
	return list
end

function M.AssertDBClusterSnapshotAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterSnapshotAttribute(v)
	end
end

--  
-- List of DBClusterSnapshotAttribute objects
function M.DBClusterSnapshotAttributeList(list)
	M.AssertDBClusterSnapshotAttributeList(list)
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

function M.AssertDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBInstance(v)
	end
end

--  
-- List of DBInstance objects
function M.DBInstanceList(list)
	M.AssertDBInstanceList(list)
	return list
end

function M.AssertOptionsConflictsWith(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionsConflictsWith to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.OptionsConflictsWith(list)
	M.AssertOptionsConflictsWith(list)
	return list
end

function M.AssertAvailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected AvailabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AvailabilityZones(list)
	M.AssertAvailabilityZones(list)
	return list
end

function M.AssertOptionGroupOptionVersionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionGroupOptionVersionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionVersion(v)
	end
end

--  
-- List of OptionVersion objects
function M.OptionGroupOptionVersionsList(list)
	M.AssertOptionGroupOptionVersionsList(list)
	return list
end

function M.AssertSupportedCharacterSetsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SupportedCharacterSetsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCharacterSet(v)
	end
end

--  
-- List of CharacterSet objects
function M.SupportedCharacterSetsList(list)
	M.AssertSupportedCharacterSetsList(list)
	return list
end

function M.AssertDBClusterSnapshotList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterSnapshotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterSnapshot(v)
	end
end

--  
-- List of DBClusterSnapshot objects
function M.DBClusterSnapshotList(list)
	M.AssertDBClusterSnapshotList(list)
	return list
end

function M.AssertReservedDBInstanceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstanceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedDBInstance(v)
	end
end

--  
-- List of ReservedDBInstance objects
function M.ReservedDBInstanceList(list)
	M.AssertReservedDBInstanceList(list)
	return list
end

function M.AssertDBSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected DBSecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBSecurityGroup(v)
	end
end

--  
-- List of DBSecurityGroup objects
function M.DBSecurityGroups(list)
	M.AssertDBSecurityGroups(list)
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

function M.AssertDBClusterOptionGroupMemberships(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterOptionGroupMemberships to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterOptionGroupStatus(v)
	end
end

--  
-- List of DBClusterOptionGroupStatus objects
function M.DBClusterOptionGroupMemberships(list)
	M.AssertDBClusterOptionGroupMemberships(list)
	return list
end

function M.AssertDBClusterMemberList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterMemberList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterMember(v)
	end
end

--  
-- List of DBClusterMember objects
function M.DBClusterMemberList(list)
	M.AssertDBClusterMemberList(list)
	return list
end

function M.AssertReadReplicaDBClusterIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReadReplicaDBClusterIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ReadReplicaDBClusterIdentifierList(list)
	M.AssertReadReplicaDBClusterIdentifierList(list)
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

function M.AssertOptionConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionConfiguration(v)
	end
end

--  
-- List of OptionConfiguration objects
function M.OptionConfigurationList(list)
	M.AssertOptionConfigurationList(list)
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

function M.AssertAttributeValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AttributeValueList(list)
	M.AssertAttributeValueList(list)
	return list
end

function M.AssertDBClusterRoles(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterRoles to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterRole(v)
	end
end

--  
-- List of DBClusterRole objects
function M.DBClusterRoles(list)
	M.AssertDBClusterRoles(list)
	return list
end

function M.AssertOptionSettingConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected OptionSettingConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOptionSetting(v)
	end
end

--  
-- List of OptionSetting objects
function M.OptionSettingConfigurationList(list)
	M.AssertOptionSettingConfigurationList(list)
	return list
end

function M.AssertAccountQuotaList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountQuotaList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccountQuota(v)
	end
end

--  
-- List of AccountQuota objects
function M.AccountQuotaList(list)
	M.AssertAccountQuotaList(list)
	return list
end

function M.AssertReservedDBInstancesOfferingList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReservedDBInstancesOfferingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReservedDBInstancesOffering(v)
	end
end

--  
-- List of ReservedDBInstancesOffering objects
function M.ReservedDBInstancesOfferingList(list)
	M.AssertReservedDBInstancesOfferingList(list)
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

function M.AssertCertificateList(list)
	assert(list)
	assert(type(list) == "table", "Expected CertificateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.CertificateList(list)
	M.AssertCertificateList(list)
	return list
end

function M.AssertDBClusterParameterGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected DBClusterParameterGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDBClusterParameterGroup(v)
	end
end

--  
-- List of DBClusterParameterGroup objects
function M.DBClusterParameterGroupList(list)
	M.AssertDBClusterParameterGroupList(list)
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DescribeCertificates
-- @param DescribeCertificatesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificatesAsync(DescribeCertificatesMessage, cb)
	assert(DescribeCertificatesMessage, "You must provide a DescribeCertificatesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCertificatesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreDBClusterToPointInTime
-- @param RestoreDBClusterToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterToPointInTimeAsync(RestoreDBClusterToPointInTimeMessage, cb)
	assert(RestoreDBClusterToPointInTimeMessage, "You must provide a RestoreDBClusterToPointInTimeMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterToPointInTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreDBClusterToPointInTimeMessage, headers, M.metadata, cb)
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

--- DeleteDBClusterSnapshot
-- @param DeleteDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterSnapshotAsync(DeleteDBClusterSnapshotMessage, cb)
	assert(DeleteDBClusterSnapshotMessage, "You must provide a DeleteDBClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBParameterGroup
-- @param CreateDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBParameterGroupAsync(CreateDBParameterGroupMessage, cb)
	assert(CreateDBParameterGroupMessage, "You must provide a CreateDBParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AuthorizeDBSecurityGroupIngress
-- @param AuthorizeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AuthorizeDBSecurityGroupIngressAsync(AuthorizeDBSecurityGroupIngressMessage, cb)
	assert(AuthorizeDBSecurityGroupIngressMessage, "You must provide a AuthorizeDBSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AuthorizeDBSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AuthorizeDBSecurityGroupIngressMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBSubnetGroups
-- @param DescribeDBSubnetGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSubnetGroupsAsync(DescribeDBSubnetGroupsMessage, cb)
	assert(DescribeDBSubnetGroupsMessage, "You must provide a DescribeDBSubnetGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBSubnetGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBSubnetGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBEngineVersions
-- @param DescribeDBEngineVersionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBEngineVersionsAsync(DescribeDBEngineVersionsMessage, cb)
	assert(DescribeDBEngineVersionsMessage, "You must provide a DescribeDBEngineVersionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBEngineVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBEngineVersionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyDBSnapshot
-- @param CopyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBSnapshotAsync(CopyDBSnapshotMessage, cb)
	assert(CopyDBSnapshotMessage, "You must provide a CopyDBSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyDBSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopDBInstance
-- @param StopDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StopDBInstanceAsync(StopDBInstanceMessage, cb)
	assert(StopDBInstanceMessage, "You must provide a StopDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".StopDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopDBInstanceMessage, headers, M.metadata, cb)
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

--- CreateDBInstanceReadReplica
-- @param CreateDBInstanceReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceReadReplicaAsync(CreateDBInstanceReadReplicaMessage, cb)
	assert(CreateDBInstanceReadReplicaMessage, "You must provide a CreateDBInstanceReadReplicaMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBInstanceReadReplica",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBInstanceReadReplicaMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBClusterSnapshot
-- @param CreateDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterSnapshotAsync(CreateDBClusterSnapshotMessage, cb)
	assert(CreateDBClusterSnapshotMessage, "You must provide a CreateDBClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReservedDBInstancesOfferings
-- @param DescribeReservedDBInstancesOfferingsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesOfferingsAsync(DescribeReservedDBInstancesOfferingsMessage, cb)
	assert(DescribeReservedDBInstancesOfferingsMessage, "You must provide a DescribeReservedDBInstancesOfferingsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstancesOfferings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedDBInstancesOfferingsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBCluster
-- @param DeleteDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterAsync(DeleteDBClusterMessage, cb)
	assert(DeleteDBClusterMessage, "You must provide a DeleteDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetDBClusterParameterGroup
-- @param ResetDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBClusterParameterGroupAsync(ResetDBClusterParameterGroupMessage, cb)
	assert(ResetDBClusterParameterGroupMessage, "You must provide a ResetDBClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResetDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetDBClusterParameterGroupMessage, headers, M.metadata, cb)
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

--- ModifyDBSnapshot
-- @param ModifyDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAsync(ModifyDBSnapshotMessage, cb)
	assert(ModifyDBSnapshotMessage, "You must provide a ModifyDBSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBSubnetGroup
-- @param DeleteDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSubnetGroupAsync(DeleteDBSubnetGroupMessage, cb)
	assert(DeleteDBSubnetGroupMessage, "You must provide a DeleteDBSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreDBInstanceFromDBSnapshot
-- @param RestoreDBInstanceFromDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceFromDBSnapshotAsync(RestoreDBInstanceFromDBSnapshotMessage, cb)
	assert(RestoreDBInstanceFromDBSnapshotMessage, "You must provide a RestoreDBInstanceFromDBSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceFromDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreDBInstanceFromDBSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOptionGroups
-- @param DescribeOptionGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupsAsync(DescribeOptionGroupsMessage, cb)
	assert(DescribeOptionGroupsMessage, "You must provide a DescribeOptionGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOptionGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreDBClusterFromS3
-- @param RestoreDBClusterFromS3Message
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromS3Async(RestoreDBClusterFromS3Message, cb)
	assert(RestoreDBClusterFromS3Message, "You must provide a RestoreDBClusterFromS3Message")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromS3",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreDBClusterFromS3Message, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBInstance
-- @param DeleteDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBInstanceAsync(DeleteDBInstanceMessage, cb)
	assert(DeleteDBInstanceMessage, "You must provide a DeleteDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBClusterParameterGroup
-- @param CreateDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterParameterGroupAsync(CreateDBClusterParameterGroupMessage, cb)
	assert(CreateDBClusterParameterGroupMessage, "You must provide a CreateDBClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBParameterGroup
-- @param DeleteDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBParameterGroupAsync(DeleteDBParameterGroupMessage, cb)
	assert(DeleteDBParameterGroupMessage, "You must provide a DeleteDBParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBParameterGroupMessage, headers, M.metadata, cb)
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

--- ModifyOptionGroup
-- @param ModifyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyOptionGroupAsync(ModifyOptionGroupMessage, cb)
	assert(ModifyOptionGroupMessage, "You must provide a ModifyOptionGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyOptionGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBLogFiles
-- @param DescribeDBLogFilesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBLogFilesAsync(DescribeDBLogFilesMessage, cb)
	assert(DescribeDBLogFilesMessage, "You must provide a DescribeDBLogFilesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBLogFiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBLogFilesMessage, headers, M.metadata, cb)
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

--- DescribeReservedDBInstances
-- @param DescribeReservedDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReservedDBInstancesAsync(DescribeReservedDBInstancesMessage, cb)
	assert(DescribeReservedDBInstancesMessage, "You must provide a DescribeReservedDBInstancesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReservedDBInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReservedDBInstancesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyOptionGroup
-- @param CopyOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyOptionGroupAsync(CopyOptionGroupMessage, cb)
	assert(CopyOptionGroupMessage, "You must provide a CopyOptionGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyOptionGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBInstance
-- @param CreateDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBInstanceAsync(CreateDBInstanceMessage, cb)
	assert(CreateDBInstanceMessage, "You must provide a CreateDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBInstanceMessage, headers, M.metadata, cb)
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

--- ModifyDBSubnetGroup
-- @param ModifyDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSubnetGroupAsync(ModifyDBSubnetGroupMessage, cb)
	assert(ModifyDBSubnetGroupMessage, "You must provide a ModifyDBSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBSecurityGroup
-- @param DeleteDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSecurityGroupAsync(DeleteDBSecurityGroupMessage, cb)
	assert(DeleteDBSecurityGroupMessage, "You must provide a DeleteDBSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreDBInstanceToPointInTime
-- @param RestoreDBInstanceToPointInTimeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBInstanceToPointInTimeAsync(RestoreDBInstanceToPointInTimeMessage, cb)
	assert(RestoreDBInstanceToPointInTimeMessage, "You must provide a RestoreDBInstanceToPointInTimeMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreDBInstanceToPointInTime",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreDBInstanceToPointInTimeMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddSourceIdentifierToSubscription
-- @param AddSourceIdentifierToSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddSourceIdentifierToSubscriptionAsync(AddSourceIdentifierToSubscriptionMessage, cb)
	assert(AddSourceIdentifierToSubscriptionMessage, "You must provide a AddSourceIdentifierToSubscriptionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddSourceIdentifierToSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddSourceIdentifierToSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyDBClusterParameterGroup
-- @param CopyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterParameterGroupAsync(CopyDBClusterParameterGroupMessage, cb)
	assert(CopyDBClusterParameterGroupMessage, "You must provide a CopyDBClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyDBClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartDBInstance
-- @param StartDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.StartDBInstanceAsync(StartDBInstanceMessage, cb)
	assert(StartDBInstanceMessage, "You must provide a StartDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".StartDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartDBInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBClusterSnapshotAttributes
-- @param DescribeDBClusterSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotAttributesAsync(DescribeDBClusterSnapshotAttributesMessage, cb)
	assert(DescribeDBClusterSnapshotAttributesMessage, "You must provide a DescribeDBClusterSnapshotAttributesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshotAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBClusterSnapshotAttributesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RestoreDBClusterFromSnapshot
-- @param RestoreDBClusterFromSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RestoreDBClusterFromSnapshotAsync(RestoreDBClusterFromSnapshotMessage, cb)
	assert(RestoreDBClusterFromSnapshotMessage, "You must provide a RestoreDBClusterFromSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RestoreDBClusterFromSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RestoreDBClusterFromSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBParameters
-- @param DescribeDBParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParametersAsync(DescribeDBParametersMessage, cb)
	assert(DescribeDBParametersMessage, "You must provide a DescribeDBParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PromoteReadReplicaDBCluster
-- @param PromoteReadReplicaDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaDBClusterAsync(PromoteReadReplicaDBClusterMessage, cb)
	assert(PromoteReadReplicaDBClusterMessage, "You must provide a PromoteReadReplicaDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PromoteReadReplicaDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PromoteReadReplicaDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBClusterParameters
-- @param DescribeDBClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParametersAsync(DescribeDBClusterParametersMessage, cb)
	assert(DescribeDBClusterParametersMessage, "You must provide a DescribeDBClusterParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBClusterParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBSnapshot
-- @param DeleteDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBSnapshotAsync(DeleteDBSnapshotMessage, cb)
	assert(DeleteDBSnapshotMessage, "You must provide a DeleteDBSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBSnapshotMessage, headers, M.metadata, cb)
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

--- DeleteOptionGroup
-- @param DeleteOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOptionGroupAsync(DeleteOptionGroupMessage, cb)
	assert(DeleteOptionGroupMessage, "You must provide a DeleteOptionGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteOptionGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PromoteReadReplica
-- @param PromoteReadReplicaMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PromoteReadReplicaAsync(PromoteReadReplicaMessage, cb)
	assert(PromoteReadReplicaMessage, "You must provide a PromoteReadReplicaMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PromoteReadReplica",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PromoteReadReplicaMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddRoleToDBCluster
-- @param AddRoleToDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.AddRoleToDBClusterAsync(AddRoleToDBClusterMessage, cb)
	assert(AddRoleToDBClusterMessage, "You must provide a AddRoleToDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddRoleToDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddRoleToDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBSnapshotAttribute
-- @param ModifyDBSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBSnapshotAttributeAsync(ModifyDBSnapshotAttributeMessage, cb)
	assert(ModifyDBSnapshotAttributeMessage, "You must provide a ModifyDBSnapshotAttributeMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBSnapshotAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBSnapshotAttributeMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBParameterGroups
-- @param DescribeDBParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBParameterGroupsAsync(DescribeDBParameterGroupsMessage, cb)
	assert(DescribeDBParameterGroupsMessage, "You must provide a DescribeDBParameterGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBParameterGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBClusterParameterGroup
-- @param ModifyDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterParameterGroupAsync(ModifyDBClusterParameterGroupMessage, cb)
	assert(ModifyDBClusterParameterGroupMessage, "You must provide a ModifyDBClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- FailoverDBCluster
-- @param FailoverDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.FailoverDBClusterAsync(FailoverDBClusterMessage, cb)
	assert(FailoverDBClusterMessage, "You must provide a FailoverDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".FailoverDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", FailoverDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ApplyPendingMaintenanceAction
-- @param ApplyPendingMaintenanceActionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ApplyPendingMaintenanceActionAsync(ApplyPendingMaintenanceActionMessage, cb)
	assert(ApplyPendingMaintenanceActionMessage, "You must provide a ApplyPendingMaintenanceActionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ApplyPendingMaintenanceAction",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ApplyPendingMaintenanceActionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBInstances
-- @param DescribeDBInstancesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBInstancesAsync(DescribeDBInstancesMessage, cb)
	assert(DescribeDBInstancesMessage, "You must provide a DescribeDBInstancesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBInstances",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBInstancesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurchaseReservedDBInstancesOffering
-- @param PurchaseReservedDBInstancesOfferingMessage
-- @param cb Callback function accepting two args: response, error_message
function M.PurchaseReservedDBInstancesOfferingAsync(PurchaseReservedDBInstancesOfferingMessage, cb)
	assert(PurchaseReservedDBInstancesOfferingMessage, "You must provide a PurchaseReservedDBInstancesOfferingMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurchaseReservedDBInstancesOffering",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurchaseReservedDBInstancesOfferingMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrderableDBInstanceOptions
-- @param DescribeOrderableDBInstanceOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrderableDBInstanceOptionsAsync(DescribeOrderableDBInstanceOptionsMessage, cb)
	assert(DescribeOrderableDBInstanceOptionsMessage, "You must provide a DescribeOrderableDBInstanceOptionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeOrderableDBInstanceOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOrderableDBInstanceOptionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOptionGroup
-- @param CreateOptionGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOptionGroupAsync(CreateOptionGroupMessage, cb)
	assert(CreateOptionGroupMessage, "You must provide a CreateOptionGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateOptionGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOptionGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOptionGroupOptions
-- @param DescribeOptionGroupOptionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOptionGroupOptionsAsync(DescribeOptionGroupOptionsMessage, cb)
	assert(DescribeOptionGroupOptionsMessage, "You must provide a DescribeOptionGroupOptionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeOptionGroupOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOptionGroupOptionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetDBParameterGroup
-- @param ResetDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ResetDBParameterGroupAsync(ResetDBParameterGroupMessage, cb)
	assert(ResetDBParameterGroupMessage, "You must provide a ResetDBParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResetDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetDBParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEngineDefaultClusterParameters
-- @param DescribeEngineDefaultClusterParametersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEngineDefaultClusterParametersAsync(DescribeEngineDefaultClusterParametersMessage, cb)
	assert(DescribeEngineDefaultClusterParametersMessage, "You must provide a DescribeEngineDefaultClusterParametersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEngineDefaultClusterParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEngineDefaultClusterParametersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBSnapshot
-- @param CreateDBSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSnapshotAsync(CreateDBSnapshotMessage, cb)
	assert(CreateDBSnapshotMessage, "You must provide a CreateDBSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBCluster
-- @param CreateDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBClusterAsync(CreateDBClusterMessage, cb)
	assert(CreateDBClusterMessage, "You must provide a CreateDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccountAttributes
-- @param DescribeAccountAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAttributesAsync(DescribeAccountAttributesMessage, cb)
	assert(DescribeAccountAttributesMessage, "You must provide a DescribeAccountAttributesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAccountAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountAttributesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBSnapshots
-- @param DescribeDBSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotsAsync(DescribeDBSnapshotsMessage, cb)
	assert(DescribeDBSnapshotsMessage, "You must provide a DescribeDBSnapshotsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBSnapshotsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBClusterSnapshotAttribute
-- @param ModifyDBClusterSnapshotAttributeMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterSnapshotAttributeAsync(ModifyDBClusterSnapshotAttributeMessage, cb)
	assert(ModifyDBClusterSnapshotAttributeMessage, "You must provide a ModifyDBClusterSnapshotAttributeMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBClusterSnapshotAttribute",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBClusterSnapshotAttributeMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBSecurityGroup
-- @param CreateDBSecurityGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSecurityGroupAsync(CreateDBSecurityGroupMessage, cb)
	assert(CreateDBSecurityGroupMessage, "You must provide a CreateDBSecurityGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBSecurityGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBSecurityGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveRoleFromDBCluster
-- @param RemoveRoleFromDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveRoleFromDBClusterAsync(RemoveRoleFromDBClusterMessage, cb)
	assert(RemoveRoleFromDBClusterMessage, "You must provide a RemoveRoleFromDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveRoleFromDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeDBSecurityGroupIngress
-- @param RevokeDBSecurityGroupIngressMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeDBSecurityGroupIngressAsync(RevokeDBSecurityGroupIngressMessage, cb)
	assert(RevokeDBSecurityGroupIngressMessage, "You must provide a RevokeDBSecurityGroupIngressMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RevokeDBSecurityGroupIngress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeDBSecurityGroupIngressMessage, headers, M.metadata, cb)
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

--- CopyDBParameterGroup
-- @param CopyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBParameterGroupAsync(CopyDBParameterGroupMessage, cb)
	assert(CopyDBParameterGroupMessage, "You must provide a CopyDBParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyDBParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootDBInstance
-- @param RebootDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RebootDBInstanceAsync(RebootDBInstanceMessage, cb)
	assert(RebootDBInstanceMessage, "You must provide a RebootDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RebootDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootDBInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDBSubnetGroup
-- @param CreateDBSubnetGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDBSubnetGroupAsync(CreateDBSubnetGroupMessage, cb)
	assert(CreateDBSubnetGroupMessage, "You must provide a CreateDBSubnetGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDBSubnetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDBSubnetGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBCluster
-- @param ModifyDBClusterMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBClusterAsync(ModifyDBClusterMessage, cb)
	assert(ModifyDBClusterMessage, "You must provide a ModifyDBClusterMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBCluster",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBClusterMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBSnapshotAttributes
-- @param DescribeDBSnapshotAttributesMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSnapshotAttributesAsync(DescribeDBSnapshotAttributesMessage, cb)
	assert(DescribeDBSnapshotAttributesMessage, "You must provide a DescribeDBSnapshotAttributesMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBSnapshotAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBSnapshotAttributesMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSourceRegions
-- @param DescribeSourceRegionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSourceRegionsAsync(DescribeSourceRegionsMessage, cb)
	assert(DescribeSourceRegionsMessage, "You must provide a DescribeSourceRegionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeSourceRegions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSourceRegionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DownloadDBLogFilePortion
-- @param DownloadDBLogFilePortionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DownloadDBLogFilePortionAsync(DownloadDBLogFilePortionMessage, cb)
	assert(DownloadDBLogFilePortionMessage, "You must provide a DownloadDBLogFilePortionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DownloadDBLogFilePortion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DownloadDBLogFilePortionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBClusters
-- @param DescribeDBClustersMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClustersAsync(DescribeDBClustersMessage, cb)
	assert(DescribeDBClustersMessage, "You must provide a DescribeDBClustersMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBClusters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBClustersMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBClusterSnapshots
-- @param DescribeDBClusterSnapshotsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterSnapshotsAsync(DescribeDBClusterSnapshotsMessage, cb)
	assert(DescribeDBClusterSnapshotsMessage, "You must provide a DescribeDBClusterSnapshotsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterSnapshots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBClusterSnapshotsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBParameterGroup
-- @param ModifyDBParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBParameterGroupAsync(ModifyDBParameterGroupMessage, cb)
	assert(ModifyDBParameterGroupMessage, "You must provide a ModifyDBParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBSecurityGroups
-- @param DescribeDBSecurityGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBSecurityGroupsAsync(DescribeDBSecurityGroupsMessage, cb)
	assert(DescribeDBSecurityGroupsMessage, "You must provide a DescribeDBSecurityGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBSecurityGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBSecurityGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDBClusterParameterGroup
-- @param DeleteDBClusterParameterGroupMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDBClusterParameterGroupAsync(DeleteDBClusterParameterGroupMessage, cb)
	assert(DeleteDBClusterParameterGroupMessage, "You must provide a DeleteDBClusterParameterGroupMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDBClusterParameterGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDBClusterParameterGroupMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePendingMaintenanceActions
-- @param DescribePendingMaintenanceActionsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePendingMaintenanceActionsAsync(DescribePendingMaintenanceActionsMessage, cb)
	assert(DescribePendingMaintenanceActionsMessage, "You must provide a DescribePendingMaintenanceActionsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribePendingMaintenanceActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePendingMaintenanceActionsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDBClusterParameterGroups
-- @param DescribeDBClusterParameterGroupsMessage
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDBClusterParameterGroupsAsync(DescribeDBClusterParameterGroupsMessage, cb)
	assert(DescribeDBClusterParameterGroupsMessage, "You must provide a DescribeDBClusterParameterGroupsMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeDBClusterParameterGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDBClusterParameterGroupsMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CopyDBClusterSnapshot
-- @param CopyDBClusterSnapshotMessage
-- @param cb Callback function accepting two args: response, error_message
function M.CopyDBClusterSnapshotAsync(CopyDBClusterSnapshotMessage, cb)
	assert(CopyDBClusterSnapshotMessage, "You must provide a CopyDBClusterSnapshotMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CopyDBClusterSnapshot",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CopyDBClusterSnapshotMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDBInstance
-- @param ModifyDBInstanceMessage
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDBInstanceAsync(ModifyDBInstanceMessage, cb)
	assert(ModifyDBInstanceMessage, "You must provide a ModifyDBInstanceMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ModifyDBInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDBInstanceMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveSourceIdentifierFromSubscription
-- @param RemoveSourceIdentifierFromSubscriptionMessage
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveSourceIdentifierFromSubscriptionAsync(RemoveSourceIdentifierFromSubscriptionMessage, cb)
	assert(RemoveSourceIdentifierFromSubscriptionMessage, "You must provide a RemoveSourceIdentifierFromSubscriptionMessage")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveSourceIdentifierFromSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveSourceIdentifierFromSubscriptionMessage, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
